﻿using AutoMapper;
using AutoMapper.QueryableExtensions;
using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using Suggession.Constants;
using Suggession.Data;
using Suggession.DTO;
using Suggession.Helpers;
using Suggession.Models;
using Suggession.Services.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace Suggession.Services
{
    public interface IAttitudeScoreService : IServiceBase<AttitudeScore, AttitudeScoreDto>
    {
       
        Task<AttitudeScoreDto> GetFisrtByAccountId(int accountId, int periodTypeId, int period, string scoreType);
        Task<object> GetFunctionalLeaderAttitudeScoreByAccountId(int accountId, int periodTypeId, int period);
        Task<AttitudeScoreDto> GetL1AttitudeScoreByAccountId(int accountId, int periodTypeId, int period, string scoreType);

    }
    public class AttitudeScoreService : ServiceBase<AttitudeScore, AttitudeScoreDto>, IAttitudeScoreService
    {
        private readonly IRepositoryBase<AttitudeScore> _repo;
        private readonly IRepositoryBase<Account> _repoAccount;
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly MapperConfiguration _configMapper;
        private OperationResult operationResult;

        public AttitudeScoreService(
            IRepositoryBase<AttitudeScore> repo,
            IRepositoryBase<Account> repoAccount,
            IUnitOfWork unitOfWork,
            IMapper mapper,
             IHttpContextAccessor httpContextAccessor,
            MapperConfiguration configMapper
            )
            : base(repo, unitOfWork, mapper, configMapper)
        {
            _repo = repo;
            _repoAccount = repoAccount;
            _unitOfWork = unitOfWork;
            _mapper = mapper;
            _httpContextAccessor = httpContextAccessor;
            _configMapper = configMapper;
        }
        
        public async Task<AttitudeScoreDto> GetFisrtByAccountId(int accountId, int periodTypeId,int period, string scoreType)
        {
            var accessToken = _httpContextAccessor.HttpContext.Request.Headers["Authorization"];
            int scoreBy = JWTExtensions.GetDecodeTokenById(accessToken);

            return await _repo.FindAll(x => x.ScoreType == scoreType 
                                        && x.PeriodTypeId == periodTypeId 
                                        && x.CreatedTime.Year == DateTime.Today.Year 
                                        && x.Period == period
                                        && accountId == x.AccountId 
                                        && scoreBy == x.ScoreBy 
                                        && x.AccountId != scoreBy)
                                .ProjectTo<AttitudeScoreDto>(_configMapper)
                                .FirstOrDefaultAsync();

        }
        /// <summary>
        /// Chỉnh sửa thành vừa cập nhật vừa thêm mới
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public override async Task<OperationResult> AddAsync(AttitudeScoreDto model)
        {
            if (model.Id > 0)
            {
                var item = await _repo.FindAll(x => x.Id == model.Id && x.ScoreBy == model.ScoreBy).AsNoTracking().FirstOrDefaultAsync();
                item.Point = model.Point;
                _repo.Update(item);
            }
            else
            {
                var itemList = _mapper.Map<AttitudeScore>(model);
                _repo.Add(itemList);
            }
            try
            {
                await _unitOfWork.SaveChangeAsync();
                operationResult = new OperationResult
                {
                    StatusCode = HttpStatusCode.OK,
                    Message = MessageReponse.AddSuccess,
                    Success = true,
                    Data = model
                };
            }
            catch (Exception ex)
            {
                operationResult = ex.GetMessageError();
            }
            return operationResult;
        }

        public async Task<object> GetFunctionalLeaderAttitudeScoreByAccountId(int accountId, int periodTypeId, int period)
        {
            throw new NotImplementedException();
        }

        public async Task<AttitudeScoreDto> GetL1AttitudeScoreByAccountId(int accountId, int periodTypeId, int period, string scoreType)
        {
            throw new NotImplementedException();
        }
    }
}

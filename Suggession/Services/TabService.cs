using AutoMapper;
using Suggession.Data;
using Suggession.DTO;
using Suggession.Models;
using Suggession.Services.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Suggession.Services
{
    public interface ITabService: IServiceBase<Tab, TabDto>
    {
        Task<object> GetAll();
    }
    public class TabService : ServiceBase<Tab, TabDto>, ITabService
    {
        private readonly IRepositoryBase<Tab> _repo;
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        private readonly MapperConfiguration _configMapper;
        public TabService(
            IRepositoryBase<Tab> repo, 
            IUnitOfWork unitOfWork,
            IMapper mapper, 
            MapperConfiguration configMapper
            )
            : base(repo, unitOfWork, mapper,  configMapper)
        {
            _repo = repo;
            _unitOfWork = unitOfWork;
            _mapper = mapper;
            _configMapper = configMapper;
        }

        public async Task<object> GetAll()
        {
            var data = _repo.FindAll().Select(x => new TabDto
            { 
                Id = x.Id,
                Name = x.Name,
                Statues = false
            }).ToList();
            foreach (var item in data)
            {
                if (item.Name == "Proposal")
                {
                    item.Statues = true;
                }
            }
            return data;
        }
    }

   
}

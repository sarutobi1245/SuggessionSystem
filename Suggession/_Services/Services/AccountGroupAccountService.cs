﻿using AutoMapper;
using AutoMapper.QueryableExtensions;
using Microsoft.EntityFrameworkCore;
using Suggession.Data;
using Suggession.DTO;
using Suggession.Models;
using Suggession._Services.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Suggession._Repositories.Interface;

namespace Suggession._Services.Services
{
   
    public class AccountGroupAccountService : IAccountGroupAccountService
    {
        private readonly IAccountGroupAccountRepository _repo;
        private readonly IMapper _mapper;
        private readonly MapperConfiguration _configMapper;
        public AccountGroupAccountService(
            IAccountGroupAccountRepository repo, 
            IMapper mapper, 
            MapperConfiguration configMapper
            )
        {
            _repo = repo;
            _mapper = mapper;
            _configMapper = configMapper;
        }
       
    }
}
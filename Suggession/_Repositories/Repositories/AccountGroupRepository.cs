﻿using AutoMapper;
using Suggession.Data;
using Suggession.DTO;
using Suggession.Models;
using Suggession._Services.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Suggession.Helpers;
using AutoMapper.QueryableExtensions;
using Microsoft.EntityFrameworkCore;
using Suggession._Repositories.Repositories;

namespace Suggession._Repositories.Interface
{
    public class AccountGroupRepository : RepositoryBase<AccountGroup>, IAccountGroupRepository
    {
        private readonly DataContext _context;
        private readonly IMapper _mapper;

        public AccountGroupRepository(DataContext context, IMapper mapper) : base(context)
        {
            _context = context;
            _mapper = mapper;
        }
    }

}

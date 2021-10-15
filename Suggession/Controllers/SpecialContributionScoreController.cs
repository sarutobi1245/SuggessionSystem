﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Suggession.DTO;
using Suggession.Helpers;
using Suggession.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Suggession.Controllers
{
    public class SpecialContributionScoreController : ApiControllerBase
    {
        private readonly ISpecialContributionScoreService _service;

        public SpecialContributionScoreController(ISpecialContributionScoreService service)
        {
            _service = service;
        }
        [HttpGet]
        public async Task<ActionResult> GetFisrtByAccountId(int accountId, int periodTypeId, int period, string scoreType)
        {
            return Ok(await _service.GetFisrtByAccountId(accountId, periodTypeId, period, scoreType));
        }
        [HttpGet]
        public async Task<ActionResult> GetSpecialScoreByAccountId(int accountId, int periodTypeId, int period, string scoreType)
        {
            return Ok(await _service.GetSpecialScoreByAccountId(accountId, periodTypeId, period, scoreType));
        }
        [HttpGet]
        public async Task<ActionResult> GetAllAsync()
        {
            return Ok((await _service.GetAllAsync()).OrderByDescending(x=> x.Point));
        }

        [HttpPost]
        public async Task<ActionResult> AddAsync([FromBody] SpecialContributionScoreDto model)
        {
            return StatusCodeResult(await _service.AddAsync(model));
        }

        [HttpPut]
        public async Task<ActionResult> UpdateAsync([FromBody] SpecialContributionScoreDto model)
        {
            return StatusCodeResult(await _service.UpdateAsync(model));
        }

        [HttpDelete]
        public async Task<ActionResult> DeleteAsync(int id)
        {
            return StatusCodeResult(await _service.DeleteAsync(id));
        }

        [HttpGet]
        public async Task<ActionResult> GetByIdAsync(int id)
        {
            return Ok(await _service.GetByIdAsync(id));
        }

        [HttpGet]
        public async Task<ActionResult> GetWithPaginationsAsync(PaginationParams paramater)
        {
            return Ok(await _service.GetWithPaginationsAsync(paramater));
        }

    }
}

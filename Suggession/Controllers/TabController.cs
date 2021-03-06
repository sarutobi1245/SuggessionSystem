using Microsoft.AspNetCore.Http;
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
    public class TabController : ApiControllerBase
    {
        private readonly ITabService _service;

        public TabController(ITabService service)
        {
            _service = service;
        }

        [HttpGet]
        public async Task<ActionResult> GetAllAsync()
        {
            return Ok(await _service.GetAll());
        }

        //[HttpPost]
        //public async Task<ActionResult> AddAsync([FromBody] PICDto model)
        //{
        //    return StatusCodeResult(await _service.AddAsync(model));
        //}

        //[HttpPut]
        //public async Task<ActionResult> UpdateAsync([FromBody] PICDto model)
        //{
        //    return StatusCodeResult(await _service.UpdateAsync(model));
        //}

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

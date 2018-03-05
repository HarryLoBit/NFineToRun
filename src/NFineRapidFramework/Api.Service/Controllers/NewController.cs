using Newtonsoft.Json.Linq;
using NFine.Application.PublicBusines;
using NFine.Domain.Entity.PublicBusines;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;

namespace Api.Service.Controllers
{
    public class NewController : ApiController
    {
        ClientApp app = new ClientApp();

        [HttpGet]
        [Route("api/new/json")]
        public async Task<IHttpActionResult> GetJson(string mobile)
        {
            ClientEntity entity = app.GetClientInfoByMobile(mobile);
            return Ok(entity);
        }
    }
}

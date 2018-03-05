using NFine.Application.PublicBusines;
using System;
using NFine.Code;
using NFine.Domain.Entity.PublicBusines;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using UniversalHelper;

namespace NFine.Web.Areas.PublicBusines.Controllers
{
    public class ClientController : ControllerBase
    {
        private ClientApp clientApp = new ClientApp();

        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetGridJson(Pagination pagination,string keyword)
        {
            var data = new
            {
                rows = clientApp.GetSearchList(pagination, keyword),
                total = pagination.total,
                page = pagination.page,
                records = pagination.records
            };

            return Content(data.ToJson());
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetFormJson(string keyValue)
        {
            var data = clientApp.GetSingle(keyValue);
            return Content(data.ToJson());
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [ValidateAntiForgeryToken]
        public ActionResult SubmitForm(ClientEntity clientEntity, string keyValue)
        {
            if (string.IsNullOrEmpty(keyValue) || clientEntity.passWord.Length < 30)
            {
                clientEntity.passWord = ApiHelper.MD5Encrypt(clientEntity.passWord, "MD5");
            }

            clientApp.InsertAndUpdate(clientEntity, keyValue);
            return Success("操作成功。");
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [HandlerAuthorize]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteForm(string keyValue)
        {
            clientApp.Delet(keyValue);
            return Success("删除成功。");
        }
    }
}
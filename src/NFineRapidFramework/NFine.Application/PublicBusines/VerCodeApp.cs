using NFine.Domain.IRepository.PublicBusines;
using NFine.Repository.PublicBusines;
using System.Collections.Generic;
using NFine.Domain.Entity.PublicBusines;
using NFine.Code;
using System.Linq;
using System;
using System.Linq.Expressions;

namespace NFine.Application.PublicBusines
{
    /// <summary>
    /// 短信验证码
    /// </summary>
    public class VerCodeApp
    {
        IVerCodeRepository _service = new VerCodeRepository();

        /// <summary>
        /// 保存发送短信记录
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public void SaveVerCode(string code, string body, string mailTo)
        {
            VerCodeEntity Item = GetSingle(mailTo);

            if (Item == null)
            {
                Item = new VerCodeEntity();
                Item.code = code;
                Item.content = body;
                Item.mobile = mailTo;
                Item.UpdateTime = DateTime.Now;
                Item.F_Id = Guid.NewGuid().ToString();
                Item.F_CreatorTime = DateTime.Now;
                Item.F_CreatorUserId = "admin";
                _service.Insert(Item);
            }
            else
            {
                Item.code = code;
                Item.content = body;
                Item.mobile = mailTo;
                Item.UpdateTime = DateTime.Now;
                _service.Update(Item);
            }

        }

        /// <summary>
        /// 根据条件查询单条记录
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        public VerCodeEntity GetSingle(string mobile)
        {
            return _service.FindList("select * from Sys_VerCode where mobile = '" + mobile + "' ").FirstOrDefault();
        }
    }
}

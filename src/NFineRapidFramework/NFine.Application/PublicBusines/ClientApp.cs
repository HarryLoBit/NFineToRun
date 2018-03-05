using System;
using NFine.Domain.IRepository.PublicBusines;
using NFine.Repository.PublicBusines;
using System.Collections.Generic;
using NFine.Domain.Entity.PublicBusines;
using NFine.Code;
using System.Linq;
using UniversalHelper;

namespace NFine.Application.PublicBusines
{
    public class ClientApp
    {
        IClientRepository _service = new ClientRepository();

        #region 后台管理

        /// <summary>
        /// App用户后台管理列表
        /// </summary>
        /// <param name="keyWord"></param>
        /// <returns></returns>
        public List<ClientEntity> GetSearchList(Pagination pagination, string keyWord)
        {
            var param = ExtLinq.True<ClientEntity>();
            if (!string.IsNullOrEmpty(keyWord))
            {
                param = param.And(t => t.accountNo.Contains(keyWord));
                param = param.Or(t => t.nickName.Contains(keyWord));
            }

            return _service.FindList(param, pagination);
        }

        /// <summary>
        /// 查询单条记录
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public ClientEntity GetSingle(string value)
        {
            return _service.FindEntity(value);
        }

        /// <summary>
        /// 保存用户信息
        /// </summary>
        /// <param name="entity">model</param>
        /// <param name="value">id</param>
        /// <returns></returns>
        public int InsertAndUpdate(ClientEntity entity, string value)
        {
            if (!string.IsNullOrEmpty(value))
            {
                entity.F_Id = value;
                return _service.Update(entity);
            }
            else
            {
                entity.Create();
                return _service.Insert(entity);
            }
        }

        /// <summary>
        /// 删除用户信息
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public int Delet(string value)
        {
            return _service.Delete(_service.FindEntity(value));
        }

        #endregion

        #region Api服务

        /// <summary>
        /// 效验登录状态
        /// </summary>
        /// <param name="account">账号</param>
        /// <param name="passWord">密码</param>
        /// <returns></returns>
        public ClientEntity UserAppLogin(string account, string passWord)
        {
            var param = ExtLinq.True<ClientEntity>();

            param = (param.And(t => t.accountNo == account).Or(t => t.mobile == account));
            param = param.And(t => t.passWord == passWord);

            return _service.FindEntity(param);
        }

        /// <summary>
        /// 手机号是否重复注册
        /// </summary>
        /// <param name="mobile"></param>
        /// <returns></returns>
        public bool IsRegistByMobile(string mobile)
        {
            return _service.FindList("select * from Sys_Client where accountNo='" + mobile + "' or mobile ='" + mobile + "' ").Count > 0 ? true : false;
        }

        /// <summary>
        /// 用户注册
        /// </summary>
        /// <param name="entity">模型对象</param>
        /// <returns></returns>
        public int RegistClient(ClientEntity entity)
        {
            entity.F_CreatorUserId = "admin";
            entity.F_CreatorTime = DateTime.Now;
            entity.F_Id = Guid.NewGuid().ToString();
            return _service.Insert(entity);
        }

        /// <summary>
        /// 根据手机号查询用户详细信息
        /// </summary>
        /// <param name="mobile">手机号码</param>
        /// <returns></returns>
        public ClientEntity GetClientInfoByMobile(string mobile)
        {
            return _service.FindList("select * from Sys_Client where accountNo='" + mobile + "' or mobile ='" + mobile + "' ").FirstOrDefault();
        }

        /// <summary>
        /// 效验用户密码是否正确
        /// </summary>
        /// <param name="sid">用户id</param>
        /// <param name="password">密码</param>
        /// <returns></returns>
        public bool CheckClientPassWord(string sid, string password)
        {
            return _service.FindList("select * from Sys_Client where F_Id ='" + sid + "' and passWord = '" +ApiHelper.MD5Encrypt(password,"MD5") + "' ").Count > 0 ? true : false;
        }

        #endregion

    }
}

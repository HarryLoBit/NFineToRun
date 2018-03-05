/*******************************************************************************
 * Copyright © 2016 NFine.Framework 版权所有
 * Author: NFine
 * Description: NFine快速开发平台
 * Website：http://www.nfine.cn
*********************************************************************************/
using NFine.Code;
using NFine.Data;
using NFine.Domain.Entity.SystemManage;
using NFine.Domain.IRepository.SystemManage;
using NFine.Domain.ViewModel;
using NFine.Repository.SystemManage;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;

namespace NFine.Application.SystemManage
{
    public class RoleAuthorizeApp
    {
        private IRoleAuthorizeRepository service = new RoleAuthorizeRepository();
        private IRepositoryBase<RoleAuthorizeList> _baseService = new RepositoryBase<RoleAuthorizeList>();
        private IRepositoryBase<RoleAuthorizeEntity> _entityService = new RepositoryBase<RoleAuthorizeEntity>();
        private ModuleApp moduleApp = new ModuleApp();
        private ModuleButtonApp moduleButtonApp = new ModuleButtonApp();

        public List<RoleAuthorizeEntity> GetList(string ObjectId)
        {
            return service.IQueryable(t => t.F_ObjectId == ObjectId).ToList();
        }

        /// <summary>
        /// 获取所有模块级记录
        /// </summary>
        /// <returns></returns>
        public List<RoleAuthorizeList> GetAllMenuList(Pagination option)
        {
            StringBuilder sqlBuilder = new StringBuilder();
            sqlBuilder.Append("select Sys_RoleAuthorize.F_ItemType as ItemType,Sys_Module.F_FullName as ModuleFullName,Sys_Role.F_FullName as RoleFullName,Sys_RoleAuthorize.F_Id as F_Id, Sys_RoleAuthorize.F_CreatorTime as F_CreatorTime ");
            sqlBuilder.Append("from Sys_RoleAuthorize ");
            sqlBuilder.Append("join Sys_Module on Sys_Module.F_Id = Sys_RoleAuthorize.F_ItemId ");
            sqlBuilder.Append("join Sys_Role on Sys_Role.F_Id = Sys_RoleAuthorize.F_ObjectId ");
            sqlBuilder.Append("where Sys_RoleAuthorize.F_ItemType = 1 ");
            if (!string.IsNullOrEmpty(option.sidx) && !string.IsNullOrEmpty(option.sord))
            {
                sqlBuilder.Append("order by " + option.sidx + " " + option.sord);
            }
            List<RoleAuthorizeList> list = null;
            try
            {
                list = _baseService.FindList(sqlBuilder.ToString()).Skip(option.rows * (option.page - 1)).Take(option.rows).ToList();
            }
            catch (Exception ex)
            {

            }
            return list;
        }


        /// <summary>
        /// 查询单条记录信息
        /// </summary>
        /// <param name="keyValue"></param>
        /// <returns></returns>
        public RoleAuthorizeEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }

        /// <summary>
        /// 保存权限记录
        /// </summary>
        /// <param name="moduleEntity"></param>
        /// <param name="keyValue"></param>
        public void SubmitForm(RoleAuthorizeEntity roleAuthorizeEntity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                roleAuthorizeEntity.F_Id = keyValue;
                service.Update(roleAuthorizeEntity);
            }
            else
            {
                roleAuthorizeEntity.Create();
                service.Insert(roleAuthorizeEntity);
            }
        }

        /// <summary>
        /// 删除权限记录
        /// </summary>
        /// <param name="keyValue"></param>
        public bool DeleteForm(string keyValue)
        {
            //service.DeleteForm(keyValue);
            RoleAuthorizeEntity entity = _entityService.FindEntity(keyValue);
            if (entity == null)
            {
                return false;
            }
            _entityService.Delete(entity);
            return true;
        }

        public List<ModuleEntity> GetMenuList(string roleId)
        {
            var data = new List<ModuleEntity>();
            if (OperatorProvider.Provider.GetCurrent().IsSystem)
            {
                data = moduleApp.GetList();
            }
            else
            {
                var moduledata = moduleApp.GetList();
                var authorizedata = service.IQueryable(t => t.F_ObjectId == roleId && t.F_ItemType == 1).ToList();
                foreach (var item in authorizedata)
                {
                    ModuleEntity moduleEntity = moduledata.Find(t => t.F_Id == item.F_ItemId);
                    if (moduleEntity != null)
                    {
                        data.Add(moduleEntity);
                    }
                }
            }
            return data.OrderBy(t => t.F_SortCode).ToList();
        }
        public List<ModuleButtonEntity> GetButtonList(string roleId)
        {
            var data = new List<ModuleButtonEntity>();
            if (OperatorProvider.Provider.GetCurrent().IsSystem)
            {
                data = moduleButtonApp.GetList();
            }
            else
            {
                var buttondata = moduleButtonApp.GetList();
                var authorizedata = service.IQueryable(t => t.F_ObjectId == roleId && t.F_ItemType == 2).ToList();
                foreach (var item in authorizedata)
                {
                    ModuleButtonEntity moduleButtonEntity = buttondata.Find(t => t.F_Id == item.F_ItemId);
                    if (moduleButtonEntity != null)
                    {
                        data.Add(moduleButtonEntity);
                    }
                }
            }
            return data.OrderBy(t => t.F_SortCode).ToList();
        }
        public bool ActionValidate(string roleId, string moduleId, string action)
        {
            var authorizeurldata = new List<AuthorizeActionModel>();
            var cachedata = CacheFactory.Cache().GetCache<List<AuthorizeActionModel>>("authorizeurldata_" + roleId);
            if (cachedata == null)
            {
                var moduledata = moduleApp.GetList();
                var buttondata = moduleButtonApp.GetList();
                var authorizedata = service.IQueryable(t => t.F_ObjectId == roleId).ToList();
                foreach (var item in authorizedata)
                {
                    if (item.F_ItemType == 1)
                    {
                        ModuleEntity moduleEntity = moduledata.Find(t => t.F_Id == item.F_ItemId);
                        authorizeurldata.Add(new AuthorizeActionModel { F_Id = moduleEntity.F_Id, F_UrlAddress = moduleEntity.F_UrlAddress });
                    }
                    else if (item.F_ItemType == 2)
                    {
                        ModuleButtonEntity moduleButtonEntity = buttondata.Find(t => t.F_Id == item.F_ItemId);
                        authorizeurldata.Add(new AuthorizeActionModel { F_Id = moduleButtonEntity.F_ModuleId, F_UrlAddress = moduleButtonEntity.F_UrlAddress });
                    }
                }
                CacheFactory.Cache().WriteCache(authorizeurldata, "authorizeurldata_" + roleId, DateTime.Now.AddMinutes(5));
            }
            else
            {
                authorizeurldata = cachedata;
            }
            authorizeurldata = authorizeurldata.FindAll(t => t.F_Id.Equals(moduleId));
            foreach (var item in authorizeurldata)
            {
                if (!string.IsNullOrEmpty(item.F_UrlAddress))
                {
                    string[] url = item.F_UrlAddress.Split('?');
                    if (item.F_Id == moduleId && url[0] == action)
                    {
                        return true;
                    }
                }
            }
            return false;
        }
    }
}

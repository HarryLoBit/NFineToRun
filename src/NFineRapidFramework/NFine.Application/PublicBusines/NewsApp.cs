using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NFine.Code;
using NFine.Domain.Entity.SystemManage;
using NFine.Domain.IRepository.SystemManage;
using NFine.Repository.SystemManage;
using NFine.Domain.Entity.PublicBusines;
using NFine.Domain.IRepository.PublicBusines;
using NFine.Repository.PublicBusines;
using NFine.Application.Model;

namespace NFine.Application.PublicBusines
{
    public class NewsApp
    {
        INewsRepository _service = new NewsRepository();

        public List<NewsEntity> GetList(Pagination pagination, string keyword = "")
        {
            var expression = ExtLinq.True<NewsEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.title.Contains(keyword));
            }
            return _service.FindList(expression, pagination).ToList();
        }

        public NewsEntity GetForm(string keyValue)
        {
            return _service.FindEntity(keyValue);
        }
        public bool DeleteForm(string keyValue)
        {
            return _service.DeleteForm(keyValue);
        }
        public int SubmitForm(NewsEntity newsEntity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                newsEntity.F_Id = keyValue;
                return _service.Update(newsEntity);
            }
            else
            {
                newsEntity.F_Id = Common.GuId();
                newsEntity.F_Id = keyValue;
                newsEntity.Create();
                return _service.Insert(newsEntity);
            }

        }


        /// <summary>
        /// 查询分页列表
        /// </summary>
        /// <param name="page"></param>
        /// <param name="pagesize"></param>
        /// <returns></returns>
        public EntityPage<NewsEntity> GetPageList(int page, int pagesize)
        {
            EntityPage<NewsEntity> entItem = new EntityPage<NewsEntity>();
            Pagination pageina = new Pagination();
            pageina.page = page;
            pageina.rows = pagesize;
            pageina.sidx = "F_Id";
            pageina.sord = "desc";
            var expression = ExtLinq.True<NewsEntity>();
            entItem.List = _service.FindList(expression, pageina);
            entItem.Page = pageina;
            return entItem;
        }

    }
}

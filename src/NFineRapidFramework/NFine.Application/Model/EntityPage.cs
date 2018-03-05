using NFine.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NFine.Application.Model
{
    /// <summary>
    /// 分页模型组装
    /// </summary>
    public class EntityPage<TEntity>
    {
        public List<TEntity> List { get; set; }
        public Pagination Page { get; set; }

    }
}

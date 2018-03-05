using NFine.Data;
using NFine.Domain.Entity.PublicBusines;
using NFine.Domain.IRepository.PublicBusines;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NFine.Repository.PublicBusines
{
    public class NewsRepository : RepositoryBase<NewsEntity>, INewsRepository
    {
        public bool DeleteForm(string keyValue)
        {
            NewsEntity entity = FindEntity(keyValue);
            if (entity==null)
            {
                return false;
            }
            Delete(entity);
            return true;
        }
    }
}

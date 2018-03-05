using NFine.Data;
using NFine.Domain.Entity.PublicBusines;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NFine.Domain.IRepository.PublicBusines
{
    public interface INewsRepository : IRepositoryBase<NewsEntity>
    {
        bool DeleteForm(string keyValue);
    }
}

using NFine.Domain.Entity.PublicBusines;
using NFine.Domain.Entity.SystemManage;
using System.Data.Entity.ModelConfiguration;

namespace NFine.Mapping.PublicBusines
{
    public class NewsMap : EntityTypeConfiguration<NewsEntity>
    {
        public NewsMap()
        {
            this.ToTable("Sys_News");
            this.HasKey(t => t.F_Id);
        }
    }
}

using NFine.Domain.Entity.PublicBusines;
using System.Data.Entity.ModelConfiguration;

namespace NFine.Mapping.PublicBusines
{
    public class VerCodeMap : EntityTypeConfiguration<VerCodeEntity>
    {
        public VerCodeMap()
        {
            this.ToTable("Sys_VerCode");
            this.HasKey(t => t.F_Id);
        }
    }
}

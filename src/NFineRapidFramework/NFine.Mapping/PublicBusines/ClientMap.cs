using NFine.Domain.Entity.PublicBusines;
using System.Data.Entity.ModelConfiguration;

namespace NFine.Mapping.PublicBusines
{
    public class ClientMap : EntityTypeConfiguration<ClientEntity>
    {
        public ClientMap()
        {
            this.ToTable("Sys_Client");
            this.HasKey(t => t.F_Id);
        }
    }
}

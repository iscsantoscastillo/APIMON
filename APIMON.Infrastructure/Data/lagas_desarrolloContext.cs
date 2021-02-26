using APIMON.Core.Entities;
using APIMON.Infrastructure.Data.Configurations;
using Microsoft.EntityFrameworkCore;

namespace APIMON.Infrastructure.Data
{
    public partial class lagas_desarrolloContext : DbContext
    {
        public lagas_desarrolloContext()
        {
        }

        public lagas_desarrolloContext(DbContextOptions<lagas_desarrolloContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Accesos> Accesos { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new AccesosConfiguration());      
        }        
    }
}

using APIMON.Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace APIMON.Infrastructure.Data.Configurations
{
    class AccesosConfiguration : IEntityTypeConfiguration<Accesos>
    {
        public void Configure(EntityTypeBuilder<Accesos> builder)
        {
            
            builder.HasKey(e => e.AccesoId)
                    .HasName("PK__ACCESOS__82214A5DEA72A551");

            builder.ToTable("ACCESOS");

            builder.Property(e => e.AccesoId)
                .HasColumnName("ACCESO_ID")
                .ValueGeneratedNever();

            builder.Property(e => e.EstacionId).HasColumnName("ESTACION_ID");

            builder.Property(e => e.Token)
                .HasColumnName("TOKEN")
                .HasMaxLength(100)
                .IsUnicode(false);

            builder.Property(e => e.Uuid)
                .HasColumnName("UUID")
                .HasMaxLength(50)
                .IsUnicode(false);
        }
    }
}

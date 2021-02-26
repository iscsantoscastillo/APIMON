using APIMON.Core.Entities;
using APIMON.Core.Interfaces;
using APIMON.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace APIMON.Infrastructure.Repositories
{
    public class AccesosRepository: IAccesosRepository
    {
        private readonly lagas_desarrolloContext _lagas_desarrolloContext;

        public AccesosRepository(lagas_desarrolloContext lagasdesarrolloContext)
        {
            _lagas_desarrolloContext = lagasdesarrolloContext;
        }
        public async Task<IEnumerable<Accesos>> GetAccesos() {
            var accesos = await _lagas_desarrolloContext.Accesos.ToListAsync();
            return accesos;
        }

        public async Task<Accesos> GetAcceso(int id)
        {
            var acceso = await _lagas_desarrolloContext.Accesos.FirstOrDefaultAsync(x => x.AccesoId == id);
            return acceso;
        }
    }
}

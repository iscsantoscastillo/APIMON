using APIMON.Core.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace APIMON.Core.Interfaces
{
    public interface IAccesosRepository
    {
        Task<IEnumerable<Accesos>> GetAccesos();
        Task<Accesos> GetAcceso(int id);
    }
}

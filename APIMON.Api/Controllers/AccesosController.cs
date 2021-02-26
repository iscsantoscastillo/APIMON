using APIMON.Core.Interfaces;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace APIMON.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccesosController : ControllerBase
    {
        private IAccesosRepository _accesosRepository;
        public AccesosController(IAccesosRepository accesosRepository)
        {
            _accesosRepository = accesosRepository;
        }

        [HttpGet]
        public async Task<IActionResult> GetAccesos() {
            var accesos = await _accesosRepository.GetAccesos();
            return Ok(accesos);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetAcceso(int id)
        {
            var acceso = await _accesosRepository.GetAcceso(id);
            return Ok(acceso);
        }
    }
}

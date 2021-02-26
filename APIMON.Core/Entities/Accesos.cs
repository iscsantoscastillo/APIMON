using System;
using System.Collections.Generic;

namespace APIMON.Core.Entities
{
    public partial class Accesos
    {
        public int AccesoId { get; set; }
        public int EstacionId { get; set; }
        public string Uuid { get; set; }
        public string Token { get; set; }
    }
}

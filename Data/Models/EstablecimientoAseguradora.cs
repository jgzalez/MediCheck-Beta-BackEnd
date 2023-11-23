using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace API.Data.Models
{

    public class EstablecimientoAseguradora
    {
        [Key]
        [Column(Order = 1)]
        [ForeignKey("Aseguradora")]
        public int IdAseguradora { get; set; }
        public virtual Aseguradora Aseguradora { get; set; }

        [Key]
        [Column(Order = 2)]
        [ForeignKey("Establecimiento")]
        public int IdEstablecimiento { get; set; }
        public virtual Establecimiento Establecimiento { get; set; }

        public bool? Vigente { get; set; }
    }


}

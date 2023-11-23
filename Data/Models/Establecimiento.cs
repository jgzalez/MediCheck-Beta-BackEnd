using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace API.Data.Models
{

    public class Establecimiento
    {
        [Key]
        public int IdEstablecimiento { get; set; }

        [Required]
        [MaxLength(255)]
        public string Nombre { get; set; }

        [Required]
        [MaxLength(255)]
        public string Categoria { get; set; }

        public string Direccion { get; set; }

        public string Telefono { get; set; }

        [EmailAddress]
        public string Correo { get; set; }

        [Required]
        public DateTime FechaRegistro { get; set; }
    }

}

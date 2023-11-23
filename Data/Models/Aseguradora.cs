using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace API.Data.Models
{

    public class Aseguradora
    {
        [Key]
        public int IdAseguradora { get; set; }

        [Required]
        [MaxLength(255)]
        public string Nombre { get; set; }

        [EmailAddress]
        public string Correo { get; set; }

        public string Telefono { get; set; }

        [Required]
        public DateTime FechaRegistro { get; set; }
    }


}

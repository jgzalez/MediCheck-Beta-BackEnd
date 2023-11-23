using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace API.Data.Models
{
    public class Usuario
    {
        [Key]
        public int IdUsuario { get; set; }
        [Required]
        public string Rol { get; set; }
        [Required]
        [MaxLength(255)]
        public string Nombre { get; set; }
        [MaxLength(255)]
        public string Apellidos { get; set; }
        [EmailAddress]
        public string Correo { get; set; }
        public string Telefono { get; set; }
        [Required]
        public bool Habilitado { get; set; }
        [DataType(DataType.Date)]
        public DateTime? FechaNacimiento { get; set; }
        [Required]
        public DateTime FechaRegistro { get; set; }
    }

}
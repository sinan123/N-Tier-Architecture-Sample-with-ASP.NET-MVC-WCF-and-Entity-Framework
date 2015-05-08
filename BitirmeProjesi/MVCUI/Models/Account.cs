using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace MVCUI.Models
{
    public class Account
    {
    }

    public class UserContext:DbContext
    {
        public UserContext():base("DefaultConnection")
        {

        }
    }

    public class Login
    {
        [Display(Name="Kullanıcı Adı")]
        [Required]
        public string UserName { get; set; }

        [Display(Name="Şifre")]
        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Display(Name="Beni Hatırla")]
        public bool RememberMe { get; set; }
    }

    public class Register
    {
        [Required]
        [Display(Name="Kullanıcı Adı")]
        public string UserName { get; set; }
        [Required]
        [Display(Name="Şifre")]
        [DataType(DataType.Password)]
        public string Password { get; set; }
        [Required]
        [Display(Name="Şifre Tekrar")]
        [DataType(DataType.Password)]
        [Compare("Password")]
        public string ConfirmPassword { get; set; }
    }
}
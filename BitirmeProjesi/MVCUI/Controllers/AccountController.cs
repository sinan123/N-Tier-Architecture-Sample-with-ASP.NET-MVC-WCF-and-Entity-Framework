using MVCUI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace MVCUI.Controllers
{
    public class AccountController : Controller
    {
        
        public ActionResult Login()
        {

            return View();
        }
        
        [HttpPost]
        public ActionResult Login(Login model)
        {
            if (ModelState.IsValid)
            {
                if (Membership.ValidateUser(model.UserName,model.Password))
                {
                    FormsAuthentication.SetAuthCookie(model.UserName, model.RememberMe);
                    return RedirectToAction("Index", "Home");

                }
                else
                {
                    ModelState.AddModelError("Login Failed", "Kullanıcı adı ve ya şifre yanlış");

                }
               
            }
           
            return View(model);
        }

        
        public ActionResult Register()
        {

            return View();
        }
        [AllowAnonymous]
        [HttpPost]
        public ActionResult Register(Register model)
        {
            if (ModelState.IsValid)
            {

                try
                {
                   MembershipUser newUser= Membership.CreateUser(model.UserName, model.Password);
                   if (!Roles.RoleExists("User"))
                   {
                       Roles.CreateRole("User");
                   }
                   Roles.AddUserToRole(newUser.UserName, "User");

                   FormsAuthentication.SetAuthCookie(newUser.UserName, false);
                   return RedirectToAction("Index", "Home");

                }
                catch (Exception)
                {

                    ModelState.AddModelError("Kayıt Hatası", "Kayıt işlemi sırasında hata oluştu");
                }
            }

            return View(model);
        }
        
        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();

            return Redirect("/Home/Index");
        }
        
        
        
        
        
        
        
        
        

    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCUI.Filters
{
    public class MyAuthorize:AuthorizeAttribute
    {
        public string Message { get; set; }

        protected override void HandleUnauthorizedRequest(AuthorizationContext filterContext)
        {
            //var result = new ViewResult();
            //result.ViewName = "~/Views/Shared/Error.cshtml";
            //result.ViewBag.Message = this.Message;
            //filterContext.Result = result;

            filterContext.Result = new RedirectToRouteResult(new System.Web.Routing.RouteValueDictionary(new { controller="Account",action="Login" }));

            //filterContext.Result = new RedirectResult("/Home/Index");

        }
        
    }
}
using DTOLayer;
using MVCUI.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCUI.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            PS.PostServiceClient proxy = new PS.PostServiceClient();
            List<PostDTO> pList = proxy.GetAll();
            return View(pList);
        }
        [MyAuthorize(Message="Hata oluştu gardaş",Roles="User")]
        
       
        public ActionResult PostDetail(Guid Id)
        {
            PS.PostServiceClient proxy = new PS.PostServiceClient();
            PostDTO p= proxy.GetEntityById(Id);
            return View(p);
        }
        
        

     

    }
}

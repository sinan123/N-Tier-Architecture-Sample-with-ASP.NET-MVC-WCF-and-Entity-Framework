using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using DTOLayer;
namespace ServiceLayer
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "CategoryService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select CategoryService.svc or CategoryService.svc.cs at the Solution Explorer and start debugging.
    public class CategoryService : ICategoryService
    {

        public CategoryDTO Add(CategoryDTO item)
        {
            throw new NotImplementedException();
        }

        public CategoryDTO Update(CategoryDTO item)
        {
            throw new NotImplementedException();
        }

       

        public List<CategoryDTO> GetAll()
        {
            throw new NotImplementedException();
        }



        public bool Delete(Guid Id)
        {
            throw new NotImplementedException();
        }

        public CategoryDTO GetEntityById(Guid Id)
        {
            throw new NotImplementedException();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using DTOLayer;
namespace ServiceLayer
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "AuthorService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select AuthorService.svc or AuthorService.svc.cs at the Solution Explorer and start debugging.
    public class AuthorService : IAuthorService
    {

        public AuthorDTO Add(AuthorDTO item)
        {
            throw new NotImplementedException();
        }

        public AuthorDTO Update(AuthorDTO item)
        {
            throw new NotImplementedException();
        }

       

        public List<AuthorDTO> GetAll()
        {
            throw new NotImplementedException();
        }

       

        public bool Delete(Guid Id)
        {
            throw new NotImplementedException();
        }

        public AuthorDTO GetEntityById(Guid Id)
        {
            throw new NotImplementedException();
        }
    }
}

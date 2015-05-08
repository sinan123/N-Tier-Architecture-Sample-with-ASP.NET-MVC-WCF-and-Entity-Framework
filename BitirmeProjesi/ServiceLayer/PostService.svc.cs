using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using DTOLayer;
using DataLayer;
using AutoMapper;
namespace ServiceLayer
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "PostService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select PostService.svc or PostService.svc.cs at the Solution Explorer and start debugging.
    public class PostService : IPostService
    {
        private MBEntities db = new MBEntities();

        public PostDTO Add(PostDTO item)
        {
           // Post p=new Post(){
           //  Id=item.Id,
           //   AuthorId=item.AuthorId,
           //    CategoryId=item.CategoryId,
           //     PublishDate=item.PublishDate,
           //      Tags=item.Tags,
           //       Content=item.Content,
           //        Title=item.Title
            
           // };
           //p= db.Posts.Add(p);
            Post p= Mapper.DynamicMap<Post>(item);
            p= db.Posts.Add(p);
            db.SaveChanges();

            return Mapper.DynamicMap<PostDTO>(p);
            
            
        }

        public PostDTO Update(PostDTO item)
        {
            throw new NotImplementedException();
        }


        public List<PostDTO> GetAll()
        {
            List<Post> pList=db.Posts.ToList();
            List<PostDTO> pListDTO = new List<PostDTO>();
            foreach (Post item in pList )
            {
                PostDTO p = Mapper.DynamicMap<PostDTO>(item);
                pListDTO.Add(p);
            }
            return pListDTO;
        }

       




        public bool Delete(Guid Id)
        {
            throw new NotImplementedException();
        }

        public PostDTO GetEntityById(Guid Id)
        {
           Post p= db.Posts.Where(x => x.Id == Id).FirstOrDefault();
           PostDTO pd = Mapper.DynamicMap<PostDTO>(p);
           return pd;
        }
    }
}

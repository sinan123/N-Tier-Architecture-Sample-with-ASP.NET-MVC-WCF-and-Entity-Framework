//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class Post
    {
        public System.Guid Id { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public System.Guid AuthorId { get; set; }
        public System.DateTime PublishDate { get; set; }
        public System.Guid CategoryId { get; set; }
        public string Tags { get; set; }
    
        public virtual Author Author { get; set; }
        public virtual Category Category { get; set; }
    }
}

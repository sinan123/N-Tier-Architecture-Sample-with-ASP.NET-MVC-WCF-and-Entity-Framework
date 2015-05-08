using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace DTOLayer
{
    [DataContract]
    public class PostDTO //: INotifyPropertyChanged
    {
        [DataMember]
        public System.Guid Id { get; set; }
        [DataMember]
        public string Title { get; set; }
        [DataMember]
        public string Content { get; set; }
        [DataMember]
        public System.Guid AuthorId { get; set; }
        [DataMember]
        public System.DateTime PublishDate { get; set; }
        [DataMember]
        public System.Guid CategoryId { get; set; }
        [DataMember]
        public string Tags { get; set; }

        [DataMember]
        public AuthorDTO Author { get; set; }
        [DataMember]
        public CategoryDTO Category { get; set; }

        //private Guid id;
        //[DataMember]
        //public Guid Id
        //{
        //    get { return id; }
        //    set
        //    {
        //        if (id == value)
        //        {
        //            return;
        //        }
        //        id = value;
        //        OnPropertyChanged("Id");


        //    }
        //}
        //private string title;
        //[DataMember]
        //public string Title
        //{
        //    get { return title; }
        //    set
        //    {
        //        if (title == value)
        //        {
        //            return;
        //        }
        //        title = value;
        //        OnPropertyChanged("Title");
        //    }
        //}
        //private string content;
        //[DataMember]
        //public string Content
        //{
        //    get { return content; }
        //    set
        //    {
        //        if (content == value)
        //        {
        //            return;
        //        }
        //        content = value;
        //        OnPropertyChanged("Content");
        //    }
        //}

        //private Guid authorId;
        //[DataMember]
        //public Guid AuthorId
        //{
        //    get { return authorId; }
        //    set
        //    {
        //        if (authorId == value)
        //        {
        //            return;
        //        }
        //        authorId = value;
        //        OnPropertyChanged("AuthorId");
        //    }
        //}
        //private DateTime publishDate;
        //[DataMember]
        //public DateTime PublishDate
        //{
        //    get { return publishDate; }
        //    set
        //    {
        //        if (publishDate == value)
        //        {
        //            return;
        //        }
        //        publishDate = value;
        //        OnPropertyChanged("PublishDate");
        //    }
        //}
        //private Guid categoryId;
        //[DataMember]
        //public Guid CategoryId
        //{
        //    get { return categoryId; }
        //    set
        //    {
        //        if (categoryId == value)
        //        {
        //            return;
        //        }
        //        categoryId = value;
        //        OnPropertyChanged("CategoryId");
        //    }
        //}

        //public AuthorDTO Author { get; set; }
        //public CategoryDTO Category { get; set; }



        //public event PropertyChangedEventHandler PropertyChanged;

        //protected void OnPropertyChanged(string PropertyName)
        //{
        //    if (PropertyChanged != null)
        //    {
        //        this.PropertyChanged(this, new PropertyChangedEventArgs(PropertyName));
        //    }
        //}
    }
}

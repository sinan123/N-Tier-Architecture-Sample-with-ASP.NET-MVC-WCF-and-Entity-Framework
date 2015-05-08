using DTOLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WPFUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            p = new PostDTO();
            this.DataContext = p;

        }
        PostDTO p;
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            PS.PostServiceClient proxy = new PS.PostServiceClient();
            p.Id = Guid.NewGuid();
            p.PublishDate = DateTime.Now;
            p.AuthorId = Guid.Parse("3637E050-4F50-4CCE-A4A7-BAD15450FC0F");
            p.CategoryId = Guid.Parse("53641ADD-C628-4C1A-A8EB-9F9BA1392173");
            proxy.Add(p);
            
        }
    }
}

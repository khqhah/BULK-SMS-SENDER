using System.Data.SqlClient;
namespace SMS
{
    public partial class DashboardPage : ContentPage
    {        
        public DashboardPage()
        {
            InitializeComponent();         
        }       
        private async void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
        {
            //await Navigation.PushAsync(new SendMessagePage());
            await Shell.Current.GoToAsync("//SendMessage");
        }

        private async void TapGestureRecognizer_Tapped_1(object sender, TappedEventArgs e)
        {
            await Shell.Current.GoToAsync("//SendMessageCSV");
        }

        private async void TapGestureRecognizer_Tapped_2(object sender, TappedEventArgs e)
        {
            await Shell.Current.GoToAsync("//ContactsPage");

        }

        private async void TapGestureRecognizer_Tapped_3(object sender, TappedEventArgs e)
        {
            await Shell.Current.GoToAsync("//SendMessageDb");
        }
    }

}

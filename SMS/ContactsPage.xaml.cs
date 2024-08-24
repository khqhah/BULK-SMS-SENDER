using System.Data.SqlClient;
namespace SMS
{
    public partial class ContactsPage : ContentPage
    {
        private readonly ISmsSender _smsSender;

        public ContactsPage()
        {
            InitializeComponent();
            _smsSender = ServiceProvider.Provider.GetRequiredService<ISmsSender>();

        }
        private async void OnCounterClicked(object sender, EventArgs e)
        {

            try
            {
                if (string.IsNullOrEmpty(txtPhone.Text))
                {
                    await DisplayAlert("Error", "Phone Number is Required", "OK");
                    return;
                }
                if (string.IsNullOrEmpty(txtMessage.Text))
                {
                    await DisplayAlert("Error", "Message is Required", "OK");
                    return;
                }
                var x = txtPhone.Text.Split(',');
                var popupPage = new PopupPage();
                await Navigation.PushModalAsync(popupPage);
                for (int i = 0; i < x.Length; i++)
                {
                    _smsSender.SendSms(x[i], txtMessage.Text);
                    await Task.Delay(5000);
                }
                txtMessage.Text = string.Empty;
                txtPhone.Text = string.Empty;
                await DisplayAlert("Success", "Messages Sent Successfully...!", "OK");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message, "OK");
            }
            finally
            {
                await Navigation.PopModalAsync();                
            }                      
        }
    }

}

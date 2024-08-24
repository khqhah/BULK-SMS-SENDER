using System.Data;
using System.Data.SqlClient;

namespace SMS
{
    public partial class SendMessagePage : ContentPage
    {
       // private readonly DatabaseService _databaseService;
        private readonly ISmsSender _smsSender;

        int count = 0;

        public SendMessagePage()
        {
            InitializeComponent();
            //_databaseService = new DatabaseService(App.ConnectionString);
            _smsSender = ServiceProvider.Provider.GetRequiredService<ISmsSender>();

            //   LoadDataAsync();
        }
        private async void LoadDataAsync()
        {
            //var data = await _databaseService.GetDataAsync();
            //DataTable dt = data;
            //string x = dt.Rows[0][0].ToString();
        }
        private async void OnSendButtonClicked(object sender, EventArgs e)
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
                //txtMessage.IsReadOnly = true;
                //txtPhone.IsReadOnly = true;
                //btnSend.IsEnabled = false;
                //LoadingIndicator.IsRunning = true;
                //LoadingIndicator.IsVisible = true;


                var popupPage = new PopupPage();
                await Navigation.PushModalAsync(popupPage);
                _smsSender.SendSms(txtPhone.Text, txtMessage.Text);

                await Task.Delay(5000);
                //LoadingIndicator.IsRunning = false;
                //LoadingIndicator.IsVisible = false;

                //txtMessage.IsReadOnly = false;
                //txtPhone.IsReadOnly = false;
                //btnSend.IsEnabled = true;
               
                txtMessage.Text = string.Empty;
                txtPhone.Text = string.Empty;
                await DisplayAlert("Success", "Message Sent Successfully...!", "OK");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message, "OK");
            }
            finally
            {
                
                await Navigation.PopModalAsync();
                //LoadingIndicator.IsRunning = false;
                //LoadingIndicator.IsVisible = false;
            }
        }
    }
}
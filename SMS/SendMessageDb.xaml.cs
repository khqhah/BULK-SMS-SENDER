using CsvHelper;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.SqlClient;
using System.Formats.Asn1;
using System.Globalization;

namespace SMS
{
    public partial class SendMessageDb : ContentPage
    {
        private readonly ISmsSender _smsSender;
        private readonly DatabaseService _databaseService;
        public ObservableCollection<Parties> Contacts { get; set; }
        public SendMessageDb()
        {
            InitializeComponent();
            _databaseService = new DatabaseService(App.ConnectionString);
            _smsSender = ServiceProvider.Provider.GetRequiredService<ISmsSender>();
            Contacts = new ObservableCollection<Parties>();
            ContactsListView.ItemsSource = Contacts;
        }        
        private async void OnSendButtonClicked(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txtMessage.Text))
                {
                    await DisplayAlert("Error", "Message is Required", "OK");
                    return;
                }
                var message = txtMessage.Text;

                if (!string.IsNullOrWhiteSpace(message) && Contacts.Count > 0)
                {
                    var popupPage = new PopupPage();
                    await Navigation.PushModalAsync(popupPage);
                    foreach (var contact in Contacts)
                    {
                        _smsSender.SendSms(contact.ContactNo, message);
                        await Task.Delay(5000);
                    }
                    await DisplayAlert("Success", "Messages sent successfully!", "OK");
                }
                else
                {
                    await DisplayAlert("Error", "Please upload a CSV and enter a message.", "OK");
                }
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

        private async void Button_Clicked(object sender, EventArgs e)
        {
            var dt = await _databaseService.GetDataAsync();
            Contacts.Clear();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    Parties part = new Parties();
                    part.ContactNo = dr["ContactNo"].ToString();
                    part.PartyName = dr["PartyName"].ToString();
                    Contacts.Add(part);
                }
            }
            else
            {
              await  DisplayAlert("Error", "No Data Found", "OK");
            }
        }
    }
    public class Parties
    {
        public string PartyName { get; set; }
        public string ContactNo { get; set; }
    }
}
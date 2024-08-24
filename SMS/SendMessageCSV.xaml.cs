using CsvHelper;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.SqlClient;
using System.Formats.Asn1;
using System.Globalization;

namespace SMS
{
    public partial class SendMessageCSV : ContentPage
    {
        private readonly ISmsSender _smsSender;       
        public ObservableCollection<Contact> Contacts { get; set; }
        public SendMessageCSV()
        {
            InitializeComponent();            
            _smsSender = ServiceProvider.Provider.GetRequiredService<ISmsSender>();
            Contacts = new ObservableCollection<Contact>();
            ContactsListView.ItemsSource = Contacts;
            //   LoadDataAsync();
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
                        _smsSender.SendSms(contact.Contacts, message);
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
            var result = await FilePicker.PickAsync(new PickOptions
            {
                PickerTitle = "Pick a CSV file"
            });

            if (result != null)
            {
                using (var stream = await result.OpenReadAsync())
                {
                    using (var reader = new StreamReader(stream))
                    using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
                    {
                        var records = csv.GetRecords<Contact>();
                        Contacts.Clear();
                        foreach (var record in records)
                        {
                            Contacts.Add(record);
                        }
                    }
                }
            }
        }
    }
    public class Contact
    {
        public string UserName { get; set; }
        public string Contacts { get; set; }
    }
}
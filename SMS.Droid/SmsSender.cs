using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Android.Telephony;
using Android.Content;
using Android.App;
using SMS.Droid;
using SMS;

namespace SMS.Droid
{
    public partial class SmsSender : ISmsSender
    {
        public void SendSms(string recipient, string messageText)
        {
            try
            {
                SmsManager smsManager = SmsManager.Default;
                smsManager.SendTextMessage(recipient, null, messageText, null, null);                
            }
            catch (Exception ex)
            {                
                throw ex;
            }
        }
    }
}

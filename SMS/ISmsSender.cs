using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS
{
    public interface ISmsSender
    {
        void SendSms(string recipient, string messageText);
    }
}

using Android;
using Android.App;
using Android.Content.PM;
using Android.OS;
using AndroidX.Core.App;
using AndroidX.Core.Content;

namespace SMS.Droid;

[Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, LaunchMode = LaunchMode.SingleTop, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
public class MainActivity : MauiAppCompatActivity
{   
    protected override void OnCreate(Bundle savedInstanceState)
    {
        base.OnCreate(savedInstanceState);

        // Check if the SEND_SMS permission is granted
        if (ContextCompat.CheckSelfPermission(this, Manifest.Permission.SendSms) != Permission.Granted)
        {
            // Request the SEND_SMS permission
            ActivityCompat.RequestPermissions(this, new string[] { Manifest.Permission.SendSms }, 1);
        }
    }

}

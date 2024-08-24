namespace SMS;

public partial class App : Application
{
    public static string ConnectionString { get; private set; }
    public App()
	{
		InitializeComponent();

		MainPage = new AppShell();
        //ConnectionString = "Server=192.168.18.34\\SQLEXPRESS;Database=DreamLand;User Id=sa;Password=123;TrustServerCertificate=true;";
        ConnectionString = "Server=65.108.5.110;Database=shandare_EagleSolar;User Id=Eagle;Password=Ms8899@.;TrustServerCertificate=true;";

    }
}

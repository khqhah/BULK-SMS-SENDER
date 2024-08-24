namespace SMS;

public partial class MainPage : ContentPage
{
    private readonly ISmsSender _smsSender;

    public MainPage()
	{
		InitializeComponent();
        _smsSender = ServiceProvider.Provider.GetRequiredService<ISmsSender>();

    }


    private void OnCounterClicked(object sender, EventArgs e)
	{
        

    }
}


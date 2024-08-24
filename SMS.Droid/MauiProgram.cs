namespace SMS.Droid;

public static class MauiProgram
{
	public static MauiApp CreateMauiApp()
	{
		var builder = MauiApp.CreateBuilder();

		builder
			.UseSharedMauiApp();

        //builder.Services.AddSingleton<MainPage>();
        builder.Services.AddSingleton<ISmsSender, SmsSender>();



        var app = builder.Build();
        ServiceProvider.Provider = app.Services;


        return builder.Build();
	}
}

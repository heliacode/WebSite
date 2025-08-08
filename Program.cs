var builder = WebApplication.CreateBuilder(args);
builder.Services.AddHealthChecks();
var app = builder.Build();

app.UseDefaultFiles();
app.UseStaticFiles();

app.Run();
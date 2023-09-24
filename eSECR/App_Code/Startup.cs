using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(eSECR.Startup))]
namespace eSECR
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

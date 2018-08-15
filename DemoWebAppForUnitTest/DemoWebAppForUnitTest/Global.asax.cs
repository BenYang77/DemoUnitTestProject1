using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Routing;

namespace DemoWebAppForUnitTest
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            //1234567
            GlobalConfiguration.Configure(WebApiConfig.Register);

        }
    }
}

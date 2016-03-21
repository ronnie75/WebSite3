<%@ Application Language="C#" %>
<%@ Import Namespace="WebSite3" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);
    }

    public override string GetVaryByCustomString(HttpContext context, string custom)
{
    if(custom == "Browser")
    {
        return context.Request.Browser.Browser;
    }
    return String.Empty;
}

</script>



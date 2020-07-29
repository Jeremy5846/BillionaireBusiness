using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace JojoArtwork
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Login1_LoggedIn1(object sender, EventArgs e)
        {
            if (Roles.IsUserInRole(Login1.UserName, "Artist"))
            {                
                Response.Redirect("~/Artist/ArtistMenu.aspx");
            }
            else if (Roles.IsUserInRole(Login1.UserName, "Customer")) {
                Session["CUSTOMER_ID"] = Login1.UserName;
                Response.Redirect("~/Customer/CustomerMenu.aspx");
            }
               
        }
    }
}
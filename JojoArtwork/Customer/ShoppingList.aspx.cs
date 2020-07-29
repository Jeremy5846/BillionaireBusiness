using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WishListFunction
{
    public partial class ShoppingList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Button retidbtn = (Button)sender;
            RepeaterItem item = (RepeaterItem)retidbtn.NamingContainer;
            Label NameLabel = (Label)item.FindControl("ART_IDLabel");

            SqlConnection con;
            String str = ConfigurationManager.ConnectionStrings["JojoArtworkConnectionString"].ConnectionString;
            con = new SqlConnection(str);
            con.Open();

            String strAdd = "INSERT INTO WISHLIST (ART_ID,CUSTOMER_ID) SELECT A.ART_ID,C.CUSTOMER_ID FROM ART A , CUSTOMER C WHERE A.ART_ID= " + NameLabel.Text + " AND C.CUSTOMER_ID='1001'";
            SqlCommand cmdSelect = new SqlCommand(strAdd, con);
            cmdSelect.Parameters.AddWithValue("@ART_ID", NameLabel.Text);
            SqlDataReader dtrProd = cmdSelect.ExecuteReader();
            con.Close();
        }
    }
}
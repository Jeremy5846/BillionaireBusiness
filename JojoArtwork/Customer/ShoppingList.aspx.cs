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
            if (IsPostBack)
            {
                int customerid = 0;
                String str = ConfigurationManager.ConnectionStrings["JojoArtworkConnectionString"].ConnectionString;
                String strSel = "SELECT CUSTOMER_ID FROM CUSTOMER WHERE USERNAME =@USERNAME";

                using (SqlConnection con = new SqlConnection(str))
                {
                    SqlCommand cmd = new SqlCommand(strSel, con);
                    SqlParameter paraArtist_ID = new SqlParameter()
                    {
                        ParameterName = "@username",
                        Value = Session["USERNAME"].ToString()
                    };
                    cmd.Parameters.Add(paraArtist_ID);

                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        customerid = reader.GetInt32(0);
                        Session["CUST_ID"] = customerid;
                    }                   
                    con.Close();                   
                }                                
            }
           
            
        }
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {           
            Button retidbtn = (Button)sender;
            RepeaterItem item = (RepeaterItem)retidbtn.NamingContainer;
            Label NameLabel = (Label)item.FindControl("ART_IDLabel");
            String wishlistcustomerid = Session["CUST_ID"].ToString();
            SqlConnection con;
            String str = ConfigurationManager.ConnectionStrings["JojoArtworkConnectionString"].ConnectionString;
            con = new SqlConnection(str);
            con.Open();
                String strAdd = "INSERT INTO WISHLIST (ART_ID,CUSTOMER_ID) SELECT A.ART_ID,C.CUSTOMER_ID FROM ART A , CUSTOMER C WHERE A.ART_ID= " + NameLabel.Text + " AND C.CUSTOMER_ID= " + wishlistcustomerid + "";
                SqlCommand cmdSelect = new SqlCommand(strAdd, con);
                cmdSelect.Parameters.AddWithValue("@ART_ID", NameLabel.Text);
                SqlDataReader dtrProd = cmdSelect.ExecuteReader();
            con.Close();

                
        }
    }
}
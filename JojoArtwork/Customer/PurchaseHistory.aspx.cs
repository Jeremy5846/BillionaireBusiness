using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace JojoArtwork.Customer
{
    public partial class PurchaseHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUserName.Text = Session["USERNAME"].ToString();
            int customerid = 0;
            String str = ConfigurationManager.ConnectionStrings["JojoArtworkConnectionString"].ConnectionString;
            String strSel = "SELECT CUSTOMER_ID FROM CUSTOMER WHERE USERNAME =@USERNAME";

            using (SqlConnection con = new SqlConnection(str))
            {
                SqlCommand cmd = new SqlCommand(strSel, con);
                SqlParameter paraArtist_ID = new SqlParameter()
                {
                    ParameterName = "@USERNAME",
                    Value = Session["USERNAME"].ToString()
                };
                cmd.Parameters.Add(paraArtist_ID);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    customerid = reader.GetInt32(0);
                    Session["ID"] = customerid;
                }
                con.Close();


                if (!this.IsPostBack)
                {
                    this.BindGrid();
                }
            }
        }

        private void BindGrid()
        {
            SqlConnection con;
            String str = ConfigurationManager.ConnectionStrings["JojoArtworkConnectionString"].ConnectionString;
            con = new SqlConnection(str);
            con.Open();
            String customerid = Session["ID"].ToString();
            //retrieve data
            String strSelect = "SELECT O.CUSTOMER_ID, O.ORDER_ID, T.DATE_AND_TIME, A.ART_NAME, A.ART_FILEPATH, O.QUANTITY, A.ART_COST, (O.QUANTITY * A.ART_COST) AS TOTALPRICE FROM[ORDER]O, [TRANSACTION]T, [ART]A WHERE O.ORDER_ID = T.ORDER_ID AND O.ART_ID = A.ART_ID AND O.CUSTOMER_ID = @customerid";
            SqlCommand cmdSelect = new SqlCommand(strSelect, con);

            cmdSelect.Parameters.AddWithValue("@customerid", customerid);

            SqlDataReader dtrProd = cmdSelect.ExecuteReader();
            GridView1.DataSource = dtrProd;
            GridView1.DataBind();

            con.Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WishListFunction
{
    public partial class WishList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                                    
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
            String strSelect = "SELECT W.ART_ID, A.ART_NAME ,A.ART_FILEPATH , A.ART_COST, W.CUSTOMER_ID FROM WISHLIST W, ART A WHERE W.ART_ID = A.ART_ID AND W.CUSTOMER_ID = @customerid";
            SqlCommand cmdSelect = new SqlCommand(strSelect, con);

            cmdSelect.Parameters.AddWithValue("@customerid", customerid);

            SqlDataReader dtrProd = cmdSelect.ExecuteReader();                                       
                GridView1.DataSource = dtrProd;
                GridView1.DataBind();
            
            con.Close();
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            String customerid = Session["ID"].ToString();
            int artId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string query = "DELETE FROM WISHLIST WHERE ART_ID=@artId AND CUSTOMER_ID ="+ customerid +"";
            string constr = ConfigurationManager.ConnectionStrings["JojoArtworkConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@artId", artId);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            this.BindGrid();
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression    
    }
}
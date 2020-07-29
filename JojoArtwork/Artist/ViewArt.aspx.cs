using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;

namespace AssignmentPart1
{
    public partial class ViewArt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (RepeaterItem item in Repeater.Items)
            {
                Label label = item.FindControl("Label4") as Label;
                String value = label.Text;
                label.Visible = false;

                DropDownList ddl = item.FindControl("ddlStock") as DropDownList;
                ddl.Visible = true;

                for(int i = 0; i < 100; i++)
                {
                    ddl.Items.Add((i + 1).ToString());
                }
                ddl.SelectedValue = value;
            }
            editBtn.Visible = false;
            confirmBtn.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            //Update data
            String strInsert = "UPDATE dbo.Art SET ART_STOCK = @ART_STOCK WHERE ART_ID = @ART_ID";

            foreach (RepeaterItem item in Repeater.Items)
            {
                HiddenField artID = item.FindControl("hiddenID") as HiddenField;
                DropDownList ddl = item.FindControl("ddlStock") as DropDownList;
                Label label = item.FindControl("Label4") as Label;
                label.Text = ddl.SelectedValue;

                using (SqlConnection con = new SqlConnection(connection))
                {
                    SqlCommand cmd = new SqlCommand(strInsert, con);

                    SqlParameter paraStock = new SqlParameter()
                    {
                        ParameterName = "@ART_STOCK",
                        Value = ddl.SelectedValue
                    };
                    cmd.Parameters.Add(paraStock);

                    SqlParameter paraID = new SqlParameter()
                    {
                        ParameterName = "@ART_ID",
                        Value = artID.Value
                    };
                    cmd.Parameters.Add(paraID);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                ddl.Visible = false;
                label.Visible = true;
                
            }
            editBtn.Visible = true;
            confirmBtn.Visible = false;
            
        }
    }
}
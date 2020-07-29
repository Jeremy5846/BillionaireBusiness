using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

namespace JojoArtwork
{
    public partial class RegisterCustomer : System.Web.UI.Page
    {

        String table = "Customer";

        static String str = ConfigurationManager.ConnectionStrings["JojoArtworkDB"].ConnectionString;

        SqlConnection con = new SqlConnection(str);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

 

        protected void CreateUserWizard1_CreatedUser1(object sender, EventArgs e)
        {
            TextBox firstNameenter = (TextBox)CreateUserWizard1.WizardSteps[0].FindControl("CreateUserStepContainer").FindControl("FirstName");
            TextBox lastNameenter = (TextBox)CreateUserWizard1.WizardSteps[0].FindControl("CreateUserStepContainer").FindControl("LastName");

            String firstName = firstNameenter.Text;
            String lastName = lastNameenter.Text;
            String username = CreateUserWizard1.UserName;



            con.Open();

            //retrieve data
            String strAdd = "INSERT INTO " + table + " (FIRST_NAME, LAST_NAME, USERNAME) VALUES (@FIRST_NAME, @LAST_NAME, @USERNAME);";

            SqlCommand cmdAdd = new SqlCommand(strAdd, con);

            cmdAdd.Parameters.AddWithValue("@FIRST_NAME", firstName);
            cmdAdd.Parameters.AddWithValue("@LAST_NAME", lastName);
            cmdAdd.Parameters.AddWithValue("@USERNAME", username);

            cmdAdd.ExecuteNonQuery();

            con.Close();

            Roles.AddUserToRole(username, "Customer");


        }
    }
}
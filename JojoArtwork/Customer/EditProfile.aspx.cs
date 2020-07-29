using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

namespace JojoArtwork.Customer
{
    public partial class EditProfile : System.Web.UI.Page
    {
        String table = "Customer";

        static String str = ConfigurationManager.ConnectionStrings["JojoArtworkDB"].ConnectionString;

        SqlConnection con = new SqlConnection(str);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                MembershipUser currentuser = Membership.GetUser();

                string firstName = "";
                string lastName = "";
                string dob = "";
                string contactNo = "";
                char gender = ' ';
                string delName = "";
                string delPhone = "";
                string delAddress = "";
                bool isBill = true;
                string bilName = "";
                string bilPhone = "";
                string bilAddress = "";
                string strGender = "";

                String username = currentuser.UserName;
                String email = currentuser.Email;

                con.Open();

                //retrieve data
                String strAdd = "SELECT * FROM " + table + " WHERE username = @username;";

                SqlCommand cmdAdd = new SqlCommand(strAdd, con);
                SqlDataReader dataReader;
                cmdAdd.Parameters.AddWithValue("@username", username);
                dataReader = cmdAdd.ExecuteReader();
                while (dataReader.Read())
                {
                    firstName = dataReader["FIRST_NAME"].ToString();
                    lastName = dataReader["LAST_NAME"].ToString();
                    dob = dataReader["DATE_OF_BIRTH"].ToString();
                    contactNo = dataReader["CONTACT_NO"].ToString();
                    strGender = dataReader["GENDER"].ToString();
                    if (strGender != "" && strGender != null)
                    {
                        gender = char.Parse(strGender);
                    }
                    delName = dataReader["DELIVERY_NAME"].ToString();
                    delPhone = dataReader["DELIVERY_CONTACT"].ToString();
                    delAddress = dataReader["DELIVERY_ADDRESS"].ToString();
                    isBill = (bool)dataReader["ISBILLING"];
                    bilName = dataReader["BILLING_NAME"].ToString();
                    bilPhone = dataReader["BILLING_CONTACT"].ToString();
                    bilAddress = dataReader["BILLING_ADDRESS"].ToString();
                }

                con.Close();

                txtFirstName.Text = firstName;
                txtLastName.Text = lastName;
                txtDob.Text = dob;
                txtEmail.Text = email;
                txtContactNo.Text = contactNo;
                if (gender != ' ')
                {
                    rbGender.SelectedValue = gender.ToString();
                }
                txtDelName.Text = delName;
                txtDelPhone.Text = delPhone;
                txtDelAddress.Text = delAddress;
                cbBilAddress.Checked = isBill;
                txtBilName.Text = bilName;
                txtBilPhone.Text = bilPhone;
                txtBilAddress.Text = bilAddress;

                if (cbBilAddress.Checked)
                {
                    UpdatePanel1.UpdateMode = UpdatePanelUpdateMode.Conditional;
                    BillPanel.Visible = false;
                    UpdatePanel1.Update();
                }
                else
                {
                    UpdatePanel1.UpdateMode = UpdatePanelUpdateMode.Conditional;
                    BillPanel.Visible = true;
                    UpdatePanel1.Update();
                }

            }

        }

        protected void cbBilAddress_CheckedChanged(object sender, EventArgs e)
        {
            if (cbBilAddress.Checked)
            {
                UpdatePanel1.UpdateMode = UpdatePanelUpdateMode.Conditional;
                BillPanel.Visible = false;
                UpdatePanel1.Update();
            }
            else
            {
                UpdatePanel1.UpdateMode = UpdatePanelUpdateMode.Conditional;
                BillPanel.Visible = true;
                UpdatePanel1.Update();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/CustomerMenu.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string firstName = "";
            string lastName = "";
            string dob = "";
            string contactNo = "";
            char gender = 'M';
            string delName = "";
            string delPhone = "";
            string delAddress = "";
            bool isBill = true;
            string bilName = "";
            string bilPhone = "";
            string bilAddress = "";

            MembershipUser currentuser = Membership.GetUser();
            String username = currentuser.UserName;


            firstName = txtFirstName.Text;
            lastName = txtLastName.Text;
            dob = txtDob.Text;
            contactNo = txtContactNo.Text;
            gender = char.Parse(rbGender.SelectedValue);
            delName = txtDelName.Text;
            delPhone = txtDelPhone.Text;
            delAddress = txtDelAddress.Text;
            isBill = cbBilAddress.Checked;
            bilName = txtBilName.Text;
            bilPhone = txtBilPhone.Text;
            bilAddress = txtBilAddress.Text;





            con.Open();

            //retrieve data
            String strAdd = "UPDATE " + table + " SET FIRST_NAME = @FIRST_NAME, LAST_NAME = @LAST_NAME, DATE_OF_BIRTH = @DATE_OF_BIRTH, CONTACT_NO = @CONTACT_NO, GENDER = @GENDER, DELIVERY_NAME = @DELIVERY_NAME, DELIVERY_CONTACT = @DELIVERY_CONTACT, DELIVERY_ADDRESS = @DELIVERY_ADDRESS, ISBILLING = @ISBILLING, BILLING_NAME = @BILLING_NAME, BILLING_CONTACT = @BILLING_CONTACT, BILLING_ADDRESS = @BILLING_ADDRESS WHERE USERNAME = @USERNAME;";

            SqlCommand cmdAdd = new SqlCommand(strAdd, con);

            cmdAdd.Parameters.AddWithValue("@FIRST_NAME", firstName);
            cmdAdd.Parameters.AddWithValue("@LAST_NAME", lastName);
            cmdAdd.Parameters.AddWithValue("@DATE_OF_BIRTH", dob);
            cmdAdd.Parameters.AddWithValue("@CONTACT_NO", contactNo);
            cmdAdd.Parameters.AddWithValue("@GENDER", gender);
            cmdAdd.Parameters.AddWithValue("@DELIVERY_NAME", delName);
            cmdAdd.Parameters.AddWithValue("@DELIVERY_CONTACT", delPhone);
            cmdAdd.Parameters.AddWithValue("@DELIVERY_ADDRESS", delAddress);
            cmdAdd.Parameters.AddWithValue("@ISBILLING", isBill);
            cmdAdd.Parameters.AddWithValue("@BILLING_NAME", bilName);
            cmdAdd.Parameters.AddWithValue("@BILLING_CONTACT", bilPhone);
            cmdAdd.Parameters.AddWithValue("@BILLING_ADDRESS", bilAddress);
            cmdAdd.Parameters.AddWithValue("@USERNAME", username);

            cmdAdd.ExecuteNonQuery();

            con.Close();

            currentuser.Email = txtEmail.Text;
            Membership.UpdateUser(currentuser);


            lblSucessful.Text = "Successful Saved.";
        }
    }
}
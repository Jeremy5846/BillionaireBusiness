using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

namespace AssignmentPart1
{
    public partial class Artist : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UploadBtn_Click(object sender, EventArgs e)
        {
            String path = "";

                if (ImageUpload.PostedFile != null)
                {
                    string folderPath = Server.MapPath("~/Image/");

                    if (ImageUpload.PostedFile.FileName.Length > 0)
                    {
                        //Check whether Directory (Folder) exists.
                        if (!Directory.Exists(folderPath))
                        {
                            //If Directory (Folder) does not exists Create it.
                            Directory.CreateDirectory(folderPath);
                        }

                        //Save the File to the Directory (Folder).
                        ImageUpload.SaveAs(folderPath + Path.GetFileName(ImageUpload.FileName));
                        path = "/Image/" + Path.GetFileName(ImageUpload.FileName);
                        //Display the Picture in Image control.
                        //ImageDisplay.ImageUrl = "~/Image/" + Path.GetFileName(ImageUpload.FileName);
                    }
                }

                HttpPostedFile postedFile = ImageUpload.PostedFile;
                String fileName = Path.GetFileName(postedFile.FileName);
                String fileExtension = Path.GetExtension(fileName);

                String artName = nameTbt.Text;
                int quantity = Convert.ToInt32(ddlQuantity.SelectedValue);
                double cost = Convert.ToDouble(costTbt.Text);
                String genre = rblType.SelectedValue;
                String date = DateTime.Now.ToString("dd/MM/yyyy");
                String description = descTbt.Text;
                MembershipUser currentuser = Membership.GetUser();
                String username = currentuser.UserName;
                int artID = 0;

                if (fileExtension.ToLower().Equals(".jpg") || fileExtension.ToLower().Equals(".bmp") || fileExtension.ToLower().Equals(".gif") || fileExtension.ToLower().Equals(".png"))
                    {
                    //Stream stream = postedFile.InputStream;
                    //BinaryReader binaryReader = new BinaryReader(stream);
                    byte[] imgByte = new Byte[postedFile.ContentLength];
                    postedFile.InputStream.Read(imgByte, 0, postedFile.ContentLength);

                    String connection = ConfigurationManager.ConnectionStrings["JojoArtworkDB"].ConnectionString;

                    String strSelect = "SELECT ARTIST_ID FROM Artist WHERE username = @username;";

                    using (SqlConnection con = new SqlConnection(connection))
                    {
                        SqlCommand cmd = new SqlCommand(strSelect, con);

                        SqlParameter paraArtist_ID = new SqlParameter()
                        {
                            ParameterName = "@username",
                            Value = username
                        };
                        cmd.Parameters.Add(paraArtist_ID);

                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();

                        while (reader.Read())
                        {
                            artID = reader.GetInt32(0);
                        }
                        
                        con.Close();
                    }   


                //Insert data
                String strInsert = "INSERT INTO dbo.Art(ART_NAME, GENRE, PUBLISH_DATE, ART_COST, ART_DESCRIPTION, ART_STOCK, ART_FILEPATH, ARTIST_ID) VALUES (@ART_NAME, @GENRE, @PUBLISH_DATE, @ART_COST, @ART_DESCRIPTION, @ART_STOCK, @ART_FILEPATH, @ARTIST_ID)";

                    using (SqlConnection con = new SqlConnection(connection))
                    {
                        SqlCommand cmd = new SqlCommand(strInsert, con);

                        SqlParameter paraName = new SqlParameter()
                        {
                            ParameterName = "@ART_NAME",
                            Value = artName
                        };
                        cmd.Parameters.Add(paraName);

                        SqlParameter paraGenre = new SqlParameter()
                        {
                            ParameterName = "@GENRE",
                            Value = genre
                        };
                        cmd.Parameters.Add(paraGenre);

                        SqlParameter paraDate = new SqlParameter()
                        {
                            ParameterName = "@PUBLISH_DATE",
                            Value = date
                        };
                        cmd.Parameters.Add(paraDate);

                        SqlParameter paraCost = new SqlParameter()
                        {
                            ParameterName = "@ART_COST",
                            Value = cost
                        };
                        cmd.Parameters.Add(paraCost);

                        SqlParameter paraDesc = new SqlParameter()
                        {
                            ParameterName = "@ART_DESCRIPTION",
                            Value = description
                        };
                        cmd.Parameters.Add(paraDesc);

                        SqlParameter paraArtPath = new SqlParameter()
                        {
                            ParameterName = "@ART_FILEPATH",
                            Value = path
                        };
                        cmd.Parameters.Add(paraArtPath);

                        SqlParameter paraQuantity = new SqlParameter()
                        {
                            ParameterName = "@ART_STOCK",
                            Value = quantity
                        };
                        cmd.Parameters.Add(paraQuantity);

                        SqlParameter paraArtistID = new SqlParameter()
                        {
                            ParameterName = "@ARTIST_ID",
                            Value = artID
                        };
                        cmd.Parameters.Add(paraArtistID);

                         con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();

                        //Set visible of lblMsg after inserted file path.
                        lblMsg.Visible = true;
                        lblMsg.Text = "Successful uploaded.";
                    }
                }
                else
                {
                    //Set visible of lblMsg after inserted file path.
                    lblMsg.Visible = true;
                    lblMsg.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded";
                }
            
        }
    }
}
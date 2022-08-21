using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ayurvedic_Store_System
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Ayurvedic_Store_SystemDB;Integrated Security=True");

        void Con_Open()
        {
            if (Con.State == System.Data.ConnectionState.Closed)
            {
                Con.Open();
            }
        }
        void Con_Close()
        {
            if (Con.State == System.Data.ConnectionState.Open)
            {
                Con.Close();
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
           // MessageBoxShow("Please Enter Your Username and Password!");
        }

  

        protected void btn_Login_Click1(object sender, EventArgs e)
        {
            Con_Open();

            if (tb_Username.Text != "" && tb_Password.Text != "" )
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = Con;
                cmd.CommandText = "Select Count(*) from Login_Details where  Username = '" + tb_Username.Text + "' And Password = '" + tb_Password.Text + "' ";

                

                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                if (temp == 1)
                {
                    Response.Redirect("http://localhost:1545/MDI_Ayurvedic_Store.aspx");
                }
                else
                {
                    Note.ForeColor = System.Drawing.Color.Red;

                    Note.Text = "Your Email_ID or Password is Invalid !";

                }

            }
            tb_Username.Text = "";
            tb_Password.Text = "";
            tb_Username.Focus();

            Con_Close();

        }
    }
}

































//SqlCommand Cmd = new SqlCommand("Select Count(*) from User_Login where Username = '" + tb_Username.Text + "' And Password = '" + tb_Password.Text + "' ", Con);
//cmd.ExecuteNonQuery();

        /*
        private void MessageBoxShow(string message)
        {

            this.AlertBoxMessage.InnerText = message;
            this.AlertBox.Visible = true;
        }

        
        protected void txt_Username_TextChanged(object sender, EventArgs e)
        {
            tb_Username.Text = "";
        }

        protected void txt_password_TextChanged(object sender, EventArgs e)
        {
            tb_Password.Text = "";
        }
         * 
         * 
            throw new NotImplementedException();
         


        protected void btn_Login_Click(object sender, EventArgs e)
        {

        }
         * 
         * */
    
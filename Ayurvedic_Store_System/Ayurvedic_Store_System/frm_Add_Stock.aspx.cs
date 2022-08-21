using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ayurvedic_Store_System
{
    public partial class frm_Add_Stock : System.Web.UI.Page
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
        void Clear_Controls()
        {
            txt_Stock_ID.Text = Convert.ToString(Auto_Incr());
            ddl_PName.Text = "";
            Txt_CStock.Text = "";
            txt_date.Text = "";
            Txt_Nstock.Text = "";
            txt_mfgdt.Text = "";
            txt_expdt.Text = "";
            ddl_Category.SelectedIndex = -1;
            txt_Stock_ID.Text = "";
        }

        int Auto_Incr()
        {
            Con_Open();
            int Cnt = 0;
            SqlCommand Cmd = new SqlCommand();
            Cmd.CommandText = "Select Count(Stock_ID) from Stock_Details";
            Cmd.Connection = Con;
            Cnt = Convert.ToInt32(Cmd.ExecuteScalar());
            Cmd.Dispose();
            if (Cnt > 0)
            {
                Cnt = Cnt + 1;
            }
            else
            {
                Cnt = 1;
            }
            Con_Close();
            return Cnt;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Con_Open();
            SqlCommand Cmd = new SqlCommand("Select Distinct (Category_Name) from Category_Details", Con);
            var obj = Cmd.ExecuteReader();
            while (obj.Read())
            {
                ddl_Category.Items.Add(obj.GetString(obj.GetOrdinal("Category_Name")));
            }
            obj.Dispose();

            SqlCommand Cmd1 = new SqlCommand("Select Distinct(Product_Name) from Product_Details", Con);
            var obj1 = Cmd1.ExecuteReader();
            while (obj1.Read())
            {
                ddl_PName.Items.Add(obj1.GetString(obj1.GetOrdinal("Product_Name")));
            }
            obj1.Dispose();

            txt_Stock_ID.Text = Convert.ToString(Auto_Incr());
            Txt_CStock.Text = "0";
            Txt_Nstock.Text = "0";
            Con_Close();
            txt_date.Text = DateTime.Now.ToString("yyyy-MM-dd");

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            Con_Open();
            if (txt_Stock_ID.Text != "" && ddl_PName.Text != "" && txt_date.Text != "" && Txt_CStock.Text != "" && Txt_Nstock.Text != "" && txt_mfgdt.Text != "" && txt_expdt.Text != "")
            {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Con;
            cmd.CommandText = "Insert into Stock_Details(Stock_ID,Product_Name,Date,Current_Stock,New_Stock,Mfg_Date,Expiry_Date) Values ('" + txt_Stock_ID.Text + "', '" + ddl_PName.Text + "', '" + txt_date.Text + "', '" + Txt_CStock.Text + "', '" + Txt_Nstock.Text + "',  '" + txt_mfgdt.Text + "', '" + txt_expdt.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript'>alert('Record Save Successfully')</script> ");
            Clear_Controls();
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('First fill all the fields')</script> ");
            }
            Con_Close();
            Clear_Controls();
        }
    }
}
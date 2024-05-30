using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWebForm
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetUsersList();
            }
            
        }
        
        SqlConnection con = new SqlConnection(@"Data Source=CHANDUU\SQLEXPRESS;Initial Catalog=WebForms; Integrated Security=True;");
        protected void Insert_User(object sender, EventArgs e)
        {
            int userId = int.Parse(TextBox1.Text);
            string userName = TextBox2.Text, specifications = DropDownList1.Text, Email = TextBox3.Text, Gender = RadioButtonList1.Text,
            city = TextBox4.Text, State = TextBox5.Text, Pincode = TextBox6.Text;
            DateTime date= DateTime.Parse(TextBox7.Text);
            con.Open();
            SqlCommand cmd =new SqlCommand("exec InsertUsers '"+userId+"','"+userName+"','"+specifications+"','"+Email+"','"+Gender+"','"+city+"','"+State+"','"+Pincode+"','"+date+"' ",con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this,this.GetType(),"Script","alert('Successfuly Registerd')",true);
            GetUsersList();
        }
        void GetUsersList()
        {
            SqlCommand cmd = new SqlCommand("exec ListOfUsers ", con);
            SqlDataAdapter sqlData= new SqlDataAdapter(cmd);
            DataTable dataTable = new DataTable();
            sqlData.Fill(dataTable);
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        
        protected void Update_User(object sender, EventArgs e)
        {
            int userId = int.Parse(TextBox1.Text);
            string userName = TextBox2.Text, specifications = DropDownList1.Text, Email = TextBox3.Text, Gender = RadioButtonList1.Text,
            city = TextBox4.Text, State = TextBox5.Text, Pincode = TextBox6.Text;
            DateTime date = DateTime.Parse(TextBox7.Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("exec UpdateUsers '" + userId + "','" + userName + "','" + specifications + "','" + Email + "','" + Gender + "','" + city + "','" + State + "','" + Pincode + "','" + date + "' ", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfuly Updated')", true);
            GetUsersList();
        }

        protected void Delete_User(object sender, EventArgs e)
        {
            int userId = int.Parse(TextBox1.Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("exec DeleteUsers '" + userId + "'",con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfuly Deleted')", true);
            GetUsersList();
        }

        protected void Search_User(object sender, EventArgs e)
        {

            int userId = int.Parse(TextBox1.Text);
           
            SqlCommand cmd = new SqlCommand("exec GetSpecificUsers '" + userId + "'", con);
            SqlDataAdapter sd= new SqlDataAdapter(cmd);
            DataTable dataTable = new DataTable();
            sd.Fill(dataTable);
            GridView1.DataSource = dataTable;   
            GridView1.DataBind();
            
        }
    }
}
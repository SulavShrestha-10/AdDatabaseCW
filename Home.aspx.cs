using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineVotingSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Emp_Count = GetEmpRowCount();
            int Dept_Count = GetDeptRowCount();
            int Role_Count = GetRoleRowCount();
            int Job_Count = GetJobRowCount();
            int Address_Count = GetAddressRowCount();
            Label1.Text = Emp_Count.ToString();
            Label2.Text = Dept_Count.ToString();
            Label3.Text = Job_Count.ToString();
            Label4.Text = Role_Count.ToString();
            Label5.Text = Address_Count.ToString();
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Employees.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Departments.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Jobs.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Roles.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Address.aspx");
        }
        private int GetEmpRowCount()
        {
            string connectionString = "Data Source=localhost;Persist Security Info=True;User ID=ovs;Password=ovs;";
            OracleConnection connection = new OracleConnection(connectionString);
            string query = "SELECT COUNT(*) FROM Employee";
            OracleCommand command = new OracleCommand(query, connection);
            connection.Open();
            int count = Convert.ToInt32(command.ExecuteScalar());
            connection.Close();
            return count;
        }
        private int GetDeptRowCount()
        {
            string connectionString = "Data Source=localhost;Persist Security Info=True;User ID=ovs;Password=ovs;";
            OracleConnection connection = new OracleConnection(connectionString);
            string query = "SELECT COUNT(*) FROM Department";
            OracleCommand command = new OracleCommand(query, connection);
            connection.Open();
            int count = Convert.ToInt32(command.ExecuteScalar());
            connection.Close();
            return count;
        }
        private int GetRoleRowCount()
        {
            string connectionString = "Data Source=localhost;Persist Security Info=True;User ID=ovs;Password=ovs;";
            OracleConnection connection = new OracleConnection(connectionString);
            string query = "SELECT COUNT(*) FROM Role";
            OracleCommand command = new OracleCommand(query, connection);
            connection.Open();
            int count = Convert.ToInt32(command.ExecuteScalar());
            connection.Close();
            return count;
        }
        private int GetAddressRowCount()
        {
            string connectionString = "Data Source=localhost;Persist Security Info=True;User ID=ovs;Password=ovs;";
            OracleConnection connection = new OracleConnection(connectionString);
            string query = "SELECT COUNT(*) FROM Address";
            OracleCommand command = new OracleCommand(query, connection);
            connection.Open();
            int count = Convert.ToInt32(command.ExecuteScalar());
            connection.Close();
            return count;
        }
        private int GetJobRowCount()
        {
            string connectionString = "Data Source=localhost;Persist Security Info=True;User ID=ovs;Password=ovs;";
            OracleConnection connection = new OracleConnection(connectionString);
            string query = "SELECT COUNT(*) FROM Job";
            OracleCommand command = new OracleCommand(query, connection);
            connection.Open();
            int count = Convert.ToInt32(command.ExecuteScalar());
            connection.Close();
            return count;
        }
    }
}
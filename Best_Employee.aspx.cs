using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineVotingSystem
{
    public partial class Best_Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // bind the GridView to the data source
                GridView1.DataBind();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = @"SELECT vr.candidate_id, c.emp_name, d.dept_name, j.job_title, COUNT(*) AS Number_of_Votes 
                                      FROM Voting_Record vr 
                                      JOIN employee c ON vr.candidate_id = c.emp_id 
                                      JOIN department d ON c.dept_id = d.dept_id 
                                      JOIN job j ON c.job_id = j.job_id 
                                      WHERE voting_month = :voting_record 
                                      GROUP BY vr.candidate_id, c.emp_name, d.dept_name, j.job_title 
                                      ORDER BY Number_of_Votes DESC";
            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add("voting_record", DropDownList1.SelectedValue);
            GridView1.DataBind();
        }
    }
}
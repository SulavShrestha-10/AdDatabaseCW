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
            SqlDataSource1.SelectCommand = @"SELECT vr.candidate_id, c.emp_name, d.dept_name,j.job_title, COUNT(*) as Number_of_Votes
FROM Voting_Record vr
join employee c on vr.candidate_id = c.emp_id
join department d on c.dept_id = d.dept_id
join job j on c.job_id = j.job_id
WHERE voting_month = @voting_record
GROUP BY candidate_id, c.emp_name,d.dept_name,j.job_title
ORDER BY Number_of_Votes DESC;";
            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add(":voting_record", DropDownList1.SelectedValue);
            GridView1.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineVotingSystem
{
    public partial class Job_History : System.Web.UI.Page
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
            SqlDataSource1.SelectCommand = @"SELECT e.emp_name, d.dept_name, j.job_title, jh.start_date, jh.end_date
FROM job_history jh
JOIN employee e ON jh.emp_id = e.emp_id
JOIN department d ON jh.dept_id = d.dept_id
JOIN job j ON jh.job_id = j.job_id
where e.emp_id = :employee and end_date is not null";
            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add("employee", DropDownList1.SelectedValue);
            GridView1.DataBind();
        }
    }
}
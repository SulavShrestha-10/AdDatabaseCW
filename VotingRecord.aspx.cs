using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineVotingSystem
{
    public partial class VotingRecord : System.Web.UI.Page
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
            SqlDataSource1.SelectCommand = @"SELECT v.emp_name as ""Voter Name"", vd.dept_name as ""Voter Department"", c.emp_id ""Candidate ID"", c.emp_name ""Candidate Name"", cd.dept_name ""Candidate Department"", vr.voting_month, vr.voting_year
from voting_record vr
join employee c on vr.candidate_id=c.emp_id
join employee v on vr.voter_id=v.emp_id
join department cd on cd.dept_id=c.dept_id
join department vd on vd.dept_id=v.dept_id
where v.emp_id = :employee";
            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add("employee", DropDownList1.SelectedValue);
            GridView1.DataBind();

        }
    }
}
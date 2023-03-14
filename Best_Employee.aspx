<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Best_Employee.aspx.cs" Inherits="OnlineVotingSystem.Best_Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container row m-1">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT vr.candidate_id, c.emp_name, d.dept_name,j.job_title, COUNT(*) as Number_of_Votes
FROM Voting_Record vr
join employee c on vr.candidate_id = c.emp_id
join department d on c.dept_id = d.dept_id
join job j on c.job_id = j.job_id
GROUP BY candidate_id, c.emp_name,d.dept_name,j.job_title
ORDER BY Number_of_Votes  DESC
">
        </asp:SqlDataSource>
        <h1>Top Employee of Month</h1>
        <div class="col-md-4 d-flex my-3 align-content-center justify-content-center">
            <label class="form-label fw-bold me-2">Select a Month: </label>
            <asp:DropDownList CssClass="form-control me-2" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="VOTING_MONTH" DataValueField="VOTING_MONTH">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Show Results" OnClick="Button1_Click" CssClass="btn btn-primary" />
        </div>
        <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="CANDIDATE_ID" HeaderText="CANDIDATE_ID" SortExpression="CANDIDATE_ID" />
                <asp:BoundField DataField="EMP_NAME" HeaderText="EMP_NAME" SortExpression="EMP_NAME" />
                <asp:BoundField DataField="DEPT_NAME" HeaderText="DEPT_NAME" SortExpression="DEPT_NAME" />
                <asp:BoundField DataField="JOB_TITLE" HeaderText="JOB_TITLE" SortExpression="JOB_TITLE" />
                <asp:BoundField DataField="NUMBER_OF_VOTES" HeaderText="NUMBER_OF_VOTES" SortExpression="NUMBER_OF_VOTES" />
            </Columns>
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT voting_month FROM voting_record"></asp:SqlDataSource>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Job_History.aspx.cs" Inherits="OnlineVotingSystem.Job_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row m-1">
        <h1>Job History Details</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;CITY&quot;, &quot;DISTRICT&quot;, &quot;PROVINCE&quot;) VALUES (:ADDRESS_ID, :CITY, :DISTRICT, :PROVINCE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT e.emp_name, d.dept_name, j.job_title, start_date, end_date
FROM job_history jh
JOIN employee e ON jh.emp_id = e.emp_id
JOIN department d ON jh.dept_id = d.dept_id
JOIN job j ON jh.job_id = j.job_id"></asp:SqlDataSource>
        <div class="col-md-3 d-flex my-3 align-content-center justify-content-center">
            <label class="form-label me-2 fw-bold">Select a Employee: </label>
            <asp:DropDownList CssClass="form-control me-2" ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="EMP_NAME" DataValueField="EMP_ID">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Show Results" CssClass="btn btn-primary" OnClick="Button1_Click"/>
        </div>
        <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="EMP_NAME" HeaderText="EMP_NAME" SortExpression="EMP_NAME" />
                <asp:BoundField DataField="DEPT_NAME" HeaderText="DEPT_NAME" SortExpression="DEPT_NAME" />
                <asp:BoundField DataField="JOB_TITLE" HeaderText="JOB_TITLE" SortExpression="JOB_TITLE" />
                <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" DataFormatString="{0:dd-MMM-yyyy}" />
                <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" DataFormatString="{0:dd-MMM-yyyy}" />
            </Columns>
        </asp:GridView>
    </div>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select emp_id, emp_name from employee"></asp:SqlDataSource>
</asp:Content>

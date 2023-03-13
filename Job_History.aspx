<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Job_History.aspx.cs" Inherits="OnlineVotingSystem.Job_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container row m-1">
        <h1>Job History Details</h1>
        <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="EMP_NAME" HeaderText="EMP_NAME" SortExpression="EMP_NAME" />
                <asp:BoundField DataField="DEPT_NAME" HeaderText="DEPT_NAME" SortExpression="DEPT_NAME" />
                <asp:BoundField DataField="JOB_TITLE" HeaderText="JOB_TITLE" SortExpression="JOB_TITLE" />
                <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" DataFormatString="{0:dd-MMM-yyyy}" />
                <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" DataFormatString="{0:dd-MMM-yyyy}" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;CITY&quot;, &quot;DISTRICT&quot;, &quot;PROVINCE&quot;) VALUES (:ADDRESS_ID, :CITY, :DISTRICT, :PROVINCE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT e.emp_name, d.dept_name, j.job_title, start_date, end_date
FROM job_history jh
JOIN employee e ON jh.emp_id = e.emp_id
JOIN department d ON jh.dept_id = d.dept_id
JOIN job j ON jh.job_id = j.job_id"
            UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;CITY&quot; = :CITY, &quot;DISTRICT&quot; = :DISTRICT, &quot;PROVINCE&quot; = :PROVINCE WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">
            <DeleteParameters>
                <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="DISTRICT" Type="String" />
                <asp:Parameter Name="PROVINCE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="DISTRICT" Type="String" />
                <asp:Parameter Name="PROVINCE" Type="String" />
                <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

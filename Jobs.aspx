<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Jobs.aspx.cs" Inherits="OnlineVotingSystem.Pages.Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container row m-1">
        <h1>Jobs Details</h1>

        <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="JOB_ID" HeaderText="JOB_ID" SortExpression="JOB_ID" />
                <asp:BoundField DataField="JOB_TITLE" HeaderText="JOB_TITLE" SortExpression="JOB_TITLE" />
                <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
                <asp:BoundField DataField="ROLE_ID" HeaderText="ROLE_ID" SortExpression="ROLE_ID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;JOB&quot; WHERE &quot;JOB_ID&quot; = :JOB_ID" InsertCommand="INSERT INTO &quot;JOB&quot; (&quot;JOB_ID&quot;, &quot;JOB_TITLE&quot;, &quot;SALARY&quot;, &quot;ROLE_ID&quot;) VALUES (:JOB_ID, :JOB_TITLE, :SALARY, :ROLE_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;JOB&quot;" UpdateCommand="UPDATE &quot;JOB&quot; SET &quot;JOB_TITLE&quot; = :JOB_TITLE, &quot;SALARY&quot; = :SALARY, &quot;ROLE_ID&quot; = :ROLE_ID WHERE &quot;JOB_ID&quot; = :JOB_ID">
            <DeleteParameters>
                <asp:Parameter Name="JOB_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="JOB_ID" Type="Decimal" />
                <asp:Parameter Name="JOB_TITLE" Type="String" />
                <asp:Parameter Name="SALARY" Type="Decimal" />
                <asp:Parameter Name="ROLE_ID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="JOB_TITLE" Type="String" />
                <asp:Parameter Name="SALARY" Type="Decimal" />
                <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                <asp:Parameter Name="JOB_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

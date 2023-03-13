<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="OnlineVotingSystem.Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container row m-1">
        <h1>Departments Details </h1>
        <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DEPT_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="DEPT_ID" HeaderText="DEPT_ID" ReadOnly="True" SortExpression="DEPT_ID" />
                <asp:BoundField DataField="DEPT_NAME" HeaderText="DEPT_NAME" SortExpression="DEPT_NAME" />
                <asp:BoundField DataField="MANAGER_ID" HeaderText="MANAGER_ID" SortExpression="MANAGER_ID" />
                <asp:BoundField DataField="DEPT_PHONE" HeaderText="DEPT_PHONE" SortExpression="DEPT_PHONE" />
                <asp:BoundField DataField="DEPT_EMAIL" HeaderText="DEPT_EMAIL" SortExpression="DEPT_EMAIL" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPT_ID&quot; = :DEPT_ID" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPT_ID&quot;, &quot;DEPT_NAME&quot;, &quot;MANAGER_ID&quot;, &quot;DEPT_PHONE&quot;, &quot;DEPT_EMAIL&quot;) VALUES (:DEPT_ID, :DEPT_NAME, :MANAGER_ID, :DEPT_PHONE, :DEPT_EMAIL)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPT_NAME&quot; = :DEPT_NAME, &quot;MANAGER_ID&quot; = :MANAGER_ID, &quot;DEPT_PHONE&quot; = :DEPT_PHONE, &quot;DEPT_EMAIL&quot; = :DEPT_EMAIL WHERE &quot;DEPT_ID&quot; = :DEPT_ID">
            <DeleteParameters>
                <asp:Parameter Name="DEPT_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DEPT_ID" Type="Decimal" />
                <asp:Parameter Name="DEPT_NAME" Type="String" />
                <asp:Parameter Name="MANAGER_ID" Type="Decimal" />
                <asp:Parameter Name="DEPT_PHONE" Type="Decimal" />
                <asp:Parameter Name="DEPT_EMAIL" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="DEPT_NAME" Type="String" />
                <asp:Parameter Name="MANAGER_ID" Type="Decimal" />
                <asp:Parameter Name="DEPT_PHONE" Type="Decimal" />
                <asp:Parameter Name="DEPT_EMAIL" Type="String" />
                <asp:Parameter Name="DEPT_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Roles.aspx.cs" Inherits="OnlineVotingSystem.Roles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container row m-1">
        <h1>Role Page</h1>
        <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ROLE_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ROLE_ID" HeaderText="ROLE_ID" ReadOnly="True" SortExpression="ROLE_ID" />
                <asp:BoundField DataField="ROLE_NAME" HeaderText="ROLE_NAME" SortExpression="ROLE_NAME" />
                <asp:BoundField DataField="MIN_SALARY" HeaderText="MIN_SALARY" SortExpression="MIN_SALARY" />
                <asp:BoundField DataField="MAX_SALARY" HeaderText="MAX_SALARY" SortExpression="MAX_SALARY" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ROLE&quot; WHERE &quot;ROLE_ID&quot; = :ROLE_ID" InsertCommand="INSERT INTO &quot;ROLE&quot; (&quot;ROLE_ID&quot;, &quot;ROLE_NAME&quot;, &quot;MIN_SALARY&quot;, &quot;MAX_SALARY&quot;) VALUES (:ROLE_ID, :ROLE_NAME, :MIN_SALARY, :MAX_SALARY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ROLE&quot;" UpdateCommand="UPDATE &quot;ROLE&quot; SET &quot;ROLE_NAME&quot; = :ROLE_NAME, &quot;MIN_SALARY&quot; = :MIN_SALARY, &quot;MAX_SALARY&quot; = :MAX_SALARY WHERE &quot;ROLE_ID&quot; = :ROLE_ID">
            <DeleteParameters>
                <asp:Parameter Name="ROLE_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                <asp:Parameter Name="ROLE_NAME" Type="String" />
                <asp:Parameter Name="MIN_SALARY" Type="Decimal" />
                <asp:Parameter Name="MAX_SALARY" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ROLE_NAME" Type="String" />
                <asp:Parameter Name="MIN_SALARY" Type="Decimal" />
                <asp:Parameter Name="MAX_SALARY" Type="Decimal" />
                <asp:Parameter Name="ROLE_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

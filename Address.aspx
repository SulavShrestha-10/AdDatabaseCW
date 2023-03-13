<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="OnlineVotingSystem.Pages.Address" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container row m-1">
        <h1>Address Details</h1>
        <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
                <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                <asp:BoundField DataField="DISTRICT" HeaderText="DISTRICT" SortExpression="DISTRICT" />
                <asp:BoundField DataField="PROVINCE" HeaderText="PROVINCE" SortExpression="PROVINCE" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;CITY&quot;, &quot;DISTRICT&quot;, &quot;PROVINCE&quot;) VALUES (:ADDRESS_ID, :CITY, :DISTRICT, :PROVINCE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;CITY&quot; = :CITY, &quot;DISTRICT&quot; = :DISTRICT, &quot;PROVINCE&quot; = :PROVINCE WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="OnlineVotingSystem.Pages.Address" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container row m-1">
        <h1>Address Details</h1>
        <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ControlStyle-CssClass="btn btn-secondary" ShowDeleteButton="True" ShowEditButton="True" />
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
        <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1">
                <InsertItemTemplate>
                    <h3 class="mb-3">Address Form</h3>
                    <div class="mb-2">
                        <label class="form-label">
                            CITY:</label>
                        <asp:TextBox CssClass="form-control" ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
                    </div>
                    <div class="mb-2">
                        <label class="form-label">
                            DISTRICT:</label>
                        <asp:TextBox CssClass="form-control" ID="DISTRICTTextBox" runat="server" Text='<%# Bind("DISTRICT") %>' />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">
                            PROVINCE:</label>
                        <asp:TextBox CssClass="form-control" ID="PROVINCETextBox" runat="server" Text='<%# Bind("PROVINCE") %>' />
                    </div>
                    <div>
                        <asp:LinkButton CssClass="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        <asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </div>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton CssClass="btn btn-primary btn-lg" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Jobs.aspx.cs" Inherits="OnlineVotingSystem.Pages.Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container row m-1">
        <h1>Jobs Details</h1>

        <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="JOB_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ControlStyle-CssClass="btn btn-secondary" ShowDeleteButton="True" ShowEditButton="True">
                    <ControlStyle CssClass="btn btn-secondary"></ControlStyle>
                </asp:CommandField>
                <asp:BoundField DataField="JOB_ID" HeaderText="JOB_ID" ReadOnly="True" SortExpression="JOB_ID" />
                <asp:BoundField DataField="JOB_TITLE" HeaderText="JOB_TITLE" SortExpression="JOB_TITLE" />
                <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
                <asp:BoundField DataField="ROLE_ID" HeaderText="ROLE_ID" SortExpression="ROLE_ID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;JOB&quot;" DeleteCommand="DELETE FROM &quot;JOB&quot; WHERE &quot;JOB_ID&quot; = :JOB_ID" InsertCommand="INSERT INTO &quot;JOB&quot; (&quot;JOB_ID&quot;, &quot;JOB_TITLE&quot;, &quot;SALARY&quot;, &quot;ROLE_ID&quot;) VALUES (:JOB_ID, :JOB_TITLE, :SALARY, :ROLE_ID)" UpdateCommand="UPDATE &quot;JOB&quot; SET &quot;JOB_TITLE&quot; = :JOB_TITLE, &quot;SALARY&quot; = :SALARY, &quot;ROLE_ID&quot; = :ROLE_ID WHERE &quot;JOB_ID&quot; = :JOB_ID">
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

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT ROLE_ID, ROLE_NAME FROM &quot;ROLE&quot;"></asp:SqlDataSource>
        <div>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                <InsertItemTemplate>
                    <h3 class="mb-3">Job Form</h3>
                    <div class="mb-2">
                        <label class="form-label">JOB_TITLE:</label>
                        <asp:TextBox ID="JOB_TITLETextBox" CssClass="form-control" runat="server" Text='<%# Bind("JOB_TITLE") %>' />
                    </div>
                    <div class="mb-2">
                        <label class="form-label">SALARY:</label>
                        <asp:TextBox ID="SALARYTextBox" CssClass="form-control" runat="server" Text='<%# Bind("SALARY") %>' />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">ROLE_ID:</label>
                        <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="ROLE_NAME" DataValueField="ROLE_ID" SelectedValue='<%# Bind("ROLE_ID") %>'>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-success" />
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger" />
                    </div>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="NewButton" CssClass="btn btn-primary btn-lg" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="OnlineVotingSystem.Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container row m-1">
        <h1>Departments Details </h1>
        <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DEPT_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ControlStyle-CssClass="btn btn-secondary" ShowDeleteButton="True" ShowEditButton="True" />
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
        <div>
            <asp:FormView ID="FormView1" CssClass="m-3 col-md-3" runat="server" DataKeyNames="DEPT_ID" DataSourceID="SqlDataSource1">
                <InsertItemTemplate>
                    <h3 class="mb-3">Department Form</h3>
                    <div class="d-flex justify-content-between">
                        <div class="mb-2">
                            <label class="form-label">DEPT_NAME:</label>
                            <asp:TextBox CssClass="form-control" ID="DEPT_NAMETextBox" runat="server" Text='<%# Bind("DEPT_NAME") %>' />
                        </div>
                        <div class="mb-2">
                            <label class="form-label">MANAGER_ID:</label>

                            <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="EMP_NAME" DataValueField="EMP_ID" SelectedValue='<%# BIND("MANAGER_ID") %>'>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="d-flex justify-content-between">
                        <div class="mb-2">
                            <label class="form-label">
                                DEPT_PHONE:</label>

                            <asp:TextBox CssClass="form-control" ID="DEPT_PHONETextBox" runat="server" Text='<%# Bind("DEPT_PHONE") %>' />
                        </div>
                        <div class="mb-2">
                            <label class="form-label">
                                DEPT_EMAIL:</label>
                            <asp:TextBox CssClass="form-control" ID="DEPT_EMAILTextBox" runat="server" Text='<%# Bind("DEPT_EMAIL") %>' />
                        </div>
                    </div>
                    <div>
                        <asp:LinkButton ID="InsertButton" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        <asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </div>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="NewButton" CssClass="btn btn-primary btn-lg" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>

            </asp:FormView>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT emp_id, emp_name from employee"></asp:SqlDataSource>
</asp:Content>

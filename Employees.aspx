<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="OnlineVotingSystem.Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row m-1">
        <h1>Employees Details</h1>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" DataKeyNames="EMP_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ControlStyle-CssClass="btn btn-secondary" ShowDeleteButton="True" ShowEditButton="True" >
<ControlStyle CssClass="btn btn-secondary"></ControlStyle>
                </asp:CommandField>
                <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" ReadOnly="True" SortExpression="EMP_ID" />
                <asp:BoundField DataField="EMP_NAME" HeaderText="EMP_NAME" SortExpression="EMP_NAME" />
                <asp:BoundField DataField="BIRTH_DATE" HeaderText="BIRTH_DATE" SortExpression="BIRTH_DATE" DataFormatString="{0:dd-MMM-yyyy}" />
                <asp:BoundField DataField="CONTACT_INFO" HeaderText="CONTACT_INFO" SortExpression="CONTACT_INFO" />
                <asp:BoundField DataField="JOB_ID" HeaderText="JOB_ID" SortExpression="JOB_ID" />
                <asp:BoundField DataField="DEPT_ID" HeaderText="DEPT_ID" SortExpression="DEPT_ID" />
                <asp:BoundField DataField="PRIMARY_EMAIL" HeaderText="PRIMARY_EMAIL" SortExpression="PRIMARY_EMAIL" />
                <asp:BoundField DataField="SECONDARY_EMAIL" HeaderText="SECONDARY_EMAIL" SortExpression="SECONDARY_EMAIL" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEE&quot;" DeleteCommand="DELETE FROM &quot;EMPLOYEE&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;EMPLOYEE&quot; (&quot;EMP_ID&quot;, &quot;EMP_NAME&quot;, &quot;BIRTH_DATE&quot;, &quot;CONTACT_INFO&quot;, &quot;JOB_ID&quot;, &quot;DEPT_ID&quot;, &quot;PRIMARY_EMAIL&quot;, &quot;SECONDARY_EMAIL&quot;) VALUES (:EMP_ID, :EMP_NAME, :BIRTH_DATE, :CONTACT_INFO, :JOB_ID, :DEPT_ID, :PRIMARY_EMAIL, :SECONDARY_EMAIL)" UpdateCommand="UPDATE &quot;EMPLOYEE&quot; SET &quot;EMP_NAME&quot; = :EMP_NAME, &quot;BIRTH_DATE&quot; = :BIRTH_DATE, &quot;CONTACT_INFO&quot; = :CONTACT_INFO, &quot;JOB_ID&quot; = :JOB_ID, &quot;DEPT_ID&quot; = :DEPT_ID, &quot;PRIMARY_EMAIL&quot; = :PRIMARY_EMAIL, &quot;SECONDARY_EMAIL&quot; = :SECONDARY_EMAIL WHERE &quot;EMP_ID&quot; = :EMP_ID">
            <DeleteParameters>
                <asp:Parameter Name="EMP_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EMP_ID" Type="Decimal" />
                <asp:Parameter Name="EMP_NAME" Type="String" />
                <asp:Parameter Name="BIRTH_DATE" Type="DateTime" />
                <asp:Parameter Name="CONTACT_INFO" Type="Decimal" />
                <asp:Parameter Name="JOB_ID" Type="Decimal" />
                <asp:Parameter Name="DEPT_ID" Type="Decimal" />
                <asp:Parameter Name="PRIMARY_EMAIL" Type="String" />
                <asp:Parameter Name="SECONDARY_EMAIL" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EMP_NAME" Type="String" />
                <asp:Parameter Name="BIRTH_DATE" Type="DateTime" />
                <asp:Parameter Name="CONTACT_INFO" Type="Decimal" />
                <asp:Parameter Name="JOB_ID" Type="Decimal" />
                <asp:Parameter Name="DEPT_ID" Type="Decimal" />
                <asp:Parameter Name="PRIMARY_EMAIL" Type="String" />
                <asp:Parameter Name="SECONDARY_EMAIL" Type="String" />
                <asp:Parameter Name="EMP_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>
            <asp:FormView ID="FormView1" runat="server" CssClass="m-3 col-md-3" DataKeyNames="EMP_ID" DataSourceID="SqlDataSource1">
                <InsertItemTemplate>
                    <h3 class="mb-3"> Employee Form</h3>
                    <div class="mb-1">
                        <label class="form-label">EMP_NAME:</label>

                        <asp:TextBox class="form-control" ID="EMP_NAMETextBox" runat="server" Text='<%# Bind("EMP_NAME") %>' />
                    </div>
                    <div class="d-flex justify-content-between">
                        <div class="mb-1">
                            <label class="form-label">BIRTH_DATE:</label>
                            <asp:TextBox class="form-control" ID="BIRTH_DATETextBox" runat="server" Text='<%# Bind("BIRTH_DATE") %>' />
                        </div>

                        <div class="mb-1">
                            <label class="form-label">CONTACT_INFO:</label>
                            <asp:TextBox class="form-control" ID="CONTACT_INFOTextBox" runat="server" Text='<%# Bind("CONTACT_INFO") %>' />
                        </div>
                    </div>
                    <div class="d-flex justify-content-between">
                        <div class="mb-1">
                            <label class="form-label">JOB_ID:</label>
                            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="JOB_TITLE" DataValueField="JOB_ID" AutoPostBack="True" SelectedValue='<%# Bind("JOB_ID") %>'>
                            </asp:DropDownList>
                        </div>

                        <div class="mb-1">
                            <label class="form-label">DEPT_ID:</label>
                            <asp:DropDownList class="form-control" ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="DEPT_NAME" DataValueField="DEPT_ID" AutoPostBack="True" SelectedValue='<%# Bind("DEPT_ID") %>'>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="d-flex justify-content-between">
                        <div class="mb-1">
                            <label class="form-label">PRIMARY_EMAIL:</label>
                            <asp:TextBox class="form-control" ID="PRIMARY_EMAILTextBox" runat="server" Text='<%# Bind("PRIMARY_EMAIL") %>' />
                        </div>
                        <div class="mb-1">
                            <label class="form-label">SECONDARY_EMAIL:</label>
                            <asp:TextBox class="form-control" ID="SECONDARY_EMAILTextBox" runat="server" Text='<%# Bind("SECONDARY_EMAIL") %>' />
                        </div>
                    </div>
                    <div>
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CssClass="btn btn-success" CommandName="Insert" Text="Insert" />
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CssClass="btn btn-danger" CommandName="Cancel" Text="Cancel" />
                    </div>

                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="NewButton" CssClass="btn btn-primary btn-lg" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT JOB_ID, JOB_TITLE FROM JOB"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DEPT_ID, DEPT_NAME FROM DEPARTMENT"></asp:SqlDataSource>

</asp:Content>


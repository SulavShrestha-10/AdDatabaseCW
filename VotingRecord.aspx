<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="VotingRecord.aspx.cs" Inherits="OnlineVotingSystem.VotingRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row m-1">
        <h1>Voting Record of Employees</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT v.EMP_NAME AS &quot;Voter Name&quot;, vd.DEPT_NAME AS &quot;Voter Department&quot;, c.EMP_ID AS &quot;Candidate ID&quot;, c.EMP_NAME AS &quot;Candidate Name&quot;, cd.DEPT_NAME AS &quot;Candidate Department&quot;, vr.VOTING_MONTH, vr.VOTING_YEAR FROM VOTING_RECORD vr, EMPLOYEE c, EMPLOYEE v, DEPARTMENT cd, DEPARTMENT vd WHERE vr.CANDIDATE_ID = c.EMP_ID AND vr.VOTER_ID = v.EMP_ID AND cd.DEPT_ID = c.DEPT_ID AND vd.DEPT_ID = v.DEPT_ID">
        </asp:SqlDataSource>
        <div class="col-md-3 d-flex my-3 align-content-center justify-content-center">
            <label class="form-label me-2 fw-bold">Select a Employee: </label>
            <asp:DropDownList class="form-control me-2" ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="EMP_NAME" DataValueField="EMP_ID">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Show Results" CssClass="btn btn-primary" OnClick="Button1_Click" />
        </div>
        <asp:GridView ID="GridView1" CssClass="table table-striped table-responsive" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Candidate ID" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="Voter Name" HeaderText="Voter Name" SortExpression="Voter Name" />
                <asp:BoundField DataField="Voter Department" HeaderText="Voter Department" SortExpression="Voter Department" />
                <asp:BoundField DataField="Candidate ID" HeaderText="Candidate ID" SortExpression="Candidate ID" ReadOnly="True" />
                <asp:BoundField DataField="Candidate Name" HeaderText="Candidate Name" SortExpression="Candidate Name" />
                <asp:BoundField DataField="Candidate Department" HeaderText="Candidate Department" SortExpression="Candidate Department" />
                <asp:BoundField DataField="VOTING_MONTH" HeaderText="VOTING_MONTH" SortExpression="VOTING_MONTH" />
                <asp:BoundField DataField="VOTING_YEAR" HeaderText="VOTING_YEAR" SortExpression="VOTING_YEAR" />
            </Columns>
        </asp:GridView>
    </div>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT emp_id, emp_name from employee"></asp:SqlDataSource>
</asp:Content>

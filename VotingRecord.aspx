<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="VotingRecord.aspx.cs" Inherits="OnlineVotingSystem.VotingRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row m-1">
        <h1>Voting Record of Employees</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT v.emp_name as &quot;Voter Name&quot;, vd.dept_name as &quot;Voter Department&quot;, c.emp_id &quot;Candidate ID&quot;, c.emp_name &quot;Candidate Name&quot;, cd.dept_name &quot;Candidate Department&quot;, vr.voting_month, vr.voting_year
from voting_record vr
join employee c on vr.candidate_id=c.emp_id
join employee v on vr.voter_id=v.emp_id
join department cd on cd.dept_id=c.dept_id
join department vd on vd.dept_id=v.dept_id
where v.emp_id = :employee">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="employee" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="col-md-2 d-flex my-3 align-content-center justify-content-center">
            <label class="form-label fw-bold">Select a Employee: </label>
            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="EMP_NAME" DataValueField="EMP_ID">
            </asp:DropDownList>
        </div>
        <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Candidate ID">
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

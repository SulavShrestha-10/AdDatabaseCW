<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="OnlineVotingSystem.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="text-center my-5">Online Voting System</h1>
        <div class="row mt-4 row align-items-center justify-content-center">
            <asp:LinkButton CssClass="nav-link col-md-3 mx-5" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">
             <div class="card bg-primary bg-gradient mb-5">
                <div class="card-header text-center fw-bold">
                    <h2>Employee</h2>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Total Count:</h5>
                    <p class="card-text">10</p>
                </div>
             </div>
            </asp:LinkButton>

            <asp:LinkButton CssClass="nav-link col-md-3 mx-5" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">
            <div class="card bg-success bg-gradient mb-5">
                <div class="card-header text-center fw-bold">
                    <h2>Departments</h2>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Total Count:</h5>
                    <p class="card-text">10</p>
                </div>
            </div>
            </asp:LinkButton>
            <asp:LinkButton CssClass="nav-link col-md-3 mx-5" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">
            <div class="card bg-danger bg-gradient mb-5">
                <div class="card-header text-center fw-bold">
                    <h2>Jobs</h2>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Total Count:</h5>
                    <p class="card-text">10</p>
                </div>
            </div>
            </asp:LinkButton>
            <asp:LinkButton CssClass="nav-link col-md-3 mx-5" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">
            <div class="card bg-warning bg-gradient mb-5">
                <div class="card-header fw-bold text-center">
                    <h2>Roles</h2>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Total Count:</h5>
                    <p class="card-text">10</p>
                </div>
            </div>
            </asp:LinkButton>
            <asp:LinkButton CssClass="nav-link col-md-3 mx-5" ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">
            <div class="card bg-gradient bg-info mb-5">
                <div class="card-header text-center fw-bold">
                    <h2>Address</h2>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Total Count:</h5>
                    <p class="card-text">10</p>
                </div>
            </div>
            </asp:LinkButton>
        </div>
    </div>
</asp:Content>

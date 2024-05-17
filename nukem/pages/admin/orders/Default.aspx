<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="pages_admin_orders_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <header class="p-3 sticky-top" style="background-color: #111111;">
        <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="../../" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                    <span class="fs-4">The Nukem Store</span>
                </a>



                <ul class="nav col-12 col-lg-auto mb-2 justify-content-center mb-md-0">
                    <li><a href="../../" class="nav-link px-2 link-light">Home</a></li>
                    <li><a href="../../about/" class="nav-link px-2 link-light" id="aboutBtn" runat="server">About</a></li>
                </ul>

                <nav class="navbar navbar-expand col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0 me-auto">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto" runat="server" id="adminDropdown">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle link-secondary " href="../" id="navbarDropdown">ADMIN</a>
                                <div class="dropdown-menu mt-0" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="../users/">User List</a>
                                    <a class="dropdown-item active" href="./">Order List</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>


                <!-- these are the buttons that will be displayed when the user is logged in -->
                <div class="me-2 text-end text-white" id="usernameStrDisplay" runat="server">
                    <%="Welcome! " + Session["userName"] %>
                </div>
                <div class="text-end text-white" runat="server" id="logoutBtnDiv">
                    <button type="button" id="logoutBtn" onserverclick="logoutBtn_Click" class="btn btn-outline-danger text-white" runat="server">Logout</button>
                </div>
                <!-- these are the buttons that will be displayed when the user is not logged in -->
                <div class="text-end text-white" runat="server" id="loginRegisterBtn">
                    <button type="button" onclick="location.href = '../../login/';"
                        class="btn btn-outline-primary text-white me-2">
                        Login
                    </button>
                    <button type="button" onclick="location.href = '../../register/';" class="btn btn-primary">Sign-up</button>
                </div>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <div class="container-fluid p-4 bg-danger text-white">
        <div class="row justify-content-center">
            <div class="col-7">
                <p class="display-1 text-center">ADMIN PANEL</p>
                <h3 class="text-center">ORDER LIST</h3>
            </div>

        </div>
    </div>

    <!-- User Table -->
    <div class="container-fluid mt-3">
        <div class="row justify-content-center">
            <div class="col-sm-3 mb-2" style="width: 80%; min-width: 280px;">
                <div class="card border-0">
                    <div class="card-body">

                        <div class="card-text">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Product</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Country</th>
                                        <th scode="col">Address</th>
                                        <th scope="col">Zip</th>
                                        <th scope="col">Last 4 CC</th>
                                        <th scope="col">UID</th>
                                    </tr>
                                </thead>
                                <tbody class="table-group-divider" runat="server" id="orderTableBody">
                                    <tr>
                                        <th scope="row" colspan="8">rip</th>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>


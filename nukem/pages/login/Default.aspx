<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="login_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <header class="p-3 sticky-top" style="background-color: #111111;">
        <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="../" class="d-flex align-items-center mb-3 mb-md-0 text-white text-decoration-none">
                    <span class="fs-4">The Nukem Store</span>
                </a>


                <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0 mx-auto">
                    <li><a href="../" class="nav-link px-2 text-white">Home</a></li>
                    <li><a href="../about/" class="nav-link px-2 text-white" id="aboutBtn" runat="server">About</a></li>
                </ul>

                <!-- these are the buttons that will be displayed when the user is logged in -->
                <div class="me-2 text-end text-white" id="usernameStrDisplay" runat="server">
                    <%="Welcome! " + Session["userName"] %>
                </div>
                <div class="text-end text-white" runat="server" id="logoutBtnDiv">
                    <button type="button" id="logoutBtn" onserverclick="logoutBtn_Click" class="btn btn-outline-danger text-white me-2" runat="server">Logout</button>
                </div>
                <!-- these are the buttons that will be displayed when the user is not logged in -->
                <div class="text-end text-white" runat="server" id="loginRegisterBtn">
                    <button type="button" onclick="location.href = '../login/';"
                        class="btn btn-outline-primary text-white me-2">
                        Login
                    </button>
                    <button type="button" onclick="location.href = '../register/';" class="btn btn-primary">Sign-up</button>
                </div>
            </div>
        </div>
    </header>



    <div class="container-fluid mt-3 blyat" style="height: 80vh">

        <div class="has-bg-img row d-flex h-100 justify-content-center align-items-center">
            <div class="col-sm-3 mb-2 align-self-center" style="width: 400px">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Login</h5>
                    </div>
                    <div class="card-body">
                        <div class="form-row mb-3">
                            <label for="emailInput">Username</label>
                            <input type="text" class="form-control" id="usernameInput" name="usernameInput" placeholder="" value="" minlength="5" required>
                            <div class="invalid-feedback">
                                Please provide a proper username.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="passwordInput" class="form-label">Password</label>
                            <!--<input type="password" class="form-control" id="passwordInput" name="passwordInput" pattern="[A-Za-z!@#.$0-9]{8,50}" title="the password must be alphanumeric and must consist of at least 8 chars" value="" required>-->
                            <input type="password" class="form-control" id="passwordInput" name="passwordInput" title="the password must be alphanumeric and must consist of at least 8 chars" value="" required>
                            <div class="invalid-feedback">
                                Please provide a password.
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block col-sm-12 mb-2 text-center">Submit</button>
                        <div class="alert alert-danger" role="alert" id="errorMessage" runat="server">
                            ERROR: Invalid username or password.
                        </div>

                        <div class="card-text mt-4">
                            <p class="text-center ">Don't have an account? <a href="../register/">Sign-up</a></p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>


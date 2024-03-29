﻿<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="register_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="script.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header class="p-3 sticky-top" style="background-color: #111111;">
        <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="../" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                    <span class="fs-4">The Nukem Store</span>
                </a>

                <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                    <li><a href="../" class="nav-link px-2 text-white">Home</a></li>
                    <li><a href="../about/" class="nav-link px-2 text-white">About</a></li>
                </ul>

                <div class="text-end">
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
                        <h5 class="card-title">Register</h5>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="form-row mb-3">
                                <label for="usernameInput">Username</label>
                                <input type="text" class="form-control" id="usernameInput" placeholder="E.g. Germani" value="" required>
                                <div class="invalid-feedback">
                                    Please provide a username.
                                </div>
                            </div>
                            <div class="form-row mb-3">
                                <label for="emailInput">Email address</label>
                                <input type="email" class="form-control" id="emailInput" placeholder="john@example.com" value=""
                                    required>
                                <div class="invalid-feedback">
                                    Please provide a proper email.
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="passwordInput" class="form-label">Password</label>
                                <input class="form-control check-validity" pattern="[A-Za-z!@#0-9]{8,50}" id="validationTextarea"
                                    placeholder="Must be at least 8 characters long!" required></input>
                            </div>
                            <div class="mb-3">
                                <label for="passwordConfirmInput" class="form-label">Confirm Password</label>
                                <input type="password" class="form-control" id="passwordConfirmInput" value="" required>
                                <div class="invalid-feedback">
                                    Please confirm your password.
                                </div>
                            </div>
                            <button type="submit" value="submit"
                                class="btn btn-primary btn-block col-sm-12 mb-2 text-center">
                                Submit
                            </button>
                        </form>
                        <div class="card-text mt-4">
                            <p class="text-center">Already have an account? <a href="../login/">Login</a></p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>


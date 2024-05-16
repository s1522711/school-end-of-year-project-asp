<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Navbar -->



    <header class="p-3 sticky-top" style="background-color: #111111;">
        <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="./" class="d-flex align-items-center mb-3 mb-md-0 text-white text-decoration-none">
                    <span class="fs-4">The Nukem Store</span>
                </a>


                <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0 mx-auto">
                    <li><a href="#" class="nav-link px-2 text-secondary">Home</a></li>
                    <li><a href="about/" class="nav-link px-2 text-white" id="aboutBtn" runat="server">About</a></li>
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
                    <button type="button" onclick="location.href = './login/';"
                        class="btn btn-outline-primary text-white me-2">
                        Login
                    </button>
                    <button type="button" onclick="location.href = './register/';" class="btn btn-primary">Sign-up</button>
                </div>
            </div>
        </div>
    </header>

    <!-- Navbar end -->
    <!-- hero -->

    <div class="container-fluid p-4 bg-primary text-white">
        <div class="row justify-content-center">
            <div class="col-7">
                <p class="display-1 text-center">The Nukem Store</p>
                <h3 class="text-center">here you can buy rockets and nukes!</h3>
            </div>

        </div>
    </div>

    <!-- hero end -->

    <div class="container mt-3" runat="server" id="notLoggedinDiv">
        <div class="row justify-content-center">
            <div class="col-9">
                <div class="alert alert-danger alert-trim display-4 text-center">
                    Error: You are not logged in!<br />Please login to view the products.
                </div>
            </div>
        </div>
    </div>

    <!-- products -->
    <div class="container-fluid mt-3" runat="server" id="productsDiv">
        <div class="row justify-content-center">
            <div class="col-sm-3 mb-2" style="width: 400px">
                <div class="card">
                    <img src="img/index/tsar-bobma.webp" alt="tsar-bobma" height="210" class=" card-img-top ">
                    <div class="card-body">
                        <div class="card-title">Tsar Bobma <span class="badge bg-secondary">New!</span></div>
                        <div class="card-text">Price: $897654</div>

                    </div>
                    <button type="button" runat="server" onserverclick="tsarBombaBtn_Click"
                        class="btn btn-primary btn-block col-sm-11 mb-2 mx-auto">
                        Buy
                    </button>
                </div>
            </div>
            <div class="col-sm-3 mb-2" style="width: 400px">
                <div class="card">
                    <img src="img/index/duke-nukem.jpg" alt="duke nukem cover" height="210" class=" card-img-top ">
                    <div class="card-body">
                        <div class="card-title">Duke Nukem <span class="badge bg-primary">Rare!</span></div>
                        <div class="card-text">Price: $9846498489</div>

                    </div>
                    <button type="button" runat="server" onserverclick="dukeNukemBtn_Click"
                        class="btn btn-primary btn-block col-sm-11 mb-2 mx-auto">
                        Buy
                    </button>
                </div>
            </div>
            <div class="col-sm-3 mb-2" style="width: 400px">
                <div class="card">
                    <img src="img/index/cs-bomb.jpeg" alt="tsar-bobma" height="210" class=" card-img-top ">
                    <div class="card-body">
                        <div class="card-title">Counter-Strike 2 Bomb <span class="badge bg-secondary">New!</span></div>
                        <div class="card-text">Price: $69,000</div>

                    </div>
                    <button type="button" runat="server" onserverclick="csBombBtn_Click"
                        class="btn btn-primary btn-block col-sm-11 mb-2 mx-auto">
                        Buy
                    </button>
                </div>
            </div>
            <div class="col-sm-3 mb-2" style="width: 400px">
                <div class="card">
                    <img src="img/index/gilad.png" alt="tsar-bobma" height="210" class=" card-img-top ">
                    <div class="card-body">
                        <div class="card-title">Gilad WobblyHead Doll <span class="badge bg-warning" onclick="location.href='secret/';"><a href="secret/" class=" text-decoration-none text-black">New!</a></span></div>
                        <div class="card-text">Price: $420,000,000</div>

                    </div>
                    <button type="button" runat="server" onserverclick="giladDollBtn_Click"
                        class="btn btn-primary btn-block col-sm-11 mb-2 mx-auto">
                        Buy
                    </button>
                </div>
            </div>
            <div class="col-sm-3 mb-2" style="width: 400px">
                <div class="card">
                    <img src="img/index/computer-breaker.jpg" alt="tsar-bobma" height="210" class=" card-img-top ">
                    <div class="card-body">
                        <div class="card-title">
                            Professional Computer Breaking Service <span class="badge bg-secondary">New!</span>
                        </div>
                        <div class="card-text">Price: $894</div>

                    </div>
                    <button type="button" runat="server" onserverclick="breakingServiceBtn_Click"
                        class="btn btn-primary btn-block col-sm-11 mb-2 mx-auto">
                        Buy
                    </button>
                </div>
            </div>
            <div class="col-sm-3 mb-2" style="width: 400px">
                <div class="card">
                    <img src="img/index/tamir-missile.jpg" alt="tsar-bobma" height="210" class=" card-img-top ">
                    <div class="card-body">
                        <div class="card-title">Tamir GtA Missile <span class="badge bg-primary">Missile!</span></div>
                        <div class="card-text">Price: $84375757</div>

                    </div>
                    <button type="button" runat="server" onserverclick="tamirGtaBtn_Click"
                        class="btn btn-primary btn-block col-sm-11 mb-2 mx-auto">
                        Buy
                    </button>
                </div>
            </div>
            <div class="col-sm-3 mb-2" style="width: 400px">
                <div class="card">
                    <img src="img/index/nick.png" alt="tsar-bobma" height="210" class=" card-img-top ">
                    <div class="card-body">
                        <div class="card-title">Nick for sale <span class="badge bg-warning text-black" onclick="location.href='img/index/secret.jpg';"><a href="img/index/secret.jpg" class=" text-decoration-none text-black">Barely used!</a></span></div>
                        <div class="card-text">Price: -$5</div>

                    </div>
                    <button type="button" runat="server" onserverclick="nickBtn_Click"
                        class="btn btn-primary btn-block col-sm-11 mb-2 mx-auto">
                        Buy
                    </button>
                </div>
            </div>
            <div class="col-sm-3 mb-2" style="width: 400px">
                <div class="card">
                    <img src="img/index/Little_boy.jpg" alt="tsar-bobma" height="210" class=" card-img-top ">
                    <div class="card-body">
                        <div class="card-title">Little Boy Bomb <span class="badge bg-primary">Rare!</span></div>
                        <div class="card-text">Price: $643924</div>

                    </div>
                    <button type="button" runat="server" onserverclick="littleBoyBtn_Click"
                        class="btn btn-primary btn-block col-sm-11 mb-2 mx-auto">
                        Buy
                    </button>
                </div>
            </div>
        </div>
    </div>


    <script src="js/temp.js"></script>
</asp:Content>


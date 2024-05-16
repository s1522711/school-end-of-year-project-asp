using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        usernameStrDisplay.Visible = (bool)Session["login"];
        logoutBtnDiv.Visible = (bool)Session["login"];
        loginRegisterBtn.Visible = !(bool)Session["login"];
        aboutBtn.Visible = (bool)Session["login"];

        errorMessage.Visible = false;
        if (IsPostBack)
        {
            if (Request.Form["usernameInput"] == "s1522711" && Request.Form["passwordInput"] == "fuckyou")
            {
                Session["username"] = Request.Form["usernameInput"];
                Session["login"] = true;
                //errorMessage.Visible = false;
                errorMessage.InnerText = "";
                Response.Redirect("../");
            }
            else
            {
                Session["username"] = "Guest";
                Session["login"] = false;
                errorMessage.Visible = true;
                errorMessage.InnerText = "Invalid username or password";
            }
        }
    }

    protected void logoutBtn_Click(object sender, EventArgs e)
    {
        Session["login"] = false;
        Session["username"] = "Guest";
        Response.Redirect("../");
    }
}
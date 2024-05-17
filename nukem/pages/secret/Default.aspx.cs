using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class secret_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        usernameStrDisplay.Visible = (bool)Session["login"];
        logoutBtnDiv.Visible = (bool)Session["login"];
        loginRegisterBtn.Visible = !(bool)Session["login"];
        aboutBtn.Visible = (bool)Session["login"];
        adminDropdown.Visible = (bool)Session["admin"] && (bool)Session["login"];
    }

    protected void logoutBtn_Click(object sender, EventArgs e)
    {
        Session["login"] = false;
        Session["admin"] = false;
        Session["username"] = "Guest";
        Response.Redirect("../");
    }
}
﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_admin_Default : System.Web.UI.Page
{
    protected int countEntries(DataTable dt)
    {
        return dt.Rows.Count;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!(bool)Session["login"] || !(bool)Session["admin"])
        {
            Response.Redirect("../intruder/");
        }

        usernameStrDisplay.Visible = (bool)Session["login"];
        logoutBtnDiv.Visible = (bool)Session["login"];
        loginRegisterBtn.Visible = !(bool)Session["login"];
        aboutBtn.Visible = (bool)Session["login"];
        admin.Visible = (bool)Session["admin"] && (bool)Session["login"];

        string path = AppDomain.CurrentDomain.BaseDirectory;
        AppDomain.CurrentDomain.SetData("DataDirectory", path);
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\App_Data\\Database.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblUsers", con);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adapter.Fill(ds, "users");
        cmd = new SqlCommand("SELECT * FROM tblOrders", con);
        adapter = new SqlDataAdapter(cmd);
        adapter.Fill(ds, "orders");
        cmd = new SqlCommand("SELECT * FROM tblItems", con);
        adapter = new SqlDataAdapter(cmd);
        adapter.Fill(ds, "items");

        DataTable dt = ds.Tables["users"];
        userCountDiv.InnerHtml = countEntries(dt).ToString();
        dt = ds.Tables["orders"];
        orderCountDiv.InnerHtml = countEntries(dt).ToString();
        dt = ds.Tables["items"];
        productCountDiv.InnerHtml = countEntries(dt).ToString();
    }

    protected void logoutBtn_Click(object sender, EventArgs e)
    {
        Session["login"] = false;
        Session["admin"] = false;
        Session["username"] = "Guest";
        Response.Redirect("../");
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class pages_admin_orders_Default : System.Web.UI.Page
{
    /*
     * Builds the main body of the orders table
     * input: DataTable dt
     * output: html table body string
     */
    protected string buildOrdersTable(DataTable dt)
    {
        string table = "";
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            table += "<tr>";
            table += "<th scope=\"row\">" + dt.Rows[i]["Id"].ToString() + "</th>";
            table += "<th>" + dt.Rows[i]["name"].ToString() + "</th>";
            table += "<th>" + dt.Rows[i]["email"].ToString() + "</th>";
            table += "<th>" + dt.Rows[i]["itemName"].ToString() + "</th>";
            table += "<th>$" + dt.Rows[i]["price"].ToString() + "</th>";
            table += "<th>" + dt.Rows[i]["country"].ToString() + "</th>";
            table += "<th>" + dt.Rows[i]["address"].ToString() + "</th>";
            table += "<th>" + dt.Rows[i]["zip"].ToString() + "</th>";
            table += "<th>" + dt.Rows[i]["last4cc"].ToString() + "</th>";
            table += "<th>" + dt.Rows[i]["userId"].ToString() + "</th>";
            table += "</tr>";
        }
        return table;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!(bool)Session["login"] || !(bool)Session["admin"])
        {
            Response.Redirect("../../intruder/");
        }

        usernameStrDisplay.Visible = (bool)Session["login"];
        logoutBtnDiv.Visible = (bool)Session["login"];
        loginRegisterBtn.Visible = !(bool)Session["login"];
        aboutBtn.Visible = (bool)Session["login"];
        adminDropdown.Visible = (bool)Session["admin"] && (bool)Session["login"];

        string path = AppDomain.CurrentDomain.BaseDirectory;
        AppDomain.CurrentDomain.SetData("DataDirectory", path);
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\App_Data\\Database.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("SELECT * FROM tblOrders", con);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        string table = buildOrdersTable(dt);
        orderTableBody.InnerHtml = table;
    }

    protected void logoutBtn_Click(object sender, EventArgs e)
    {
        Session["login"] = false;
        Session["admin"] = false;
        Session["username"] = "Guest";
        Response.Redirect("../../");
    }
}

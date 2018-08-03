using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data.Common;
using System.IO;
using System.Drawing;
using System.Net.Mail;
using System.Net;

public partial class Admin_Login : System.Web.UI.Page
{
    Class1 cl = new Class1();
    public bool auth;
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            cl.da = new SqlDataAdapter("select * from Login where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", cl.con);
            cl.da.Fill(cl.ds);
            if (cl.ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('Please Contact System Admin....')</script>");
            }
            else
            {

                cl.con.Open();
                cmd = new SqlCommand("select * from Login where Username='" + TextBox1.Text + "'", cl.con);

                dr = cmd.ExecuteReader();
                if (dr.Read() == true)
                {
                    if (dr["Password"].ToString() == TextBox2.Text)
                    {
                        auth = true;
                    }

                    else
                    {

                        auth = false;
                        Response.Write("<script>alert('username and password are incorrect')</script>");

                    }
                }
                else
                {

                    auth = false;
                    Response.Write("<script>alert('username and password are incorrect')</script>");

                }

                if (auth == true)
                {

                    Session["Id"] = dr["Username"].ToString();
                    //Session["name"] = dr["seller_nm"].ToString();

                    Response.Redirect("Home.aspx");

                }
                else
                {
                    this.Response.Cookies.Remove("abc");
                    this.Session.RemoveAll();
                }
                cl.con.Close();


            }


    }
}
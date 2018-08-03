using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Blog_entry : System.Web.UI.Page
{
    Class1 cl = new Class1();
    public SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Conn"].ToString());
    public SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cl.display("blog_entry", GridView1);
            Image2.Visible =false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime crnttime = Convert.ToDateTime(TextBox3.Text);
        TimeZoneInfo tzn = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
        DateTime IndianTime = TimeZoneInfo.ConvertTime(crnttime, tzn);
        string time1 = IndianTime.ToString("dd/MM/yyyy");
        string month = IndianTime.ToString("MM");
        string year = IndianTime.ToString("yyyy");

                string ss = "Image" + "/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(ss));
                using (SqlDataAdapter da = new SqlDataAdapter("insert into blog_entry(Header_name,Description,Date,Photo,month,year)values(@Header_name,@Description,@Date,@Photo,@month,@year)",cl.con))
                {
                    da.SelectCommand.Parameters.AddWithValue("@Header_name", TextBox1.Text);
                    da.SelectCommand.Parameters.AddWithValue("@Description",TextBox2.Text);
                    da.SelectCommand.Parameters.AddWithValue("@Date",TextBox3.Text);
                    da.SelectCommand.Parameters.AddWithValue("@Photo", ss);
                    da.SelectCommand.Parameters.AddWithValue("@month",month);
                    da.SelectCommand.Parameters.AddWithValue("@year",year);
                    da.Fill(cl.ds);
                    //TextBox1.Text = "";
                    cl.display("blog_entry", GridView1);
                    Image2.Visible = false;
                    Label1.Text = "Successfully Submitted..";
                    TextBox1.Text = "";
                }
    }   
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id1 = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        cl.delete("blog_entry", "blogid", "'" + id1 + "'");
        cl.display("blog_entry", GridView1);
    }
}
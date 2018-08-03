using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Gallery : System.Web.UI.Page
{
    Class1 cl = new Class1();
    public SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Conn"].ToString());
    public SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cl.display("Galleryh", GridView1);
            Image1.Visible = false;
            ds.Clear();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Button1.Text == "update")
        {
            if (FileUpload1.HasFile)
            {
                string ss = "Image" + "/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(ss));
                int idd = Convert.ToInt32(GridView1.SelectedValue);

                using (SqlDataAdapter da = new SqlDataAdapter("update Galleryh set headername=@headername,photo=@photo where gallery_id=@gallery_id", cl.con))
                {
                    da.SelectCommand.Parameters.AddWithValue("@gallery_id", idd);
                    da.SelectCommand.Parameters.AddWithValue("@headername", TextBox1.Text);
                    da.SelectCommand.Parameters.AddWithValue("@photo", ss);
                    da.Fill(cl.ds);                    
                    Label1.Text = "Successfully Updated..";
                }
            }
        }
        else
        {
            if (FileUpload1.HasFile)
            {
                string ss = "Image" + "/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(ss));
                using (SqlDataAdapter da = new SqlDataAdapter("insert into Galleryh(headername,photo)values(@headername,@photo)", cl.con))
                {
                    da.SelectCommand.Parameters.AddWithValue("@headername", TextBox1.Text);
                    da.SelectCommand.Parameters.AddWithValue("@photo", ss);
                    da.Fill(cl.ds);
                    //TextBox1.Text = "";
                    cl.display("Galleryh", GridView1);                
                    Label1.Text = "Successfully Submitted..";
                    TextBox1.Text = "";
                }
            }
        
        }
           
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string idd = Convert.ToInt32(GridView1.SelectedValue).ToString();
        cl.read("Galleryh", "gallery_id", "'" + idd + "'");
        TextBox1.Text = cl.ds.Tables[0].Rows[0]["headername"].ToString();
        Image1.Visible = true;
        Image1.ImageUrl = cl.ds.Tables[0].Rows[0]["photo"].ToString();
        Button1.Text = "update";
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id1 = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        cl.delete("Galleryh", "gallery_id", "'" +id1+ "'");
        cl.display("Galleryh", GridView1);
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
public partial class Admin_Blog : System.Web.UI.Page
{
    Class1 cl = new Class1();
    public SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Conn"].ToString());
    public SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
                LoadGridView();
                cl.display("Blog", Gridview1);           
        }
    }
    private void LoadGridView()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from Blog", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Gridview1.DataSource = ds.Tables[0].DefaultView;
        Gridview1.DataBind();
    }
    protected void Gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int idd = Convert.ToInt32(Gridview1.DataKeys[e.RowIndex].Value);
        cl.delete("Blog", "blog_id", "'" + idd + "'");
        cl.display("Blog", Gridview1);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in Gridview1.Rows)
        {
            var chk = row.FindControl("CheckBox1") as CheckBox;
            if (chk.Checked)
            {
                var lblID = row.FindControl("lblID") as Label;
                var lblnm = row.FindControl("lblnm") as Label;
                var lblml = row.FindControl("lblml") as Label;
                var lblcmt = row.FindControl("lblcmt") as Label;
                var Image1 = row.FindControl("Image1") as Label;              
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "Update Blog set status=@status where blog_id=@blog_id";
                comm.Connection = con;
                comm.Parameters.AddWithValue("@blog_id", int.Parse(lblID.Text));
                int status = 1;
                comm.Parameters.AddWithValue("@status", status);              
                con.Open();
                comm.ExecuteNonQuery();
                con.Close();
            }
        }
        LoadGridView();
    }

    protected void Gridview1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Button btn = (e.Row.FindControl("Button2") as Button);
            HiddenField hdn = (e.Row.FindControl("HiddenField1") as HiddenField);
            if (hdn.Value != null)
            {
                if (hdn.Value == "1")
                {
                    btn.Visible = true;
                    btn.Text = "Approved";
                    btn.CssClass = "btn";
                }
                else
                {
                    //btn.Visible = true;
                    //btn.Text = "Approved";
                
                }
            
            }

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Blogshow : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        string trgetdt = System.DateTime.Now.ToString("yyyy");
        int trgt_dt = Convert.ToInt32(trgetdt);
        int enddt = trgt_dt + 5;

        for (int i = 2015; i <= enddt; i++)
        {

            DropDownList2.Items.Add(i.ToString());

        }
        DropDownList2.Items.Insert(0, new ListItem("--- Select Year ---", "0"));
    }          

    protected void Button1_Click(object sender, EventArgs e)
    {
      if (TextBox1.Text == "")
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                if (DropDownList2.SelectedIndex == 0)
                {

                }
                else
                {
                    cl.displaycond("blog_entry", "year", "'" + DropDownList2.SelectedItem.Text + "'", GridView1);
                }
            }
            else
            {

                cl.displaycond2("blog_entry", "month", "'" + DropDownList1.SelectedValue + "'", "year", "'" + DropDownList2.SelectedItem.Text + "'", GridView1);
            }

        }
        else
        {

            cl.displaycond("blog_entry", "Date", "'" + TextBox1.Text + "'", GridView1);

        }
   }
     protected void Button2_Click(object sender, EventArgs e)
       {
           Response.Redirect("Blogshow.aspx");
       }
               
     
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        if (TextBox1.Text == "")
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                if (DropDownList2.SelectedIndex == 0)
                {

                }
                else
                {
                    cl.displaycond("blog_entry", "year", "'" + DropDownList2.SelectedItem.Text + "'", GridView1);

                }

            }
            else
            {

                cl.displaycond2("blog_entry", "month", "'" + DropDownList1.SelectedValue + "'", "year", "'" + DropDownList2.SelectedItem.Text + "'", GridView1);
            }

        }
        else
        {

            cl.displaycond("blog_entry", "Date", "'" + TextBox1.Text + "'", GridView1);

        }

    }
       
  
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Contact : System.Web.UI.Page
{
    Class1 cl = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
                cl.display("Contact", Gridview1);
          
        }
    }
    protected void Gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int idd = Convert.ToInt32(Gridview1.DataKeys[e.RowIndex].Value);
        cl.delete("Contact", "cntct_id", "'" + idd + "'");
        cl.display("Contact", Gridview1);
    }
}
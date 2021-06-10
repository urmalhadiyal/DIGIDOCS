using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frm_home : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        VerifyState();
    }

    protected void VerifyState()
    { if (Session["L_id"]==null)
        {
            btn_signin.Text = "LogIn / Register";
        }
      else
        btn_signin.Text = "LogOut";
    }

    protected void btn_signin_Click(object sender, EventArgs e)
    {
    
        if (btn_signin.Text == "LogOut")
        {
            Session.RemoveAll();
            VerifyState();
            Response.Redirect("~/frm_home.aspx");
        }
        else
            Response.Redirect("~/frm_login.aspx");
    }
    
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class frm_login : System.Web.UI.Page
{
    
    clsConnection c = new clsConnection();

    String qry = string.Empty;
    string id = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        qry = "select ";
        qry += "Lgn_Id from tbl_LoginMaster ";
        qry += "where Lgn_Username = '" + txt_username.Text + "' AND Lgn_Password = '" + txt_password.Text + "' AND Lgn_Id>0";

        id=c.getDR_OneVal(qry);

        if (id != "")
        {
            Session["L_id"] = id;
            if (int.Parse(id) > 2)
                Response.Redirect("~/frm_User_Dashboard.aspx");
            else
                Response.Redirect("~/frm_Admin_Dashboard.aspx");
        }
        else { lbl_msg.Visible = true; }
    }   
}
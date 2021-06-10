using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class frm_registretion : System.Web.UI.Page
{
    String qry = "";
    clsConnection c = new clsConnection();
    
    protected void Page_Load(object sender, EventArgs e)
    {         
         
    }
    
    protected void btn_res_Click(object sender, EventArgs e)
    {


        qry = "insert into tbl_LoginMaster values(";
        qry += "(select MAX(Lgn_Id)+1 from tbl_LoginMaster),";
        qry += "'" + txt_firstname.Text + "',";
        qry += "'" + txt_Lastname.Text + "',";
        qry += "'" + txt_username.Text + "',";
        qry += "'" + txt_confirmpass.Text + "',";
        qry += "'" + txt_Email.Text + "',";
        qry += "'" + db_gender.SelectedValue + "',";
        qry += "'user',1)";


        if(c.TransMyData(qry)>0)
            Response.Redirect("~/frm_login.aspx");
        else
            Response.Redirect("~/frm_Signup.aspx");

        //Response.Redirect("~/frm_login.aspx");
            
    }

}
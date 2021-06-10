using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class frm_User_ConfirmPage : System.Web.UI.Page
{
    string qs = string.Empty;
    int lgn_id;
    string App_id = "";
    clsConnection c = new clsConnection();


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["L_id"] == null)
            Response.Redirect("~/frm_login.aspx");
        else
            lgn_id = int.Parse(Session["L_id"].ToString());
    
        qs = Request.QueryString["str"].ToString();
        verify_req();

        ViewData();
    }

    protected void ViewData()
    {
        string QRY = "SELECT UD_Name, UD_FName, UD_SName, UD_Gender, UD_DOB, UD_Address, UD_Pincode,  UD_Mobile, UD_Email, UD_Image FROM tbl_UserData where Lgn_Id="+ lgn_id +" AND UD_IsAct = 1";
        try
        {
            DataSet ds = c.Bind_DS(QRY);

            lbl_fname.Text = ds.Tables[0].Rows[0]["UD_Name"].ToString();
            lbl_father.Text = ds.Tables[0].Rows[0]["UD_FName"].ToString();
            lbl_surname.Text = ds.Tables[0].Rows[0]["UD_SName"].ToString();
            lbl_gender.Text = ds.Tables[0].Rows[0]["UD_Gender"].ToString();
            lbl_dob.Text = ds.Tables[0].Rows[0]["UD_DOB"].ToString();
            lbl_address.Text = ds.Tables[0].Rows[0]["UD_Address"].ToString();
            lbl_pincode.Text = ds.Tables[0].Rows[0]["UD_Pincode"].ToString();
            lbl_mobile.Text = ds.Tables[0].Rows[0]["UD_Mobile"].ToString();
            lbl_email.Text = ds.Tables[0].Rows[0]["UD_Email"].ToString();
            img_user.ImageUrl = ds.Tables[0].Rows[0]["UD_Image"].ToString();
        }
        catch { Response.Redirect("frm_User_UDRegistration.aspx"); }
    }

    protected void verify_req()
    {
        if (qs == "req_DL")
            Badge_view(true);
        else
            Badge_view(false); 
    }

    protected void Badge_view(bool b)
    {  lbl_badge.Visible =lbl_colun.Visible = chk_mcv.Visible = chk_lmv.Visible =chk_hmv.Visible = b; }

    protected string myqry()
    {
        if (qs == "req_aadhar")
        {

            App_id = c.getDR_OneVal("SELECT MAX(App_ID)+1 FROM tbl_AadharCard");

            return "insert into tbl_AadharCard values((select MAX(AC_Id)+1 from tbl_AadharCard)," + int.Parse(App_id) + "," + lgn_id + ",(select UD_Id from tbl_UserData where Lgn_Id=" + lgn_id + "),'Requested','TRUE',NULL)";
        }
        else if (qs == "req_pan")
        {
            App_id = c.getDR_OneVal("select MAX(App_ID)+1 from tbl_PanCard");

                return "insert into tbl_PanCard values((select MAX(PC_Id)+1 from tbl_PanCard)," + int.Parse(App_id) + "," + lgn_id + ",(select UD_Id from tbl_UserData where Lgn_Id=" + lgn_id + "),'Requested','TRUE',NULL)";
        }
        else if (qs == "req_voter")
        {
            App_id = c.getDR_OneVal("select MAX(App_ID)+1 from tbl_VoterCard");

            return "insert into tbl_VoterCard values((select MAX(VC_Id)+1 from tbl_VoterCard)," + int.Parse(App_id) + "," + lgn_id + ",(select UD_Id from tbl_UserData where Lgn_Id=" + lgn_id + "),'Requested','TRUE',NULL)";
        }
        else if (qs == "req_DL")
        {
            App_id = c.getDR_OneVal("select MAX(App_ID)+1 from tbl_DrivingLicence");

            string str = "";
            str = "insert into tbl_DrivingLicence values((select MAX(DL_Id)+1 from tbl_DrivingLicence)," + int.Parse(App_id) + "," + lgn_id + ",(select UD_Id from tbl_UserData where Lgn_Id=" + lgn_id + ")";
            if (chk_mcv.Checked) 
                str += ",'TRUE'";
            else
                str += ",'FALSE'";
            if (chk_lmv.Checked)
                str += ",'TRUE'";
            else
                str += ",'FALSE'";
            if (chk_hmv.Checked)
                str += ",'TRUE'";
            else
                str += ",'FALSE'";
            str+=",'Requested','TRUE',NULL)";
            

            return str;
        }
        else { return null; }

         
    }

    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        string qry = myqry();
        if (qs == "req_DL")
        {
            if (chk_mcv.Checked || chk_lmv.Checked || chk_hmv.Checked)
            {
             
                if (c.TransMyData(qry) > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your Application ID: '+'" + App_id.ToString() + "');window.location.href='frm_User_Dashboard.aspx';", true);
                }
            }
            else
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Select Vehicle Class/Badge')", true);
        }
        else
        {
            if (c.TransMyData(qry) > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your Application ID: '+'" + App_id.ToString() + "');window.location.href='frm_User_Dashboard.aspx';", true);
            }
        }
    }

    protected void btn_deny_Click(object sender, EventArgs e)
    {
        Response.Redirect("frm_User_Request_Doc.aspx");
    }

    protected void btn_Logout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/frm_home.aspx");
    }
}
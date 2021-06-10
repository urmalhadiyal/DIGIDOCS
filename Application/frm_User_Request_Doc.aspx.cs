using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frm_User_Request_Doc : System.Web.UI.Page
{
    clsConnection c = new clsConnection();
    int lgn_id;
    string qry = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["L_id"] == null)
            Response.Redirect("~/frm_login.aspx");
        else
            lgn_id = int.Parse(Session["L_id"].ToString());

        button_state();


        tr_set.Style.Add("border-left", "5px solid blue");
        tr_set.Style.Add("border-right", "5px solid blue");
    }

    protected void button_state()
    {
        int i=0;
        string[] tbl_name = { "tbl_AadharCard", "tbl_PanCard", "tbl_VoterCard", "tbl_DrivingLicence" };
        Button[] arr = { btn_aadharcard, btn_pancard, btn_votercard, btn_dl};

        foreach (string tbl in tbl_name)
        {
            qry = "select Lgn_Id from "+ tbl +" where Lgn_Id="+ lgn_id +"";
            if (c.getDR(qry) > 0)
            { arr[i].Text = "Applied"; arr[i].Enabled = false; }
             i++;
        }


        

    }

    protected void btn_aadharcard_Click(object sender, EventArgs e)
    {
        qry = "select UD_Id from tbl_UserData where Lgn_Id="+ lgn_id +"";
        if (c.getDR(qry) > 0)
            Response.Redirect("frm_User_ConfirmPage.aspx?str=req_aadhar");
        else
            Response.Redirect("frm_User_UDRegistration.aspx");
    }


    protected void btn_pancard_Click(object sender, EventArgs e)
    {
        qry = "select UD_Id from tbl_UserData where Lgn_Id=" + lgn_id + "";
        if (c.getDR(qry) > 0)
            Response.Redirect("frm_User_ConfirmPage.aspx?str=req_pan");
        else
            Response.Redirect("frm_User_UDRegistration.aspx");
    }

    protected void btn_votercard_Click(object sender, EventArgs e)
    {
        qry = "select UD_Id from tbl_UserData where Lgn_Id=" + lgn_id + "";
        if (c.getDR(qry) > 0)
            Response.Redirect("frm_User_ConfirmPage.aspx?str=req_voter");
        else
            Response.Redirect("frm_User_UDRegistration.aspx");
    }

    protected void btn_dl_Click(object sender, EventArgs e)
    {
        qry = "select UD_Id from tbl_UserData where Lgn_Id=" + lgn_id + "";
        if (c.getDR(qry) > 0)
            Response.Redirect("frm_User_ConfirmPage.aspx?str=req_DL");
        else
            Response.Redirect("frm_User_UDRegistration.aspx");
    }
    protected void btn_Logout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/frm_home.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class frm_User_IssueDoclist : System.Web.UI.Page
{
    clsConnection c = new clsConnection();
    SqlConnection CNN;
    SqlCommand CMD;
    SqlDataReader DR;

    string QRY = string.Empty;
    int lgn_id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["L_id"] == null)
            Response.Redirect("~/frm_login.aspx");
        else
            lgn_id = int.Parse(Session["L_id"].ToString());

        tr_set.Style.Add("border-left", "5px solid blue");
        tr_set.Style.Add("border-right", "5px solid blue");

        GetData();
    }

    protected void GetData()
    {
        string temp=string.Empty;
        string[] tbl_name = { "tbl_AadharCard", "tbl_PanCard", "tbl_VoterCard", "tbl_DrivingLicence" };

        foreach (string tbl in tbl_name)
        {
            QRY = "select Lgn_Id from " + tbl + " where Lgn_Id=" + lgn_id + "";
            
            if (c.getDR(QRY) > 0)
            {
                QRY = "select Id_Num from " + tbl + " where Lgn_Id=" + lgn_id + "";
                temp=c.getDR_OneVal(QRY);
                
                if (tbl == "tbl_AadharCard")
                {
                    if (temp != "")
                        { lbl_AC_Id.Text = temp; lbl_AC_Status.Text = "Approved"; }
                    else
                        lbl_AC_Status.Text = "Requsted";
                }
                else if (tbl == "tbl_PanCard")
                {
                    if (temp != "")
                    { lbl_PC_Id.Text = temp; lbl_PC_Status.Text = "Approved"; }
                    else
                        lbl_PC_Status.Text = "Requsted";
                }
                else if (tbl == "tbl_VoterCard")
                {
                    if (temp != "")
                    { lbl_VC_Id.Text = temp; lbl_VC_Status.Text = "Approved"; }
                    else
                        lbl_VC_Status.Text = "Requsted";
                }
                else if (tbl == "tbl_DrivingLicence")
                {
                    if (temp != "")
                    { lbl_DL_Id.Text = temp; lbl_DL_Status.Text = "Approved"; }
                    else
                        lbl_DL_Status.Text = "Requsted";
                }
                else { }
            }
            else
            { }
        }
    }
    protected void btn_Logout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/frm_home.aspx");      
    }
}
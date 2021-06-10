using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class frm_User_CardReq : System.Web.UI.Page
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

        setCounter("req");
        setCounter("issue");
    }

    protected void setCounter(string str)
    {
        int temp = 0;
        string[] tbl_name = { "tbl_AadharCard", "tbl_PanCard", "tbl_VoterCard", "tbl_DrivingLicence" };

        if (str == "req")
        {
            foreach (string tbl in tbl_name)
            {
                QRY = "select App_ID from " + tbl + " where Lgn_Id=" + lgn_id + "";
                temp += c.getDR(QRY);
            }
        }
        else
        {
            foreach (string tbl in tbl_name)
            {
                QRY = "select Id_Num from " + tbl + " where Lgn_Id=" + lgn_id + "";
                if(c.getDR_OneVal(QRY)!="")
                    temp++;
            }
        }            
            
       

        if (str == "req")
            lbl_reqcounter.Text = temp.ToString();
        else
            lbl_issuecounter.Text = temp.ToString();
    }
    protected void btn_Logout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/frm_home.aspx");
    }
}
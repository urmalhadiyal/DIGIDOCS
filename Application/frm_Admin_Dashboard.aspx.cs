using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class frm_Admin_Dashboard : System.Web.UI.Page
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
            Response.Redirect( "~/frm_login.aspx");
        else
           lgn_id=int.Parse(Session["L_id"].ToString());
 


        tr_set.Style.Add("border-left", "5px solid blue");
        tr_set.Style.Add("border-right", "5px solid blue");

        setCounter();

    }

    protected void setCounter()
    {
        string item;
        string[] tbl_name = { "tbl_UserData", "tbl_AadharCard", "tbl_PanCard", "tbl_VoterCard", "tbl_DrivingLicence" };

        foreach (string tbl in tbl_name)
        {
            if (tbl != "tbl_UserData")
                item = "Id_Num";
            else
                item = "UD_Id";

            QRY = "SELECT COUNT(" + item + ") FROM " + tbl + " where Lgn_Id > 0 ";
            DR = c.getDR_obj(QRY);

            while (DR.Read())
            {
                if (tbl == "tbl_UserData")
                { lbl_users.Text = DR.GetValue(0).ToString(); break; }

                if (tbl == "tbl_AadharCard")
                { lbl_aadharcard.Text = DR.GetValue(0).ToString(); break; }

                if (tbl == "tbl_PanCard")
                { lbl_pancard.Text = DR.GetValue(0).ToString(); break; }

                if (tbl == "tbl_VoterCard")
                { lbl_votercard.Text = DR.GetValue(0).ToString(); break; }

                if (tbl == "tbl_DrivingLicence")
                { lbl_DL.Text = DR.GetValue(0).ToString(); break; }
                
            }
            c.Cnn_Close();
        }

    }

    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/frm_home.aspx");
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class frm_Admin_view_data : System.Web.UI.Page
{
    int lgn_id;
    string app_id = string.Empty;
    string tbl = string.Empty;

    string temp,id_num = string.Empty;
    clsConnection c = new clsConnection();

    DataSet DS;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["L_id"] == null)
            Response.Redirect("~/frm_login.aspx");
        else
            lgn_id = int.Parse(Session["L_id"].ToString());

        app_id = Request.QueryString["Id"].ToString();
        tbl = Request.QueryString["tbl"].ToString();
            
        lbl_AppNum.Text = app_id;

        GetData(app_id);
        FillData();
    }

    protected void GetData(string id)
    {
        string qry = "";
        
        qry = "SELECT UD_Image, UD_Name, UD_FName, UD_SName, UD_Gender, UD_DOB, UD_Address, UD_Pincode, UD_Mobile, UD_Email  FROM tbl_UserData where UD_Id=(select UD_Id from "+ tbl +" where App_ID="+ int.Parse(id) +")";
        DS=c.Bind_DS(qry);

        if (tbl == "tbl_DrivingLicence")
        {
            qry = "";
            qry = "SELECT DL_MVC, DL_LMV, DL_HMV FROM tbl_DrivingLicence where App_ID=" + int.Parse(id) + " AND Lgn_Id>0";
            SqlDataReader DR = c.getDR_obj(qry);
            while (DR.Read())
            {
                if (DR.GetBoolean(0))
                    temp += "MVC ";
                if (DR.GetBoolean(1))
                    temp += "LMV ";
                if (DR.GetBoolean(2))
                    temp += "HMV ";
            }
        }
    }

    protected void FillData()
    {
        img_User.ImageUrl=DS.Tables[0].Rows[0][0].ToString();
        lbl_name.Text = DS.Tables[0].Rows[0][1].ToString();
        lbl_father.Text = DS.Tables[0].Rows[0][2].ToString();
        lbl_surname.Text = DS.Tables[0].Rows[0][3].ToString();
        lbl_gender.Text = DS.Tables[0].Rows[0][4].ToString();
        lbl_dob.Text = Convert.ToDateTime(DS.Tables[0].Rows[0][5]).ToShortDateString();
        lbl_address.Text = DS.Tables[0].Rows[0][6].ToString();
        lbl_pincode.Text = DS.Tables[0].Rows[0][7].ToString();
        lbl_mobile.Text = DS.Tables[0].Rows[0][8].ToString();
        lbl_email.Text = DS.Tables[0].Rows[0][9].ToString();
        if (tbl == "tbl_DrivingLicence")
        {
            lbl_badge_tag.Text = temp;
            lbl_badge.Visible = lbl_col.Visible = lbl_badge_tag.Visible = true;
        }
    }

    protected string myqry()
    {
        string field=string.Empty;
        if (tbl == "tbl_AadharCard")
        { id_num = DateTime.Now.ToString("yyyy MMdd ") + int.Parse(c.getDR_OneVal("SELECT UD_Id FROM tbl_AadharCard where App_ID=" + int.Parse(app_id) + " AND Lgn_Id>0")).ToString("0000"); field = "AC"; }
        else if (tbl == "tbl_PanCard")
        { id_num = "PAN" + DateTime.Now.ToString("yyyyMMdd ") + int.Parse(c.getDR_OneVal("SELECT UD_Id FROM tbl_PanCard where App_ID=" + int.Parse(app_id) + " AND Lgn_Id>0")).ToString("00"); field = "PC"; }
        else if (tbl == "tbl_VoterCard")
        { id_num = "EVC" + DateTime.Now.ToString("yyyyMMdd ") + int.Parse(c.getDR_OneVal("SELECT UD_Id FROM tbl_VoterCard where App_ID=" + int.Parse(app_id) + " AND Lgn_Id>0")).ToString("00"); field = "VC"; }
        else if (tbl == "tbl_DrivingLicence")
        { id_num = "DL GJ10 " + DateTime.Now.ToString("yyyyMMdd ") + int.Parse(c.getDR_OneVal("SELECT UD_Id FROM tbl_DrivingLicence where App_ID=" + int.Parse(app_id) + " AND Lgn_Id>0")).ToString("0000"); field = "DL"; }
        else { return null; }
        c.Cnn_Close();
        return "UPDATE " + tbl + " SET Id_Num='" + id_num + "', " + field + "_Status='Approved' WHERE App_ID=" + int.Parse(app_id) + " AND Lgn_Id>0";
    }

    protected void btn_Verfied_Click(object sender, EventArgs e)
    {
        string qry = myqry();

        if (c.TransMyData(qry) > 0)
        { ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Document ID : '+'" + id_num.ToString() + "');window.location.href='frm_Admin_Dashboard.aspx';", true); }
    }
    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/frm_home.aspx");

    }
}
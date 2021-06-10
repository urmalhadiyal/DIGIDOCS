using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

public partial class frm_Issue : System.Web.UI.Page
{
    string qs = string.Empty;
    int lgn_id;

   // string constr = "Data Source=PC179;Initial Catalog=demo;Integrated Security=True";
    string qry=string.Empty;
    clsConnection c = new clsConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["L_id"] == null)
            Response.Redirect("~/frm_login.aspx");
        else
            lgn_id = int.Parse(Session["L_id"].ToString());


        qs = Request.QueryString["tbl"].ToString();

        SetMenu();
        BindRepeater();
    }

    protected void SetMenu()
    { 
        //BackColor="#FF1C1C" Font-Bold="True" ForeColor="White"
        LinkButton[] lnk={lnk_aadhar,lnk_pan,lnk_voter,lnk_dl};
        foreach (LinkButton x in lnk)
        {   
            x.BackColor = Color.White;
            x.Font.Bold = false;
            x.ForeColor = Color.Black;
        }

        if (qs == "tbl_AadharCard")
        {
            lnk_aadhar.BackColor = Color.Red;
            lnk_aadhar.Font.Bold = true;
            lnk_aadhar.ForeColor = Color.White;
        }
        else if (qs == "tbl_PanCard")
        {
            lnk_pan.BackColor = Color.Red;
            lnk_pan.Font.Bold = true;
            lnk_pan.ForeColor = Color.White;
        }
        else if (qs == "tbl_VoterCard")
        {
            lnk_voter.BackColor = Color.Red;
            lnk_voter.Font.Bold = true;
            lnk_voter.ForeColor = Color.White;
        }
        else if (qs == "tbl_DrivingLicence")
        {
            lnk_dl.BackColor = Color.Red;
            lnk_dl.Font.Bold = true;
            lnk_dl.ForeColor = Color.White;
        }
        else { }
    }

    private void BindRepeater()
    {
        qry = "SELECT UD.UD_Image, UD.UD_Name, AC.App_ID  FROM tbl_UserData UD, "+ qs +" AC where AC.UD_Id=UD.UD_Id AND AC.Lgn_Id>0 AND AC.Id_Num IS NULL";
        if (txt_Search.Text != "")
            qry += " AND (  (UD.UD_Name like '%" + txt_Search.Text.ToString() + "%') OR (AC.App_ID like '%" + txt_Search.Text.ToString() + "%'))";
        
        c.BindMyGrid(qry, Grdview);
        Grdview.DataBind();
        if (Grdview.Rows.Count > 0)
            Grdview.Visible = true;
        else
            Grdview.Visible = false;
        
    }

    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/frm_home.aspx");

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class frm_Admin_UserDetail : System.Web.UI.Page
{
    //string constr = "Data Source=hp;Initial Catalog=DB_DigiDocs;Integrated Security=True";
    
    string qry = string.Empty;
    clsConnection c = new clsConnection();
    int lgn_id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["L_id"] == null)
            Response.Redirect("~/frm_login.aspx");
        else
            lgn_id = int.Parse(Session["L_id"].ToString());

        if (!Page.IsPostBack)
            BindGrid();
    }

    

    private void BindGrid()
    {
        qry = "SELECT UD.UD_Image,LM.Lgn_Username,UD.UD_Name,UD.UD_SName, LM.Lgn_Gender, LM.Lgn_Email, LM.Lgn_Type FROM tbl_UserData UD,tbl_LoginMaster LM where UD.UD_Id > 0 AND LM.Lgn_Id > 0 AND LM.Lgn_Id = UD.Lgn_Id ";
        if(txt_search.Text !="")
            qry += " AND (  LM.Lgn_Username like '%" + txt_search.Text.ToString() + "%')";
        c.BindMyGrid(qry, dtgrd_user);
        dtgrd_user.DataBind();
        if (dtgrd_user.Rows.Count > 0)
            dtgrd_user.Visible = true;
        else
            dtgrd_user.Visible = false;
        
    }



    protected void dtgrd_user_SelectedIndexChanged(object sender, EventArgs e)
    {
        tbl_vdata.Visible = true;

        Image img = (Image)dtgrd_user.SelectedRow.Cells[2].Controls[0];
        img_user.ImageUrl = img.ImageUrl;
        
        lbl_fname.Text= dtgrd_user.SelectedRow.Cells[4].Text.ToString().ToUpper();
        lbl_lname.Text = dtgrd_user.SelectedRow.Cells[5].Text.ToString().ToUpper();
        lbl_username.Text = dtgrd_user.SelectedRow.Cells[3].Text.ToString();
        lbl_Gender.Text = dtgrd_user.SelectedRow.Cells[6].Text.ToString();
        lbl_email.Text = dtgrd_user.SelectedRow.Cells[7].Text.ToString();

        SqlDataReader DR=c.getDR_obj("select UD_DOB,UD_Address,UD_Mobile from tbl_UserData where UD_Image='"+ img.ImageUrl +"'");
        while (DR.Read())
        {
            lbl_DOB.Text = Convert.ToDateTime(DR.GetValue(0)).ToShortDateString();
            lbl_address.Text = DR.GetValue(1).ToString();
            lbl_mobile.Text = DR.GetValue(2).ToString();
        } c.Cnn_Close();
    }

    protected void txt_search_TextChanged(object sender, EventArgs e)
    {
        BindGrid();

    }
    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/frm_home.aspx");

    }
}
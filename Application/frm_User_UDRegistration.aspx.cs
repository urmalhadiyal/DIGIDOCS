using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Windows.Input;

public partial class frm_User_CDRegistration : System.Web.UI.Page
{

    string qs = string.Empty;
    int lgn_id,flag=-1;
    clsConnection c = new clsConnection();

    public static HttpPostedFile HPFile;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["L_id"] == null)
            Response.Redirect("~/frm_login.aspx");
        else
            lgn_id = int.Parse(Session["L_id"].ToString());

        btn_preview.Focus();

        string qry = "select UD_Id from tbl_UserData where Lgn_Id=" + lgn_id + "";
        flag=c.getDR(qry);
        if (flag <= 0)
            btn_submit.Enabled = btn_reset.Enabled = true;
        else
            btn_submit.Enabled = btn_reset.Enabled = false;
    }


    void clearcontrols()
    {
        txt_name.Text = txt_fname.Text = txt_sname.Text = txt_mobile.Text = txt_email.Text = txt_city.Text = txt_dob.Text = txt_address.Text = txt_pincode.Text = "";
        txt_name.Focus();
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid && flag == 0)
        {
            string qry = "INSERT INTO tbl_UserData values((select MAX(UD_Id)+1 from tbl_UserData)," + lgn_id + ",";
            if (HPFile.FileName.ToString() != "")
                qry += "'~/img_user/" + lgn_id.ToString() + "_" + HPFile.FileName.ToString() + "', ";
            else
                qry += "'~/img_user/" + lgn_id.ToString() + "_" + fup_img.FileName.ToString() + "', ";
            qry += " '" + txt_name.Text + "', ";
            qry += " '" + txt_fname.Text + "', ";
            qry += " '" + txt_sname.Text + "', ";
            qry += " '" + txt_dob.Text + "', ";
            qry += " '" + ddl_gender.SelectedItem.ToString() + "', ";
            qry += " '" + txt_address.Text + " " + txt_city.Text + "', ";
            qry += " '" + txt_pincode.Text + "', ";
            qry += " '" + txt_email.Text + "', ";
            qry += " '" + txt_mobile.Text + "','true')";

            if (c.TransMyData(qry) > 0)
            {
                if (HPFile != null)
                {
                    HPFile.SaveAs(Server.MapPath(@"img_user\" + lgn_id + "_") + HPFile.FileName.ToString());
                }
                else fup_img.SaveAs(Server.MapPath(@"img_user\" + lgn_id + "_") + fup_img.FileName.ToString());
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your Profile Data Has been Submitted Successfully ');window.location.href='frm_User_Dashboard.aspx';", true);
            }
            
        }
        else { ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your Profile is Exist')", true); }
    }

    protected void btn_reset_Click(object sender, EventArgs e)
    {
        clearcontrols();
    }


    protected void btn_preview_Click(object sender, EventArgs e)
    {
        if (fup_img.PostedFile.ContentLength > 0)
        {
            HPFile = fup_img.PostedFile;
            MemoryStream MS = new MemoryStream(fup_img.PostedFile.ContentLength);
            fup_img.PostedFile.InputStream.CopyTo(MS);
            byte[] imgArr = MS.ToArray();
            string b64s = Convert.ToBase64String(imgArr, 0, imgArr.Length);
            imgHTML.Src = "data:image/jpg;base64," + b64s;
            btn_submit.Focus();
        }
        else { ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You must be Select jpg/jpeg format file')", true); }
    }
    protected void btn_Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/frm_User_Dashboard.aspx");
    }
}
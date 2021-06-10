using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;



/// <summary>
/// Summary description for clsConnection
/// </summary>
public class clsConnection : System.Web.UI.Page

{
    SqlConnection CNN;
    SqlCommand CMD;
    SqlDataAdapter DA;
    SqlDataReader DR;
    DataSet DS;
    DataTable DT;
    string QRY = string.Empty;

   // static string cnStr = "Data Source=DESKTOP-OTO79BH;Initial Catalog=demo;Integrated Security=True";
    //static string cnStr = "Data Source=PC179;Initial Catalog=demo;Integrated Security=True";

    // static string cnStr = "Data Source=PC179;Initial Catalog=DB_DigiDocs;Integrated Security=True";
    static string cnStr = "Data Source=DESKTOP-OTO79BH;Initial Catalog=DB_DigiDocs;Integrated Security=True";

    public string cnstr()
    { return cnStr; }

   

    public int Cnn_Close()
    {
        try
        {
            DR.Close();
            CNN.Close();
            CNN.Dispose();
            CMD.Dispose();
            return 1;
        }
        catch { }
        return 0;

    }

    public string getDR_OneVal(string QRY)
    {
        string str="";
        CNN = new SqlConnection(cnStr);
        CMD = new SqlCommand(QRY, CNN);
        CNN.Open();
        SqlDataReader DR = CMD.ExecuteReader();
        while (DR.Read())
            str = DR.GetValue(0).ToString();
        DR.Close();
        CNN.Close();
        CNN.Dispose();
        CMD.Dispose();

        return str;
    }

    public SqlDataReader getDR_obj(string QRY)
    {
        CNN = new SqlConnection(cnStr);
        CMD = new SqlCommand(QRY, CNN);
        CNN.Open();
        DR = CMD.ExecuteReader();
        return DR;
    }

    public int getDR(string QRY)
    {
        int i = 0;
        try
        {
            CNN = new SqlConnection(cnStr);
            CMD = new SqlCommand(QRY, CNN);
            CNN.Open();
            DR = CMD.ExecuteReader();
            while (DR.Read())
                i++;
            DR.Close();
            CNN.Close();
            CNN.Dispose();
            CMD.Dispose();
            
        }
        catch { }
        return i;
    }

    public void LoadDDL(DropDownList ddl_Name, string QRY)
    {
        ddl_Name.Items.Clear();
        ddl_Name.Items.Add("-- SELECT --");

        CNN = new SqlConnection(cnStr);
        CMD = new SqlCommand(QRY, CNN);
        CNN.Open();
        DR = CMD.ExecuteReader();
        while (DR.Read())
            ddl_Name.Items.Add(DR.GetValue(0).ToString());
        DR.Close();
        CNN.Close();
        CNN.Dispose();
        CMD.Dispose();
        ddl_Name.SelectedIndex = 0;

    }

    public int TransMyData(string myQRY)
    {
        int i = 0;
        try
        {
            CNN = new SqlConnection(cnStr);
            CMD = new SqlCommand(myQRY, CNN);
            CNN.Open();
            CMD.ExecuteNonQuery();
            CNN.Close();
            CNN.Dispose();
            CMD.Dispose();
            i++;
        }
        catch { }
        return i;
    }

    public void BindMyGrid(string QRY, GridView myDtGrd)
    {
        CNN = new SqlConnection(cnStr);
        CMD = new SqlCommand(QRY, CNN);
        DA = new SqlDataAdapter(CMD);
        DS = new DataSet();
        DA.Fill(DS);
        myDtGrd.DataSource = DS.Tables[0];
        //myDtGrd.Visible = false;
    }

    public DataTable BindDataTable(DataTable dt, string QRY)
    {
        DT = dt;

        CNN = new SqlConnection(cnStr);
        CMD = new SqlCommand(QRY, CNN);
        DA = new SqlDataAdapter(CMD);
        DA.Fill(DT);
        CNN.Close();
        CMD.Dispose();

        DA.Dispose();
        CNN.Dispose();

        return DT;
    }

    public DataSet Bind_DS( string QRY)
    {
        DS = new DataSet();

        CNN = new SqlConnection(cnStr);
        CMD = new SqlCommand(QRY, CNN);
        DA = new SqlDataAdapter(CMD);
        DA.Fill(DS);
        CNN.Close();
        CMD.Dispose();

        DA.Dispose();
        CNN.Dispose();

        return DS;
    }
}

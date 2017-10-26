using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class ReceptionMessages : System.Web.UI.Page
{
    static DataSet mySet;
    static OleDbConnection mycon;
    static OleDbDataAdapter adpLogement;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            mySet = new DataSet();
            mycon = new OleDbConnection();
            
            mycon.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source = C:/Users/Rémi/Documents/PROJECTS/Remax2/App_Data/Remax.mdb;Persist Security Info=True";
            mycon.Open();

            OleDbCommand cmd = new OleDbCommand(MessageIO.selectAllMessWithExpeDesti(), mycon);
            adpLogement = new OleDbDataAdapter(cmd);
            adpLogement.Fill(mySet, "Messages");

            repeat_message.DataSource = mySet.Tables["Messages"];
            repeat_message.DataBind();

        }
    }
}
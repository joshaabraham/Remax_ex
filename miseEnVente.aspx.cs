using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class miseEnVente : System.Web.UI.Page
{

    static DataSet mySet;
    static OleDbConnection mycon;
    static OleDbDataAdapter adpLogement;
    static int count;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack) {

            mySet = new DataSet();
            mycon = new OleDbConnection();
            mycon.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source = C:/Users/Rémi/Documents/PROJECTS/Remax2/App_Data/Remax.mdb;Persist Security Info=True";
            mycon.Open();

            OleDbCommand cmd = new OleDbCommand("SELECT* FROM Adresse", mycon);
            adpLogement = new OleDbDataAdapter();
            adpLogement.SelectCommand = cmd;
            adpLogement.Fill(mySet, "Adresses");
            count = mySet.Tables["Adresses"].Rows.Count;
        }

    }

    protected void cbo_ville_logement_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
        {


        

        string typeLogement = cbo_type_log.SelectedValue;
        int surface = Convert.ToInt32(txt_surface.Text);
        int nbBed = Convert.ToInt32(cbo_nb_bedroom.SelectedValue);
        int nbBath = Convert.ToInt32(cbo_nb_bathroom.SelectedValue);
        
        
        string ville = cbo_ville_logement.Text;
        int prix = Convert.ToInt32(txt_prix.Text);
        string desc = txt_description.Text;

        string typeRue = cbo_typeRue.Text;
        int noRue = Convert.ToInt32(Text_noRue.Text);
        string nomRue = Text_NomRue.Text;
        
        string copstal = Text_CodePostal.Text;
        
        


        Adresse ad = new Adresse(noRue, typeRue, nomRue, copstal, ville);

        Logement log = new Logement(typeLogement, surface, nbBed, nbBath, ville, false, true);
        

        OleDbCommand cmdInsertAdresse = new OleDbCommand(UserSearcheIO.insertUneAdresse(ad), mycon);
        ad.IdAdresse1 = count + 1;
        OleDbCommand cmdInserLogement = new OleDbCommand(UserSearcheIO.insertUnLogement(ad, log), mycon);

        
        cmdInsertAdresse.ExecuteNonQuery();
        


        cmdInserLogement.ExecuteNonQuery();
        mycon.Close();

        Response.Redirect("Index.aspx");

    }
}
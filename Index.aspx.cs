using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;



public partial class Index : System.Web.UI.Page
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


          
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Elimination des resultats des recherches precedentes
        mySet.Tables.Clear();

        //PREPARATION DE LA REQUETE

        //donnees necessaires a la requete
        string city = cbo_City.SelectedValue.ToString();
                string logementType = cbo_logementType.SelectedValue.ToString();
                int priceLowest = Convert.ToInt32(cbo_lowestPrice.SelectedValue);
                int priceHighest = Convert.ToInt32(cbo_highestPrice.SelectedValue);
                int noBedRoom = Convert.ToInt32(cbo_noBedroom.SelectedValue);
                int noBathroom = Convert.ToInt32(cbo_noBathroom.SelectedValue);
                int surface = Convert.ToInt32(cbo_surface.SelectedValue);
                bool location = Convert.ToBoolean(rad_louer.Checked);
                bool vente = Convert.ToBoolean(rad_acheter.Checked);

                //creation d'un logement ideal
                Logement logementSearched = new Logement(logementType, surface, noBedRoom, noBathroom, city, location, vente);


        //RECHERCHE DU LOGEMENT

                //definition de la commande (avec l'aide la fonction static fittingLogement ecrtie dans UserSearchIO
                OleDbCommand myCmd = new OleDbCommand(UserSearcheIO.fittingLogement(logementSearched,priceLowest,priceHighest), mycon);
                //attribution de la command a l adapter
                adpLogement = new OleDbDataAdapter(myCmd);
                //remplissage du dataset
                adpLogement.Fill(mySet, "Logement");

        //affichage du du/des resultat(s).... ou message de requete infructueuse.

                //Test si le Dataset ne contient aucune ligne alors ...
                if (mySet.Tables["Logement"].Rows.Count == 0)
                {       //... message de recherche infructueuse
                    Lab_Nombre_de_resultats.Text = "Recherche infructueuse.<br/>Aucun Logement ne correspond a tous vos criteres";
                }
                //Test si le Dataset contient au moins 1 ligne alors ...
                else if(mySet.Tables["Logement"].Rows.Count > 0)
                {
                        //... affichage du nombre de resultats dans un Label
                    Lab_Nombre_de_resultats.Text =  mySet.Tables["Logement"].Rows.Count +" logements trouves.";
                        //... et affichage dans un repeater grace a fonction DataBind()
                        rep_resultat.DataSource = mySet.Tables["Logement"];
                        rep_resultat.DataBind();
            
            

                }
       
    }
        
        
    
}
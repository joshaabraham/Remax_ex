using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class chercheAgent : System.Web.UI.Page
{
    static DataSet mySet;
    static OleDbConnection mycon;
    static OleDbDataAdapter adpAgent;

     private static List<Agent> lAgent;
    private static string villeAgent;
    private static string sexAgent;
    private static string typeAgent;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack) {

            lAgent = new List<Agent>();
            mySet = new DataSet();
            mycon = new OleDbConnection();
            mycon.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source = C:/Users/Rémi/Documents/PROJECTS/Remax2/App_Data/Remax.mdb;Persist Security Info=True";
            mycon.Open();

            OleDbCommand cmd = new OleDbCommand(AgentIO.selectAllAgent(), mycon);
            adpAgent = new OleDbDataAdapter(cmd);
            adpAgent.Fill(mySet, "Agent");

            

            DropDownList1.DataTextField = "Ville";
            DropDownList1.DataValueField = "Ville";

            DropDownList1.DataSource = mySet.Tables["Agent"];
            DropDownList1.DataBind();

            /*
            foreach (DataRow gent in mySet.Tables["Agent"].Rows)
        {
            Agent unAgent = new Agent();
            unAgent.IdAgent1 = Convert.ToInt32(gent["IdAgent"]);
            unAgent.Nom1 = gent["Nom"].ToString();
            unAgent.Prenom1 = gent["Prenom"].ToString();
            unAgent.Email1 = gent["Email"].ToString();
            unAgent.Telephone1 = gent["Telephone"].ToString();
            //unAgent.PhotoM1 = gent["PhotoM"].ToString();
            unAgent.Ville1 = gent["Ville"].ToString();
           // unAgent.TypeAgent = gent["TypeAgent"].ToString();
            unAgent.Sex1 = gent["Sex"].ToString();


            lAgent.Add(unAgent);


        }
       */
           

           
        }
        

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       



    }

    protected void btn_chercher_Click(object sender, EventArgs e)
    {
        //Elimination des resultats des recherches precedentes
        mySet.Tables.Clear();

        villeAgent = DropDownList1.SelectedValue;
        typeAgent = cbo_typeAgent.SelectedValue;
        sexAgent = cbo_SexAgent.SelectedValue;

        
        Agent ag = new Agent();
        ag.Ville1 = villeAgent;
        ag.TypeAgent = typeAgent;
        ag.Sex1 = sexAgent;

        //RECHERCHE DE L'AGENT

        //definition de la commande (avec l'aide la fonction static fittingLogement ecrtie dans UserSearchIO
        OleDbCommand myCmd = new OleDbCommand(AgentIO.searcheFittingAgent(ag), mycon);
        //attribution de la command a l adapter
        adpAgent = new OleDbDataAdapter(myCmd);
        //remplissage du dataset
        adpAgent.Fill(mySet, "Agent");


        //AFFICHAGE DES RESULTATS
        repeat_agent.DataSource = mySet.Tables["Agent"];
        repeat_agent.DataBind();

       

    }

    protected void Button_env_message_Click(object sender, EventArgs e)
    {
       
    }

    protected void repeat_agent_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }

    protected void Button_ecrire_Click(object sender, EventArgs e)
    {
        
    }
}
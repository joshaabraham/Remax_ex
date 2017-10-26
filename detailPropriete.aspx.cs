using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class detailPropriete : System.Web.UI.Page
{
    static DataSet mySet;
    static OleDbConnection mycon;
    static OleDbDataAdapter adapLogement;


    protected void Page_Load(object sender, EventArgs e)
    {
        int refMaison = Convert.ToInt32(Request.Params["IdLogement"]); // recupere l'id du logement depuis l'URL

        /*
        if (!IsPostBack)
        {*/
           

            mySet = new DataSet();
            mycon = new OleDbConnection();
            mycon.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source = C:/Users/Rémi/Documents/PROJECTS/Remax2/App_Data/Remax.mdb;Persist Security Info=True";
            mycon.Open();

            //RECHERCHE DANS LA BASE DE DONNEE

            Logement log = new Logement();
            log.IdLogement = refMaison;
            OleDbCommand cmd = new OleDbCommand(UserSearcheIO.unLogementByID(log), mycon);
            //attribution de la command a l adapter
            adapLogement = new OleDbDataAdapter(cmd);
            //remplissage du dataset
            adapLogement.Fill(mySet, "Logement");

            //AFFICHAGE DU RESULTATS DANS LA PAGE
            repeat_logement.DataSource = mySet.Tables["Logement"];
            repeat_logement.DataBind();
            mySet.Clear();

            //on recupere la bonne adresse
            OleDbCommand cmd3 = new OleDbCommand(UserSearcheIO.LogementAdresse(log), mycon);
            adapLogement = new OleDbDataAdapter(cmd3);
            adapLogement.Fill(mySet, "Adresse");

                //AFFICHAGE DU RESULTATS DANS LA PAGE
                repeat_adresse.DataSource = mySet.Tables["Adresse"];
                repeat_adresse.DataBind();
                mySet.Clear();

            //on recupere le bon agent
            OleDbCommand cmd2 = new OleDbCommand(AgentIO.agentByLogement(log), mycon);
            adapLogement = new OleDbDataAdapter(cmd2);
            adapLogement.Fill(mySet, "Agent");

                //AFFICHAGE DU RESULTATS DANS LA PAGE
                repeat_agent.DataSource = mySet.Tables["Agent"];
                repeat_agent.DataBind();

        txt_idAgent.Visible = false;
                txt_idAgent.Text = mySet.Tables["Agent"].Rows[0][0].ToString();
                Text_email_agent.Text = mySet.Tables["Agent"].Rows[0]["Email"].ToString();

        mySet.Clear();

           
            





      //  }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        


    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        //envoi d'un message

        //Creation du message
        string objet = Text_objet_email.Text;
        string message = txt_message.Text;
        string emailutil = txt_clientEmail.Text;
        int idAgent = Convert.ToInt32(txt_idAgent.Text);


        

        Message mess = new Message(idAgent, emailutil, objet, message);
        mess.Contenu1 = txt_message.Text;
        //creation de la requete d'insertion

        OleDbCommand cmdInsert = new OleDbCommand(MessageIO.insertMessage(mess), mycon);

        //execution de l'insertion
        cmdInsert.ExecuteNonQuery();

       
        //fermeture connexion
        mycon.Close();


        //redirection vers la page d'index
        Response.Redirect("ReceptionMessages.aspx");
    }
}
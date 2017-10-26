using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for MessageIO
/// </summary>
public class MessageIO
{

    public static string insertMessage(Message mess) {

        return "INSERT INTO Messages (IdAgent, EmailExpediteur, Objet, Message) VALUES ("+mess.Iddestinataire1+" ,'"+mess.EmailExpe+"' , '"+mess.Objet1+"' , '"+mess.Contenu1+"')";
    }

    public static string selectAllMess() {

        return "SELECT * FROM Messages";
    }

    public static string selectAllMessWithExpeDesti()
    {

        return "SELECT  Messages.Objet, Messages.Message, Agent.Prenom, Agent.Nom, Agent.PhotoM"+
            " FROM Messages" +
            " INNER JOIN Agent ON Agent.IdAgent = Messages.IdAgent ";
    }
    public MessageIO()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detailPropriete.aspx.cs" Inherits="detailPropriete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            overflow: hidden;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
          <div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <h1><a href="index.aspx" id="logo" class="auto-style1"></a></h1>
      <div class="wrapper">
        <ul id="icons">
          <li><a href="#" class="normaltip"><img src="images/icon1.jpg" alt=""></a></li>
          <li><a href="#" class="normaltip"><img src="images/icon2.jpg" alt=""></a></li>
          <li><a href="#" class="normaltip"><img src="images/icon3.jpg" alt=""></a></li>
        </ul>
      </div>
      <nav>
         <ul id="menu">
          <li><a href="index.aspx">Main Page</a></li>
         
             <li id="menu_active"><a href="ReceptionMessages.aspx">Messages</a></li>
          <li><a href="chercheAgent.aspx">Recherche Agent</a></li>
          <li><a href="miseEnVente.aspx">Je vends</a></li>
        </ul>
      </nav>
    </header>
    <!-- / header -->
  </div>
</div>
    <div class="body2">
  <div class="main">
    <section id="content">
      <div class="wrapper">

    <asp:Table ID="tab_details" runat="server" Width="675px">
              <asp:TableRow>
                  <asp:TableHeaderCell>Details de la propriete</asp:TableHeaderCell>
                  <asp:TableHeaderCell>Agent</asp:TableHeaderCell>
                  <asp:TableHeaderCell>Prenez rendez-vous</asp:TableHeaderCell>
              </asp:TableRow>

              <asp:TableRow>
                  <asp:TableCell>

                      <!-- ICI LES DONNEE DU LOGEMENT -->
                      <asp:Repeater ID="repeat_logement" runat="server"><ItemTemplate>

     <asp:Image ID="Image_Maison" ImageURL='<%# Eval("Photo")%>' runat="server" /><br />
     Salle de bain : <asp:Label  class="color2" ID="Lab_shor_desc_bath" runat="server" Text='<%# Eval("BathroomNo") %>'></asp:Label>
     Chambre : <asp:Label  class="color2" ID="Lab_shor_desc_beds" runat="server" Text='<%# Eval("BathroomNo") %>'></asp:Label>
     Surface : <asp:Label  class="color2" ID="Lab_shor_desc_radius" runat="server" Text='<%# Eval("Radius") %>' ></asp:Label> m2.<br />
     Prix : <asp:Label  class="color2" ID="Lab_shor_desc_price" runat="server" Text='<%# Eval("Price") %>'></asp:Label> $<br />
    <asp:Label  class="pad_bot2" ID="Lab_long_desc" runat="server" Text='<%# Eval("Description") %>'></asp:Label><br />
    
                      </ItemTemplate></asp:Repeater>

                       <!-- ICI LES DONNEE DE L ADRESSE -->
                      <asp:Repeater ID="repeat_adresse" runat="server">
                          <ItemTemplate>

    Adresse : <asp:Label  class="color2" ID="lab_noRue" runat="server" Text='<%# Eval("NoRue") %>'></asp:Label><span> </span>
            <asp:Label  class="color2" ID="lab_typeRue" runat="server" Text='<%# Eval("typeRue") %>'></asp:Label><span> </span>
                <asp:Label  class="color2" ID="lab_nomRue" runat="server" Text='<%# Eval("NomRue") %>'></asp:Label><br />
                    <asp:Label  class="color2" ID="Lab_cPostal" runat="server" Text='<%# Eval("CPostal") %>'></asp:Label><span> ,</span>
                        <asp:Label  class="color2" ID="Lab_ville" runat="server" Text='<%# Eval("Ville") %>'></asp:Label>
                            
                      </ItemTemplate>
                       </asp:Repeater>

                  </asp:TableCell>
                  <asp:TableCell>

                      <!-- ICI LES DONNEE DE L AGENT -->
                      <asp:Repeater ID="repeat_agent" runat="server"><ItemTemplate>
            <asp:Image ID="Image_Agent" ImageURL='<%# Eval("PhotoM")%>' runat="server" /><br />
                       <asp:Label  class="color2" ID="Lab_prenom" runat="server" Text='<%# Eval("Prenom") %>'></asp:Label><span> </span>
                      <asp:Label  class="color2" ID="Lab_nom" runat="server" Text='<%# Eval("Nom") %>'></asp:Label>
                        </ItemTemplate></asp:Repeater>
                  </asp:TableCell>
                  <asp:TableCell>
                      <asp:Label  runat="server"> indiquez votre email :</asp:Label><br />
                      
                      <asp:TextBox ID="txt_clientEmail"  runat="server"></asp:TextBox><br />
                      <asp:Label  runat="server"> Email du destinataire :</asp:Label><br />
                      <asp:TextBox ID="txt_idAgent"  Text='<%# Eval("IdAgent")%>' runat="server"></asp:TextBox>
                      <asp:TextBox ID="Text_email_agent"  Text='<%# Eval("Email")%>' runat="server"></asp:TextBox><br />
                      <asp:Label  runat="server"> Objet de l'email :</asp:Label><br />
                      
                      <asp:TextBox ID="Text_objet_email"  runat="server"></asp:TextBox><br />
                      <asp:Label  runat="server"> votre message :</asp:Label><br />
                      <asp:TextBox ID="txt_message"  runat="server" ></asp:TextBox>

                      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                  

                  </asp:TableCell>

              </asp:TableRow>
              <asp:TableRow>
                  
                  <asp:TableCell></asp:TableCell>
                  <asp:TableCell><br /><br /><br />

                      </asp:TableCell>
                  <asp:TableCell></asp:TableCell>
              </asp:TableRow>

          </asp:Table>
           <asp:Button class="button" ID="Button1" runat="server" Text="Envoyer" OnClick="Button1_Click1" />
          </div>
        </section>
      </div>
        </div>
    </form>
    <div class="body4">
  <div class="main">
    <!-- footer -->
    <footer> <span class="call">Call Center: <span>514 293 8831</span></span> Copyright &copy; Remi Duplan - All Rights Reserved<br>
      Design by <a target="_blank" href="http://www.templatemonster.com/">TemplateMonster.com</a>
      <!-- {%FOOTER_LINK} -->
    </footer>
    <!-- / footer -->
  </div>
</div>
</body>
</html>

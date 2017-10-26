<%@ Page Language="C#" AutoEventWireup="true" CodeFile="miseEnVente.aspx.cs" Inherits="miseEnVente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 62%;
        }
        .auto-style2 {
            width: 199px;
        }
        .auto-style3 {
            width: 199px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 313px;
            height: 39px;
        }
        .auto-style6 {
            font-size: medium;
        }
        .auto-style7 {
            font-weight: normal;
            text-align: center;
        }
        .auto-style8 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style6" colspan="2">
                    <h3 class="auto-style7"><strong>Le logement que je mets en vente</strong></h3>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Type de logement :</td>
                <td>
                    <asp:DropDownList ID="cbo_type_log" runat="server">
                          <asp:ListItem Value="Appartement" Text="Appartement"></asp:ListItem>
                          <asp:ListItem Value="Loft" Text="Loft"></asp:ListItem>
                          <asp:ListItem Value="Duplex" Text="Duplex"></asp:ListItem>
                          <asp:ListItem Value="Villa" Text="Villa"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Nombre de chambre :</td>
                <td>
                    <asp:DropDownList ID="cbo_nb_bedroom" runat="server">
                          <asp:ListItem Value="1" Text="1">1</asp:ListItem>
                          <asp:ListItem Value="2" Text="2">2</asp:ListItem>
                          <asp:ListItem Value="3" Text="3">3</asp:ListItem>
                          <asp:ListItem Value="4" Text="4">4</asp:ListItem>
                          <asp:ListItem Value="5" Text="5">5</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Nombre de salle de bain :</td>
                <td>
                    <asp:DropDownList ID="cbo_nb_bathroom" runat="server">
                          <asp:ListItem Value="1" Text="1">1</asp:ListItem>
                          <asp:ListItem Value="2" Text="2">2</asp:ListItem>
                          <asp:ListItem Value="3" Text="3">3</asp:ListItem>
                          <asp:ListItem Value="4" Text="4">4</asp:ListItem>
                          <asp:ListItem Value="5" Text="5">5</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Surface : </td>
                <td>
                    <asp:TextBox ID="txt_surface" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Prix :</td>
                <td>
                    <asp:TextBox ID="txt_prix" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Description :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_description" class="auto-style5" name="S1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Adresse :</td>
                <td>No rue :<asp:TextBox ID="Text_noRue" runat="server" Width="31px"></asp:TextBox>
&nbsp;type rue :
                    <asp:DropDownList ID="cbo_typeRue" runat="server">
                        <asp:ListItem Value="rue" Text="rue"></asp:ListItem>
                        <asp:ListItem Value="avenue" Text="avenue"></asp:ListItem>
                        <asp:ListItem Value="boulevard" Text="boulevard"></asp:ListItem>
                        <asp:ListItem Value="impasse" Text="impasse"></asp:ListItem>
                    </asp:DropDownList>
&nbsp;nom rue :
                    <asp:TextBox ID="Text_NomRue" runat="server"></asp:TextBox>
                    <br />
                    Code postal :
                    <asp:TextBox ID="Text_CodePostal" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Photo :</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Ville :</td>
                <td>
                    <asp:DropDownList ID="cbo_ville_logement" runat="server" OnSelectedIndexChanged="cbo_ville_logement_SelectedIndexChanged">
                         <asp:ListItem Value="Montreal" Text="Montreal"></asp:ListItem>
                          <asp:ListItem Value="New York" Text="New York"></asp:ListItem>
                          <asp:ListItem Value="Vancouver" Text="Vancouver"></asp:ListItem>
                          <asp:ListItem Value="Los Angeles" Text="Los Angeles"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
           
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Envoyer" class="button" OnClick="Button1_Click" /></td>
                
            </tr>
        </table>
  

    </div>
    </form>
      </div>
      
    </section>
  </div>
</div>
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

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chercheAgent.aspx.cs" Inherits="chercheAgent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body id="page5">
    <div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <h1><a href="index.html" id="logo"></a></h1>
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

    <!-- content -->
<div class="body2">
  <div class="main">
    <section id="content">
      <div class="wrapper">
            <form id="form1" runat="server">
            <div class="auto-style1" style="text-align:center">
         <asp:Panel runat="server" GroupingText="Recherche d'Agents" Width="669px" BackColor="#CCFF99" BorderWidth="3px" Font-Bold="True" Font-Size="Large" ForeColor="#3366FF">
            <br />
            <asp:Label runat="server">Je cherche un agent :</asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="122px" AutoPostBack="True"></asp:DropDownList>
            <asp:DropDownList ID="cbo_SexAgent" runat="server">
                <asp:ListItem Value="Homme" Text ="Homme"></asp:ListItem>
                <asp:ListItem Value="Femme" Text ="Femme"></asp:ListItem>
            </asp:DropDownList>
             <asp:DropDownList ID="cbo_typeAgent" runat="server">
                <asp:ListItem Value="Individuel" Text ="Individuel"></asp:ListItem>
                <asp:ListItem Value="Associe" Text ="Associe"></asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btn_chercher" runat="server" Text="Chercher" class="button" Width="98px" OnClick="btn_chercher_Click"/>

            <br />
        </asp:Panel>
            </div>
          <div class="auto-style1">
                    <!-- ICI LES DONNEE DE L AGENT -->
                  
                    <asp:Repeater id="repeat_agent" runat="server" OnItemCommand="repeat_agent_ItemCommand">
                        <ItemTemplate>
                          <asp:Table runat="server"  BorderStyle="Solid" Width="600px" style="padding:25px;margin:25px" >
                              <asp:TableRow>
                                  <asp:TableCell>
            <asp:Image ID="Image_Agent" ImageURL='<%# Eval("PhotoM")%>' runat="server" /><br />
                                
                                      </asp:TableCell>
                                  <asp:TableCell>
                                      
            <asp:Label  class="color2" ID="Lab_prenom" runat="server" Text='<%# Eval("Prenom") %>'></asp:Label><span> </span>
            <asp:Label  class="color2" ID="Lab_nom" runat="server" Text='<%# Eval("Nom") %>'></asp:Label><br />
            <asp:Label  class="color2" ID="Lab_Email" runat="server" Text='<%# Eval("Email") %>'></asp:Label><br />
            <asp:Label  class="color2" ID="Lab_Telephone" runat="server" Text='<%# Eval("Telephone") %>'></asp:Label><br />
            <asp:Label  class="color2" ID="Lab_Sex" runat="server" Text='<%# Eval("Sex") %>'></asp:Label><br />
            <asp:Label  class="color2" ID="Lab_TypeAgent" runat="server" Text='<%# Eval("TypeAgent") %>'></asp:Label><br />
                                </asp:TableCell>
                               

                               </asp:TableRow>
                          </asp:Table>
                          </ItemTemplate>
                    </asp:Repeater>
              
                </div>
             </form>
        </div>
        </section>
  </div>
    </div>

    <div class="body4">
  <div class="main">
    <!-- footer -->
    <footer> <span class="call">Call Center: <span>514-293-8831</span></span> Copyright &copy; Remi Duplan</br>
      Design by <a target="_blank" href="http://www.templatemonster.com/">TemplateMonster.com</a>
      <!-- {%FOOTER_LINK} -->
    </footer>
    <!-- / footer -->
  </div>
</div>
</body>
</html>

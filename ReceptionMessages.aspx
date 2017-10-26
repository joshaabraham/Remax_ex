<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReceptionMessages.aspx.cs" Inherits="ReceptionMessages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
</head>
<body>
    <form id="form1" runat="server">
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
    <div>
            <asp:Repeater Id="repeat_message" runat="server">
                <ItemTemplate>
        <asp:Table ID="Table1" runat="server"  BorderStyle="Solid" Width="600px" style="padding:25px;margin:25px" >
            
              
           <asp:TableRow>
               <asp:TableCell>
                    <asp:Label  class="color2" ID="Label2" runat="server" Text="Objet" ForeColor="#3333FF" Font-Bold="True" Font-Size="Large"></asp:Label><br />
                   <asp:Label  class="color2" ID="Lab_prenom" runat="server" Text='<%# Eval("Objet") %>'></asp:Label><br /><br />
                   <asp:Label  class="color2" ID="Label3" runat="server" Text="Message" ForeColor="#3333FF" Font-Bold="True" Font-Size="Large"></asp:Label><br />
                   <asp:Label  class="color2" ID="Label1" runat="server" Text='<%# Eval("Message") %>'></asp:Label><br /><br />

               </asp:TableCell>
                <asp:TableCell>
                    <asp:Image ID="Image_Destinataire" ImageURL='<%# Eval("PhotoM")%>' runat="server" Height="70" Width="70" BorderStyle="Solid" BorderWidth="5" BorderColor="Lime" /><br /><br />
                    <asp:Label  class="color2" ID="Label_Dest_Prenom" runat="server" Text='<%# Eval("Prenom") %>' ForeColor="#FFFF99" Font-Size="Medium"></asp:Label><span>  </span>
                   <asp:Label  class="color2" ID="Label_Dest_Nom" runat="server" Text='<%# Eval("Nom") %>' ForeColor="#FFFF99" Font-Size="Medium"></asp:Label><br />
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
    <!-- / content -->
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

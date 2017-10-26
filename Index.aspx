<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REMAX</title>
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
<script src="js/jquery-1.6.js" ></script>
<script src="js/cufon-yui.js"></script>
<script src="js/cufon-replace.js"></script>
<script src="js/Didact_Gothic_400.font.js"></script>
<script src="js/jquery.nivo.slider.pack.js"></script>
<script src="js/atooltip.jquery.js"></script>
<script src="js/jquery.jqtransform.js" ></script>
<script src="js/script.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<style type="text/css">.bg{behavior:url("js/PIE.htc");}
    .auto-style1 {
        height: 60px;
    }
    .auto-style2 {
        width: 128px;
    }
    .auto-style3 {
        float: left;
        width: 128px;
    }
    .auto-style4 {
        float: left;
        width: 94px;
    }
    .auto-style5 {
        width: 94px;
    }
    .auto-style7 {
        
        width: 261px;
    }
    .auto-style8 {
        width: 236px;
    }
</style>
<![endif]-->
</head>
<body>
     <form id="page1" runat="server">
    
    
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
<!-- content body 2-->
<div class="body2">
  <div class="main">
    <section id="content">
      <div class="wrapper">
        <article class="col1">
          <div id="slider"> 
         <img src="images/img1.jpg" alt="" title="<strong>Villa Neverland, 2006</strong><span>9 rooms, 3 baths, 6 beds, building size: 5000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 600 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>"> <img src="images/img2.jpg" alt="" title="<strong>Villa Lipsum, 2008</strong><span>8 rooms, 4 baths, 4 beds, building size: 4500 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 500 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>"> <img src="images/img3.jpg" alt="" title="<strong>Villa Dolor Sid, 2007</strong><span>11 rooms, 3 baths, 5 beds, building size: 6000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 650 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>"> <img src="images/img4.jpg" alt="" title="<strong>Villa Nemo Enim, 2010</strong><span>5 rooms, 2 baths, 4 beds, building size: 3000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 400 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>"> <img src="images/img5.jpg" alt="" title="<strong>Villa Nam Libero, 2003</strong><span>7 rooms, 4 baths, 6 beds, building size: 7000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 700 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>"> </div>
        </article>
        </div>
        <article class="auto-style7">
            <div class="auto-style8"> 
   <table border="0">
  <tr>
    <td colspan="2"><h3>Trouvez votre propriete</h3></td>
  </tr>
  <tr>
    <td colspan="2">
        <fieldset>
            <legend><b>Louer / Acheter</b></legend>
            
            <asp:RadioButton Id="rad_louer" Text="Location" runat="server" GroupName="rad_achatLoc" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton Id="rad_acheter" Text="Acheter" runat="server" GroupName="rad_achatLoc" />
        </fieldset>


    </td>
  </tr>
   <tr class="row_select">
    <td class="auto-style2">City:</td>
    <td class="auto-style4"><asp:DropDownList ID="cbo_City" runat="server">
                          <asp:ListItem Value="Montreal" Text="Montreal"></asp:ListItem>
                          <asp:ListItem Value="New York" Text="New York"></asp:ListItem>
                          <asp:ListItem Value="Vancouver" Text="Vancouver"></asp:ListItem>
                          <asp:ListItem Value="Los Angeles" Text="Los Angeles"></asp:ListItem>
                 </asp:DropDownList></td>
  </tr>
   
       <tr class="row_select">
    <td class="auto-style2">House type:</td>
    <td class="auto-style4"> <asp:DropDownList ID="cbo_logementType" runat="server">
                          <asp:ListItem Value="Appartement" Text="Appartement">Appartement</asp:ListItem>
                          <asp:ListItem Value="Loft" Text="Loft"></asp:ListItem>
                          <asp:ListItem Value="Duplex" Text="Duplex"></asp:ListItem>
                          <asp:ListItem Value="Villa" Text="Villa"></asp:ListItem>
                 </asp:DropDownList></td>
  </tr>
  <tr class="row_select">
    <td class="auto-style2">Price Range:<br /><asp:DropDownList ID="cbo_lowestPrice" runat="server">
                          <asp:ListItem Value="10000" Text="10 000 $">10 000 $</asp:ListItem>
                          <asp:ListItem Value="50000" Text="50 000 $">50 000 $</asp:ListItem>
                          <asp:ListItem Value="80000" Text="80 000 $">80 000 $</asp:ListItem>
                          <asp:ListItem Value="100000" Text="100 000 $">100 000 $</asp:ListItem>
                          <asp:ListItem Value="200000" Text="200 000 $">200 000 $</asp:ListItem>
                          <asp:ListItem Value="400000" Text="400 000 $">400 000 $</asp:ListItem>
                          <asp:ListItem Value="1000000" Text="1 000 000 $">1 000 000 $</asp:ListItem>
                      </asp:DropDownList></td>
    <td class="auto-style5">to:<br /><asp:DropDownList ID="cbo_highestPrice" runat="server">
                          <asp:ListItem Value="10000" Text="10 000 $">10 000 $</asp:ListItem>
                          <asp:ListItem Value="50000" Text="50 000 $">50 000 $</asp:ListItem>
                          <asp:ListItem Value="80000" Text="80 000 $">80 000 $</asp:ListItem>
                          <asp:ListItem Value="100000" Text="100 000 $">100 000 $</asp:ListItem>
                          <asp:ListItem Value="200000" Text="200 000 $">200 000 $</asp:ListItem>
                          <asp:ListItem Value="400000" Text="400 000 $">400 000 $</asp:ListItem>
                          <asp:ListItem Value="1000000" Text="1 000 000 $">1 000 000 $</asp:ListItem>
                      </asp:DropDownList></td>
  </tr>
  <tr  class="row_select">
    <td class="auto-style3"> Bedroom(s):</td>
    <td class="auto-style5"> <asp:DropDownList ID="cbo_noBedroom" runat="server">
                          <asp:ListItem Value="1" Text="1">1</asp:ListItem>
                          <asp:ListItem Value="2" Text="2">2</asp:ListItem>
                          <asp:ListItem Value="3" Text="3">3</asp:ListItem>
                          <asp:ListItem Value="4" Text="4">4</asp:ListItem>
                          <asp:ListItem Value="5" Text="5">5</asp:ListItem>
                    </asp:DropDownList>

    </td>
  </tr>
  <tr class="row_select">
    <td class="auto-style3">Bathroom(s):</td>
    <td class="auto-style5"> <asp:DropDownList ID="cbo_noBathroom" runat="server">
                          <asp:ListItem Value="1" Text="1">1</asp:ListItem>
                          <asp:ListItem Value="2" Text="2">2</asp:ListItem>
                          <asp:ListItem Value="3" Text="3">3</asp:ListItem>
                          <asp:ListItem Value="4" Text="4">4</asp:ListItem>
                          <asp:ListItem Value="5" Text="5">5</asp:ListItem>
                    </asp:DropDownList></td>
  </tr>
       <tr class="row_select">
           <td class="auto-style3">Surface :</td> 
           <td class="auto-style5"> <asp:DropDownList ID="cbo_surface" runat="server">
                          <asp:ListItem Value="80" Text="80 m2"></asp:ListItem>
                          <asp:ListItem Value="140" Text="140 m2"></asp:ListItem>
                          <asp:ListItem Value="300" Text="300 m2"></asp:ListItem>
                          <asp:ListItem Value="500" Text="500 m2"></asp:ListItem>
                          <asp:ListItem Value="800" Text="800 m2"></asp:ListItem>
                    </asp:DropDownList></td>
       </tr>
       <tr class="row_select">
           <td class="auto-style2">
               <asp:Button class="auto-style5" ID="Button1" runat="server" OnClick="Button1_Click" Text="Rechercher" />
           </td>
           <td>
               </td>
       </tr>
</table>
        </div>
        </article>
      
      
    </section>
  </div>
</div>

    <!-- content body 2-->
<div class="body3">
  <div class="main">
    <section id="content2">
      <div class="wrapper">
        <article class="col1">
          <div class="pad2">

            <!-- ICI on affiche le nombre de resultats trouve-->

            <h2>RESULTATS : <asp:Label ID="Lab_Nombre_de_resultats" runat="server"></asp:Label></h2>

              <!-- ICI cellule qui est repetee quad il y a des resultats-->
              <asp:Repeater ID="rep_resultat" runat="server">
                    <ItemTemplate>
                  <table cellpadding="10">
                      <tr>
                          <td>
                  <asp:Image ID="Image_Maison" ImageURL='<%# Eval("Photo")%>' runat="server" />
                            </td>
                         
              <td>
                  Salle de bain : <asp:Label  class="color2" ID="Lab_shor_desc_bath" runat="server" Text='<%# Eval("BathroomNo") %>'></asp:Label>
                   Chambre : <asp:Label  class="color2" ID="Lab_shor_desc_beds" runat="server" Text='<%# Eval("BathroomNo") %>'></asp:Label>
                  Surface : <asp:Label  class="color2" ID="Lab_shor_desc_radius" runat="server" Text='<%# Eval("Radius") %>' ></asp:Label> m2.<br />
                  Prix : <asp:Label  class="color2" ID="Lab_shor_desc_price" runat="server" Text='<%# Eval("Price") %>'></asp:Label> $<br />
                  <asp:Label  class="pad_bot2" ID="Lab_long_desc" runat="server" Text='<%# Eval("Description") %>'></asp:Label><br />
                   <a href="detailPropriete.aspx?IdLogement=<%# Eval("IdLogement") %>" class="button">Voir les Details</a></td>
                      
                      </tr>
                     
                          </table>
                        </ItemTemplate>
                   </asp:Repeater>


              
          </div>
        </article>
        
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
<script>Cufon.now();</script>
<script>
$(window).load(function () {
    $('#slider').nivoSlider({
        effect: 'sliceUpDown', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft'
        slices: 17,
        animSpeed: 500,
        pauseTime: 6000,
        startSlide: 0, //Set starting Slide (0 index)
        directionNav: false, //Next & Prev
        directionNavHide: false, //Only show on hover
        controlNav: true, //1,2,3...
        controlNavThumbs: false, //Use thumbnails for Control Nav
        controlNavThumbsFromRel: false, //Use image rel for thumbs
        controlNavThumbsSearch: '.jpg', //Replace this with...
        controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
        keyboardNav: true, //Use left & right arrows
        pauseOnHover: true, //Stop animation while hovering
        manualAdvance: false, //Force manual transitions
        captionOpacity: 1, //Universal caption opacity
        beforeChange: function () {
            $('.nivo-caption').animate({
                bottom: '-110'
            }, 400, 'easeInBack')
        },
        afterChange: function () {
            Cufon.refresh();
            $('.nivo-caption').animate({
                bottom: '-20'
            }, 400, 'easeOutBack')
        },
        slideshowEnd: function () {} //Triggers after all slides have been shown
    });
    Cufon.refresh();
});
</script>
   </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SiteNoticias.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vanessa Mag</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <!-- BEGIN wrapper -->
<div id="wrapper">
  <!-- BEGIN header -->
  <div id="header">
    <ul>

      <li><asp:Button ID="btn_20news" runat="server" Text="Últimas 20 notícias" Height="20px" OnClick="btn_20news_Click" Width="135px" /></li>
      <li><asp:Button ID="btn_desporto" runat="server" Text="Ultimas 10 Notícas de Desporto" Height="20px" Width="201px" OnClick="btn_desporto_Click" /></li>
      <li><asp:Button ID="btn_tech" runat="server" Text="Ultimas 10 Notícas de Tecnologia" Height="20px" Width="208px" OnClick="btn_tech_Click" /></li>
      <li><asp:Button ID="btn_a_z" runat="server" Text="Ultimas 10 Notícas Ordenadas de A-Z" Height="20px" OnClick="btn_a_z_Click" Width="242px" /></li>
       <li></li>

      <%--<li><a href="#">Home</a></li>
      <li><a href="about.html">About Us</a></li>
      <li><a href="page.html">Demo Page</a></li>
      <li><a href="contact.html">Contact Page</a></li>--%>


        <li><asp:Button ID="btn_z_a" runat="server" Text="Ultimas 10 Notícas Ordenadas de Z-A" Height="21px" OnClick="btn_z_a_Click" Width="241px" /></li>


    </ul>
    <p class="rss"> <a href="#">Posts</a> | <a href="#">Comments</a> | <a href="#">Email</a> </p>
    <h1><a href="#">Turn Out Mag</a></h1>
    <div class="ad"><a href="#"><img src="images/ad468x60.gif" alt="" /></a></div>
  </div>
  <!-- END header -->
  <!-- BEGIN content -->
  <div id="content">
   <asp:Xml ID="Xml1" runat="server" TransformSource="transforma_noticias.xslt"></asp:Xml>
     

    <!-- end post -->
  </div>
  <!-- END content -->
  <!-- BEGIN sidebar -->
  <div id="sidebar">
    <!-- begin search -->
    <div action="#">
      <input type="text" name="s" id="s" value="" />
      <button type="submit">Search</button>
    </div>
    <!-- end search -->
    <!-- begin popular articles -->
    <div class="box">
      <h2>Popular Articles</h2>
      <ul>
        <li><a href="#">Lorem Ipsum Dolor Site Amet Veritas Vos</a></li>
        <li><a href="#">Lorem Ipsum Dolor Site Amet Veritas Vos</a></li>
        <li><a href="#">Lorem Ipsum Dolor Site Amet Veritas Vos</a></li>
        <li><a href="#">Lorem Ipsum Dolor Site Amet Veritas Vos</a></li>
        <li><a href="#">Lorem Ipsum Dolor Site Amet Veritas Vos</a></li>
      </ul>
    </div>
    <!-- end popular articles -->
    <!-- begin flickr rss -->
    <div class="box">
      <h2>Flickr RSS</h2>
      <p class="flickr"> <a href="#"><img src="images/thumb02.jpg" alt="" /></a> <a href="#"><img src="images/thumb03.jpg" alt="" /></a> <a href="#"><img src="images/thumb04.jpg" alt="" /></a> <a href="#"><img src="images/thumb05.jpg" alt="" /></a> <a href="#"><img src="images/thumb06.jpg" alt="" /></a> <a href="#"><img src="images/thumb07.jpg" alt="" /></a> </p>
    </div>
    <!-- end flickr rss -->
    <!-- begin featured video -->
    <div class="box">
      <h2>Featured Video</h2>
      <div class="video"><img src="images/video.jpg" alt="" /></div>
    </div>
    <!-- end featured video -->
    <!-- BEGIN left -->
    <div class="l">
      <!-- begin categories -->
      <div class="box">
        <h2>Categories</h2>
        <ul>
          <li><a href="#">Advertising</a></li>
          <li><a href="#">Entertainment</a></li>
          <li><a href="#">Fashion</a></li>
        </ul>
      </div>
      <!-- end categories-->
    </div>
    <!-- END left -->
    <!-- BEGIN right -->
    <div class="r">
      <!-- begin archives -->
      <div class="box">
        <h2>Archives</h2>
        <ul>
          <li><a href="#">March 2009</a></li>
          <li><a href="#">February 2009</a></li>
          <li><a href="#">January 2009</a></li>
          <li><a href="#">December 2008</a></li>
        </ul>
      </div>
      <!-- end archives -->
    </div>
    <!-- END right -->
  </div>
  <!-- END sidebar -->
</div>
<!-- END wrapper -->
<!-- BEGIN footer -->
<div id="footer">
  <p>Copyright &copy; 2009 - <a href="#">Website Name</a> &middot; All Rights Reserved | Template by: <a href="http://www.wpthemedesigner.com/">WordPress Designer</a> | Get More <a href="#">Free CSS Templates</a> </p>
</div>
<!-- END footer -->
    </form>
</body>
</html>
<script>
    function randomColor() {
        var letters = "0123456789ABCDEF";
        var color = "#";
        for (var i = 0; i < 6; i++) {
            color += letters[Math.floor(Math.random() * 16)];
        }
        return color;
    }

    window.onload = function () {
        var elements = document.getElementsByTagName("*");
        let color = randomColor();
        for (var i = 0; i < elements.length; i++) {
            elements[i].style.color = color;
        }
    }
</script>

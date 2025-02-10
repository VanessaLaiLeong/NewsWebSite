using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace SiteNoticias
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument url = new XmlDocument();
            url.Load("https://www.noticiasaominuto.com/rss/ultima-hora");
            Xml1.Document = url;

            
        }

        protected void btn_20news_Click(object sender, EventArgs e)
        {
            XmlDocument url = new XmlDocument();
            url.Load("https://www.noticiasaominuto.com/rss/ultima-hora");
            Xml1.Document = url;
            Xml1.TransformSource = "transforma_noticias.xslt";
        }

        protected void btn_desporto_Click(object sender, EventArgs e)
        {
            XmlDocument url = new XmlDocument();
            url.Load("https://www.noticiasaominuto.com/rss/desporto");
            Xml1.Document = url;          
            Xml1.TransformSource = "transforma_desporto.xslt";
        }

        protected void btn_tech_Click(object sender, EventArgs e)
        {
            XmlDocument url = new XmlDocument();
            url.Load("https://www.noticiasaominuto.com/rss/tech");
            Xml1.Document = url;
            Xml1.TransformSource = "transforma_desporto.xslt";
        }

        protected void btn_a_z_Click(object sender, EventArgs e)
        {
            XmlDocument url = new XmlDocument();
            url.Load("https://www.noticiasaominuto.com/rss/ultima-hora");
            Xml1.Document = url;
            Xml1.TransformSource = "transforma_AZ.xslt";
        }

        protected void btn_z_a_Click(object sender, EventArgs e)
        {
            XmlDocument url = new XmlDocument();
            url.Load("https://www.noticiasaominuto.com/rss/ultima-hora");
            Xml1.Document = url;
            Xml1.TransformSource = "transforma_ZA.xslt";
        }
    }
}
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace WebServiceDB
//{
//    public partial class WebForm1 : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }
//    }
//}
using System;
namespace AspnWebServiceDB
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.VinculaDados();
            }
        }
        private void VinculaDados()
        {
            ServiceDB service = new ServiceDB();
            gdvProdutos.DataSource = service.GetDados();
            gdvProdutos.DataBind();
        }
    }
}

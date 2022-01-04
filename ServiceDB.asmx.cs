using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;
namespace AspnWebServiceDB
{
    /// GABRIEL MAIA MEDEIROS - 20157054
   
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
   
    public class ServiceDB : System.Web.Services.WebService
    {
        [WebMethod]
        public DataTable GetDados()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexaoProdutos"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Produtos"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "Produtos";
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
    }
}







using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WeekTest
{
    public partial class PositionDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String mainconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[Position] (cPositionCode,vDescription,iBudgetedStrength,siYear,iCurrentStrength) values (@PositionCode,@Description,@BudgetedStrength,@Year,@CurrentStrength)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);



            sqlcomm.Parameters.AddWithValue("@PositionCode", TxtPositioncode.Text);
            sqlcomm.Parameters.AddWithValue("@Description", TextDescription.Text);
            sqlcomm.Parameters.AddWithValue("@Year", TxtYear.Text);
            sqlcomm.Parameters.AddWithValue("@BudgetedStrength", TxtBudgetedStrength.Text);
            sqlcomm.Parameters.AddWithValue("@CurrentStrength", TxtCurrentStrength.Text);



            sqlconn.Open();
            sqlcomm.ExecuteNonQuery();



            sqlconn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}
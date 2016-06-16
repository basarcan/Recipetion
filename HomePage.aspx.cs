using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class HomePage : System.Web.UI.Page
{
    UserDataAccess uDataAccess;
    protected void Page_Load(object sender, EventArgs e)
    {
        uDataAccess = new UserDataAccess();

        BindDatalist();
    }

    private void BindDatalist()
    {

        DataTable dtUsers = uDataAccess.Get_Recipes();
        DataList1.DataSource = dtUsers;
        DataList1.DataBind();
    }

}
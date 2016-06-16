using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Recipes : System.Web.UI.Page
{
    UserDataAccess uDataAccess;
    protected void Page_Load(object sender, EventArgs e)
    {
        uDataAccess = new UserDataAccess();

        BindDatalist(Request.QueryString["RecipeID"]);
        BindDatalist2(Request.QueryString["RecipeID"]);
        BindDatalist3(Request.QueryString["RecipeID"]);
        BindDatalist4(Request.QueryString["RecipeID"]);
        BindDatalist5(Request.QueryString["RecipeID"]);
        BindDatalist6(Request.QueryString["RecipeID"]);
    }


private void BindDatalist(string pRecipeID)
{
    DataTable dtUsers = uDataAccess.GetRecipePic(pRecipeID);
    DataList1.DataSource = dtUsers;
    DataList1.DataBind();
}

    private void BindDatalist2(string pRecipeID)
    {
        DataTable dtUsers = uDataAccess.GetIngrID(pRecipeID);
        DataList2.DataSource = dtUsers;
        DataList2.DataBind();
    }

    private void BindDatalist3(string pRecipeID)
    {
        DataTable dtUsers = uDataAccess.GetRecipePic(pRecipeID);
        DataList3.DataSource = dtUsers;
        DataList3.DataBind();
    }

    private void BindDatalist4(string pRecipeID)
    {
        DataTable dtUsers = uDataAccess.GetRecipePic(pRecipeID);
        DataList4.DataSource = dtUsers;
        DataList4.DataBind();
    }

    private void BindDatalist5(string pRecipeID)
    {
        DataTable dtUsers = uDataAccess.GetSideDishes(pRecipeID);
        DataList5.DataSource = dtUsers;
        DataList5.DataBind();
    }

    private void BindDatalist6(string pRecipeID)
    {
        DataTable dtUsers = uDataAccess.GetSideDishes(pRecipeID);
        DataList6.DataSource = dtUsers;
        DataList6.DataBind();
    }
}
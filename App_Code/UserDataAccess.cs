using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;



/// <summary>
/// Summary description for UserDataAccess
/// </summary>
public class UserDataAccess
{
    string connectionString = System.Configuration.ConfigurationManager.AppSettings["connString"];
    SqlConnection connection;

    public UserDataAccess()
    {
        OpenConnection(connectionString);
    }

    private bool OpenConnection(string pConnString)
    {
        connection = new SqlConnection(pConnString);
        connection.Open();
        if (connection.State == ConnectionState.Open)
            return true;
        else return false;
    }

    private void CloseConnection()
    {
        if (connection.State != ConnectionState.Closed)
            connection.Close();
    }

    public DataTable Get_Recipes()
    {
        if (connection.State != ConnectionState.Open)
            OpenConnection(connectionString);

        DataTable dtUser = new DataTable();


        SqlDataAdapter adapter = new SqlDataAdapter("SELECT * from [dbo].[RecipeDirect]", connection);
        adapter.Fill(dtUser);

        CloseConnection();
        return dtUser;
    }

    public DataTable Get_Badges()
    {
        if (connection.State != ConnectionState.Open)
            OpenConnection(connectionString);

        DataTable dtUser = new DataTable();


        SqlDataAdapter adapter = new SqlDataAdapter("select *  FROM[dbo].[badges] INNER JOIN[dbo].[RecipeBadges] ON[dbo].[badges].[BadgesID] = [dbo].[RecipeBadges].[BadgesID] INNER JOIN[dbo].[RecipeDirect] ON[dbo].[RecipeDirect].[RecipeID] = [dbo].[RecipeBadges].[RecipeID]", connection);
        adapter.Fill(dtUser);

        CloseConnection();
        return dtUser;
    }

    public DataTable GetRecipePic(string pProductID)
    {
        if (connection.State != ConnectionState.Open)
            OpenConnection(connectionString);

        DataTable dtUser = new DataTable();

        SqlDataAdapter adapter = new SqlDataAdapter("select * from [dbo].[RecipeDirect] Inner join  [dbo].[RecipeCategory] on [dbo].[RecipeDirect].[RecipeCatID]=[dbo].[RecipeCategory].RecipeCatID Where RecipeID=" + pProductID, connection);
        adapter.Fill(dtUser);
        CloseConnection();

        return dtUser;
    }

    public DataTable GetIngrID(string pProductID)
    {
        if (connection.State != ConnectionState.Open)
            OpenConnection(connectionString);

        DataTable dtUser = new DataTable();

        SqlDataAdapter adapter = new SqlDataAdapter("select * from [dbo].[vRecipeDetail] WHERE RecipeID=" + pProductID, connection);
        adapter.Fill(dtUser);
        CloseConnection();

        return dtUser;
    }

    public DataTable GetSideDishes(string pProductID)
    {
        if (connection.State != ConnectionState.Open)
            OpenConnection(connectionString);

        DataTable dtUser = new DataTable();

        SqlDataAdapter adapter = new SqlDataAdapter("select * from[dbo].[RecipeDirect] Inner join[dbo].[RecipeCategory] on[dbo].[RecipeDirect].[RecipeCatID] =[dbo].[RecipeCategory].RecipeCatID Where RecipeID != " + pProductID, connection);
        adapter.Fill(dtUser);
        CloseConnection();

        return dtUser;
    }

    public DataTable Get_Cat()
    {
        SqlDataAdapter adapter = new SqlDataAdapter("select [dbo].[RecipeCategory].[RecipeCatID],[dbo].[RecipeCategory].[RecipeCatName],[dbo].[RecipeCategory].[imgID],[dbo].[RecipeDirect].[RecipeID],[dbo].[RecipeDirect].[RecipeName],[dbo].[RecipeDirect].[ImgID],[dbo].[RecipeDirect].[directions],[dbo].[RecipeDirect].[time] FROM [dbo].[RecipeDirect] INNER JOIN [dbo].[RecipeCategory] ON  [dbo].[RecipeDirect].[RecipeID]=[dbo].[RecipeCategory].[RecipeCatID]", connection);
        if (connection.State != ConnectionState.Open)
            OpenConnection(connectionString);
        DataTable dtUser = new DataTable();
        adapter.Fill(dtUser);
        CloseConnection();
        return dtUser;
    }


}
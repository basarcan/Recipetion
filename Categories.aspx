<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="CategoryMenu">
        <div id="Category">
        <asp:DataList ID="DataList1" class="CategoryList" runat="server" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <div id="categoryHolder">
                                <div id="categoryFontHolder">
                                <asp:HyperLink CssClass="categoryHyperStyle" ID="HyperLink1" runat="server" NavigateUrl='<%# "HomePage.aspx" %>' Text='<%# Eval("RecipeCatName") %>'></asp:HyperLink>
                             </div>
                                <asp:ImageButton CssClass="categoryImageStyleOthers" runat="server" ImageUrl='<%# Eval("imgID") %>' ></asp:ImageButton>
                            </div>
                        </td>  
                    </tr>                    
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>
</asp:Content>


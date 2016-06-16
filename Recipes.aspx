<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Recipes.aspx.cs" Inherits="Recipes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 533px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
    <link href="Style/StyleSheet.css" rel="stylesheet" />
       <link href='https://fonts.googleapis.com/css?family=Josefin+Sans:600' rel='stylesheet' type='text/css' />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                         <table class="auto-style1">
                            <tr>
                                <td>
                                    <div id="recipeBadges">
                                        <asp:Image CssClass="recipeBadge" ID="Badge2" runat="server" src="\images\badge1.png" />
                                        <asp:Image CssClass="recipeBadge" ID="Image3" runat="server" src="\images\badge2.png" />
                                    </div>
                                    <div class="horizontalStick" id="horizontalStick"></div>
                                        <asp:Image CssClass="vStarStyle" ID="Image2" runat="server" src="\images\verticalStars.png" />
                                    <div id="recipePictures">
                                    <asp:Image CssClass="recipePicture" ID="Image1" runat="server" ImageUrl='<%# Eval("ImgID") %>' /></div>
                                 </td>
                            </tr>
                        </table>
                    
                    </ItemTemplate>
                </asp:DataList>           
                
            </td>
            <td>
                
            <div id="info">
                <div id="firstStick" class="firstStickStyle"></div>
               <asp:DataList ID="DataList3" runat="server">
                   <ItemTemplate>
                       <table class="auto-style1">
                           <tr>
                               <td>
                                   <asp:Label ID="Label8" runat="server" Text='<%# Eval("RecipeName") %>'></asp:Label>
                               </td>
                               <td>
                                   <asp:HyperLink CssClass="hyperLinkStyle" ID="HyperLink1" runat="server" Text='<%# Eval("RecipeCatName") %>'></asp:HyperLink>
                               </td>
                           </tr>
                       </table>
                   </ItemTemplate>

               </asp:DataList>
            </div>


                <div id="stick" class="longStick"></div>
                <div id="Ingredient">
                            <asp:Label ID="Label2" runat="server" Text="Ingredients"></asp:Label>
                                <div id="forkAndTime">
                                    <asp:Image CssClass="forkStyle1" ID="Image4" src="\images\fork.png" runat="server" />
                                    <asp:Image CssClass="forkStyle1" ID="Image5" src="\images\fork.png" runat="server" />
                                    <asp:Image CssClass="forkStyle1" ID="Image6" src="\images\fork.png" runat="server" />
                                    <asp:Image CssClass="timerStyle1" ID="Image2" src="\images\Timer.png" runat="server" />
                                </div>                  
                         </div>
                <div id="RecipeDetails">
                <asp:DataList CssClass="DetailList" ID="DataList2" runat="server" >
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <asp:Image CssClass="infoStyle" ID="Image4" src="\images\info.png" runat="server" />
                                    <td>
                                    <asp:Label CssClass="recipeName" ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                        </td>
                                    <td>
                                    <asp:TextBox CssClass="amountTextBox" ID="TextBox1" runat="server" Width="24px"></asp:TextBox>
                                        </td>
                                    <td>
                                    <asp:Label CssClass="costLabel" ID="Label3" runat="server" Text='15$'></asp:Label>
                                        </td>
                                    <td>
                                        <asp:Image CssClass="addStyle" ID="Image5" src="\images\add.png" runat="server" />
                                    </td>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>  
            </div>
            </td>
        </tr>
    </table>
    
    <div id="postedImages">
        <asp:Image CssClass="rightStyle" ID="Image11" src="images\left.png" runat="server" />
        <asp:Image CssClass="postedPicture" ID="Image7" src="\images\Recipes\kingcrabappetizers.jpg" runat="server" />
        <asp:Image CssClass="postedPicture" ID="Image8" src="\images\Recipes\OvertheTopNachos.jpg" runat="server" />
        <asp:Image CssClass="postedPicture" ID="Image9" src="\images\Recipes\SpicyDeviledEggs.jpg" runat="server" />
        <asp:Image CssClass="postedPicture" ID="Image10" src="\images\Recipes\TraditionalChristmasCheeseBall.jpg" runat="server" />
        <asp:Image CssClass="leftStyle" ID="Image12" src="\images\right.png" runat="server" />

    </div>

    <div id="addAll">
        <asp:Label CssClass="labelStyle" ID="Label4" runat="server" Text="Add all"></asp:Label>
        <asp:ImageButton CssClass="addAllStyle" ID="ImageButton1" src="\images\addAll.png" runat="server" />
    </div>

    <div id="secondHalfPage">
        <div id="firstHalf">
            <asp:Label CssClass="directionStyle" ID="Label5" runat="server" Text="Directions"></asp:Label>
            <asp:ImageButton CssClass="pauseStyle" ID="ImageButton2" src="\images\pause.png" runat="server" />
            <div class="shortStickStyle" id="shortStick"></div>
            <div class="textureBoxStyle" id="textureBox">
                 <asp:DataList ID="DataList4" runat="server">
            <ItemTemplate>
                <asp:Label CssClass="DirectionText" ID="Label9" runat="server" Text='<%# Eval("directions") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
            </div>
        </div>
        <div id="secondHalf">
            <asp:Label CssClass="directionStyle" ID="Label6" runat="server" Text="Beverages"></asp:Label>
            <div class="shortStickStyle" id="shortStick">
                
            </div>
        </div>
    </div>

    <div id="sideDishes">         
        <asp:DataList CssClass="sideDishesList" ID="DataList5" runat="server" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:HyperLink CssClass="hyperLinkStyle" ID="HyperLink2" runat="server" NavigateUrl='<%# "Recipes.aspx?RecipeID=" + Eval("RecipeID") %>' Text='<%# Eval("RecipeName") %>'></asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image CssClass="relatedImage" ID="Image13" runat="server" ImageUrl='<%# Eval("ImgID") %>' />
                        </td>
                    </tr>
                    <tr>
                            <td><asp:Image CssClass="verticalStar" ID="Image15" src="\images\verticalStars.png" runat="server" /></td>
                        </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

        </div>


    <div id="lastPart">
        <asp:Label CssClass="RelatedText" ID="Label10" runat="server" Text="Related"></asp:Label>

        <div class="fullStickStyle" id="fullStick"></div>

        <div id="Related">
            <asp:DataList CssClass="relatedList" ID="DataList6" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:HyperLink CssClass="hyperLinkStyle" ID="HyperLink3" runat="server" NavigateUrl='<%# "Recipes.aspx?RecipeID=" + Eval("RecipeID") %>' Text='<%# Eval("RecipeName") %>'></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image CssClass="relatedImage" ID="Image14" runat="server" ImageUrl='<%# Eval("ImgID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td><asp:Image CssClass="verticalStar" ID="Image15" src="\images\verticalStars.png" runat="server" /></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </div>

        </div>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="horizontal.css" rel="stylesheet" />



    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="Script/responsiveslides.min.js"></script>
    <script src="Script/JavaScript.js"></script>
    <script>
        $(function() {
            $(".rslides").responsiveSlides();
        });

        $(function () {
            $(".slider").responsiveSlides();
        });
    </script>    
    
    
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 26px;
    }

          
</style>

    <link href="Style/StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <div id="backSlider">
        <ul class="rslides">
            <li><img src="images\a_cheesecake_brownies.jpg" alt=""></li>
            <li><img src="images\a_meatless_meals.jpg" alt=""></li>
            <li><img src="images\a_pancake_bar.jpg" alt=""></li>
            <li><img src="images\a_steak_caesar.jpg" alt=""></li>
        </ul>
    </div>

    <div id="frontSlider">
        <ul class="slider">
            <asp:ImageButton CssClass="sliderImage" ID="ImageButton2" src="images\2-cake.png" runat="server" />
            <asp:ImageButton CssClass="sliderImage" ID="ImageButton3" src="images\3-meat.png" runat="server" />
            <asp:ImageButton CssClass="sliderImage" ID="ImageButton4" src="images\4-breakfast.png" runat="server" />
            <asp:ImageButton CssClass="sliderImage" ID="ImageButton1" src="images\1-beef.png" runat="server" />             
        </ul>

    </div>

    <div id="smallSlider">
        <img class="smallSliderImage" src="images\a_cheesecake_brownies.jpg" alt="">
        <img class="smallSliderImage" src="images\a_meatless_meals.jpg" alt="">
        <img class="smallSliderImage" src="images\a_pancake_bar.jpg" alt="">
        <img class="smallSliderImage" src="images\a_steak_caesar.jpg" alt="">
    </div>


    <asp:DataList CssClass="recipeList" ID="DataList1" runat="server" RepeatColumns="3" CellPadding="0">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td colspan="3">
                    <div id="cateName"><asp:HyperLink CssClass="hyperLinkStyle" ID="HyperLink1" runat="server" Text='<%# Eval("RecipeName") %>' NavigateUrl='<%# "Recipes.aspx?RecipeID=" + Eval("RecipeID") %>'></asp:HyperLink> </div>
                </td>
            </tr>
            <tr>
                
                <td colspan="2">
                    
                    <asp:Image CssClass="recipeImage" ID="Image1" runat="server" ImageUrl='<%# Eval("ImgID") %>' />
                    <div class="stickStyle" id="secondStick"></div>
                    <asp:Image CssClass="starStyle" ID="Stars" runat="server" src="\images\verticalStars.png"/>
                    <div class="stickStyle1" id="secondStick1"></div>
                    <asp:Image CssClass="badgesStyle" ID="Image3" runat="server" src="\images\badges.png" />
                    <asp:Image CssClass="badgeStyle" ID="Badge" runat="server" src="\images\badge1.png" />
                    <asp:Image CssClass="badgeStyle1" ID="Badge1" runat="server" src="\images\badge2.png" />
                     
                </td>
                <td>
                    <asp:ImageButton CssClass="quickBasket" ID="quickBasketButton" runat="server" ImageUrl="\images\quickBasket.png" />
                        
                </td>
                  
            </tr>
            
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2" colspan="2">

                     <div id="cateName">
                         <asp:Image CssClass="forkStyle" ID="Image4" src="\images\fork.png" runat="server" />
                         <asp:Image CssClass="forkStyle" ID="Image5" src="\images\fork.png" runat="server" />
                         <asp:Image CssClass="forkStyle" ID="Image6" src="\images\fork.png" runat="server" />
                         <div id="shortLine"></div>
                         <asp:Image CssClass="timerStyle" ID="Image2" src="\images\Timer.png" runat="server" />
                         <asp:Label CssClass="timeFont" ID="Label2" runat="server" Text='<%# Eval("time") + " MIN" %>'></asp:Label>
                         <div id="shortLine1"></div>
                     </div>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
    <div id="leftBar">
        <asp:ImageButton CssClass="leftBarStyle" src="\images\leftBar.png" ID="ImageButton9" runat="server" />
    </div>

    <div id="rightBar">
        <asp:ImageButton CssClass="rightBarStyle" src="\images\rightBar.png" ID="ImageButton10" runat="server" />
    </div>
</asp:Content>


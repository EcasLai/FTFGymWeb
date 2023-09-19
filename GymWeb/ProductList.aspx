<%@ Page Title="Product | FTF Gym Web" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="GymWeb.ProductList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/productList.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ProductBackgroundImage">
        <asp:Image runat="server" ImageUrl="Img/product/productLogo.jpg" />
    </div>

    <div class="ProductText">
        <h1>Product
        </h1>
    </div>

    <aside class="ProductNavi">
        <div class="productCategory">
            <a href="#Men">Men</a>
        </div>
        <div class="productCategory">
            <a href="#Women">Women</a>
        </div>
        <div class="productCategory">
            <a href="#Equipment">Equipment</a>
        </div>
        <div class="productCategory">
            <a href="#Items">Items</a>
        </div>
    </aside>


    <section id="Men">
        <div class="productList">

            <div class="product">
                <div class="productImg">
                    <img src="Img/product/Men's(1).jpg" alt="Men1" />
                </div>

                <div class="productLabel">
                    <p>
                        NPRO™ MEN GYM HOODIE
                    </p>
                    <p>
                        RM 139.90
                    </p>
                </div>

                <div class="ProductPurchase">
                    <a href="ProductDetail.aspx">Purchase Now!
                    </a>
                </div>

            </div>


            <div class="product">
                <div class="productImg">
                    <img src="Img/product/Men's(2).jpg" alt="Men2" />
                </div>

                <div class="productLabel">
                    <p>
                        Short Sleezy Gray
                    </p>
                    <p>
                        RM 159.90
                    </p>
                </div>

                <div class="ProductPurchase">
                    <a href="ProductDetail.aspx">Purchase Now!
                    </a>
                </div>

            </div>

            <div class="product">
                <div class="productImg">
                    <img src="Img/product/Men's(3).jpg" alt="Men3" />
                </div>

                <div class="productLabel">
                    <p>
                        Short Sleeve T-shirt
                    </p>
                    <p>RM 49.90</p>
                </div>

                <div class="ProductPurchase">
                    <a href="ProductDetail.aspx">Purchase Now!
                    </a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

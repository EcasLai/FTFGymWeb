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
        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <div class="productCategory">
                    <%--<a href="#Men">Men</a>--%>
                    <asp:HyperLink runat="server" CssClass="Hyperlink"><%#Eval("Title") %></asp:HyperLink>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
        
        <%--<div class="productCategory">
            <a href="#Women">Women</a>
        </div>
        <div class="productCategory">
            <a href="#Equipment">Equipment</a>
        </div>
        <div class="productCategory">
            <a href="#Item">Item</a>
        </div>--%>
    </aside>


    <section id="Men">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="product">
                    <div class="productImg">
                        <img src="<%#Eval("ImageUrl") %>" alt="Men1" />
                    </div>

                    <div class="productLabel">
                        <p>
                            <%#Eval("Name") %>
                        </p>
                        <p>
                            RM <%#Eval("Price") %>
                        </p>
                    </div>

                    <div class="ProductPurchase">
                        <%--<a href="ProductDetail.aspx">Purchase Now!</a>--%>
                        <asp:HyperLink runat="server" CssClass="Hyperlink2" NavigateUrl='<%# "~/ProductDetail.aspx?Productid=" + Eval("ProductId") %>'>Purchase Now!</asp:HyperLink>
                    </div>

                </div>

            </ItemTemplate>
        </asp:Repeater>


    </section>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]">
    </asp:SqlDataSource>
</asp:Content>

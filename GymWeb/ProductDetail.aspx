<%@ Page Title="" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="GymWeb.ProductDetailaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/productDetail.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="productPageImg">
        <img src="Img/product/Men's(1).jpg" alt="Men1">
    </div>

    <div class="productPageDes">
        <p class="productName">NPRO™ MEN GYM HOODIE</p>
        <p class="productPrice">RM 139.90</p>

        <div class="SizeSelection">
            <p>Select a size: </p>
            <input type="radio" class="size" id="Large">
            <label for="Large">Large</label>
            <input type="radio" class="size" id="Medium">
            <label for="Medium">Medium</label>
            <input type="radio" class="size" id="Small">
            <label for="Small">Small</label>
        </div>

        <input type="number" class="productQuantity" id="amount" name="Men1" step="1" value="0" min="0" max="10">

        <div class="PayProduct">
            <a href="">Buy</a>
        </div>
</asp:Content>

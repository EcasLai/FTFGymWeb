<%@ Page Title="" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="GymWeb.ProductDetailaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/productDetail.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <div class="productPageImg">
                <asp:Image runat="server" ID="productImage" CssClass="productPageImgASP"/>
            </div>

            <div class="productPageDes">
                <asp:Label runat="server" ID="lblName" CssClass="productName"></asp:Label> 
                <br />
                <br />
                <asp:Label runat="server" ID="lblPrice" CssClass="productPrice" ></asp:Label>
                <br />
                <br />
                <asp:Label runat="server" ID="lblDescription" CssClass="productDescription" ></asp:Label>
                <br />
                <br />
                Size: &nbsp;&nbsp; <asp:DropDownList runat="server" ID="ddlSize">
                    <asp:ListItem>Large</asp:ListItem>
                    <asp:ListItem>Medium</asp:ListItem>
                    <asp:ListItem>Small</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                
                Quantity:&nbsp;&nbsp;<asp:TextBox runat="server" ID="txtQuantity" ></asp:TextBox>
                <br />
                <br />
                <asp:Button runat="server" CssClass="PayProduct" Text="Buy" OnClick="Unnamed1_Click"></asp:Button>
                <%--<p class="productName">productName</p>
                    
                
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
                    <a href="">Buy</a>--%>
                <%--</div>--%>
            </div>

</asp:Content>

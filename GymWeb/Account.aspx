<%@ Page Title="Account | FTF Gym Web" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="GymWeb.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .left-sidebar {
            margin-left: 5vw;
        }

        .right-content {
            margin-right: 5vw;
        }
    </style>
</asp:Content>
<asp:Content ID="AccountContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="left-sidebar">
        <asp:Image runat="server" ImageUrl="Img/account.png" ></asp:Image>
        <p>Hi, </p>
        <p>John Newman</p>
    </section>

    <section class="right-content">

    </section>
</asp:Content>

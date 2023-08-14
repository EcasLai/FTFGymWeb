<%@ Page Title="Account | FTF Gym Web" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="GymWeb.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .account-wrapper {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: flex-start;
            margin: 0 5rem;
        }

        /* Left Sidebar - Upper */
        .left-sidebar {
            width: 20vw;
            display: flex;
            flex-direction: column;
            margin-right: 1.5vw;
            
        }

        .welcome-user-section {
            height: 10vh;
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            padding: 2rem 0;
            background-color: #ffffff;
        }

        .welcome-user-section img {
            height: 80px;
            margin-right: 1.5rem;
        }

        .welcome-user-section div {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
        }

        .welcome-user-section div span:first-child {
            margin-bottom: 0.4rem;
        }

        #user-fullname {
            letter-spacing: 0.2em;
            font-weight: 600;
        }

        /* Left Sidebar - Nav */
        .guide-section ul {
            padding: 0;
            list-style-type: none;
        }

        .guide-section li.guide-list-item {
            display: flex;
            flex-direction: row;
            justify-content: flex-start;
            align-items: center;
            margin-bottom: 0.5rem;
            padding: 1rem 2rem;
            background-color: #ffffff;
        }

        .guide-section li.guide-list-item span:first-child img {
            height: 24px;
            width: 24px;
            margin-right: 1rem;
        }

        .guide-section li.guide-list-item span:last-child {
            font-weight: 600;
        }

        .right-content {
            width: 60vw;
            height: 50vh;
            background-color: #ffffff;
        }
    </style>
</asp:Content>
<asp:Content ID="AccountContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="account-wrapper">
        <section class="left-sidebar">
            <section class="welcome-user-section">
                <asp:Image runat="server" ImageUrl="Img/account.png" ></asp:Image>
                <div>
                    <span>Hi, </span>
                    <span id="user-fullname">John Newman</span>  
                </div>
            </section>
            
            <section class="guide-section">
                <ul>
                    <li class="guide-list-item">
                        <span><asp:Image ID="AccountIcon" runat="server" ImageUrl="~/Img/account-icon/user.png" /></span>
                        <span>Account Overview</span>
                    </li>

                    <li class="guide-list-item">
                        <span><asp:Image ID="OrderIcon" runat="server" ImageUrl="~/Img/account-icon/box.png" /></span>
                        <span>My Orders</span>      
                    </li>
                </ul>
            </section>
        </section>

        <section class="right-content">
            <asp:Repeater ID="Repeater1" runat="server"></asp:Repeater>
        </section>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
</asp:Content>

<%@ Page Title="Account | FTF Gym Web" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="AccountOverview.aspx.cs" Inherits="GymWeb.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .account-wrapper {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: flex-start;
            margin: 0 20vw;
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
            border-radius: 0.5rem;
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
            position: relative;
            display: flex;
            flex-direction: row;
            justify-content: flex-start;
            align-items: center;
            margin-bottom: 0.5rem;
            padding: 1rem 2rem;
            background-color: #ffffff;
            border-radius: 0.5rem 0 0 0.5rem;
            border-right: none;
        }

        .guide-section li.guide-list-item.active-item {
            background-color: rgba(1, 1, 1, 0.05);
            border-right: 4px solid #e2cc4e;
        }

        .guide-section li.guide-list-item span:first-child img {
            height: 24px;
            width: 24px;
            margin-right: 1rem;
        }

        .guide-section li.guide-list-item span:last-child {
            font-weight: 600;
        }

        /* Right Content */
        .right-content {
            width: 70%;
            height: 70vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 2rem 10%;
            background-color: #ffffff;
            color: black;
        }

        .right-content .form-input {
            width: 25vw;
            min-width: 15vw;
            display: flex;
            flex-direction: column;
            margin-bottom: 1.5rem;
        }

        .right-content .form-input span {
            margin-bottom: 0.6rem;
            font-size: 1.2rem;
            font-weight: 600;
        }

        .right-content .form-input input[type="text"], 
        .right-content .form-input input[type="email"], 
        .right-content .form-input input[type="tel"] {
            height: 29px;
            padding: 0 0.2rem;
        }

         .right-content .form-input select {
             height: 35px;
         }

        .right-content .form-input .gender-radio {
            display: flex;
            flex-direction: row;
        }

        .right-content .form-input .gender-radio input {
            margin-top: 0;
        }

        .right-content .form-input .gender-radio label {
            margin-left: 0.5rem;
            font-size: 1rem;
            font-weight: 500;
        }

        /* Right Content - View Mode */
        .right-content .form-button-group-view {
            display: block;
            width: 25vw;
        }

        .right-content .form-button-group-view button  {
            margin-left: 0;
            padding: 0.8rem 1.8rem;
            display: inline;
            border: 3px solid #e2cc4e;
            background-color: #e2cc4e;
        }

        .right-content .form-button {
            margin: 0 1rem;
            padding: 0.8rem 1.5rem;
            border-radius: 0.3rem;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
        }

        .right-content .form-button:hover {
            transform: translateY(2px);
        }

        /* Right Content - Edit Mode */
        .right-content .form-button-group-edit {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
        }

        .right-content .form-button-group-edit input[type="submit"] {
            background-color: #e2cc4e;
            border: 3px solid #e2cc4e;
        }

        .right-content .form-button-group-edit button {
            background-color: #c30032;
            border: 3px solid #c30032;
            color: #ffffff;
        }
    </style>

    <!-- Javascript -->
    <script type="text/javascript" src ="script/Account.js" defer></script>
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
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MyOrders.aspx">HyperLink</asp:HyperLink>

                    <li class="guide-list-item active-item">
                        <span><asp:Image ID="AccountIcon" runat="server" ImageUrl="~/Img/account-icon/user.png" /></span>
                        <span>Account overview</span>
                    </li>

                    <li class="guide-list-item">
                        <span><asp:Image ID="OrderIcon" runat="server" ImageUrl="~/Img/account-icon/box.png" /></span>
                        <span>My orders</span>      
                    </li>

                    <li class="guide-list-item">
                        <span><asp:Image ID="LockIcon" runat="server" ImageUrl="~/Img/account-icon/padlock.png" /></span>
                        <span>Change password</span>      
                    </li>

                    <li class="guide-list-item">
                        <span><asp:Image ID="Image1" runat="server" ImageUrl="~/Img/account-icon/log-out.png" /></span>
                        <span>Sign out</span>      
                    </li>
                </ul>
            </section>
        </section>

        <section class="right-content">
            <div class="form-input-row">
                <div class="form-input form-input-short">
                    <asp:Label ID="lblUsername" runat="server" Text="Username" ></asp:Label>
                    <asp:TextBox ID="txtUsername" runat="server" placeholder="Username" ReadOnly="true" Enabled="false"></asp:TextBox>
                </div>

                <div class="form-input form-input-short">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                    <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name"></asp:TextBox>
                </div>
            </div>
            
            <div class="form-input">
                <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name"></asp:TextBox>
            </div>

            <div class="form-input">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="example@email.com"></asp:TextBox>
            </div>

            <div class="form-input">
                <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number"></asp:Label>
                <div>
                    <asp:DropDownList ID="ddlCountryCode" runat="server">
                        <asp:ListItem>+60</asp:ListItem>    
                        <asp:ListItem>+65</asp:ListItem>    
                        <asp:ListItem>+886</asp:ListItem>   
                    </asp:DropDownList>
                    <asp:TextBox ID="txtPhoneNumber" runat="server" TextMode="Phone" onkeypress="return isNumberKey(event)"></asp:TextBox>
                </div>
               
            </div>
            
            <div class="form-input">
                <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                <asp:RadioButton ID="rbGenderMale" runat="server" Text="Male" GroupName="gender" CssClass="gender-radio" />
                <asp:RadioButton ID="rbGenderFemale" runat="server" Text="Female" GroupName="gender" CssClass="gender-radio" />
                <asp:RadioButton ID="rbGenderNone" runat="server" Text="Prefer not to say" GroupName="gender" CssClass="gender-radio" />
            </div>
            
            <%--<div  class="form-button-group-edit">
                <asp:Button ID="btnSubmit" runat="server" Text="Make Changes" CssClass="form-button" />
                <button class="form-button">Discard</button>
            </div>--%>

            <div  class="form-button-group-view">
                <button class="form-button">Edit</button>
            </div>
           

        </section>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
</asp:Content>

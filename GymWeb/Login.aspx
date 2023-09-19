<%@ Page Title="Login | FTF Gym Web" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GymWeb.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        :root {
            --theme-red: #c30032;
            --theme-yellow: #e2cc4e;
            --theme-blue: #43aae0;
        }

        body, html {
            width: 100%;
        }

        /* Login Form */
        #login {
            position: relative;
            background-size: cover !important;
            width: 100%;
            height: 91vh;
            position: relative;
            color: black;
        }

        #login::before {
            content: "";
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 91vh;
            background-image: url("Img/Login/login_background.jpg");
            /* reference: https://www.istockphoto.com/photo/athletic-woman-doing-the-full-body-cardio-workout-gm1289416200-385101996?phrase=gym */
            background-size: cover;
        }

        .container {
            position: relative;
            max-width: 1140px;
            z-index: 1;
            height: 91vh;
            width: 100%;
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            margin-right: -6rem;
            margin-left: -15px;
            justify-content: flex-end;
            height: 91vh;
        }

        .loginForm-card {
            display: flex;
            flex-direction: column;
            align-self: center !important;
            width: 20rem;
            padding: 1.5rem;
            background-color: white;
            border-radius: 0.5rem;
            box-shadow: 0 10px 10px rgba(152, 187, 255, 0.11);
            transform: translateX(-50%);
            color: #333333;
            overflow-x: hidden;
        }

        .loginForm-card div.logo-wrapper {
            width: auto;
            display: flex;
            justify-content: flex-start;
            align-items: center;
        }

        .logo-icon {
            height: 50px;
        }

        .logo-text {
            display: inline;
            color: black;
            align-self: center;
            font-size: 1.3rem;
        }

        #loginForm-title {
            font-size: 1.75rem;
            font-weight: 400;
            line-height: 2.5rem;
            margin-top: 0px;
            margin-bottom: 1.25rem;
            text-align: center;
        }

        .loginForm-desc {
            font-size: 0.75rem;
            line-height: 1.25rem;
            font-weight: 400;
            text-align: start !important;
            margin: 1.5rem 0;
            color: #333333;
        }

        .loginForm, .loginForm table {
            width: 100%;
        }

        .loginForm tbody tbody tr:first-child {
            display: none;
        }

        .loginForm tbody tbody tr:nth-child(2),
        .loginForm tbody tbody tr:nth-child(3) {
            display: flex;
        }

        .loginForm tbody tbody tr:nth-child(2) td:first-child,
        .loginForm tbody tbody tr:nth-child(3) td:first-child {
            flex: 1;
            text-align: left !important;
        }

        .loginForm tbody tbody tr:nth-child(2) td:last-child,
        .loginForm tbody tbody tr:nth-child(3) td:last-child {
            flex: 3;
            width: 100%;
        }

        .loginForm tbody tbody tr:nth-child(2) td input,
        .loginForm tbody tbody tr:nth-child(3) td input {
            margin-left: 0.2rem;
            padding: 0.7rem;
            border: 1px solid #ced4da;
            border-radius: 0.5rem;
            color: #333333;
        }

        #ContentPlaceHolder1_Login1_UserName, #ContentPlaceHolder1_Login1_Password {
            width: 87.5%;
            outline: none;
        }

        #ContentPlaceHolder1_Login1_UserName:focus,
        #ContentPlaceHolder1_Login1_UserName:focus-visible,
        #ContentPlaceHolder1_Login1_Password:focus,
        #ContentPlaceHolder1_Login1_Password:focus-visible {
            border: 1px solid var(--theme-red);
        }

        .loginForm tbody tbody tr:nth-child(4) {

        }

        .loginForm tbody tbody tr:nth-child(5) #ContentPlaceHolder1_Login1_LoginButton {
            margin-top: 1.5rem;
            margin-bottom: 5px;
            padding: 0.8rem;
            width: 100%;
            color: white;
            text-transform: uppercase;
            font-size: 0.875rem;
            font-weight: 600;
            cursor: pointer;
            background-color: var(--theme-red);
            border-radius: 0.25rem;
            border: 1px solid var(--theme-red);
        }

        .loginForm tbody tbody tr:last-child {
           display: flex;
            width: 100%;
        }

        .loginForm tbody tbody tr:last-child td {
            width: 100%;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            align-items: center;
        }

        .loginForm tbody tbody tr:last-child a {
            text-decoration: none;
            color: var(--theme-red);
            font-weight: 600;
            margin-bottom: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="login">
        <div class="container">
            <div class="row">
                 <section class="loginForm-card">
                     <div class="logo-wrapper">
                         <asp:Image ID="LogoIcon" ImageUrl="~/Img/Logo (transparent).png" runat="server" CssClass="logo-icon" />
                         <p class="logo-text">FTFGym</p>
                     </div>

                     <h1 id="loginForm-title">Let's get you started</h1>

                     <p class="loginForm-desc">Enter your details to sign in or press sign up</p>

                     <asp:Login ID="Login1" runat="server" CreateUserText="SIGN UP" CreateUserUrl="~/CreateUser.aspx" CssClass="loginForm" HelpPageText="FORGOT PASSWORD" DestinationPageUrl="~/Homepage.aspx">
                     </asp:Login>

                 </section>
            </div>
        </div>
    </section>
</asp:Content>

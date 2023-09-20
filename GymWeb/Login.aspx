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
            width: 18rem;
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

        .loginForm {
            width: 100%;
        }

        .loginForm .loginForm-row {
            display: flex;
            margin-bottom: 1rem;
        }

        .loginForm .loginForm-row span {
            flex: 1;
            align-self: center;
        }

        .loginForm .loginForm-row input {
            flex: 3;
            width: 100%;
            margin-left: 0.2rem;
            padding: 0.7rem;
            border: 1px solid #ced4da;
            border-radius: 0.5rem;
            color: #333333;
            outline: none;
        }

        .loginForm .loginForm-row input:focus,
        .loginForm .loginForm-row input:focus-visible {
            border: 1px solid var(--theme-red);
        }

        .loginForm .loginForm-row.rmbMeRow input {
            flex: 0;
        }

        .loginForm .loginForm-row .login-btn {
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
            letter-spacing: 0.2em;
        }

        .loginForm .loginForm-row .login-btn:hover {
            background-color: #ad022e;
        }

        .loginForm .loginForm-row:last-child {
            width: 100%;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            align-items: center;
        }

        .loginForm .loginForm-row:last-child a {
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

                     <%--<asp:Login ID="Login1" runat="server" CreateUserText="SIGN UP" CreateUserUrl="~/CreateUser.aspx" CssClass="loginForm" HelpPageText="FORGOT PASSWORD" DestinationPageUrl="~/Homepage.aspx">
                     </asp:Login>--%>

                     <section class="loginForm">
                         <div class="loginForm-row">
                             <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                             <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                         </div>
                         <div class="loginForm-row">
                             <asp:Label ID="lblPwd" runat="server" Text="Password"></asp:Label>
                             <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                         </div>
                         <div class="loginForm-row rmbMeRow">
                             <asp:CheckBox ID="cbRmbMe" Text="Remember me next time." runat="server" />
                         </div>
                         <div class="loginForm-row">
                             <asp:Button ID="btnLogIn" runat="server" Text="Login" CssClass="login-btn" OnClick="btnLogIn_Click" />
                         </div>
                         <div class="loginForm-row">
                             <asp:HyperLink ID="hlSignUp" NavigateUrl="~/CreateUser.aspx" runat="server">SIGN UP</asp:HyperLink>
                             <asp:HyperLink ID="hlForgotPwd" NavigateUrl="~/ForgotPassword.aspx" runat="server">FORGOT PASSWORD</asp:HyperLink>
                         </div>
                     </section>

                 </section>
            </div>
        </div>
    </section>
</asp:Content>

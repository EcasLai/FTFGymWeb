<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="GymWeb.CreateUser" %>
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

        /* signup Form */
        #signup {
            position: relative;
            background-size: cover !important;
            width: 100%;
            height: 91vh;
            position: relative;
            color: black;
        }

        #signup::before {
            content: "";
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 91vh;
            background-image: url("Img/Login/login_background.jpg");
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

        .signupForm-card {
            display: flex;
            flex-direction: column;
            align-self: center !important;
            width: 25rem;
            padding: 1.5rem;
            background-color: white;
            border-radius: 0.5rem;
            box-shadow: 0 10px 10px rgba(152, 187, 255, 0.11);
            transform: translateX(-50%);
            color: #333333;
            overflow-x: hidden;
        }

        .signupForm-card div.logo-wrapper {
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

        #signupForm-title {
            font-size: 1.75rem;
            font-weight: 400;
            line-height: 2.5rem;
            margin-top: 0px;
            margin-bottom: 1.25rem;
            text-align: center;
        }

        .signupForm-desc {
            font-size: 0.75rem;
            line-height: 1.25rem;
            font-weight: 400;
            text-align: start !important;
            margin: 1.5rem 0;
            color: #333333;
        }

        .signupForm {
            width: 100%;
        }

        .signupForm .signupForm-row {
            display: flex;
            margin-bottom: 1rem;
        }

        .signupForm .signupForm-row span {
            flex: 1;
            align-self: center;
        }

        .signupForm .signupForm-row input {
            flex: 3;
            width: 100%;
            margin-left: 0.2rem;
            padding: 0.7rem;
            border: 1px solid #ced4da;
            border-radius: 0.5rem;
            color: #333333;
            outline: none;
        }

        .signupForm .signupForm-row input:focus,
        .signupForm .signupForm-row input:focus-visible {
            border: 1px solid var(--theme-red);
        }

        .signupForm .signupForm-row.rmbMeRow input {
            flex: 0;
        }

        .signupForm .signupForm-row:nth-child(2) {
            position: relative;
        }

        .signupForm .input-group-append {
            position: absolute;
            top: 50%;
            right: 0;
            margin-right: 0.2rem;
            transform: translateY(-50%);
            background: none;
        }

        .signupForm .input-group-append button {
            background: none !important;
            border: none;
        }

        .signupForm .input-group-append button span {
            color: black;
        }

        .signupForm .signupForm-row .signup-btn {
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

        .signupForm .signupForm-row .signup-btn:hover {
            background-color: #ad022e;
        }

        .signupForm .signupForm-row:last-child {
            width: 100%;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            align-items: center;
        }

        .signupForm .signupForm-row:last-child a {
            text-decoration: none;
            color: var(--theme-red);
            font-weight: 600;
            margin-bottom: 0;
        }


        .back-login-wrapper {
            margin: auto;
            margin-top: 0.5rem;
        }

        .back-login-wrapper span {
            font-size: 0.875rem;
            text-align: center;
            color: #333333;
            font-weight: 400;
            margin-bottom: 0;
        }

        .navi-login-link {
            color: var(--theme-red);
            font-weight: 600;
            text-transform: uppercase;
            font-size: 0.875rem;
            padding-left: 4px;
            text-decoration: none;
        }
    </style>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  

    <script type="text/javascript" defer>  
        showPwd = false;

        $(document).ready(function () { 
            
            $('#show_password').hover(function show() {
                showPwd = !showPwd;
                if (showPwd) {
                    //Change the attribute to text  
                    $('#txtPassword').attr('type', 'text');
                    $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');

                }
                else {
                    //Change the attribute back to password  
                    $('#txtPassword').attr('type', 'password');
                    $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
                }
                
            };
        });  
    </script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="signup">
        <div class="container">
            <div class="row">
                 <section class="signupForm-card">
                     <div class="logo-wrapper">
                         <asp:Image ID="LogoIcon" ImageUrl="~/Img/Logo (transparent).png" runat="server" CssClass="logo-icon" />
                         <p class="logo-text">FTFGym</p>
                     </div>

                     <h1 id="signupForm-title">Sign Up</h1>

                     <p class="signupForm-desc">The email has to be the same email registered under your membership</p>

                     <%--<asp:CreateUserWizard ID="wSignupForm" runat="server" CssClass="signupForm">
                         <WizardSteps>
                             <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                                 <CustomNavigationTemplate>
                                     <table border="0" cellspacing="5" style="width:100%;height:100%;">
                                         <tr align="right">
                                             <td align="right" colspan="0">
                                                 <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Register" ValidationGroup="CreateUserWizard1" />
                                             </td>
                                         </tr>
                                     </table>
                                 </CustomNavigationTemplate>
                             </asp:CreateUserWizardStep>
                             <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                             </asp:CompleteWizardStep>
                         </WizardSteps>
                     </asp:CreateUserWizard>--%>

                    <section class="signupForm">
                        <div class="signupForm-row">
                             <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                             <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                         </div>
                         <div class="signupForm-row">
                             <asp:Label ID="lblPwd" runat="server" Text="Password"></asp:Label>
                             <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                             <div class="input-group-append">  
                                <button id="show_password" class="btn btn-primary" type="button">  
                                    <span class="fa fa-eye-slash icon"></span>  
                                </button>  
                            </div>  
                         </div>
                        <div class="signupForm-row">
                             <asp:Label ID="Label1" runat="server" Text="Confirm Password"></asp:Label>
                             <asp:TextBox ID="txtRePwd" TextMode="Password" runat="server"></asp:TextBox>
                         </div>       
                         <div class="signupForm-row">
                             <asp:Button ID="btnSignIn" runat="server" Text="Sign Up" CssClass="signup-btn" OnClick="btnSignIn_Click" />
                         </div>
                     </section>

                     <div class="back-login-wrapper">
                         <span>Back to </span><asp:HyperLink ID="NavLoginLink" runat="server" NavigateUrl="~/Login.aspx" CssClass="navi-login-link">Login</asp:HyperLink>
                     </div>
                 </section>
            </div>
        </div>
    </section>
</asp:Content>

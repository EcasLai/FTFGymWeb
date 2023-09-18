<%@ Page Title="Change Password | FTF Gym Web" Language="C#" MasterPageFile="~/Account.master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="GymWeb.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AccountHead" runat="server">

    <style type="text/css">
        /* Right Content */
        .right-content #section-title {
            margin-top: 2rem;
            margin-bottom: 2rem;
        }

        .right-content .form-input {
            width: 20vw;
            min-width: 15vw;
            display: flex;
            flex-direction: column;
            margin-bottom: 1.5rem;
        }

        .right-content .form-input-container {
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
            padding: 0 0.4rem;
        }

        /* Password Format Hint */
        .right-content .pwd-format-hint {
            margin-bottom: 1.5rem;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
        }
        .right-content .pwd-format-hint p {
            display: block;
            margin: 0.2rem 0;
            font-weight: 500;
            color: red;
        }


        /* Right Content - View Mode */
        .right-content .form-button-group {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            width: 25vw;
        }

        .right-content .form-button-group button  {
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AccountContent" runat="server">
    <h2 id="section-title">Change Password</h2>

    <div class="form-input-container">
            <div class="form-input">
                <asp:Label ID="lblOldPwd" runat="server" Text="Old Password" ></asp:Label>
                <asp:TextBox ID="txtOldPassword" runat="server" placeholder="Old password"></asp:TextBox>
            </div>

            <div class="form-input" style="margin-bottom: 0.2rem">
                <asp:Label ID="lblNewPwd" runat="server" Text="New Password"></asp:Label>
                <asp:TextBox ID="txtNewPassword" runat="server" placeholder="New password" CssClass="txtNewPassword"></asp:TextBox>
            </div>

            <div class="pwd-format-hint">
                <p id="pwdHint1">* Between 8 - 15 characters</p>
                <p id="pwdHint2">* Include both lower & upper case characters</p>
                <p id="pwdHint3">* At least one or more number or symbol</p>
            </div>

            <div class="form-input">
                <asp:Label ID="lblConfirmedNewPwd" runat="server" Text="Confirmed New Password"></asp:Label>
                <asp:TextBox ID="txtConfirmedNewPassword" runat="server" placeholder="Confirmed new password"></asp:TextBox>
            </div>

            
        </div>

        <div  class="form-button-group">
            <button class="form-button">Change Password</button>
        </div>

    <%-- Javascript --%>
    <script src="script/ChangePassword.js" defer></script>
</asp:Content>

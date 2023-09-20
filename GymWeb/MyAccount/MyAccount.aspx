<%@ Page Title="" Language="C#" MasterPageFile="~/MyAccount/Account.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="GymWeb.MyAccount.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AccountHead" runat="server">
    <style type="text/css">
        /* Right Content */
        .right-content #section-title {
            margin-bottom: 2rem;
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
            padding: 0 0.4rem;
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
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AccountContent" runat="server">
  
        <h2 id="section-title">Account Overview</h2>
        <div class="form-input-row">
            <div class="form-input">
                <asp:Label ID="lblUsername" runat="server" Text="Username" ></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Username" ReadOnly="true" Enabled="false"></asp:TextBox>
            </div>

            <div class="form-input">
                <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name" ReadOnly="true" Enabled="false"></asp:TextBox>
            </div>
        </div>
            
        <div class="form-input">
            <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name" ReadOnly="true" Enabled="false"></asp:TextBox>
        </div>

        <div class="form-input">
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="example@email.com" ReadOnly="true" Enabled="false"></asp:TextBox>
        </div>

        <div class="form-input">
            <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number" ReadOnly="true" Enabled="false"></asp:Label>
            <div>
                <asp:DropDownList ID="ddlCountryCode" runat="server" ReadOnly="true" Enabled="false">
                    <asp:ListItem>+60</asp:ListItem>    
                    <asp:ListItem>+65</asp:ListItem>    
                    <asp:ListItem>+886</asp:ListItem>   
                </asp:DropDownList>
                <asp:TextBox ID="txtPhoneNumber" runat="server" TextMode="Phone" onkeypress="return isNumberKey(event)" ReadOnly="true" Enabled="false"></asp:TextBox>
            </div>
               
        </div>
            
        <div class="form-input">
            <asp:Label ID="lblGender" runat="server" Text="Gender" ></asp:Label>
            <asp:RadioButton ID="rbGenderMale" runat="server" Text="Male" GroupName="gender" CssClass="gender-radio" ReadOnly="true" Enabled="false" />
            <asp:RadioButton ID="rbGenderFemale" runat="server" Text="Female" GroupName="gender" CssClass="gender-radio" ReadOnly="true" Enabled="false" />
            <asp:RadioButton ID="rbGenderNone" runat="server" Text="Prefer not to say" GroupName="gender" CssClass="gender-radio" ReadOnly="true" Enabled="false" />
        </div>
            
        <%--<div  class="form-button-group-edit">
            <asp:Button ID="btnSubmit" runat="server" Text="Make Changes" CssClass="form-button" />
            <button class="form-button">Discard</button>
        </div>--%>

        <div  class="form-button-group-view">
            <button class="form-button">Edit</button>
        </div>
           
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

        <%-- Javascript --%>
        <script>
            const activeTab = sessionStorage.getItem('activeTab');
            // console.log(activeTab);
            navListItems[activeTab].classList.add("active-item");

            for (y = 0; y < navListItems.length; y++) {
                if (navListItems[y] !== navListItems[activeTab]) {
                    navListItems[y].classList.remove("active-item");
                }
            }
        </script>
</asp:Content>

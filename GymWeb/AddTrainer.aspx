<%@ Page Title="FTFGym" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="GymWeb.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

    * {
        box-sizing: border-box;
    }

    .background img {
      min-height: 380px;

      /* Center and scale the image nicely */
      background-position: center;
      background-repeat: no-repeat;
      background-size: cover;
      position: relative;
    }

    /* Add styles to the form container */
    .container {
      position: absolute;
      right: 0;
      margin: 20px;
      max-width: 100%;
      padding: 16px;
      background-color: white;
    }

    /* Full-width input fields */
    input[type=text], input[type=password] {
      width: 100%;
      padding: 15px;
      margin: 5px 0 22px 0;
      border: none;
      background: #f1f1f1;
    }

    .form-input input[type="text"]:focus, 
    .form-input input[type="email"]:focus, 
    .form-input input[type="tel"]:focus  {
      background-color: #ddd;
      outline: none;
    }

    /* Set a style for the submit button */
    .form-button {
      background-color: #04AA6D;
      color: white;
      padding: 16px 20px;
      border: none;
      cursor: pointer;
      width: 100%;
      opacity: 0.9;
    }

    .form-button:hover {
      opacity: 1;
    }

    .background img{
        width: 100%;
    }
/*
    .form-input {
        width: 25vw;
        min-width: 15vw;
        display: flex;
        flex-direction: column;
        margin-bottom: 1.5rem;
    }*/
/*
    .form-input input[type="text"], 
    .form-input input[type="email"], 
     .form-input input[type="tel"] {
        height: 29px;
        padding: 0 0.4rem;
    }*/


</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="background">
  <asp:Image runat="server" ImageUrl="Img/Trainer/backgroundImg.jpg" ></asp:Image>
    <h1>Register</h1>

   <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name"></asp:TextBox>

    <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name"></asp:TextBox>
            
      <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="example@email.com"></asp:TextBox>
            
        <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number"></asp:Label>
            <div>
                <asp:DropDownList ID="ddlCountryCode" runat="server">
                    <asp:ListItem>+60</asp:ListItem>    
                    <asp:ListItem>+65</asp:ListItem>    
                    <asp:ListItem>+886</asp:ListItem>   
                </asp:DropDownList>
                <asp:TextBox ID="txtPhoneNumber" runat="server" TextMode="Phone" onkeypress="return isNumberKey(event)"></asp:TextBox>
            </div>
            
             <asp:Label ID="lblDate" runat="server" Text="Joined Date"></asp:Label>
		    <asp:TextBox ID="joinedDate" runat="server" TextMode="Date" Height="40px" Width="250px"></asp:TextBox>

    <button class="form-button">Register</button>
 
</div>
</asp:Content>
<%@ Page Title="FTFGym" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="AddTrainer.aspx.cs" Inherits="GymWeb.AddTrainer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

    * {
        box-sizing: border-box;
    }

    .container{
        background: url("Img/Trainer/backgroundImg.jpg");
        width: 100vw;
        height: 91vh;
        background-size: cover;
        background-repeat: no-repeat;    
    }
    .form {
      position: absolute;
      top: auto;
      bottom: auto;
      left: 50%;
      margin: 50px;
      width: 30vw;
      max-width: 500px;
      padding: 30px;
      background-color: white;
      border-radius: 0.5rem;
      transform: translateX(-50%);
    }

    .input-box{
       margin-bottom: 1rem;
       min-width: 15vw;
       display: flex;
       flex-direction: column;
       margin-bottom: 1.5rem;
    }

    .image{
        margin-bottom: 1rem;
       min-width: 15vw;
       display: flex;
       flex-direction: column;
       margin-bottom: 1.5rem;
    }

    .input-box input[type="text"], 
    .input-box input[type="email"]
    {
            height: 30px;
            padding: 10px;
    }

    .input-box input[type="tel"] {
        height: 20px;
    }

    .register-button{
        background-color: #04AA6D;
        color: white;
        padding: 16px 20px;
        border: none;
        cursor: pointer;
        width: 100%;
        opacity: 0.9;
    }

    .register-button:hover{
        opacity: 1;
    }


</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        
        <div class="form">
        <h1>Register Trainer</h1>
            <div class="user-details">
                
                <div class="image">
                    <asp:Image ID="trainerImg" runat="server" />
                    <input type="file" id="photo" name="photo" accept=".jpg,.jpeg,.png">                

                </div>

                <div class="input-box">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                    <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name"></asp:TextBox>
                </div>

                <div class="input-box">
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                    <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name"></asp:TextBox>
                </div>

                <div class="input-box">
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="example@email.com"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ControlToValidate="txtEmail" ErrorMessage="Invalid Email Address" ValidationGroup="Group1"></asp:RegularExpressionValidator>
                </div>

                <div class="input-box">
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

                    <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="register-button" OnClick="btnRegister_Click" OnClientClick="respondMsg()" />
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

            </div>
    </div>
        </div>

    <script>
        function respondMsg() {
            alert("Trainer Added Successfully!")
        }
    </script>
</asp:Content>
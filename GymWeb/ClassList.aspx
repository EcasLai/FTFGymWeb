<%@ Page Language="C#" Title="'Class | FTF Gym Web" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="ClassList.aspx.cs" Inherits="GymWeb.ClassList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
    html {
        scroll-behavior: smooth;
    }

    body{
        font-size: 16px;
        font-family: Arial, Verdana;
    }

    .btn-Class{
        width: 150px;  
        height: 50px;
        background-color: gold;
    }

    .btn-Class:hover{
        background-color: darkgoldenrod;
        color: black;
        transition-duration: 0.3s;
        opacity:0.8;
    }

    .btn-subClass{
        width: 150px;  
        height: 50px;
        border: 2px solid whitesmoke; 
        color: whitesmoke;
        background-color: transparent;
    }

    .btn-subClass:hover{
        background-color: whitesmoke;
        color: black;
        border: 2px solid whitesmoke; 
        transition-duration: 0.3s;
        opacity:0.6
    }

    .container{
        text-align: center;
        padding: 10%;
        position: relative;
    }

    .fill-form{
        float:left;
        width: 65%;
        height: 600px;
        display: block;
        text-align: left;
        box-sizing: border-box;
        padding: 2%;     
    }

    .fill-form-support{
        float:right;
        width: 35%;
        height: 500px;
    }

    .fill-form-support > img{
        object-fit: cover;
        filter:grayscale(50%) brightness(80%);
        width: 100%;
        height: 100%;
    }

    .container-textImg{
        position: relative;
        text-align: center;
        color: white;
        height: 600px;
    }

    .container-textImg img{
        object-fit: cover;
        filter: brightness(30%);   
        width: 100%;
        height: 100%;
    }

    .container-textImg .centered{
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }

    .container-textImg .top-left{
        position: absolute;
        text-align:left;
        top: 20%;
        left: 5%;
        width: 40%;
    }

    .container-textImg .selNav{
        position: absolute;
        text-align: left;
        float: right;
        top: 35%;
        right: 5%;
        width: 250px;
        height: 350px;
        background-color: white;
        border-radius: 10px;
        opacity: 0.9;
    }

    table {
         border-collapse:separate; 
         border-spacing: 0 1em;
    }

    .tablist{
        list-style-type: none;
        margin: 8px;
    }

    .tablist li{
        padding: 25px 0 25px 0;
        font-size: 1.2rem;
        width: 100%;
    }

    .td-firstCol {
         width: 100px;
         font-weight:bold;
    }

    </style>

</asp:Content>

<asp:Content ID="ClassListContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--- First INTRO class--->
    <section class="container-textImg">
        <img src="Img/ClassList/classBg.jpg" alt="Image with few peoples using gym equipments"/>
        <div class="top-left" style="font-size: 3.0rem">
            <span style="font-weight: 500; line-height: 1.4">TAKE YOUR FITNESS LEVEL TO NEXT</span>
            <br/>
            <span style="font-size:2.0rem ">with</span>
            <span style="font-size:5.0rem ;font-weight: bold">FTFStudio</span>

            <div>
                <asp:Button CssClass="btn-Class" ID="Button1" runat="server" Text="JOIN NOW" />
                <asp:Button CssClass="btn-subClass" ID="Button2" runat="server" Text="LEARN MORE"/>
            </div>
        </div>
    </section>

    <!--- Class Type --->
    <section class="container">
        <h1 style="font-size: 2.6rem">Discover Our Dynamic Class</h1><br />
        <div class="container-textImg" style="height: 600px">   
            <img src="Img/ClassList/classBg2.jpg" alt="Image with few peoples using gym equipments"/>
            <div class="top-left" style="font-size: 3.0rem">
                <span style="font-size: 4.0rem; font-weight: bold">Cardio Blast</span><br/>
                <p style="font-size: 1.0rem; line-height: 25px">Ignite your inner fire and sculpt your body with Cardio Blast - the heart-pounding fusion of high-intensity cardio and energizing music that's designed to make you sweat like never before.</p>
                <span></span>
            </div>
            <div class="selNav" style="color: black">
                <ul class="tablist">
                    <li>CARDIO BLAST</li>
                    <li>HIIT FUSION</li>
                    <li>PILATES CORE</li>
                    <li>CROSSFIT INTENSITY</li>
                </ul>
            </div>
        </div>
    </section>

    <!--- Join Class --->
    <section class="container" style="background-color: #fafafa; height: 600px">
        <h1 id="section-join" style="text-align: left; font-size: 2.6rem">LET'S START</h1>
        <div class="fill-form" >

            <table style="width: 100%;">
                <tr>
                    <td class="td-firstCol">Class </td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="250px">
                        <asp:ListItem>Cardio Blast</asp:ListItem>
                        <asp:ListItem>HIIT Fusion</asp:ListItem>
                        <asp:ListItem>Pilates Core</asp:ListItem>
                        <asp:ListItem>CrossFit Intensity</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="td-firstCol">Trainer</td>
                    <td><asp:DropDownList ID="DropDownList2" runat="server" Height="40px" Width="250px">
                        <asp:ListItem>Mr Kok Leong</asp:ListItem>
                        <asp:ListItem>Mrs Tiffanie</asp:ListItem>
                        <asp:ListItem>Mr Joshhh</asp:ListItem>
                        <asp:ListItem>Mr Miicas</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="td-firstCol">Experience Level</td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Beginner" GroupName="experience" />
                        <br/>
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Intermediate" GroupName="experience"/>
                        <br/>
                        <asp:RadioButton ID="RadioButton3" runat="server" Text="Advanced" GroupName="experience"/>
                    </td>
                </tr>
                <tr>
                    <td class="td-firstCol">Date</td>
                    <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Date" Height="40px" Width="250px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="td-firstCol">Time</td>
                    <td><asp:TextBox ID="TextBox3" runat="server" TextMode="Time" Height="40px" Width="250px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="td-firstCol">Price</td>
                    <td><asp:TextBox ID="TextBox4" runat="server" Enabled="False" Height="40px" Width="250px"></asp:TextBox></td>
                </tr>
            </table>

        </div>

        <div class="fill-form-support">
            <img src="Img/ClassList/classVertical2.jpg" alt="Trainer guide people" />
        </div>
    </section>

</asp:Content>


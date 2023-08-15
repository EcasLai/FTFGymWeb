<%@ Page Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="ClassList.aspx.cs" Inherits="GymWeb.ClassList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
    .container{
        text-align: center;
        padding: 10%;
        position: relative;
    }

    .fill-form{
        float:left;
        width: 65%;
        height: 600px;
        display: inline-block;
        text-align: left;
        box-sizing: border-box;
        padding: 2%;     
    }

    .fill-form-support{
        float:right;
        width: 35%;
        height: 500px;
        display: inline-block;
    }

    .fill-form-support > img{
        object-fit: cover;
        filter:grayscale(80%) brightness(50%);
        width: 100%;
        height: 100%;
    }

    .container-textImg{
        position: relative;
        text-align: center;
        color: white;
        height: 700px;
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
        width: 50%;
    }

    </style>

</asp:Content>

<asp:Content ID="ClassListContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-textImg">
        <img src="Img/ClassList/classBg.jpg" alt="Image with few peoples using gym equipments"/>
        <div class="top-left" style="font-size: 3.0em; font-family="">
            TAKE YOUR FITNESS LEVEL TO NEXT<br/>
            with FTFStudio
        </div>
    </div>

    <!--- To show list of class --->
    <asp:Repeater ID="Repeater1" runat="server"></asp:Repeater>
    
    <div class="container">

        <div class="fill-form">

            <h1>Join the Workout</h1>
            <table style="width: 100%;">
                <tr>
                    <td>Class </td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="300px"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Trainer</td>
                    <td><asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Experience Level</td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Beginner" GroupName="experience" />
                        <br/>
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Intermediate" GroupName="experience"/>
                        <br/>
                        <asp:RadioButton ID="RadioButton3" runat="server" Text="Advanced" GroupName="experience"/>
                    </td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Time</td>
                    <td><asp:TextBox ID="TextBox3" runat="server" TextMode="Time"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox></td>
                </tr>
            </table>

        </div>

        <div class="fill-form-support">
            <img src="Img/ClassList/classVertical2.jpg" alt="Trainer guide people" />
        </div>
    </div>
    

    

</asp:Content>


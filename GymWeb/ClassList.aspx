<%@ Page Language="C#" Title="Class | FTF Gym Web" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="ClassList.aspx.cs" Inherits="GymWeb.ClassList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="Style/classList.css" rel="stylesheet" />

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

            <asp:Button CssClass="btn-Class" ID="Button3" runat="server" Text="Submit" />
        </div>

        <div class="fill-form-support">
            <img src="Img/ClassList/classVertical2.jpg" alt="Trainer guide people" />
        </div>
    </section>

</asp:Content>


<%@ Page Language="C#" Title="Class | FTF Gym Web" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="ClassList.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="GymWeb.ClassList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="Style/classList.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            width: 100px;
            font-weight: bold;
            height: 26px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 100px;
            font-weight: bold;
            height: 67px;
        }
        .auto-style4 {
            height: 67px;
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
                    <td><asp:DropDownList ID="ddlClass" runat="server" Height="40px" Width="250px" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="Title" AutoPostBack="True">
                        <asp:ListItem>Cardio Blast</asp:ListItem>
                        <asp:ListItem>HIIT Fusion</asp:ListItem>
                        <asp:ListItem>Pilates Core</asp:ListItem>
                        <asp:ListItem>CrossFit Intensity</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style1">Trainer</td>
                    <td class="auto-style2"><asp:DropDownList ID="DropDownList2" runat="server" Height="40px" Width="250px">
                        <asp:ListItem>Mr Kok Leong</asp:ListItem>
                        <asp:ListItem>Mrs Tiffanie</asp:ListItem>
                        <asp:ListItem>Mr Joshhh</asp:ListItem>
                        <asp:ListItem>Mr Miicas</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Experience Level</td>
                    <td class="auto-style4">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Beginner" GroupName="experience" />
                        <br/>
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Intermediate" GroupName="experience"/>
                        <br/>
                        <asp:RadioButton ID="RadioButton3" runat="server" Text="Advanced" GroupName="experience"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Date</td>
                    <td class="auto-style2"><asp:DropDownList ID="ddlDate" runat="server" Height="40px" Width="250px" DataSourceID="SqlDataSource2" DataTextField="Date" DataValueField="Date" AutoPostBack="True">
                        <asp:ListItem>Cardio Blast</asp:ListItem>
                        <asp:ListItem>HIIT Fusion</asp:ListItem>
                        <asp:ListItem>Pilates Core</asp:ListItem>
                        <asp:ListItem>CrossFit Intensity</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style1">Time</td>
                    <td class="auto-style2"><asp:DropDownList ID="ddlTime" runat="server" Height="40px" Width="250px" DataSourceID="SqlDataSource3" DataTextField="Time" DataValueField="Time" OnSelectedIndexChanged="ddlTime_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>Cardio Blast</asp:ListItem>
                        <asp:ListItem>HIIT Fusion</asp:ListItem>
                        <asp:ListItem>Pilates Core</asp:ListItem>
                        <asp:ListItem>CrossFit Intensity</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="td-firstCol">Price</td>
                    <td><asp:DropDownList ID="ddlPrice" runat="server" Height="40px" Width="250px" DataSourceID="SqlDataSource4" DataTextField="Price" DataValueField="Price" OnSelectedIndexChanged="ddlTime_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>Cardio Blast</asp:ListItem>
                        <asp:ListItem>HIIT Fusion</asp:ListItem>
                        <asp:ListItem>Pilates Core</asp:ListItem>
                        <asp:ListItem>CrossFit Intensity</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
            </table>

            <asp:Button CssClass="btn-Class" ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Title] FROM [WorkoutClass]"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Date] FROM [WorkoutClass] WHERE ([Title] LIKE '%' + @Title2 + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlClass" DefaultValue="" Name="Title2" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Time] FROM [WorkoutClass] WHERE (([Title] LIKE '%' + @Title + '%') AND ([Date] LIKE '%' + @Date + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlClass" Name="Title" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="ddlDate" Name="Date" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Price] FROM [WorkoutClass] WHERE (([Title] LIKE '%' + @Title + '%') AND ([Date] LIKE '%' + @Date + '%') AND ([Time] LIKE '%' + @Time + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlClass" Name="Title" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlDate" Name="Date" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlTime" Name="Time" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ClassId] FROM [WorkoutClass] WHERE (([Title] LIKE '%' + @Title + '%') AND ([Date] LIKE '%' + @Date + '%') AND ([Time] LIKE '%' + @Time + '%') AND ([Price] = @Price))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlClass" Name="Title" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlDate" Name="Date" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlTime" Name="Time" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlPrice" Name="Price" PropertyName="SelectedValue" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

        <div class="fill-form-support">
            <img src="Img/ClassList/classVertical2.jpg" alt="Trainer guide people" />
        </div>
    </section>

</asp:Content>


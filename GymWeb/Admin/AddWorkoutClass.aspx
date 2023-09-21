<%@ Page Title="ADMIN | FTF Gym Web" Language="C#" MasterPageFile="~/Admin/AdminHome.Master" AutoEventWireup="true" CodeBehind="AddWorkoutClass.aspx.cs" Inherits="GymWeb.Admin.AddWorkoutClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/adminWorkoutClass.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

        <div>
            <br />
            <div class="container">
                <table class="tdclass">
                    <tr>
                        <td class="tableHeader" colspan="3">
                            <asp:Label ID="Label11" class="header" runat="server" Text="Add Workout Class"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="textBoxColFront">
                            <asp:Label ID="Label3" CssClass="labeltable" runat="server" Text="Title"></asp:Label>
                        </td>
                        <td class="textBoxColMid">:</td>
                        <td class="auto-style12">
                            <asp:DropDownList ID="ddlTitle" CssClass="dropdownList" runat="server">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Cardio Blast</asp:ListItem>
                                <asp:ListItem>Hiit Fusion</asp:ListItem>
                                <asp:ListItem>Pilates Core</asp:ListItem>
                                <asp:ListItem>Crossfit Intensity</asp:ListItem>
                            </asp:DropDownList>
                            <br/>
                            <asp:RequiredFieldValidator ID="ReqFieldTitle" runat="server" ControlToValidate="ddlTitle" Display="Dynamic" ErrorMessage="Title Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="textBoxColFront">
                            <asp:Label ID="Label8" CssClass="labeltable" runat="server" Text="Description"></asp:Label>
                        </td>
                        <td class="textBoxColMid">:</td>
                        <td class="textBoxCol">
                            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" CssClass="textbox" Height="60px"></asp:TextBox>
                            <br/>
                            <asp:RequiredFieldValidator ID="ReqFieldDescription" runat="server" ControlToValidate="txtDescription" Display="Dynamic" ErrorMessage="Description Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="textBoxColFront">
                            <asp:Label ID="Label4" CssClass="labeltable" runat="server" Text="Capacity"></asp:Label>
                        </td>
                        <td class="textBoxColMid">:</td>
                        <td class="textBoxCol">
                            <asp:DropDownList ID="ddlCapacity" runat="server" OnSelectedIndexChanged="ddlCapacity_SelectedIndexChanged" CssClass="dropdownList">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>50</asp:ListItem>
                            </asp:DropDownList>
                            <br/>
                            <asp:RequiredFieldValidator ID="ReqFieldCapacity" runat="server" ControlToValidate="ddlCapacity" Display="Dynamic" ErrorMessage="Capacity Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="textBoxColFront">
                            <asp:Label ID="Label5" CssClass="labeltable" runat="server" Text="Date"></asp:Label>
                        </td>
                        <td class="textBoxColMid">:</td>
                        <td class="textBoxCol">
                            <asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="textbox"></asp:TextBox>
                            <br/>
                            <asp:RequiredFieldValidator ID="ReqFieldDate" runat="server" ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="Date Required"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeFieldDate" runat="server" ControlToValidate="txtDate" ErrorMessage="Date after today only" MinimumValue='<%# DateTime.Now.AddDays(1).ToString("yyyy-MM-dd") %>' MaximumValue='<%# DateTime.Now.AddMonths(3).ToString("yyyy-MM-dd") %>' Display="Dynamic"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="textBoxColFront">
                            <asp:Label ID="Label6"  CssClass="labeltable" runat="server" Text="Time"></asp:Label>
                        </td>
                        <td class="textBoxColMid">:</td>
                        <td class="textBoxCol">
                            <asp:TextBox ID="txtTime" CssClass="textbox" runat="server" TextMode="Time"></asp:TextBox>
                            <br/>
                            <asp:RequiredFieldValidator ID="ReqFieldTime" runat="server" ControlToValidate="txtTime" Display="Dynamic" ErrorMessage="Time Required"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeFieldTime" runat="server" ControlToValidate="txtTime" Display="Dynamic" ErrorMessage="08.00AM to 10.00PM only" MinimumValue='08:00' MaximumValue='22:00'></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="textBoxColFront">
                            <asp:Label ID="Label7" CssClass="labeltable" runat="server" Text="Price"></asp:Label>
                        </td>
                        <td class="textBoxColMid">:</td>
                        <td class="textBoxCol">
                            <asp:TextBox ID="txtPrice" CssClass="textbox" runat="server"></asp:TextBox>
                            <br/>
                            <asp:RequiredFieldValidator ID="ReqFieldPrice" runat="server" ControlToValidate="txtPrice" Display="Dynamic" ErrorMessage="Price Required"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularFieldPrice" runat="server" ControlToValidate="txtPrice" ErrorMessage="Enter Valid Price (999999.99)" ValidationExpression="^\d{0,6}(\.\d{1,2})?$" Display="Dynamic"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan ="3" class="auto-style9">
                            <asp:Button ID="btnSubmitAdd" class="submitClearBtn" runat="server" onclick="InsertClassTitle" Text="Submit"/>
                            <asp:Button ID="btnSubmitClear" class="submitClearBtn" runat="server" Text="Clear" OnClick="BtnSubmitClear_Click" CausesValidation="False" BackColor="#CCCCCC" />
                            <br />
                            <asp:HyperLink ID="hyperlinkGoView" runat="server" NavigateUrl="~/Admin/ViewWorkoutClass.aspx">View Workout Class List</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

</asp:Content>




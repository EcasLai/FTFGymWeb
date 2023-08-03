<%@ Page Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="ClassList.aspx.cs" Inherits="GymWeb.ClassList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style2">
        <tr>
            <td class="auto-style1">Name</td>
            <td>
                <asp:TextBox ID="custName" runat="server" Width="297px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Contact No.</td>
            <td>
                <asp:TextBox ID="custContact" runat="server" Width="165px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Email</td>
            <td>
                <asp:TextBox ID="custEmail" runat="server" Width="238px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Select Class</td>
            <td>
                <asp:DropDownList ID="ddlClass" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </td>
        </tr>
    </table>
    
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 200px;
        }
        .auto-style2 {
            width: 50%;
        }
    </style>
</asp:Content>



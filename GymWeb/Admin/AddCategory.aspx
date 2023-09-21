<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="GymWeb.Admin.AddCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 116px;
            height: 29px;
        }
        .auto-style2 {
            width: 18px;
            height: 29px;
        }
        .auto-style3 {
            width: 116px;
            height: 26px;
        }
        .auto-style4 {
            width: 18px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            width: 570px;
        }
        .auto-style6 {
            height: 29px;
            width: 570px;
        }
        .auto-style7 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Add Category
            <br />
            <br />
            <table class="auto-style7">
                <tr>
                    <td class="auto-style3">Category ID</td>
                    <td class="auto-style4">:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtCategoryId" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Title</td>
                    <td class="auto-style2">:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtCategoryTitle" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>

            <br />

            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />

        </div>
        <br />
    </form>
</body>
</html>

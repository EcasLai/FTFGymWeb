<%@ Page Title="Add Product | ADMIN" Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="GymWeb.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Style/star.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
        .auto-style2 {
            height: 51px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Add New Product
            <br />
            <br />
            <asp:FormView runat="server" DefaultMode="Insert" InsertMethod="Unnamed_InsertItem" ItemType="GymWeb.Models.Product" DataKeyNames="ProductId" ID="FormViewAddProduct"  >
                <InsertItemTemplate>
                    <table style="width: 100%; margin-top: 0px;">
                        <tr>
                            <td class="auto-style2"><asp:Label ID="Label1" runat="server" Text="Name "></asp:Label></td>
                            <td class="auto-style2">: </td>
                            <td class="auto-style2"><asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name")%>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RVFName" runat="server" CssClass="error" ErrorMessage="This space must not be empty. " ControlToValidate="txtName">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style1"><asp:Label ID="Label2" runat="server" Text="Description "></asp:Label></td>
                            <td class="auto-style1">: </td>
                            <td class="auto-style1"><asp:TextBox ID="txAuthor" runat="server" Text='<%# Bind("Description")%>'></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td><asp:Label ID="Label3" runat="server" Text="Stock "></asp:Label></td>
                            <td>: </td>
                            <td><asp:TextBox ID="txtStock" runat="server" Text='<%# Bind("Stock")%>'></asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Stock Value must be in between 1 - 100000" CssClass="error" MaximumValue="100000" MinimumValue="1" ControlToValidate="txtStock">*</asp:RangeValidator>
                            </td>
                        </tr>

                        <tr>
                            <td><asp:Label ID="Label4" runat="server" Text="Price "></asp:Label></td>
                            <td>:&nbsp; </td>
                            <td><asp:TextBox ID="txtPrice" runat="server" Text='<%# Bind("Price")%>'></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td><asp:Label ID="Label5" runat="server" Text="ImageUrl "></asp:Label></td>
                            <td>: </td>
                            <td><asp:TextBox ID="txtImageUrl" runat="server" Text='<%# Bind("ImageUrl")%>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This space must not be empty." CssClass="error" ControlToValidate="txtImageUrl">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td><asp:Label ID="Label6" runat="server" Text="Category "></asp:Label></td>
                            <td>: </td>
                            <td><asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryId" DataValueField="CategoryId">
                                </asp:DropDownList>
                                &nbsp;</td>
                        </tr>

                    </table>

                    <br />

                    <asp:Button ID="Button1" runat="server" Text="Create"
                        CommandName="Insert" />

                    <asp:Button ID="Button2" runat="server" Text="Cancel"
                        CommandName="Cancel" />

                </InsertItemTemplate>
            </asp:FormView>
            <br />
 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CategoryId] FROM [Category]"></asp:SqlDataSource>
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="error" />
            <br />
        </div>
    </form>
</body>
</html>

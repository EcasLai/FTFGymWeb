<%@ Page Title="Add Product | ADMIN" Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="GymWeb.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Add New Product
            <br />
            <br />
            <asp:FormView runat="server" DefaultMode="Insert" InsertMethod="Unnamed_InsertItem" ItemType="GymWeb.Models.Product" DataKeyNames="ProductId" >
                <InsertItemTemplate>
                    <table style="width: 100%; margin-top: 0px;">
                        <tr>
                            <td><asp:Label ID="Label1" runat="server" Text="Name "></asp:Label></td>
                            <td>: </td>
                            <td><asp:TextBox ID="txtTitle" runat="server" Text='<%# Bind("Name")%>'></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td><asp:Label ID="Label2" runat="server" Text="Description "></asp:Label></td>
                            <td>: </td>
                            <td><asp:TextBox ID="txAuthor" runat="server" Text='<%# Bind("Description")%>'></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td><asp:Label ID="Label3" runat="server" Text="Stock "></asp:Label></td>
                            <td>: </td>
                            <td><asp:TextBox ID="txtPrice" runat="server" Text='<%# Bind("Stock")%>'></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td><asp:Label ID="Label4" runat="server" Text="Price "></asp:Label></td>
                            <td>:&nbsp; </td>
                            <td><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Price")%>'></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td><asp:Label ID="Label5" runat="server" Text="ImageUrl "></asp:Label></td>
                            <td>: </td>
                            <td><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ImageUrl")%>'></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td><asp:Label ID="Label6" runat="server" Text="Category Id "></asp:Label></td>
                            <td>: </td>
                            <td><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryId" DataValueField="CategoryId"></asp:DropDownList></td>
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
        </div>
    </form>
</body>
</html>

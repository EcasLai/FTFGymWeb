<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="GymWeb.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Order Page<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="OrderId" HeaderText="OrderId" InsertVisible="False" ReadOnly="True" SortExpression="OrderId" />
                    <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" SortExpression="CustomerId" />
                    <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                    <asp:BoundField DataField="RequiredDate" HeaderText="RequiredDate" SortExpression="RequiredDate" />
                    <asp:BoundField DataField="ShippedDAte" HeaderText="ShippedDAte" SortExpression="ShippedDAte" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Order] WHERE [OrderId] = @OrderId" InsertCommand="INSERT INTO [Order] ([CustomerId], [OrderDate], [RequiredDate], [ShippedDAte], [Status], [Comments]) VALUES (@CustomerId, @OrderDate, @RequiredDate, @ShippedDAte, @Status, @Comments)" SelectCommand="SELECT * FROM [Order]" UpdateCommand="UPDATE [Order] SET [CustomerId] = @CustomerId, [OrderDate] = @OrderDate, [RequiredDate] = @RequiredDate, [ShippedDAte] = @ShippedDAte, [Status] = @Status, [Comments] = @Comments WHERE [OrderId] = @OrderId">
                <DeleteParameters>
                    <asp:Parameter Name="OrderId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerId" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="OrderDate" />
                    <asp:Parameter DbType="Date" Name="RequiredDate" />
                    <asp:Parameter DbType="Date" Name="ShippedDAte" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="Comments" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerId" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="OrderDate" />
                    <asp:Parameter DbType="Date" Name="RequiredDate" />
                    <asp:Parameter DbType="Date" Name="ShippedDAte" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="Comments" Type="String" />
                    <asp:Parameter Name="OrderId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>

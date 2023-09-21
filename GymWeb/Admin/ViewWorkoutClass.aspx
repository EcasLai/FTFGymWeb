<%@ Page Title="ADMIN | FTF Gym Web" Language="C#" MasterPageFile="~/Admin/AdminHome.Master" CodeBehind="ViewWorkoutClass.aspx.cs" Inherits="GymWeb.Admin.ViewWorkoutClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/adminWorkoutClass.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
        <div>
            <div class="container">
                <asp:Label ID="Label9" class="header" runat="server" Text="Workout Class List"></asp:Label>
                <br />
                <br />
                <asp:HyperLink ID="hyperlinkBackAdd" runat="server" Font-Bold="False" Font-Size="1.1em" NavigateUrl="~/Admin/AddWorkoutClass.aspx">&lt; Back to Add Workout Class Page</asp:HyperLink>
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" Text="Search/Filter" Font-Bold="True" Font-Size="1.2em"></asp:Label>
                <br />
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style10">Title</td>
                        <td>
                            <asp:DropDownList ID="srchTitle" CssClass="searchBar" runat="server" AutoPostBack="True">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Cardio Blast</asp:ListItem>
                                <asp:ListItem>Hiit Fusion</asp:ListItem>
                                <asp:ListItem>Pilates Core</asp:ListItem>
                                <asp:ListItem>Crossfit Intensity</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">CurrentEnroll</td>
                        <td>
                            <asp:TextBox ID="srchCurEnroll" CssClass="searchBar" runat="server" AutoPostBack="True"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:GridView ID="GridViewWorkoutClass" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ClassId" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="100%" margin="auto">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="ClassId" HeaderText="ClassId" ReadOnly="True" SortExpression="ClassId" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Capacity" HeaderText="Capacity" SortExpression="Capacity" />
                        <asp:BoundField DataField="CurEnroll" HeaderText="CurEnroll" SortExpression="CurEnroll" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />

                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <br />
                <br />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [WorkoutClass] WHERE [ClassId] = @ClassId" InsertCommand="INSERT INTO [WorkoutClass] ([ClassId], [Title], [Description], [Capacity], [CurEnroll], [Time], [Date], [Price]) VALUES (@ClassId, @Title, @Description, @Capacity, @CurEnroll, @Time, @Date, @Price)" 
                    SelectCommand="SELECT * FROM [WorkoutClass]" UpdateCommand="UPDATE [WorkoutClass] SET [Title] = @Title, [Description] = @Description, [Capacity] = @Capacity, [CurEnroll] = @CurEnroll, [Time] = @Time, [Date] = @Date, [Price] = @Price WHERE [ClassId] = @ClassId"
                    FilterExpression="[Title] like '{0}%' and CONVERT([CurEnroll], 'System.String') like '{1}%'">
                    <FilterParameters>
                        <asp:ControlParameter ControlID="srchTitle" Name="Title" 
                        PropertyName="Text" Type="String" ConvertEmptyStringToNull="false"
                            />
                        <asp:ControlParameter ControlID="srchCurEnroll" Name="CurEnroll" 
                        PropertyName="Text" Type = "String" ConvertEmptyStringToNull="false"
                            />
                    </FilterParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="ClassId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ClassId" Type="Int32" />
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Capacity" Type="Int32" />
                        <asp:Parameter Name="CurEnroll" Type="Int32" />
                        <asp:Parameter DbType="Time" Name="Time" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Capacity" Type="Int32" />
                        <asp:Parameter Name="CurEnroll" Type="Int32" />
                        <asp:Parameter DbType="Time" Name="Time" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="ClassId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
</asp:Content>

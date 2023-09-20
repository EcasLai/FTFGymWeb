<%@ Page Title="ADMIN | FTF Gym Web" Language="C#" AutoEventWireup="true" CodeBehind="AddWorkoutClass.aspx.cs" Inherits="GymWeb.Admin.AddWorkoutClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 450px;
        }
        .auto-style3 {
            height: 23px;
            width: 100px;
        }
        .auto-style4 {
            height: 23px;
            width: 10px;
        }
        .auto-style5 {
            height: 23px;
            width: auto;
        }
        .auto-style6 {
            width: 150px;
            height: 23px;
        }
        .auto-style7 {
            width: 40%;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            height: 24px;
            width: 100px;
        }
        .auto-style10 {
            height: 24px;
            width: 10px;
        }
        .auto-style11 {
            height: 24px;
            width: auto;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />

            <table class="auto-style1">
                <tr>
                    <td class="auto-style6" colspan="3">Add New workout class</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label3" runat="server" Text="Title"></asp:Label>
                    </td>
                    <td class="auto-style10">:</td>
                    <td class="auto-style11">
                        <asp:DropDownList ID="ddlTitle" runat="server" Width="125px">
                            <asp:ListItem>Cardio Blast</asp:ListItem>
                            <asp:ListItem>Hiit Fusion</asp:ListItem>
                            <asp:ListItem>Pilates Core</asp:ListItem>
                            <asp:ListItem>Crossfit Intensity</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="ReqFieldTitle" runat="server" ControlToValidate="ddlTitle" Display="Dynamic" ErrorMessage="Title Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label8" runat="server" Text="Description"></asp:Label>
                    </td>
                    <td class="auto-style4">:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Height="62px" Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqFieldDescription" runat="server" ControlToValidate="txtDescription" Display="Dynamic" ErrorMessage="Description Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Capacity"></asp:Label>
                    </td>
                    <td class="auto-style4">:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddlCapacity" runat="server" OnSelectedIndexChanged="ddlCapacity_SelectedIndexChanged" Width="125px">
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>40</asp:ListItem>
                            <asp:ListItem>50</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="ReqFieldCapacity" runat="server" ControlToValidate="ddlCapacity" Display="Dynamic" ErrorMessage="Capacity Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td class="auto-style4">:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqFieldDate" runat="server" ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="Date Required"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeFieldDate" runat="server" ControlToValidate="txtDate" ErrorMessage="Date after today only" MinimumValue='<%# DateTime.Now.AddDays(1).ToString("yyyy-MM-dd") %>' MaximumValue='<%# DateTime.Now.AddMonths(3).ToString("yyyy-MM-dd") %>' Display="Dynamic"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label6" runat="server" Text="Time"></asp:Label>
                    </td>
                    <td class="auto-style4">:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtTime" runat="server" TextMode="Time"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqFieldTime" runat="server" ControlToValidate="txtTime" Display="Dynamic" ErrorMessage="Time Required"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeFieldTime" runat="server" ControlToValidate="txtTime" Display="Dynamic" ErrorMessage="08.00AM to 10.00PM only" MinimumValue='08:00' MaximumValue='22:00'></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td class="auto-style4">:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqFieldPrice" runat="server" ControlToValidate="txtPrice" Display="Dynamic" ErrorMessage="Price Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularFieldPrice" runat="server" ControlToValidate="txtPrice" ErrorMessage="Enter Valid Price (999999.99)" ValidationExpression="^\d{0,6}(\.\d{1,2})?$" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
                        <asp:Button ID="btnSubmitAdd" runat="server" onclick="InsertClassTitle" Text="Submit"/>
                        <asp:Button ID="btnSubmitClear" runat="server" Text="Clear" OnClick="BtnSubmitClear_Click" CausesValidation="False" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <br />
            <asp:Label ID="lbltest" runat="server" Text="[test output]"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Workout Class List"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Search/Filter"></asp:Label>
            <br />
            <table class="auto-style7">
                <tr>
                    <td class="auto-style3">Title</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="srchTitle" runat="server" Width="125px" AutoPostBack="True">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Cardio Blast</asp:ListItem>
                            <asp:ListItem>Hiit Fusion</asp:ListItem>
                            <asp:ListItem>Pilates Core</asp:ListItem>
                            <asp:ListItem>Crossfit Intensity</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">CurrentEnroll</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="srchCurEnroll" runat="server" AutoPostBack="True"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="GridViewWorkoutClass" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ClassId" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="ClassId" HeaderText="ClassId" ReadOnly="True" SortExpression="ClassId" InsertVisible="False" />
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
    </form>
</body>
</html>


<%@ Page Title="ADMIN | FTF Gym Web" Language="C#" AutoEventWireup="true" CodeBehind="AddWorkoutClass.aspx.cs" Inherits="GymWeb.Admin.AddWorkoutClass" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .tdclass {
            padding: 1.5em;
            margin: auto;
            width: 80%;
            border-collapse:separate; 
            border-spacing: 0 1em;
            background-color: #fafafa;
            filter: opacity(90%);
        }
        .labeltable{
            font-weight: bold;
            font-size: 1.2em;
        }
        .textBoxCol{
            width: 70%;
        }
        .textBoxColFront {
            width: 25%;
        }
        .textBoxColMid {
            font-weight: bold;
            width: 5%;
        }
        .container{
            padding: 1.5em;
            margin: auto;
            width: 95%;
            background-color: #F3F3F3;
            filter: opacity(90%);
        }
        .header {
            width: 200px;
            height: 23px;
            font-size: 1.8em;
            font-weight: bolder;
        }

        .submitClearBtn{
            float: right;
            border: none;
            display: inline-block;
            font-size: 16px;
            padding: 1em 2em;
            margin: 0.5em 0.25em;
            background-color: gold;
            cursor: pointer;
        }
        .searchBar{
            width: 100%;
        }

        .submitClearBtn:hover{
            filter: brightness(60%);
            transition: 0.8s;
        }

        .auto-style7 {
            width: 50%;
        }

        .textbox, .dropdownList{
            width: 100%;
            height: 32px;
        }

        .auto-style9 {
            height: 76px;
        }

        .auto-style10 {
            width: 30%
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
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
                        </td>
                    </tr>
                </table>
            </div>
                       
            <br />

            <div class="container">
                <asp:Label ID="Label9" class="header" runat="server" Text="Workout Class List"></asp:Label>
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
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="ClassId" HeaderText="ClassId" ReadOnly="True" SortExpression="ClassId" InsertVisible="False" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Capacity" HeaderText="Capacity" SortExpression="Capacity" />
                        <asp:BoundField DataField="CurEnroll" HeaderText="CurEnroll" SortExpression="CurEnroll" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:CommandField ShowDeleteButton="True" />
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
            
        </div>
    </form>
</body>
</html>




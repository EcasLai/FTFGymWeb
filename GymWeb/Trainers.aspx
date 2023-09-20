<%@ Page Title="Trainers | ADMIN" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="Trainers.aspx.cs" Inherits="GymWeb.Trainers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .trainers{
            position:relative;
            margin-top: 100px;
            margin-bottom: 100px;
            margin-left: 100px;
            margin-right: 100px;
            font-size:larger;
        }

        .trainers Columns{
            margin-top: 100px;
            margin-bottom: 100px;
            margin-left: 100px;
            margin-right: 100px;
        }
        
        .trainers-grid {
            border-collapse: collapse;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
            border: none;
            margin: auto;
        }

        .trainers-grid, tr, td, th {
            padding: 10px;
            margin: auto;
            border: none;

        }

        .trainers-grid tbody tr {
            border-bottom: 1px solid #dddddd;
        }

        .trainers-grid tbody tr th {
            background-color: #e2cc4e;
            color: #f3f3f3;
        }

        .trainers-grid th,
        .trainers-grid td {
            padding: 1rem 0.8rem;
        }

        /* Even row */
        .trainers-grid tbody tr:nth-of-type(even) {
            background-color: #f3f3f3;
        }

        .trainers-grid tbody tr:last-of-type {
            border-bottom: 2px solid #e2cc4e !important;
        }

        .trainers-grid td a:first-child {
            text-decoration: none;
            color: #e2cc4e;
            margin-right: 0.2rem;
        }

        .trainers-grid td a:last-child {
            text-decoration: none;
            color: #c30032;
        }


        /*.trainers-grid tbody tr:first-child th:first-child {
            border: 1px solid black;
            border-radius: 0.5rem 0 0 0;
        }

        .trainers-grid tbody tr:first-child th:last-child {*/
            /* Right Top Corner */
            /*border: 1px solid black;
            border-radius: 0 0.5rem 0 0;
        }

        .trainers-grid tbody tr:last-child td:first-child {*/
            /* Left Bottom Corner */
            /*border: 1px solid black;
            border-radius: 0 0 0 0.5rem !important;
        }

        .trainers-grid tbody tr:last-child td:last-child {*/
            /* Right Bottom Corner */
            /*border: 1px solid black;
            border-radius: 0 0 0.5rem 0 !important;
        }*/





/*

    .sidenav {
      width: 160px;
      position: fixed;
      top: 75px;
      left: 0;
      background-color: #EEEEEE;
      overflow-x: hidden;
      padding-top: 20px;
    }

    .sidenav a {
      padding: 10px 20px 10px 20px;
      text-decoration: none;
      font-size: 25px;
      color: #818181;
      display: block;
    }

    .sidenav a:hover {
      color: #000000;
    }

    .trainerBoard{
        display: flex;
        flex-direction: row;
        padding-right: 25px;
    }

    .board{
        width: 100%;
        padding: 0px 10px;
        background: #fff;
        overflow: auto;
        border-radius: 8px;
        margin-left: 160px;
    }

    .board img{
        width: 70px;
        height: 70px;
        object-fit: cover;
        border-radius: 50%;
        margin-right: 15px;
    }

    .board h5{
        font-weight: 600;
        font-size: 14px;
    }

    .board p{
        font-weight: 400;
        font-size: 13px;
        color: #787d8d;
    }

    .board .people{
        display: flex;
        flex-direction: row;
        justify-content:flex-start;
        align-items: center;
        text-align: start;
    }

    tabel{
        border-collapse:collapse;
    }

    tr{
        border-bottom: 1px solid #eef0f3;
    }

    thead td{
        font-size: 14px;
        text-transform: uppercase;
        font-weight: 400;
        background: #F9FAFB;
        text-align: start;
        padding: 15px;
    }

    tbody tr td{
        padding: 10px 15px;
    }

    .active p{
        background: #d7fada;
        padding: 2px 10px;
        display: inline-block;
        border-radius: 40px;
        color: #2b2b2b;
    }

    .edit a{
        text-decoration: none;
        font-size: 14px;
        color: #554cd1;
        font-weight: 600;
    }

    .delete a{
        text-decoration: none;
        font-size: 14px;
        color: #ff0000;
        font-weight: 600;
    }

     .addButton {
        display: block;
        width: 25vw;
        outline:none;
        border:none;
        text-decoration: none;
     }

     .addButton  {
         margin-left: 520px;
         margin-right:520px;
         margin-top: 70px;
         margin-bottom: 70px;
         padding: 0.8rem 1.8rem;
     }

     .add-button {
         margin: 0 1rem;
         padding: 0.8rem 1.5rem;
         border-radius: 0.3rem;
         font-size: 1rem;
         font-weight: 600;
         cursor: pointer;
         transition: all 0.3s ease-in-out;
     }

     .add-button:hover {
         transform: translateY(2px);
     }*/
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%---------------------------Trainer Dashboard Page---------------------------%>

<%--    <div class="sidenav">
      <a href="#product">Products</a>
      <a href="#classes">Classes</a>
      <a href="#trainers">Trainers</a>
      <a href="#orders">Orders</a>
    </div>--%>

<div class="trainers">
    <asp:GridView ID="gridTrainers" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="ID" CssClass="trainers-grid" AllowPaging="True" OnSelectedIndexChanged="gridTrainers_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
            <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone Number" HeaderText="Phone Number" SortExpression="Phone Number" ReadOnly="True" />
            <asp:BoundField DataField="Joined Date" HeaderText="Joined Date" SortExpression="Joined Date" />
            <asp:ImageField DataImageUrlField="Image">
            </asp:ImageField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>

    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Trainer.TrainerId as ID, Trainer.First_Name as &quot;First Name&quot;, Trainer.Last_Name as &quot;Last Name&quot;, Trainer.Email, Trainer.Country_Calling_Code + Trainer.Phone_Number as &quot;Phone Number&quot;, Trainer.Joined_Date as &quot;Joined Date&quot;, Trainer.Image_Name as Image FROM [Trainer]" DeleteCommand="DELETE FROM [Trainer] WHERE [TrainerId] = @TrainerId" InsertCommand="INSERT INTO [Trainer] ([First_Name], [Last_Name], [Email], [Country_Calling_Code], [Phone_Number], [Joined_Date]) VALUES (@First_Name, @Last_Name, @Email, @Country_Calling_Code, @Phone_Number, @Joined_Date)" UpdateCommand="UPDATE [Trainer] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Email] = @Email, [Country_Calling_Code] = @Country_Calling_Code, [Phone_Number] = @Phone_Number, [Joined_Date] = @Joined_Date WHERE [TrainerId] = @TrainerId">
        <DeleteParameters>
            <asp:Parameter Name="TrainerId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Country_Calling_Code" Type="String" />
            <asp:Parameter Name="Phone_Number" Type="String" />
            <asp:Parameter Name="Joined_Date" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Country_Calling_Code" Type="String" />
            <asp:Parameter Name="Phone_Number" Type="String" />
            <asp:Parameter Name="Joined_Date" Type="String" />
            <asp:Parameter Name="TrainerId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>

<%--    <section class="trainerBoard">
        <dir class="board">
            <table width="100%">
                <thead>
                    <tr>
                        <td>Name</td>
                        <td>Phone Number</td>
                        <td>Status</td>
                        <td>Joined Date</td>
                        <td></td>
                        <td></td>
                    </tr>
                </thead>--%>

                <%--<tbody>
                    <tr>--%>
                  <%---------------------------Trainer 1 Data---------------------------%>
                        <%--<td class="people">
                            <asp:Image runat="server" ImageUrl="Img/Trainer/Trainer1.jpg" ></asp:Image>
                            <div class="people-de">
                                <h5>Gordon Cena</h5>
                                <p>johnC@ftf.com</p>
                            </div>
                        </td>

                        <td class="phoneTrainer">
                            <h5>+60135987468</h5>
                        </td>

                        <td class="active"><p>Active</p></td>

                        <td class="joinedDate">
                            <p>2-4-2018</p>
                        </td>

                        <td class="edit"><a href="#">Edit</a></td>
                        <td class="delete"><a href="#">Delete</a></td>
                </tr>--%>

                  <%---------------------------Trainer 2 Data---------------------------%>
                   <%-- <tr>
                        <td class="people">
                            <asp:Image runat="server" ImageUrl="Img/Trainer/Trainer2.jpg" ></asp:Image>
                            <div class="people-de">
                                <h5>Noah Alexander</h5>
                                <p>noahA@ftf.com</p>
                            </div>
                        </td>

                        <td class="phoneTrainer">
                            <h5>+60123456789</h5>
                        </td>

                        <td class="active"><p>Active</p></td>

                       <td class="joinedDate">
                            <p>17-3-2019</p>
                        </td>

                        <td class="edit"><a href="#">Edit</a></td>
                        <td class="delete"><a href="#">Delete</a></td>
                  </tr> --%>

                  <%---------------------------Trainer 3 Data---------------------------%>
                    <%--<tr>
                        <td class="people">
                            <asp:Image runat="server" ImageUrl="Img/Trainer/Trainer3.png" ></asp:Image>
                            <div class="people-de">
                                <h5>Cyrus Timon</h5>
                                <p>cyrusT@ftf.com</p>
                            </div>
                        </td>

                        <td class="phoneTrainer">
                            <h5>+60198761352</h5>
                        </td>

                        <td class="active"><p>Active</p></td>

                       <td class="joinedDate">
                            <p>25-12-2020</p>
                        </td>

                        <td class="edit"><a href="#">Edit</a></td>
                        <td class="delete"><a href="#">Delete</a></td>
                    </tr>--%>

                  <%---------------------------Trainer 4 Data---------------------------%>
                    <%--<tr>
                        <td class="people">
                            <asp:Image runat="server" ImageUrl="Img/Trainer/Trainer4.jpg" ></asp:Image>
                            <div class="people-de">
                                <h5>Alice Elias</h5>
                                <p>aliceE@ftf.com</p>
                            </div>
                        </td>

                        <td class="phoneTrainer">
                            <h5>+60183229766</h5>
                        </td>

                        <td class="active"><p>Active</p></td>

                        <td class="joinedDate">
                            <p>19-11-2022</p>
                        </td>

                        <td class="edit"><a href="#">Edit</a></td>
                        <td class="delete"><a href="#">Delete</a></td>
                    </tr>--%>

                  <%---------------------------Trainer 5 Data---------------------------%>
                    <%--<tr>
                        <td class="people">
                            <asp:Image runat="server" ImageUrl="Img/Trainer/Trainer5.jpg" ></asp:Image>
                            <div class="people-de">
                                <h5>Jackson Zack</h5>
                                <p>kacksonZ@ftf.com</p>
                            </div>
                        </td>

                        <td class="phoneTrainer">
                            <h5>+60184886327</h5>
                        </td>

                        <td class="active"><p>Active</p></td>

                        <td class="joinedDate">
                            <p>7-9-2023</p>
                        </td>

                        <td class="edit"><a href="#">Edit</a></td>
                        <td class="delete"><a href="#">Delete</a></td>

                    </tr>
                </tbody>
            </table>
                    <div class="addButton">
                        
                        <button class="add-button"><a href="AddTrainer.aspx">Add Trainer</a></button>
                        
                    </div>
        </dir>
    </section>--%>
</asp:Content>
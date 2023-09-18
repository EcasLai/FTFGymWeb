<%@ Page Title="FTFGym" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="GymWeb.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
/*
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }*/

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
     }

     .addButton  {
         margin-left: 520px;
         margin-right:520px;
         margin-top: 70px;
         margin-bottom: 70px;
         padding: 0.8rem 1.8rem;
/*       display: inline;
*/ 
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
     }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%---------------------------Trainer Dashboard Page---------------------------%>

    <div class="sidenav">
      <a href="#product">Products</a>
      <a href="#classes">Classes</a>
      <a href="#trainers">Trainers</a>
      <a href="#orders">Orders</a>
    </div>

    <section class="trainerBoard">
        <dir class="board">
            <table width="100%">
                <thead>
                    <tr>
                        <td>Name</td>
                        <td>Title</td>
                        <td>Status</td>
                        <td>Joined Date</td>
                        <td></td>
                        <td></td>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                  <%---------------------------Trainer 1 Data---------------------------%>
                        <td class="people">
                            <asp:Image runat="server" ImageUrl="Img/Trainer/Trainer1.jpg" ></asp:Image>
                            <div class="people-de">
                                <h5>Gordon Cena</h5>
                                <p>johnC@ftf.com</p>
                            </div>
                        </td>

                        <td class="people-des">
                            <h5>Body Building and Powerlifting</h5>
                        </td>

                        <td class="active"><p>Active</p></td>

                        <td class="joinedDate">
                            <p>2-4-2018</p>
                        </td>

                        <td class="edit"><a href="#">Edit</a></td>
                        <td class="delete"><a href="#">Delete</a></td>
                </tr>

                  <%---------------------------Trainer 2 Data---------------------------%>
                    <tr>
                        <td class="people">
                            <asp:Image runat="server" ImageUrl="Img/Trainer/Trainer2.jpg" ></asp:Image>
                            <div class="people-de">
                                <h5>Noah Alexander</h5>
                                <p>noahA@ftf.com</p>
                            </div>
                        </td>

                        <td class="people-des">
                            <h5>Cardio Training</h5>
                        </td>

                        <td class="active"><p>Active</p></td>

                       <td class="joinedDate">
                            <p>17-3-2019</p>
                        </td>

                        <td class="edit"><a href="#">Edit</a></td>
                        <td class="delete"><a href="#">Delete</a></td>
                  </tr> 

                  <%---------------------------Trainer 3 Data---------------------------%>
                    <tr>
                        <td class="people">
                            <asp:Image runat="server" ImageUrl="Img/Trainer/Trainer3.png" ></asp:Image>
                            <div class="people-de">
                                <h5>Cyrus Timon</h5>
                                <p>cyrusT@ftf.com</p>
                            </div>
                        </td>

                        <td class="people-des">
                            <h5>Strength Training</h5>
                        </td>

                        <td class="active"><p>Active</p></td>

                       <td class="joinedDate">
                            <p>25-12-2020</p>
                        </td>

                        <td class="edit"><a href="#">Edit</a></td>
                        <td class="delete"><a href="#">Delete</a></td>
                    </tr>

                  <%---------------------------Trainer 4 Data---------------------------%>
                    <tr>
                        <td class="people">
                            <asp:Image runat="server" ImageUrl="Img/Trainer/Trainer4.jpg" ></asp:Image>
                            <div class="people-de">
                                <h5>Alice Elias</h5>
                                <p>aliceE@ftf.com</p>
                            </div>
                        </td>

                        <td class="people-des">
                            <h5>Lifestyle Coach</h5>
                        </td>

                        <td class="active"><p>Active</p></td>

                        <td class="joinedDate">
                            <p>19-11-2022</p>
                        </td>

                        <td class="edit"><a href="#">Edit</a></td>
                        <td class="delete"><a href="#">Delete</a></td>
                    </tr>

                  <%---------------------------Trainer 5 Data---------------------------%>
                    <tr>
                        <td class="people">
                            <asp:Image runat="server" ImageUrl="Img/Trainer/Trainer5.jpg" ></asp:Image>
                            <div class="people-de">
                                <h5>Jackson Zack</h5>
                                <p>kacksonZ@ftf.com</p>
                            </div>
                        </td>

                        <td class="people-des">
                            <h5>Sports Coach</h5>
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
                        
                        <button class="add-button">Add Trainer</button>
                        
                    </div>
        </dir>
    </section>

</asp:Content>
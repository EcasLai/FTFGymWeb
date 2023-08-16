<%@ Page Title="FTFGym" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="GymWeb.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .homepage_image video{
        /* Add the blur effect */
            /*filter: blur(8px);
            -webkit-filter: blur(8px);*/
            width: 100vw;
            max-width: 100%;
        }

        .homepage_image{
           position: relative;
        }

        .homepage_text{
          position: absolute;
          text-align: center;
          color: white;
          font-size: 35px;
          top: 40%;
          left: 50%;
          transform: translate(-50%, -50%);
        }
        
        .button {
          font-size: 20px;
          font-weight: bold;
          padding-left: 30px;
          padding-right: 30px;
          border-radius: 3px;
          color: #fff;
          background-color: #43AAE0;
          border-color: #43AAE0;
          display: inline-block;
          margin-bottom: 0;
          text-align: center;
          vertical-align: middle;
          touch-action: manipulation;
          cursor: pointer;
          background-image: none;
          border: 1px solid transparent;
          white-space: nowrap;
          padding: 3px 12px;
          line-height: 1.73;
          user-select: none;
          text-decoration: none;
        }

        .button:hover{
          border: 1px solid #43AAE0;
          color: black;
          background-color: #43AAE0;
        }

        .fitness_content{
          background-color: rgba(248, 248, 248, 1);
          text-align: left;
          display: flex;
          flex-direction: row;
        }

        .fitness_content h1{
          font-size: 45px;
          margin-left: 30px;
        }

        .fitness_content h2{
          font-size: 30px;
          margin-left: 30px;
        }

        .fitness_content p{
          text-align: justify;
          margin-left: 30px;
          margin-right: 30px;
          line-height:1.8;
        }

        .trainer_image{
          width: 480px;
          display: flex;
          flex-direction: column;
          justify-content: flex-start;
          margin-top: 5vw;
          margin-right: 5vw;
        }
        
        .equipment{
          background-color: rgba(248, 248, 248, 1);
          position: relative;
          text-align: right;
          display: flex;
          flex-direction: column;
          margin-top: 3vw;
        }

       .equipment img{
         width: 50vw;
         display: flex;
         flex-direction: row;
         justify-content: flex-start;        
       }

       .equipment_layout{
         position: absolute;
         text-align: center;
         left: 56%;
         bottom: 33%;
         font-weight: bold;
         font-size: 2.0em;
       }

        .button_equipment {
          font-size: 20px;
          font-weight: bold;
          padding-left: 30px;
          padding-right: 30px;
          border-radius: 3px;
          color: black;
          background-color: transparent;
          border-color: red;
          display: inline-block;
          margin-bottom: 0;
          text-align: right;
          vertical-align: middle;
          touch-action: manipulation;
          cursor: pointer;
          background-image: none;
          border: 1px solid black;
          white-space: nowrap;
          padding: 3px 12px;
          line-height: 1.73;
          user-select: none;
          text-decoration: none;
        }

        .button_equipment:hover{
          border: 1px solid black;
          color: white;
          background-color: black;
        }

/*       .category img{
          position: center;
          border-radius: 15px;
          margin-top: 1vw;
          margin-left: 3vw;
          margin-right: 3vw;
          float: left;
          width: 18.8%;
          padding: 5px;
          box-sizing: border-box;
       }*/

       .category img{
           width: 300px;
           height:200px;
           margin-left: 2.5vw;
           margin-right: 2.5vw;
           border-radius: 15px;
       }
/*
       .category_layout::after{
         content: "";
         clear: both;
         display: flex;
         flex-direction:column;
       }*/

       .category_layout{
         width: 900px;
         height: 400px;
         margin-top: 30px;
         display: flex;
       }

       .category h1{
         margin-top: 8vw;
         margin-left: 3vw;
         font-weight: bold;
         font-size: 3.0em;
       }

       .category_name h3{
         width: 200px;
         text-align: center;
         font-size: large;
         margin-left: 3vw;
         display: flex;
         flex-direction:row;
       }

        .about_us {
          background-color: rgba(248, 248, 248, 1);
          text-align: left;
          display: flex;
          flex-direction: row;
        }

        .about_content1 h1{
          position: relative;
          font-size: 3.0em;
          margin-left: 30px;
          text-align:center;
          left: 28%;
        }

        .about_content1 h2 {
          font-size: 30px;
          margin-left: 30px;
        }

        .about_content1 p{
          text-align: justify;
          margin-left: 3vw;
          margin-right: 3vw;
          line-height:1.8;
        }

        .gym_room{
          position: relative;
          width: 400px;
          display: flex;
          flex-direction: column;
          justify-content: flex-start;
          margin-right: 3vw;
          padding-top: 10vw;
          padding-bottom: 3vw;
        }

        .about_us2 {
          background-color: rgba(248, 248, 248, 1);
          text-align: left;
          display: flex;
          flex-direction: row;
        }

        .about_content2 h2 {
          font-size: 30px;
          margin-left: 30px;
          margin-top: 3vw;
        }

        .about_content2 p{
          text-align: justify;
          margin-left: 30px;
          margin-right: 30px;
          line-height:1.8;
        }

        .manufacturing{
          position: relative;
          width: 400px;
          display: flex;
          flex-direction: column;
          justify-content: flex-start;
          margin-left: 3vw;
          padding-top: 3vw;
          padding-bottom: 3vw;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-----------------Home Page Cover Photo-----------------%>
    <section class ="homepage_image">
        <%--<asp:Image runat="server" ImageUrl="Img/HomePage/HomePage.jpg" ></asp:Image>--%>
        <video src="@Url.Content(Img/Homepage/homepage_video.mp4)" autoplay muted />
         <%-- <source src="@Url.Content(Img/Homepage/homepage_video.mp4)" type="video/mp4" >
          <source src="~/Img/Homepage/homepage_video.ogg" type="video/ogg">
        </video>--%>
        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
   
        <%--<div class="homepage_text">
            <h1>Stronger With Every Sweat Drop</h1>
            <a href="ClassList.aspx" class="button">DISCOVER MORE</a>
        </div>--%>
    </section>

<%---------------------------Fitness Class Content---------------------------%>
    <section class="fitness_content">
            <div class="content_fitness">
            <h1>Fitness Classes</h1>
            <h2>Build Muscle, Lose Weight & Feel Great</h2>
            <p>Looking to improve your overall health? Make sure strength training is a part of your health and fitness routine. 
            Strength training offers many benefits and is often a fundamental component of exercise programs. 
            FTF Gym® offers strength training classes that will work one or more muscle groups to help you build muscle, 
            lose weight, and increase strength. Weight training is a type of exercise using either equipment or bodyweight to 
            build muscle mass. Often referred to as resistance training or weight training, strength training is one of our most 
            popular classes, as it offers benefits for just about everyone, regardless of their fitness goals.
            </p>
        </div>
            <div class ="trainer_image">
                <asp:Image runat="server" ImageUrl="Img/HomePage/trainer.jpg" ></asp:Image>
            </div>
     </section>

<%---------------------------Browse Product Page---------------------------%>
    <section class="equipment">
        <asp:Image runat="server" ImageUrl="Img/HomePage/running.jpg" ></asp:Image>
        <div class="equipment_layout">
            <h1>POWER UP YOUR WORKOUTS</h1>
            <a href="https://www.ganas.com.cn/products" class="button_equipment">EMPOWER YOUR WORKOUT</a>

        </div>
    </section>

<%--<%--<%--<%--<%---------------------------Categories Section---------------------------%>
    <section class="category">
        <div class="category_title">
            <h1>Categories</h1>
        </div>

        <div class="category_layout">
            <div class="treadmills">
                <a href="https://www.technogym.com/my/products/shopby/product_type-treadmills.html">
                    <asp:Image runat="server" ImageUrl="Img/HomePage/treadmills.jpg" ></asp:Image>
                </a>

            <div class="category_name">
                <h3>Treadmills</h3>
            </div>
            </div>

            <div class="bikes">
                <a href="https://www.technogym.com/my/products/shopby/product_type-exercise_bikes.html">
                    <asp:Image runat="server" ImageUrl="Img/HomePage/bikes.jpg" ></asp:Image>
                </a>
            <div class="category_name">
                <h3>Bikes</h3>
            </div>
            </div>

            <div class="multistations">
                <a href="https://www.technogym.com/my/products/shopby/product_type-multigyms.html">
                    <asp:Image runat="server" ImageUrl="Img/HomePage/multistation.jpg" ></asp:Image>
                </a>
                
            <div class="category_name">
                <h3>Multistations</h3>
            </div>
            </div>

            <div class="accessories">
                <a href="https://www.technogym.com/my/products/shopby/product_type-exercise_tools.html">
                    <asp:Image runat="server" ImageUrl="Img/HomePage/accessories.jpg" ></asp:Image>
                </a>
                
            <div class="category_name">
                <h3>Accessories</h3>
            </div>
            </div>
        </div>
    </section>

<%---------------------------About Us 1---------------------------%>
    <section class="about_us">
       <%-- <asp:Image runat="server" ImageUrl="Img/HomePage/worldmap.png" ></asp:Image>--%>
        <div class="about_content1">
            <h1>WHY CHOOSE FTF</h1>
            <h2>We Have Full-Fledged Manufacturing Resource</h2>
            <p>With With the 7D & 24H service principle, FTF has exported to more than 100 countries since 2010, 
                and has enlarged the factory to 30,000 square meters.
            </p>
            <br />
            <p>
                Our projects truly do range from A to Z. From major commercial gyms, fitness clubs, to government 
                gym projects, to hotel gyms, to company staff gyms, to distributors and retailers who need gym equipment, 
                FTF has enjoyed a partnership relationship with all of them.
            </p>
            <br />
            <p>
                We have full-fledged manufacturing resource and professional design team. We are capable of producing full 
                set of gym equipment to meet the demand of clients at all levels with incredible speed and quality.
            </p>
        </div>

        <div class ="gym_room">
                <asp:Image runat="server" ImageUrl="Img/HomePage/gym_room.jpg" ></asp:Image>
            </div>
    </section>

<%---------------------------About Us 2---------------------------%>
    <section class="about_us2">
         <div class ="manufacturing">
                <asp:Image runat="server" ImageUrl="Img/HomePage/manufacturing.jpg" ></asp:Image>
            </div>

        <div class="about_content2">
            <h2>15 Complicated Procedures Strictly Production</h2>
            <p>FTF from the selection of materiasl there are 15 complicated procedures strictly production, 360 degrees without dead angle
                polishing, covering every line of the display cabinet, craftsmanship hand polishing excellence, even the smallest details 
                are never perfunctory.
            </p>
        </div>
    </section>
</asp:Content>

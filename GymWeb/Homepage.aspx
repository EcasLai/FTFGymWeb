<%@ Page Title="FTF Gym Web" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="GymWeb.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

/*---------------HomePage Video---------------*/
        .homepage_video video{
        /* Add the blur effect */
            /*filter: blur(8px);
            -webkit-filter: blur(8px);*/
            
            width: 100vw;
            max-width: 100%;
        }

        .homepage_video{
           position: relative;
        }

        .homepage_text{
          position: absolute;
          text-align: center;
          color: white;
          font-size: 35px;
          top: 60%;
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

/*---------------Fitness Classes---------------*/
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
/*---------------Power Up Your Workouts---------------*/        
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

/*---------------Categories---------------*/
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

/*---------------About Us---------------*/
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

        .manufacturing {
            position: relative;
            width: 400px;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            margin-left: 3vw;
            padding-top: 3vw;
            padding-bottom: 3vw;
        }

/*---------------Join Memmbership---------------*/
        .join_member img{
            width: 100vw;
            max-width: 100%;
        }

        .join_member{
           position: relative;
        }

        .membership{
          position: absolute;
          text-align: center;
          color: white;
          font-size: 35px;
          top: 40%;
          left: 35%;
          transform: translate(-50%, -50%);
        }
        
        .join_button {
          font-size: 20px;
          font-weight: bold;
          padding-left: 30px;
          padding-right: 30px;
          border-radius: 3px;
          color: #fff;
          background-color: red;
          border-color: red;
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
        
        .join_button:hover{
          border: 1px solid darkred;
          color: white;
          background-color: darkred;
        }

/*---------------Footer---------------*/
        /* Footer Left */
        footer {
          /* position: fixed; */
          bottom: 0;
          background-color: white;
          box-shadow: 0px -4px 16px rgba(34, 34, 34, 0.12);
          min-height: 16vh;
          width: 100%;
        }

        .footer-top {
          display: flex;
          justify-content: center;
          flex-wrap: wrap;
        }

        .footer-left {
          display: flex;
          justify-content: flex-start;
          align-items: flex-start;
        }

        .footer-left #newsletter-subscribe-wrapper {
          margin-top: 15px;
          padding: 10px;
          padding-left: 6vw;
          padding-right: 6vw;
          padding-bottom: 20px;
          border-right: 1px solid var(--div-grey);
          flex-grow: 1;
        }

        #newsletter-subscribe-wrapper span,
        #footer-logo {
          color: var(--theme-red);
        }

        #newsletter-subscribe-wrapper label {
          font-size: 18px;
          font-weight: bold;
        }

        #newsletter-subscribe-wrapper form {
          margin-top: 10px;
        }

        #newsletter-subscribe-wrapper form input {
          line-height: 21px;
          padding: 4px 5px;
          font-size: 14px;
          border-radius: 4px;
          border: 2px solid rgb(235, 235, 235);
          margin-right: 5px;
          width: 205.83px;
          outline: none;
        }

        #newsletter-subscribe-wrapper form input::placeholder {
          font-weight: bold;
          font-size: 14px;
        }

        #newsletter-subscribe-wrapper form button {
          line-height: 20px;
          padding: 5px 5px;
          border-radius: 4px;
          border: 2px solid rgb(235, 235, 235);
          font-weight: bold;
          cursor: pointer;
          transition: 0.2s;
        }

        #newsletter-subscribe-wrapper form button:disabled {
          pointer-events: none;
        }


        .footer-mobile-bottom {
          display: flex;
          flex: 1;
        }

        /* Footer Social Media Part */
        footer .footer-mobile-bottom .social-media-wrapper {
          height: 100%;
          display: flex;
          justify-content: center;
          align-items: center;
          margin-top: 20px;
          padding-top: 10px;
          padding-bottom: 20px;
          border-right: 1px solid var(--div-grey);
          flex-grow: 1;
        }

        .social-media-wrapper a i {
          font-size: 1.5rem;
          width: 40px;
          height: 40px;
          padding: 5px;
          margin: 10px;
          margin-top: 10px;
          text-align: center;
          line-height: 30px;
          transition: 0.2s;
        }

        footer i:hover {
          background-color: rgba(220, 220, 220, 0.5);
          box-shadow: 0px 2px 8px rgba(34, 34, 34, 0.12);
          border-radius: 50%;
          color: var(--theme-red);
          transform: translateY(-3px);
        }

        /* Footer Navigation Links */
        footer .footer-mobile-bottom .footer-nav-wrapper {
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
          padding-top: 25px;
          flex-grow: 2;
        }

        .footer-navlink-links {
          display: flex;
        }

        footer .footer-mobile-bottom .footer-nav-links h2 {
          font-weight: bold;
          font-size: 18px;
        }

        .footer-mobile-bottom .footer-navlink-links .footer-nav {
          margin: 15px;
          margin-top: 10px;
          font-size: 16px;
          font-weight: 500;
        }

        .footer-mobile-bottom .footer-navlink-links .footer-nav li a {
          color: grey;
        }

        .footer-mobile-bottom .footer-navlink-links .footer-nav li a:hover {
          color: var(--theme-red);
        }

        .footer-mobile-bottom .footer-navlink-links .footer-nav li a:active {
          color: var(--theme-red);
        }

        #copyright {
          display: block;
          text-align: center;
          font-weight: bold;
          padding: 10px;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-----------------Home Page Cover Photo-----------------%>

    <section class ="homepage_video">
        <div class="video1">
         
          <%--Video Source URL: https://www.pexels.com/video/sport-training-workout-boxer-4754038/--%>
            <video controls autoplay loop>
                <source src="Media/fitness.mp4" type="video/mp4" />
            </video>
        </div>
        
        <%--<asp:Image runat="server" ImageUrl="Img/HomePage/HomePage.jpg" ></asp:Image>
        <video controls autoplay loop>
          <source src="Img/Homepage/homepage_video.mp4" type="video/mp4" >
          <source src="~/Img/Homepage/homepage_video.ogg" type="video/ogg">
        </video>--%>
   
        <div class="homepage_text">
            <h1>Stronger With Every Sweat Drop</h1>
            <a href="ClassList.aspx" class="button">DISCOVER MORE</a>
        </div>
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

<%--        Image URL: https://lh3.googleusercontent.com/mJHkLVWNAxikTgy9QpE3RO10kCytYy2xqCZvey7Sy8AKb_kqrEqAputZGtmfyJeu7gMRnVtyk-bpOmWQw8PLUOb5KDLO-CPFZPDb68Ah--%>
            <div class ="trainer_image">
                <asp:Image runat="server" ImageUrl="Img/HomePage/trainer.jpg" ></asp:Image>
            </div>
     </section>

<%---------------------------Browse Product Page---------------------------%>
<%--    Image URL: https://olimpsport.com/media/mageplaza/blog/post/image//w/y/wyprobuj-5-najlepszych-cwiczen-cardio-na-silowni_5.jpg--%>
    <section class="equipment">
        <asp:Image runat="server" ImageUrl="Img/HomePage/running.jpg" ></asp:Image>
        <div class="equipment_layout">
            <h1>POWER UP YOUR WORKOUTS</h1>
            <a href="ProductList.aspx" class="button_equipment">EMPOWER YOUR WORKOUT</a>

        </div>
    </section>

<%--<%--<%--<%--<%---------------------------Categories Section---------------------------%>
<%--Treadmills Image URL: https://www.technogym.com/wpress/wp-content/uploads/2018/10/treadmills_03-1.jpg
    Bikes Image URL: https://www.technogym.com/wpress/wp-content/uploads/2020/11/bikes_03.jpg
    Multistation Image URL: https://www.technogym.com/wpress/wp-content/uploads/2018/10/multistation_03-2.jpg
    Accessories Image URL: https://www.technogym.com/wpress/wp-content/uploads/2020/11/tools_01.jpg--%>

    <section class="category">
        <div class="category_title">
            <h1>Categories</h1>
        </div>

        <div class="category_layout">
            <div class="treadmills">
                <a href="ProductList.aspx">
                    <asp:Image runat="server" ImageUrl="Img/HomePage/treadmills.jpg" ></asp:Image>
                </a>

            <div class="category_name">
                <h3>Treadmills</h3>
            </div>
            </div>

            <div class="bikes">
                <a href="ProductList.aspx">
                    <asp:Image runat="server" ImageUrl="Img/HomePage/bikes.jpg" ></asp:Image>
                </a>
            <div class="category_name">
                <h3>Bikes</h3>
            </div>
            </div>

            <div class="multistations">
                <a href="ProductList.aspx">
                    <asp:Image runat="server" ImageUrl="Img/HomePage/multistation.jpg" ></asp:Image>
                </a>
                
            <div class="category_name">
                <h3>Multistations</h3>
            </div>
            </div>

            <div class="accessories">
                <a href="ProductList.aspx">
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
            <h1>WHY CHOOSE FTF GYM</h1>
            <h2>We Have Full-Fledged Manufacturing Resource</h2>
            <p>With With the 7D & 24H service principle, FTF has exported to more than 100 countries since 2010, 
                and has enlarged the factory to 30,000 square meters.
            </p>
            <br />
            <p>
                Our projects truly do range from A to Z. From major commercial gyms, fitness clubs, to government 
                gym projects, to hotel gyms, to company staff gyms, to distributors and retailers who need gym equipment, 
                FTF Gym has enjoyed a partnership relationship with all of them.
            </p>
            <br />
            <p>
                We have full-fledged manufacturing resource and professional design team. We are capable of producing full 
                set of gym equipment to meet the demand of clients at all levels with incredible speed and quality.
            </p>
        </div>

<%--        Gym Room Image URL: https://lh3.googleusercontent.com/TPHg4Gc5ad4fGku4Etf32nOVRvszu1svJ42eXwMnzhu9RncrXtUXIbILRwmtPhdHmCSRpbW3Rz7aBZ8-BGzJi63XJrjlDXahMcUQJdiq--%>
        <div class ="gym_room">
                <asp:Image runat="server" ImageUrl="Img/HomePage/gym_room.jpg" ></asp:Image>
            </div>
    </section>

<%---------------------------About Us 2---------------------------%>
<%--    Manufacturing Image URL: https://img001.video2b.com/1961/file_41680144773616.jpg--%>
    <section class="about_us2">
         <div class ="manufacturing">
                <asp:Image runat="server" ImageUrl="Img/HomePage/manufacturing.jpg" ></asp:Image>
            </div>

        <div class="about_content2">
            <h2>15 Complicated Procedures Strictly Production</h2>
            <p>FTF Gym from the selection of materiasl there are 15 complicated procedures strictly production, 360 degrees without dead angle
                polishing, covering every line of the display cabinet, craftsmanship hand polishing excellence, even the smallest details 
                are never perfunctory.
            </p>
        </div>
    </section>

<%---------------------------Join Member---------------------------%>
<%--    Image URL: https://www.vecteezy.com/photo/2029070-man-holding-a-dumbbell-in-a-gym-with-row-of-dumbbells-in-the-background--%>
    <section class="join_member">
            <asp:Image runat="server" ImageUrl="Img/dumbbell.jpg" ></asp:Image>

        <div class="membership">
            <h1>TAKE YOUR FITNESS LEVEL TO THE NEXT</h1>
            <a href="ClassList.aspx" class="join_button">JOIN US NOW</a>
        </div>
    </section>

<%---------------------------Footer Navigation---------------------------%>
    <footer>
      <div class="footer-top">
          <div class="footer-left">
              <div id="newsletter-subscribe-wrapper">
                  <label for="subscribe-email"><span class="highlight">Subscribe</span> to our Newsletter</label>
                  <div id="email-sub-form">
                      <input type="email" name="email" id="subscribe-email" placeholder="example@email.com">
                      <button id="subscribe-btn" disabled>Register</button>
                  </div>
                  <!-- <div class="modal" id="email-sub-modal">
                  <span class="loadingBox" id="email-sub-modal-loading"></span>
                  </div> -->
              </div>
          </div>

          <div class="div-line"></div>
          <div class="footer-mobile-bottom">
              <div class="footer-nav-wrapper">
                  <h2 id="footer-navLinks">Navigation Links</h2>
                  <ul class="footer-navlink-links">
                        <li><a href="/">Home</a></li>
                        <li><a href="ProductList.aspx">Product</a></li>     
                        <li><a href="ClassList.aspx">Classes</a></li>
                        <li><a href="Account.aspx">Account</a></li>
                  </ul>
              </div>
          </div>
      </div>
      
      <p class="copyright">Copyright &copy 2023 <span id="footer-logo">FTF GYM</span></p>
      <p class="copyright">This website is for EDUCATIONAL PURPOSE only</p>
  </footer>


    <%-- Javascript --%>
    <script src="script/Homepage.js" defer ></script>
</asp:Content>

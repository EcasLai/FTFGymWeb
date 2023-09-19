<%@ Page Title="FTF Gym Web" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="GymWeb.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Linking Stylesheet -->
    <link href="Style/homepage.css?Version=1" rel="stylesheet" type="text/css" runat="server" />
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

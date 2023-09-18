<%@ Page Title="My Orders | FTF Gym Web" Language="C#" MasterPageFile="~/Account.master" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="GymWeb.MyOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AccountHead" runat="server">
    <style type="text/css">
        /* Right Content */
        .right-content #section-title {
            margin: 2rem 0;
        }

        .right-content div.order-list-container {
            width: 100%;
            padding-left: 0.5rem;
            padding-top: 0.8rem;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            align-items: center;
            border-top: 2px solid rgba(0, 0, 0, 0.12);
            text-align: center;
        }
        .right-content div.order-list-container:hover {
            cursor: pointer;
            background-color: rgba(0, 0, 0, 0.05);
        }


        .right-content div.order-list-container span {
            font-weight: 600;
        }

        .right-content div.order-list-container .order-right-icon {
            height: 24px;
            width: 24px;
        }

        .right-content div.order-list-container .order-right-icon {
            fill: #e2cc4e;
            color: #e2cc4e;
        }
    </style>

        
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AccountContent" runat="server">

    <h2>My Orders
    </h2>

    <div class="order-list-container">
        <div class="order-item">
            <asp:Label ID="lblOrderDate" runat="server" Text="Order Date"></asp:Label>
            <p>13/04/2023</p>
        </div>

        <div class="order-item">
            <asp:Label ID="lblOrderNumber" runat="server" Text="Order Number"></asp:Label>
            <p>817328539</p>
        </div>

        <div class="order-item">
            <asp:Label ID="lblOrderStatus" runat="server" Text="Order Status"></asp:Label>
            <p>Paid</p>
        </div>

        <div class="order-item">
            <asp:Label ID="lblOrderTotal" runat="server" Text="Order Total"></asp:Label>
            <p>RM 215.00</p>
        </div>

        <asp:Image ID="RightChevronIcon" runat="server" ImageUrl="~/Img/account-icon/chevron.svg" CssClass="order-right-icon" />
    </div>

    <div class="order-list-container">
        <div class="order-item">
            <asp:Label ID="Label1" runat="server" Text="Order Date"></asp:Label>
            <p>14/04/2023</p>
        </div>

        <div class="order-item">
            <asp:Label ID="Label2" runat="server" Text="Order Number"></asp:Label>
            <p>817328540</p>
        </div>

        <div class="order-item">
            <asp:Label ID="Label3" runat="server" Text="Order Status"></asp:Label>
            <p>Pending</p>
        </div>

        <div class="order-item">
            <asp:Label ID="Label4" runat="server" Text="Order Total"></asp:Label>
            <p>RM 215.00</p>
        </div>

        <asp:Image ID="Image1" runat="server" ImageUrl="~/Img/account-icon/chevron.svg" CssClass="order-right-icon" />
    </div>

    <div class="order-list-container">
        <div class="order-item">
            <asp:Label ID="Label5" runat="server" Text="Order Date"></asp:Label>
            <p>13/04/2023</p>
        </div>

        <div class="order-item">
            <asp:Label ID="Label6" runat="server" Text="Order Number"></asp:Label>
            <p>817328539</p>
        </div>

        <div class="order-item">
            <asp:Label ID="Label7" runat="server" Text="Order Status"></asp:Label>
            <p>Paid</p>
        </div>

        <div class="order-item">
            <asp:Label ID="Label8" runat="server" Text="Order Total"></asp:Label>
            <p>RM 215.00</p>
        </div>

        <asp:Image ID="Image2" runat="server" ImageUrl="~/Img/account-icon/chevron.svg" CssClass="order-right-icon" />
    </div>

    <asp:Repeater ID="repOrder" runat="server" DataSourceID="SqlDataSource1"></asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [OrderId], [Status], [OrderDate], [Total] FROM [Order] WHERE CustomerId = [CustomerId]"></asp:SqlDataSource>


    <%-- Javascript --%>
        <script>
            const activeTab = sessionStorage.getItem('activeTab');

            console.log(activeTab);
            navListItems[activeTab].classList.add("active-item");
            for (y = 0; y < navListItems.length; y++) {
                if (navListItems[y] !== navListItems[activeTab]) {
                    navListItems[y].classList.remove("active-item");
                }
            }
        </script>
</asp:Content>

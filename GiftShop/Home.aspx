<%@ Page Title="" Language="VB" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--================ Hero banner start =================-->
    <section class="hero-banner">
        <div class="container">
            <div class="row no-gutters align-items-center pt-60px">
                <div class="col-5 d-none d-sm-block">
                    <div class="hero-banner__img">
                        <img class="img-fluid" src="img/home/hero-banner.png" alt="">
                    </div>
                </div>
                <div class="col-sm-7 col-lg-6 offset-lg-1 pl-4 pl-md-5 pl-lg-0">
                    <div class="hero-banner__content">
                        <h4>Shop is fun</h4>
                        <h1>Browse Our Premium Product</h1>
                        <p>Us which over of signs divide dominion deep fill bring they're meat beho upon own earth without morning over third. Their male dry. They are great appear whose land fly grass.</p>
                        <a class="button button-hero" href="#">Browse Now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ Hero banner start =================-->


    <!--================ Hero Carousel start =================-->
    <section class="section-margin mt-0">
        <div class="owl-carousel owl-theme hero-carousel">
            <div class="hero-carousel__slide">
                <img src="img/home/hero-slide1.png" alt="" class="img-fluid">
                <a href="#" class="hero-carousel__slideOverlay">
                    <h3>Wireless Headphone</h3>
                    <p>Accessories Item</p>
                </a>
            </div>
            <div class="hero-carousel__slide">
                <img src="img/home/hero-slide2.png" alt="" class="img-fluid">
                <a href="#" class="hero-carousel__slideOverlay">
                    <h3>Wireless Headphone</h3>
                    <p>Accessories Item</p>
                </a>
            </div>
            <div class="hero-carousel__slide">
                <img src="img/home/hero-slide3.png" alt="" class="img-fluid">
                <a href="#" class="hero-carousel__slideOverlay">
                    <h3>Wireless Headphone</h3>
                    <p>Accessories Item</p>
                </a>
            </div>
        </div>
    </section>
    <!--================ Hero Carousel end =================-->

    <!-- ================ trending product section start ================= -->
    <section class="section-margin calc-60px">
        <div class="container">
            <div class="section-intro pb-60px">
                <p>Popular Item in the market</p>
                <h2>Trending <span class="section-intro__style">Product</span></h2>
            </div>





            <asp:SqlDataSource ID="SqlDataSourceProducts" runat="server" ConnectionString="<%$ ConnectionStrings:GiftShopConnectionString %>" SelectCommand="SELECT * FROM [ProductMaster]"></asp:SqlDataSource>
            <asp:DataList ID="DataListProducts" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSourceProducts" RepeatColumns="4" Width="100%">
                <ItemTemplate>
                    <div class="">
                        <div class="col">
                            <div class="card text-center card-product">
                                <div class="card-product__img">
                                    <img class="card-img" src='<%# Eval("ImagePath") %>' alt="">
                                    <ul class="card-product__imgOverlay">
                                        <li>
                                            <button><i class="ti-search"></i></button>
                                        </li>
                                        <li>
                                            <button><i class="ti-shopping-cart"></i></button>
                                        </li>
                                        <li>
                                            <button><i class="ti-heart"></i></button>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <p><%# Eval("CategoryName") %></p>
                                    <h4 class="card-product__title"><a href="single-product.html"><%# Eval("ProductName") %></a></h4>
                                    <p class="card-product__price">₹<%# Eval("Price") %></p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' Visible="false" />
                    <br />

                    <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>' Visible="false" />
                    <br />

                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' Visible="false" />
                    <br />

                    <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' Visible="false" />
                    <br />

                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' Visible="false" />
                    <br />

                    <asp:Label ID="NetTotalLabel" runat="server" Text='<%# Eval("NetTotal") %>' Visible="false" />
                    <br />

                    <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Eval("ImagePath") %>' Visible="false" />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>


        </div>

    </section>
    <!-- ================ trending product section end ================= -->

</asp:Content>


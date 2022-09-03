<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                    <h4>New product</h4>
                </div>
            </div>
            <div class="col-lg-8 col-md-8">
                <ul class="filter__controls">
                    <li class="active" data-filter="*">All</li>
                    <li data-filter=".women">Women’s</li>
                    <li data-filter=".men">Men’s</li>
                    <li data-filter=".kid">Kid’s</li>
                    <li data-filter=".accessories">Accessories</li>
                    <li data-filter=".cosmetic">Cosmetics</li>
                </ul>
            </div>
        </div>

        <div class="row property__gallery">
        <asp:SqlDataSource ID="SqlDataSourceProducts" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineShopConnectionString %>" SelectCommand="SELECT * FROM [ProductMaster]"></asp:SqlDataSource>
        <asp:DataList ID="DLProducts" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSourceProducts" RepeatColumns="2">
            <ItemTemplate>
                
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' Visible="false" />
                <br />
                
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' Visible="false" />
                <br />
                
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' Visible="false" />
                <br />
                
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' Visible="false" />
                <br />
                
                <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Eval("ImagePath") %>' Visible="true" />
                <br />
<br />

                 <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg='<%# Eval("ImagePath") %>'>
                        <div class="label new">New</div>
                        <ul class="product__hover">
                            <li><a href="img/product/product-1.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#"><%# Eval("ProductName") %></a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__price">₹<%# Eval("Price") %></div>
                    </div>
                </div>


            </ItemTemplate>
            </asp:DataList>

           <%-- <div class="col-lg-3 col-md-4 col-sm-6 mix women">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="img/product/product-1.jpg">
                        <div class="label new">New</div>
                        <ul class="product__hover">
                            <li><a href="img/product/product-1.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Buttons tweed blazer</a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__price">$ 59.0</div>
                    </div>
                </div>
            </div>--%>
          
        </div>
    </div>
</section>
<!-- Product Section End -->
</asp:Content>


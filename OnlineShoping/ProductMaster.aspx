<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ProductMaster.aspx.vb" Inherits="ProductMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="row">
                    

                    <div class="col">
                        <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
                        <asp:DropDownList ID="DDCategory" runat="server">
                            <asp:ListItem Value="null">--Select Category--</asp:ListItem>
                            <asp:ListItem>Jeans</asp:ListItem>
                            <asp:ListItem>Shirt</asp:ListItem>
                            <asp:ListItem>T-Shirt</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col">
                        <asp:Label ID="Label1" runat="server" Text="Product Name :"></asp:Label>
                        <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                    </div>
                    <div class="col">
                        <asp:Label ID="Label3" runat="server" Text="Price :"></asp:Label>
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    </div>
                    <div class="col">
                        <asp:Label ID="Label4" runat="server" Text="Image :"></asp:Label>
                        <asp:FileUpload ID="imageupload" runat="server" />
                    </div>
                    <div class="">
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" />
                    </div>

                </div>
                <div class="my-5">
                    <asp:GridView ID="GridViewProductMaster" CssClass="table" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                            <asp:BoundField DataField="Category" HeaderText="Catgeory" ReadOnly="True" SortExpression="Category" />
                            <asp:BoundField DataField="ProductName" HeaderText="Product Name" ReadOnly="True" SortExpression="ProductName" />
                            <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True" SortExpression="Price" />
                            <asp:BoundField DataField="ImagePath" HeaderText="Image" ReadOnly="True" SortExpression="ImagePath" />
                        </Columns>
                    </asp:GridView>
                </div>
                
        </div>
    </div>
</section>
<!-- Contact Section End -->
</asp:Content>


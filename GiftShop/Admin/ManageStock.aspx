<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="false" CodeFile="ManageStock.aspx.vb" Inherits="Admin_ManageStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <!-- Layout Demo -->
    <div class="container my-5">
        <div class="row">
            <div class="card mb-4">
                <h5 class="card-header">Category Master</h5>
                <div class="card-body">


                    <div class="mb-3 row">
                        <div class="mb-3 col">
                            <div>
                                  <label for="DDCategoryName" class="form-label">Category Name :</label>
                            </div>
                          
                            <asp:DropDownList ID="DDCategoryName" CssClass="form-control" runat="server" AutoPostBack="False">
                                <asp:ListItem>Gift For Her</asp:ListItem>
                                <asp:ListItem>Gift For Him</asp:ListItem>
                                <asp:ListItem>Gift For Wife</asp:ListItem>
                                <asp:ListItem>Gift For Sis</asp:ListItem>
                                <asp:ListItem>Gift For Mother</asp:ListItem>
                            </asp:DropDownList>

                        </div>

                        <div class="mb-3 col">

                            <label for="txtQty" class="form-label">Item Name :</label>
                            <asp:TextBox ID="txtItemName" placeholder="Product Name" class="form-control" runat="server" AutoPostBack="False"></asp:TextBox>
                        </div>
                         <div class="mb-3 col">
                            <label for="txtQty" class="form-label">QTY :</label>
                            <asp:TextBox ID="txtQty" placeholder="Quantity" class="form-control" runat="server" AutoPostBack="True">1</asp:TextBox>
                        </div>


                    </div>

                    <div class="mb-3 row">
                       

                        <div class="mb-3 col">
                            <label for="txtPrice" class="form-label">Price :</label>
                            <asp:TextBox ID="txtPrice" placeholder="Price" class="form-control" runat="server" AutoPostBack="True" Text="0"></asp:TextBox>
                        </div>

                        <div class="mb-3 col">
                            <label for="txtNetTotal" class="form-label">Net Total :</label>
                            <asp:TextBox ID="txtNetTotal" placeholder="Price" class="form-control" runat="server" Text="0"></asp:TextBox>
                        </div>
                         <div class="mb-3 col">
                            <label for="imageupload" class="form-label">Image :</label>
                            <asp:FileUpload ID="imageupload" CssClass="form-control" runat="server" />
                             <asp:Label ID="lbimagepath" runat="server" Text=""></asp:Label>

                        </div>

                    </div>

                    <div class="mb-3 row">

                       
                        <div class="mb-3 col">
                            <asp:Image ID="ProductImage" runat="server" />
                        </div>
                    </div>

                    <div class="demo-inline-spacing">
                        <asp:Button ID="btnInsert" runat="server" CssClass="btn btn-lg btn-primary" Text="Insert" />
                        <asp:Button ID="btnReset" runat="server" CssClass="btn btn-lg btn-secondary" Text="Reset" />
                    </div>

                    <div class="card my-5">
                        <div class="table-responsive text-nowrap">
                            <asp:GridView ID="GridViewProducts" runat="server" CssClass="table" AutoGenerateColumns="False" DataKeyNames="ProductID">
                                <Columns>
                                    <asp:BoundField DataField="CategoryName" HeaderText="Category" ReadOnly="True" SortExpression="CategoryName" />
                                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" ReadOnly="True" SortExpression="ProductName" />
                                    <asp:BoundField DataField="Qty" HeaderText="Qty" ReadOnly="True" SortExpression="Qty" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True" SortExpression="Price" />
                                    <asp:BoundField DataField="NetTotal" HeaderText="Net Total" ReadOnly="True" SortExpression="NetTotal" />
                                    <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" ReadOnly="True" SortExpression="ImagePath" />
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:Button ID="btnEdit" runat="server" CommandName="Select" Text="Edit" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>






</asp:Content>


<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="false" CodeFile="ManageStock.aspx.vb" Inherits="Admin_ManageStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="content-wrapper">
        <!-- Content -->

        <div class="container-xxl flex-grow-1 container-p-y">
            <!-- Layout Demo -->
            <div class="layout-demo-wrapper">
                <div class="container-xxl flex-grow-1 container-p-y">
                    <div class="row">
                        <div class="card mb-4">
                            <h5 class="card-header">Category Master</h5>
                            <div class="card-body">


                                <div class="mb-3 row">
                                    <div class="mb-3 col">
                                        <label for="DDCategoryName" class="form-label">Category Name :</label>
                                        <asp:DropDownList ID="DDCategoryName" CssClass="form-select" runat="server" AutoPostBack="True"></asp:DropDownList>

                                    </div>
                                    <div class="mb-3 col">
                                        <label for="DDSubCategoryName" class="form-label">Sub-Category Name :</label>
                                        <asp:DropDownList ID="DDSubCategoryName" CssClass="form-select" runat="server"></asp:DropDownList>

                                    </div>
                                    <div class="mb-3 col">
                                        <label for="txtQty" class="form-label">Item Name :</label>
                                        <asp:TextBox ID="txtItemName" placeholder="Product Name" class="form-control" runat="server" AutoPostBack="True"></asp:TextBox>
                                    </div>
                                   

                                </div>

                                <div class="mb-3 row">
                                     <div class="mb-3 col">
                                        <label for="txtQty" class="form-label">QTY :</label>
                                        <asp:TextBox ID="txtQty" placeholder="Quantity" class="form-control" runat="server" AutoPostBack="True">0</asp:TextBox>
                                    </div>

                                    <div class="mb-3 col">
                                        <label for="txtPrice" class="form-label">Price :</label>
                                        <asp:TextBox ID="txtPrice" placeholder="Price" class="form-control" runat="server" AutoPostBack="True" Text="0"></asp:TextBox>
                                    </div>
                                     <div class="mb-3 col">
                                        <label for="txtGSTPercentage" class="form-label">GST % </label>
                                        <asp:TextBox ID="txtGSTPercentage" placeholder="Price" class="form-control" runat="server" AutoPostBack="True" Text="0">0</asp:TextBox>
                                    </div>
                                     <div class="mb-3 col">
                                        <label for="txtGSTAmt" class="form-label">GST Amount :</label>
                                        <asp:TextBox ID="txtGSTAmt" placeholder="" class="form-control" runat="server" Text="0"></asp:TextBox>
                                    </div>
                                     <div class="mb-3 col">
                                        <label for="txtNetTotal" class="form-label">Net Total :</label>
                                        <asp:TextBox ID="txtNetTotal" placeholder="Price" class="form-control" runat="server" Text="0"></asp:TextBox>
                                    </div>
                                    <div class="mb-3 col">
                                        <label for="txtRemark" class="form-label">Remark :</label>
                                        <asp:TextBox ID="txtRemark" CssClass="form-control" Columns="20" Rows="2" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="mb-3 row">
                                     
                                     <div class="mb-3 col">
                                        <label for="txtCategoryName" class="form-label">Image :</label>
                                         <asp:FileUpload ID="imageupload" CssClass="form-control" runat="server" />
                                    </div>
                                    <div class="mb-3 col">
                                        <asp:Image ID="ProductImage"  runat="server" />
                                    </div>
                                </div>

                                <div class="demo-inline-spacing">
                                    <asp:Button ID="btnInsert" runat="server" CssClass="btn btn-lg btn-primary" Text="Insert" />
                                    <asp:Button ID="btnReset" runat="server" CssClass="btn btn-lg btn-secondary" Text="Reset" />
                                </div>

                                <div class="card my-5">
                                    <div class="table-responsive text-nowrap">
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ Layout Demo -->
        </div>
        <!-- / Content -->



        <div class="content-backdrop fade"></div>
    </div>

</asp:Content>


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
                        <asp:Label ID="lbimagepath" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="mx-5">
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" />
                    </div>
                   
                    
                    

                </div>
                <div class="my-5 mx-5">
                    
                    <asp:GridView ID="GridViewProductMaster" CssClass="table col" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID">
                        <Columns>
                            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                            <asp:BoundField DataField="Category" HeaderText="Category" ReadOnly="True" SortExpression="Category" />
                            <asp:BoundField DataField="ProductName" HeaderText="ProductName" ReadOnly="True" SortExpression="ProductName" />
                            <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True" SortExpression="Price" />
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
                <div class="col">
                     <asp:Image ID="productimageview" runat="server" />
                </div>
                
        </div>
    </div>
</section>
<!-- Contact Section End -->
</asp:Content>


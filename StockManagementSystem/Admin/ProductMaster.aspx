<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="ProductMaster.aspx.vb" Inherits="Admin_ProductMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="flex justify-center items-center ">
        <div>
            <div>


                <div class="container my-3 space-y-10 items-center">
                    <div class="flex-row text-center text-4xl font-bold">
                        <h1>Product Master</h1>
                    </div>
                    <div class="flex space-x-10">
                        <div class="">
                            <label for="DDCategory" class="block mb-2 text-sm font-medium text-gray-900 ">Category :</label>
                            <asp:DropDownList ID="DDCategory" CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 " runat="server">
                                <asp:ListItem Value="null">--Select Category--</asp:ListItem>
                                <asp:ListItem>Web Service</asp:ListItem>
                                <asp:ListItem>Laptop</asp:ListItem>
                                <asp:ListItem>Desktop</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="">
                            <label for="txtProductName" class="block mb-2 text-sm font-medium text-gray-900 ">Product Name :</label>
                            <asp:TextBox ID="txtProductName" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 " placeholder="John" required runat="server"></asp:TextBox>

                        </div>
                         <div class="">
                            <label for="ImageUpload" class="block mb-2 text-sm font-medium text-gray-900 ">Product Name :</label>
                             <asp:FileUpload ID="ImageUpload" class="bg-gray-50 border text-gray-900 text-sm rounded-lg   block w-full p-2.5 " runat="server" />

                        </div>

                    </div>
                    <div class="space-x-5">
                        <asp:Button ID="btnInsert" runat="server" Class="" Text="Insert" />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" />
                    </div>

                    <div>
                        <asp:GridView ID="GridViewProduct" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID">
                            <Columns>
                                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                                <asp:BoundField DataField="Category" HeaderText="Category" ReadOnly="True" SortExpression="Category" />
                                <asp:BoundField DataField="ProductName" HeaderText="Product Name" ReadOnly="True" SortExpression="ProductName" />
                                <asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:Button ID="btnEdit" runat="server" CommandName="Select" Text="Edit" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>

            </div>
        </div>


    </section>
</asp:Content>


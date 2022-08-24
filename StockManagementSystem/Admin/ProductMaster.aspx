<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="ProductMaster.aspx.vb" Inherits="Admin_ProductMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="flex justify-center items-center ">
        <div>
            <div>


                <div class="grid gap-6 mb-6 md:grid-cols-1">
                    <div class="flex-row">
                        <h1>Product Master</h1>
                    </div>
                    <div>
                        <label for="" class="block mb-2 text-sm font-medium text-gray-900 ">Category :</label>
                        <asp:DropDownList ID="DDCategory" CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 "  runat="server">
                            <asp:ListItem Value="null">--Select Category--</asp:ListItem>
                            <asp:ListItem>Web Service</asp:ListItem>
                            <asp:ListItem>Laptop</asp:ListItem>
                            <asp:ListItem>Desktop</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <label for="first_name" class="block mb-2 text-sm font-medium text-gray-900 ">Product Name :</label>
                        <input type="text" id="" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 " placeholder="John" required/>
                    </div>
                    <div>
                        <asp:GridView ID="GridViewProduct" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                                <asp:BoundField DataField="Category" HeaderText="Category" ReadOnly="True" SortExpression="Category" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>

            </div>
        </div>


    </section>
</asp:Content>


<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="SupplierMaster.aspx.vb" Inherits="Admin_SupplierMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="flex justify-center items-center ">
        <div>
            <div>


                <div class="container my-3 space-y-10 items-center">
                    <div class="flex-row text-center text-4xl font-bold">
                        <h1>Product Master</h1>
                    </div>
                    <div class="flex space-x-10">
                        <div class="">
                            <label for="txtSupplierName" class="block mb-2 text-sm font-medium text-gray-900 ">Category :</label>
                            <asp:TextBox ID="txtSupplierName" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 " placeholder="John" required runat="server"></asp:TextBox>
                        </div>
                        <div class="">
                            <label for="txtEmail" class="block mb-2 text-sm font-medium text-gray-900 ">Email :</label>
                            <asp:TextBox ID="txtEmail" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 " placeholder="John" required runat="server"></asp:TextBox>

                        </div>
                        <div class="">
                            <label for="txtPhoneNo" class="block mb-2 text-sm font-medium text-gray-900 ">Phone No :</label>
                            <asp:TextBox ID="txtPhoneNo" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 " placeholder="John" required runat="server"></asp:TextBox>

                        </div>

                    </div>
                    <div class="space-x-5">
                        <asp:Button ID="btnInsert" runat="server" Class="" Text="Insert" />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" />
                    </div>

                    <div>
                        <asp:GridView ID="GridViewProduct" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID">
                            <Columns>
                                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" ReadOnly="True" SortExpression="SupplierID" />
                                <asp:BoundField DataField="SupplierName" HeaderText="Supplier Name" ReadOnly="True" SortExpression="SupplierName" />
                                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                                <asp:BoundField DataField="PhoneNo" HeaderText="Phone No" SortExpression="PhoneNo" />
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


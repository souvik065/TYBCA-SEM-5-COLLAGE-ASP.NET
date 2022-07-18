<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="CalculateSalesPrice.aspx.vb" Inherits="CalculateSalesPrice_CalculateSalesPrice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="flex justify-center items-center h-screen bg-gray-200" >
            <div class="items-center border-2 rounded border-gray-500 font-bold py-5 px-5  ">
                <div>
                <h1 class="font-bold block text-center text-xl ">Calculate Sales Price</h>
                </div>

                <div class="space-x-12 flex items-center text-center ml-5  my-5">
                    <div class="text-right">
                    <span>Enter the items original values :</span>
                    </div>
                    <div class="">
                    <asp:TextBox ID="txtOriginalValue" runat="server" CssClass=" border-2 rounded text-center border-gray-500 "></asp:TextBox>
                    </div>
                </div>

                <div class=" flex items-center justify-around my-5">
                    <div class="text-right">
                    <span>Enter the discount Percentage :</span>
                    </div>
                    <div class="pl-14">
                    <asp:TextBox ID="txtDiscPer" runat="server" CssClass=" border-2 rounded text-center border-gray-500 "></asp:TextBox>
                    </div>
                </div>
                <br />

                <div class=" flex items-center justify-around my-5">
                    <div>
                    <span>Sales Price :</span>
                    </div>
                    <div>
                    <asp:TextBox ID="txtSalesPrice" runat="server" CssClass=" border-2 rounded text-center border-gray-500"></asp:TextBox>
                    </div>
                </div>

                   

                 

                    
                  <div class="space-x-12 flex items-center justify-around my-5">
                    <div>
                        <asp:Button ID="btnCalculateSalesPrice" runat="server" Text="Calculate Sales Price"   CssClass="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded inline-flex items-center "/>
                    </div>
                    <div>
                        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded inline-flex items-center" />
                    </div>
                </div>



                  

            </div>
        </div>
</asp:Content>


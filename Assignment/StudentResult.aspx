<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="StudentResult.aspx.vb" Inherits="Student_Result_StudentResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="flex justify-center items-center h-screen bg-gray-200" >
            <div class="items-center border-2 rounded border-gray-500 font-bold py-5 px-5  ">
                <div>
                <h1 class="font-bold block text-center text-xl ">Student Result</h>
                </div>

                <div class="space-x-12 flex items-center justify-around my-5">
                    <div>
                    <span>PHP</span>
                    </div>
                    <div>
                    <asp:TextBox ID="txtphp" runat="server" CssClass=" border-2 rounded w-12 border-gray-500 "></asp:TextBox>
                    </div>
                </div>

                     <div class="space-x-12 flex items-center justify-around my-5">
                    <div>
                    <span>ASP.Net</span>
                    </div>
                    <div class="">
                    <asp:TextBox ID="txtasp" runat="server" CssClass=" border-2 rounded w-12 border-gray-500"></asp:TextBox>
                    </div>
                </div>

                     <div class="space-x-12 flex items-center justify-around my-5">
                    <div>
                    <span>AWD</span>
                    </div>
                    <div>
                    <asp:TextBox ID="txtawd" runat="server" CssClass=" border-2 rounded w-12 border-gray-500 "></asp:TextBox>
                    </div>
                </div>

                     <div class="space-x-12 flex items-center justify-around my-5">
                    <div>
                    <span>Unix</span>
                    </div>
                    <div>
                    <asp:TextBox ID="txtunix" runat="server" CssClass=" border-2 rounded w-12 border-gray-500 "></asp:TextBox>
                    </div>
                </div>

                    
                  <div class="space-x-12 flex items-center justify-around my-5">
                    <div>
                        <asp:Button ID="btnCalculate" runat="server" Text="Calculate"   CssClass="bg-gray-400 hover:bg-gray-500 text-gray-800 font-bold py-2 px-4 rounded inline-flex items-center "/>
                    </div>
                    <div>
                        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="bg-gray-400 hover:bg-gray-500 text-gray-800 font-bold py-2 px-4 rounded inline-flex items-center" />
                    </div>
                      <div>
                        <asp:Button ID="btnExit" runat="server" Text="Exit" CssClass="bg-gray-400 hover:bg-gray-500 text-gray-800 font-bold py-2 px-4 rounded inline-flex items-center" />
                    </div>
                </div>



                  

            </div>
        </div>
</asp:Content>


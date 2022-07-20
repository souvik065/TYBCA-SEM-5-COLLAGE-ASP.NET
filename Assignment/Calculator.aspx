<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Calculator.aspx.vb" Inherits="Calculator_Calculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="flex justify-center items-center h-screen bg-gray-200">
    <div  class=" block border-2 font-bold border-black px-4 py-4 rounded bg-gray-300">
        <div class="text-2xl font-bold text-center py-5"><h1>CASIO</h1></div>
        <div class="">
               <div>
                   <asp:TextBox ID="txtScreen" runat="server" CssClass="border-2  border-gray-500 w-60" ></asp:TextBox>
                </div >
            <div>
                <asp:Button ID="BtnCE" runat="server" Text="CE" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white " />

            </div>
                <div>
                    <asp:Button ID="Btn1" runat="server" Text="1" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white " />
                    <asp:Button ID="Btn2" runat="server" Text="2" CssClass="py-3 px-6  hover:bg-gray-500 hover:text-white" />
                    <asp:Button ID="Btn3" runat="server" Text="3" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white" />
                    <asp:Button ID="BtnDiv" runat="server" Text="/" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white"/>

                </div>
             <div>
                    <asp:Button ID="Btn4" runat="server" Text="4" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white" />
                    <asp:Button ID="Btn5" runat="server" Text="5" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white" />
                    <asp:Button ID="Btn6" runat="server" Text="6" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white" />
                    <asp:Button ID="BtnMulti" runat="server" Text="X" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white"/>

                </div>
             <div>
                    <asp:Button ID="Btn7" runat="server" Text="7" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white" />
                    <asp:Button ID="Btn8" runat="server" Text="8" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white"/>
                    <asp:Button ID="Btn9" runat="server" Text="9" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white" />
                    <asp:Button ID="BtnSub" runat="server" Text="-" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white" />

                </div>
             <div>
                    <asp:Button ID="Btn0" runat="server" Text="0" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white"/>
                    <asp:Button ID="BtnDot" runat="server" Text="." Width="16px" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white" />
                    <asp:Button ID="BtnEqualsTo" runat="server" Text="=" Width="23px" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white" />
                    <asp:Button ID="BtnAdd" runat="server" Text="+" CssClass="py-3 px-6 hover:bg-gray-500 hover:text-white" />

                </div>

        </div>
    </div>
    </div>
</asp:Content>


<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="UserRegisteration.aspx.vb" Inherits="UserRegisteration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="flex items-center justify-center h-[75vh]">
       <div>
           <div>
               
            <div class="p-4 space-y-5 max-w-sm w-96 bg-white rounded-lg border border-gray-200 shadow-md sm:p-6 md:p-8 h-auto ">
                
                    <h5 class="text-xl font-medium text-gray-900 ">Registeration</h5>
                    
                    <div>
                        <label for="email" class="block mb-2 text-sm font-medium text-gray-900 ">First Name :</label>
                        <asp:TextBox ID="txtfname" placeholder="First Name" CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 " runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <label for="password" class="block mb-2 text-sm font-medium text-gray-900 ">Last Name :</label>
                         <asp:TextBox ID="txtlname" placeholder="Laste Name" CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 " runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <label for="password" class="block mb-2 text-sm font-medium text-gray-900 ">Gender :</label>
                        <asp:DropDownList ID="DDGender" CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 " runat="server">
                            <asp:ListItem Value="null">--Select Gender--</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <label for="password" class="block mb-2 text-sm font-medium text-gray-900 ">Email :</label>
                         <asp:TextBox ID="txtemail" CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 " placeholder="Email" runat="server"></asp:TextBox>
                    </div>
                    
                    <div>
                        <label for="password" class="block mb-2 text-sm font-medium text-gray-900 ">Password :</label>
                         <asp:TextBox ID="txtpassword" CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 " runat="server"></asp:TextBox>
                    </div>

                    <div class="flex items-start">
                       
                        <a href="#" class="ml-auto text-sm text-blue-700 hover:underline dark:text-blue-500">Lost Password?</a>
                    </div>
                    <asp:Button ID="btnRegister" runat="server" CssClass="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" Text="Register" />
                    
                    <div class="text-sm font-medium text-gray-500 ">
                         Already have an Acount ? <a href="UserLogin.aspx" class="text-blue-700 hover:underline dark:text-blue-500">Login </a>
                    </div>
                
            </div>

           </div>
       </div>
   </section>
</asp:Content>


<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="WeekDayOfTheDate.aspx.vb" Inherits="WeekDayOfDay_WeekDayOfTheDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="flex justify-center items-center h-screen bg-gray-200" >
            <div class="items-center border-2 rounded border-gray-500 font-bold py-5 px-5  ">
                <div>
                <h1 class="font-bold block text-center text-xl ">Student Result</h1>
                </div>

                <div class=" flex items-center space-x-2 my-5">
                    <div>
                    <span>Enter a Day :</span>
                    </div>
                    <div>
                    <asp:TextBox ID="txtDate" runat="server"  CssClass=" border-2 rounded  border-gray-500"></asp:TextBox>
                    </div>
                    <div>
                    <asp:TextBox ID="txtDay" runat="server" CssClass=" border-2 rounded border-gray-500 "></asp:TextBox>
                    </div>
                </div>

                 
                    
                  <div class="space-x-12 flex items-center justify-around my-5">
                    <div>
                        <asp:Button ID="btnCalculate" runat="server" Text="Day of The Date"   CssClass="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded inline-flex items-center "/>
                    </div>
                    <div>
                        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded inline-flex items-center" />
                    </div>
                </div>



                  

            </div>
        </div>
</asp:Content>


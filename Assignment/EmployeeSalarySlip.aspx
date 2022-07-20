<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EmployeeSalarySlip.aspx.vb" Inherits="EmpDetails_EmployeeSalarySlip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="flex justify-center items-center h-screen bg-gray-200" >
            <div class="items-center border-2 rounded border-gray-500 font-bold py-5 px-5 bg-gray-300 ">
                <div>
                <h1 class="font-bold block text-center text-xl ">Salary Slip</h1>
                </div>

                <div class="space-x-12 flex items-center text-center ml-5  my-5">
                    <div class="">
                    <span>Emp ID :</span>
                    </div>
                    <div class="">
                    <asp:TextBox ID="txtEmpID" runat="server" CssClass=" border-2 rounded w-12 border-gray-500 "></asp:TextBox>
                    </div>
                </div>

                     <div class=" flex items-center justify-around my-5">
                    <div>
                    <span>Emp Name :</span>
                    </div>
                    <div class="">
                    <asp:TextBox ID="txtEmpName" runat="server" CssClass=" border-2 rounded border-gray-500 "></asp:TextBox>
                    </div>
                </div>

                     <div class=" flex items-center justify-around my-5">
                    <div>
                    <span>Designation :</span>
                    </div>
                    <div>
                    <asp:TextBox ID="txtDesignation" runat="server" CssClass=" border-2 rounded border-gray-500 "></asp:TextBox>
                    </div>
                </div>

                     <div class=" flex items-center justify-around my-5">
                    <div>
                    <span>Basic Pay :</span>
                    </div>
                    <div>
                    <asp:TextBox ID="txtBasicPay" runat="server" CssClass=" border-2 rounded border-gray-500 "></asp:TextBox>
                    </div>
                </div>

                  <div class=" flex items-center justify-around my-5">
                    <div>
                    <span>Select DA :</span>
                    </div>
                    <div>
                        <asp:DropDownList ID="DDSelectDA" runat="server" CssClass="w-44">
                            <asp:ListItem Value="Null">--Select DA--</asp:ListItem>
                            <asp:ListItem Value="10">10%</asp:ListItem>
                            <asp:ListItem Value="12">12%</asp:ListItem>
                        </asp:DropDownList>
                   
                    </div>
                </div>

                  <div class=" flex items-center justify-around my-5">
                    <div>
                    <span>Select HR :</span>
                    </div>
                    <div>
                        <asp:DropDownList ID="DDSelectHR" runat="server"  CssClass="w-44">
                            <asp:ListItem>-- Select HR --</asp:ListItem>
                            <asp:ListItem Value="15">15%</asp:ListItem>
                            <asp:ListItem Value="17">17%</asp:ListItem>
                        </asp:DropDownList>
                    
                    </div>
                </div>

                    
                  <div class="space-x-12 flex items-center justify-around my-5">
                    <div>
                        <asp:Button ID="btnCalculateGrossSal" runat="server" Text="Calculate Gross Salary"   CssClass="bg-gray-400 hover:bg-gray-500 text-gray-800 font-bold py-2 px-4 rounded inline-flex items-center "/>
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


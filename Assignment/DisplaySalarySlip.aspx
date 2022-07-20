<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="DisplaySalarySlip.aspx.vb" Inherits="DisplaySalarySlip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="flex justify-center items-center h-screen bg-gray-200" >
            <div class="items-center border-2 rounded border-gray-500 tracking-wide space-y-5  py-5 px-5 bg-gray-100 ">
                <table></table>
               <table class="relative w-full border-collapse">
                   <thead class="bg-gray-50">
                       <tr><th class=" border border-gray-500 p-3 text-sm font-semibold" colspan="2">COMPANY NAME</th></tr>
                       <tr><th class=" border border-gray-500 p-3 text-sm font-semibold"colspan="2">Salary Slip</th></tr>
        
                   </thead>
                   <tbody>
                       <tr>
                           <td class=" border border-gray-500 p-3">Emp Id :</td>
                           <td class=" border border-gray-500 p-3"> 
                               <asp:Label ID="lbempid" runat="server" Text="Label"></asp:Label>

                           </td>
                       </tr>
                       <tr><td class="border border-gray-500 p-3">Emp Name :</td>
                           <td class=" border border-gray-500 p-3">
                               <asp:Label ID="lbempname" runat="server" Text="Label"></asp:Label>

                           </td></tr>
                       <tr><td class=" border border-gray-500 p-3">Designation :</td>
                           <td class=" border border-gray-500 p-3">
                               <asp:Label ID="lbdesignation" runat="server" Text="Label"></asp:Label>

                           </td>

                       </tr>
                   </tbody>

               </table>

               <table class="relative w-full border-collapse">
                   <thead>
                       <tr>
                           <th class=" border border-gray-500 p-3  text-sm font-semibold" >Salary Head</th>
                           <th class=" border border-gray-500 p-3  text-sm font-semibold">Amount</th>

                       </tr>
                       
        
                   </thead>
                   <tbody>
                       <tr>
                           <td class=" border border-gray-500 p-3">Basic Salary :</td>
                           <td class=" border border-gray-500 p-3"> 
                               <asp:Label ID="lbbasicsalary" runat="server" Text="Label"></asp:Label>
                           </td>
                       </tr>

                       <tr><td class=" border border-gray-500 p-3">Dearness Allowance :</td>
                           <td class=" border border-gray-500 p-3">
                               <asp:Label ID="lbda" runat="server" Text="Label"></asp:Label>
                           </td>

                       </tr>
                      
                       <tr><td class=" border border-gray-500 p-3">House Rent Allowance :</td>
                           <td class=" border border-gray-500 p-3">
                               <asp:Label ID="lbhr" runat="server" Text="Label"></asp:Label>
                           </td>

                       </tr>
                        <tr class=""><td class="p-3"></td></tr>
                       <tr>
                           <td class="border border-gray-500 p-3">Gross Salary :</td>
                           <td class="border border-gray-500 p-3">
                               <asp:Label ID="lbgrosssal" runat="server" Text="Label"></asp:Label></td>
                       </tr>
                   </tbody>

               </table>

            </div>
        </div>
</asp:Content>


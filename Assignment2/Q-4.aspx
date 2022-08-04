<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Q-4.aspx.vb" Inherits="Q_4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-bottom: 0px">
        <div>

            <asp:MultiView ID="MultiView1" runat="server">

                <asp:View  ID="View1PersonalDetails" runat="server">
                    <table>
                <tr>
                    <th>Personal Details</th>
                </tr>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Full Name :"></asp:Label></td>
                    <td><asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox></td>
                    
                </tr>
                <tr>
                     <td><asp:Label ID="Label2" runat="server" Text="DOB :"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                     <td><asp:Label ID="Label3" runat="server" Text="Mobile No :"></asp:Label></td>
                    <td><asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="Label4" runat="server" Text="Address :"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                       </td>
                </tr>
                <tr>
                     <td><asp:Label ID="Label5" runat="server" Text="Email ID :"></asp:Label></td>
                    <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnStep2" runat="server" Text="Next" /></td>

                </tr>
                </table>
                    </asp:View>
                <asp:View ID="ViewEducationalDetails" runat="server">
                     <table>
                <tr>
                    <th>Personal Details</th>
                </tr>
                <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="Board :"></asp:Label></td>
                    <td><asp:TextBox ID="txtBoard" runat="server"></asp:TextBox></td>
                    
                </tr>
                <tr>
                     <td><asp:Label ID="Label7" runat="server" Text="School Name :"></asp:Label></td>
                    <td><asp:TextBox ID="txtSchoolName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="Label8" runat="server" Text="12th Percentage :"></asp:Label></td>
                    <td><asp:TextBox ID="txtPerentage" runat="server"></asp:TextBox></td>
                </tr>
               
                <tr>
                    <td>
                        <asp:Button ID="btnPrevStep1" runat="server" Text="Previous" />

                    </td>
                    <td>
                        <asp:Button ID="btnStep3" runat="server" Text="Next" />

                    </td>

                </tr>
                </table>
                </asp:View>

                <asp:View ID="ViewDisplayDetails" runat="server">
                    <table>
                        <tr>
                            <th><h1>Display Details</h1></th>
                        </tr>

                        <tr>
                            <td>
                                <asp:Literal ID="Literal1" runat="server" Text="Student Name :"></asp:Literal></td>
                            <td>
                                <asp:Literal ID="LStudentName" runat="server" Text=""></asp:Literal></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Literal ID="Literal2" runat="server" Text="DOB :"></asp:Literal></td>
                            <td>
                                <asp:Literal ID="LDOB" runat="server" Text=""></asp:Literal></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Literal ID="Literal4" runat="server" Text="Mobile No :"></asp:Literal></td>
                            <td>
                                <asp:Literal ID="LMobileNo" runat="server" Text=""></asp:Literal></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Literal ID="Literal6" runat="server" Text="Address :"></asp:Literal></td>
                            <td>
                                <asp:Literal ID="LAddress" runat="server" Text=""></asp:Literal></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Literal ID="Literal8" runat="server" Text="Email ID :"></asp:Literal></td>
                            <td>
                                <asp:Literal ID="LEmail" runat="server" Text=""></asp:Literal></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Literal ID="Literal10" runat="server" Text="Board :"></asp:Literal></td>
                            <td>
                                <asp:Literal ID="LBoard" runat="server" Text=""></asp:Literal></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Literal ID="Literal12" runat="server" Text="School Name :"></asp:Literal></td>
                            <td>
                                <asp:Literal ID="LSchoolName" runat="server" Text=""></asp:Literal></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Literal ID="Literal14" runat="server" Text="12th Percentage :"></asp:Literal></td>
                            <td>
                                <asp:Literal ID="LPercentage" runat="server" Text=""></asp:Literal></td>
                        </tr>
                        <tr>
                           
                        <td>
                             <asp:Button ID="btnPrevStep2" runat="server" Text="Previous" />
                        </td>
                        <td>
                           
                        </td>

                        </tr>



                    </table>
                </asp:View>

            </asp:MultiView>
            

        </div>
    </div>
</asp:Content>


<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="StudentDetailMaster.aspx.vb" Inherits="StudentDetailMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 48%;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            height: 22px;
            width: 95px;
        }
        .auto-style4 {
            width: 95px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <div>
            <div>
                <h1>Student Detail Master</h1>
            </div>
            <div>

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text="Roll No :"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtRollNo" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label2" runat="server" Text="Full Name :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label3" runat="server" Text="Class :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtClass" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label4" runat="server" Text="Department :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListDepartment" runat="server">
                                <asp:ListItem>--Select Department--</asp:ListItem>
                                <asp:ListItem>Commerce</asp:ListItem>
                                <asp:ListItem>Information &amp; Technology</asp:ListItem>
                                <asp:ListItem>Arts</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>

            </div>

            <div>

                <asp:Button ID="btnInsert" runat="server" Text="Insert" />
                <asp:Button ID="btnView" runat="server" Text="View" />

            </div>
            <div>
                <asp:GridView ID="GridViewStudentDetails" runat="server" AutoGenerateColumns="False" DataKeyNames="StudID">
                    <Columns>
                        <asp:BoundField DataField="StudID" HeaderText="Student ID" ReadOnly="True" SortExpression="StudID" />
                        <asp:BoundField DataField="RollNo" HeaderText="Roll No" ReadOnly="True" SortExpression="RollNo" />
                        <asp:BoundField DataField="StudName" HeaderText="Student Name" ReadOnly="True" SortExpression="StudName" />
                        <asp:BoundField DataField="Class" HeaderText="Class" ReadOnly="True" SortExpression="Class" />
                        <asp:BoundField DataField="Department" HeaderText="Department" ReadOnly="True" SortExpression="Department" />
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:Button ID="btnEdit" runat="server" CommandName="Select" Text="Edit" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>


</asp:Content>


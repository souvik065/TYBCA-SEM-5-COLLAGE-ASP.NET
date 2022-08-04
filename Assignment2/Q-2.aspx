<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Q-2.aspx.vb" Inherits="Q_2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 168px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div>
            <div><h1>Fill the Following Details</h1></div>
            <div>

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text="Country :"></asp:Label>
                        </td>
                        <td>
                            <asp:ListBox ID="ListBoxCountry" runat="server"></asp:ListBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Text="State :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownListState" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label3" runat="server" Text="Hobbie :"></asp:Label>
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBoxMakingMusic" runat="server" Text="Music Production" />
                            <asp:CheckBox ID="CheckBoxDjing" runat="server" Text="Djing" />
                            <br />
                            <asp:CheckBox ID="CheckBoxSketching" runat="server" Text="Sketching" />
                            <asp:CheckBox ID="CheckBoxGames" runat="server" Text="Games" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label4" runat="server" Text="Course :"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButtonBBA" runat="server" Text="BBA" />
                            <asp:RadioButton ID="RadioButtonBCOM" runat="server" Text="BCOM" />
                            <asp:RadioButton ID="RadioButtonBCA" runat="server" Text="BCA" />
                        </td>
                    </tr>
                </table>
                <div>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                </div>

            </div>
        </div>
    </div>
</asp:Content>


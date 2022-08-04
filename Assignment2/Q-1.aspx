<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Q-1.aspx.vb" Inherits="Q_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div>
            <div>
                <asp:Label ID="Label1" runat="server" Text="Enter your Name :"></asp:Label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="tbnSubmit" runat="server" Text="Submit" />
            </div>
            <div>
                <asp:Label ID="lb2" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>


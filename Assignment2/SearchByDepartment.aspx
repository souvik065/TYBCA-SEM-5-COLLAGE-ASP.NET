<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SearchByDepartment.aspx.vb" Inherits="SearchByDepartment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Select Your Department :"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>--Select Department--</asp:ListItem>
                <asp:ListItem>Commerce</asp:ListItem>
                <asp:ListItem>Information &amp; Technology</asp:ListItem>
                <asp:ListItem>Arts</asp:ListItem>
            </asp:DropDownList>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <asp:Button ID="btnSearch" runat="server" Text="Search" />

        </div>
    </form>
</body>
</html>

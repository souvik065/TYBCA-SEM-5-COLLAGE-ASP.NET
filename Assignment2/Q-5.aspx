<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Q-5.aspx.vb" Inherits="Q_5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


   
    <div>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <h1>Select your Country</h1>
                <div class=" my-5 mx-5">
                    <asp:RadioButton ID="RadioButtonAustraliya" runat="server" Text="Australiya" />
                    <asp:RadioButton ID="RadioButtonItly" runat="server" Text="Itly" />
                    <asp:RadioButton ID="RadioButtonEurop" runat="server" Text="Europ" />
                    <asp:RadioButton ID="RadioButtonIndia" runat="server" Text="India" />
                </div>
                <div>
                    <asp:Button ID="btnNext" runat="server" Text="Next" />
                </div>
            </asp:View>

            <asp:View ID="View2" runat="server">
                <div class="flex space-x-5 my-5 mx-5">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/IMG/licensed-image.jpg" />
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/IMG/licensed-image (1).jpg" />
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/IMG/images.jpg" />
                </div>
            </asp:View>


        </asp:MultiView>
    </div>

</asp:Content>


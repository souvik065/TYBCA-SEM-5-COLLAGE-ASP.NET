<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Appoinment.aspx.vb" Inherits="Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  
	


<section class="page-title bg-1">
  <div class="overlay"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="block text-center">
          <span class="text-white">Book your Seat</span>
          <h1 class="text-capitalize mb-5 text-lg">Appoinment</h1>

          <!-- <ul class="list-inline breadcumb-nav">
            <li class="list-inline-item"><a href="index.html" class="text-white">Home</a></li>
            <li class="list-inline-item"><span class="text-white">/</span></li>
            <li class="list-inline-item"><a href="#" class="text-white-50">Book your Seat</a></li>
          </ul> -->
        </div>
      </div>
    </div>
  </div>
</section>

<section class="appoinment section">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
          <div class="mt-3">
            <div class="feature-icon mb-3">
              <i class="icofont-support text-lg"></i>
            </div>
             <span class="h3">Call for an Emergency Service!</span>
              <h2 class="text-color mt-3">+84 789 1256 </h2>
          </div>
      </div>

      <div class="col-lg-8">
           <div class="appoinment-wrap mt-5 mt-lg-0 pl-lg-5">
            <h2 class="mb-2 title-color">Book an appoinment</h2>
            <p class="mb-4">Mollitia dicta commodi est recusandae iste, natus eum asperiores corrupti qui velit . Iste dolorum atque similique praesentium soluta.</p>
              
                    <div class="row">
                         <div class="col-lg-6">
                            <div class="form-group">
                                <asp:DropDownList ID="DDDepartment" class="form-control" runat="server">
                                    <asp:ListItem Value="null">--Select Department--</asp:ListItem>
                                    <asp:ListItem>Medicine</asp:ListItem>
                                    <asp:ListItem>Surgery</asp:ListItem>
                                    <asp:ListItem>Gynaecology</asp:ListItem>
                                    <asp:ListItem>Neurology</asp:ListItem>
                                    <asp:ListItem>Cardiology</asp:ListItem>
                                </asp:DropDownList>
                               
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                 <asp:DropDownList ID="DDDoctor" class="form-control" runat="server">
                                     <asp:ListItem Value="null">--Select Doctor--</asp:ListItem>
                                     <asp:ListItem>Kiran Trevide</asp:ListItem>
                                     <asp:ListItem>Ketan Choksi</asp:ListItem>
                                     <asp:ListItem>Amish Patel</asp:ListItem>
                                     <asp:ListItem>Segal Shukla</asp:ListItem>
                                 </asp:DropDownList>
                               
                            </div>
                        </div>

                         <div class="col-lg-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtDate" class="form-control" placeholder="dd/mm/yyyy" runat="server"></asp:TextBox>

                               
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtTime"  class="form-control" placeholder="Time" runat="server"></asp:TextBox>
                                
                            </div>
                        </div>
                         <div class="col-lg-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtFullName"  class="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                               
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtPhoneNumber" class="form-control" placeholder="Phone Number" runat="server"></asp:TextBox>
                               
                            </div>
                        </div>
                    </div>
                    <div class="form-group-2 mb-4">
                        <asp:TextBox ID="txtMessage" class="form-control" rows="6" placeholder="Your Message" runat="server"></asp:TextBox>
                        
                    </div>
                     <asp:LinkButton ID="LBtnMakeAppoinment" class="btn btn-main btn-round-full" runat="server">Make Appoinment</asp:LinkButton>
                   
                
            </div>
        </div>
      </div>
    </div>
  
</section>

</asp:Content>


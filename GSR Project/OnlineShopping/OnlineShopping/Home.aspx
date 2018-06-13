<%@ Page Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OnlineShopping.Home" %>


  

<asp:Content contentplaceholderid="ContentPlaceHolder1" runat="Server" xmlns:asp="#unknown">
    
    <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
    

    <div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <div class="container">

                <div class="row">

                    <div class="col-lg-12">
                        <h1 class="page-header">Welcome
                    <small><font color="red"></font>, Online Shopping
                    </small>
                        </h1>
                    </div>
                </div>                
                </div>

            <div class="row">
            <div class="col-lg-12">
                        <h4 class="page-header">
                    <small><font color="red"></font>Ltest Items
                    </small>
                        </h4>
                    </div>
                 <form id="Form1" method="post" runat="server">
            <asp:Repeater id="Repeater1" runat="server">
            <ItemTemplate>         
             <div class="col-md-3 portfolio-item">
                        <a href="ItemsDisplay.aspx?Id=<%# DataBinder.Eval(Container.DataItem,"ItemID") %>">
                           
                            <img class="img-responsive" src='Images/Items/<%# DataBinder.Eval(Container.DataItem,"ImageURL") %>' style="width:300px; height:200px;">
                        </a>
                    </div>
	        </ItemTemplate>
            </asp:Repeater>
   
                </div>

            <div class="row">
            <div class="col-lg-12">
                        <h4 class="page-header">
                    <small><font color="red"></font>Ltest Brands
                    </small>
                        </h4>
                    </div>
                 
      <asp:Repeater id="Repeater2" runat="server">
         <ItemTemplate>         
             <div class="col-md-3 portfolio-item">
                        <a href="BrandItems.aspx?Id=<%# DataBinder.Eval(Container.DataItem,"BrandID") %>">
                           
                            <img class="img-responsive" src='Images/BrandLogos/<%# DataBinder.Eval(Container.DataItem,"BrandImgUrl") %>' style="width:300px; height:200px;">
                        </a>
                    </div>
	 </ItemTemplate>
      </asp:Repeater>
                   
                </div>

            <div class="row">
            <div class="col-lg-12">
                        <h4 class="page-header">
                    <small><font color="red"></font>Ltest Categories
                    </small>
                        </h4>
                    </div>
                 
      <asp:Repeater id="Repeater3" runat="server">
         <ItemTemplate>         
             <div class="col-md-3 portfolio-item">
                        <a href="CategoriesItems.aspx?Id=<%# DataBinder.Eval(Container.DataItem,"CategoryID") %>">
                           
                            <img class="img-responsive" src='Images/BrandLogos/<%# DataBinder.Eval(Container.DataItem,"CategoryImgUrl") %>' style="width:300px; height:200px;">
                        </a>
                    </div>
	 </ItemTemplate>
      </asp:Repeater>
   </form>
                </div> 

            </div>
        </div>
    </div>

 <!-- Core Scripts - Include with every page -->
    


    
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    </asp:Content>

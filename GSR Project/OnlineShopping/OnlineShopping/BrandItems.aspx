﻿<%@ Page Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="BrandItems.aspx.cs" Inherits="OnlineShopping.BrandItems" %>


<asp:Content contentplaceholderid="ContentPlaceHolder1" runat="Server" xmlns:asp="#unknown">    

<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            <small>OnlineShopping electronics</small>
                        </h1>
                    </div>
                </div>
                <form id="Form1" method="post" runat="server">  
                    <div class="row">
                       
                        <div class="col-md-4 portfolio-item">
                            <asp:HyperLink ID="HyperLink1" runat="server">
                                <asp:Label ID="ItemName" runat="server"></asp:Label>
                                <asp:Image ID="Imgrl" class="img-responsive" runat="server"></asp:Image>
                                <asp:Label ID="ItemDesc" runat="server"></asp:Label>
                                <asp:Label ID="Price" runat="server"></asp:Label>

                 
</asp:HyperLink>
                        </div>
                       
                      </div>
          
              </form>                 
                    <br />
            </div>
        </div>
    </div>
</div>
 <!-- Core Scripts - Include with every page -->
    <script src="Content/bootstrap/js/jquery-1.10.2.js"></script>

    </asp:Content>
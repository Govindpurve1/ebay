<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="cmsOrders.aspx.cs" Inherits="OnlineShopping.cmsOrders" %>

<asp:Content contentplaceholderid="ContentPlaceHolder1" runat="Server" xmlns:asp="#unknown">

    
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Order's List</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    these are the available Order's at eBuy
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
                        <form id="Form1" runat="server">                             
             <asp:GridView class="table table-striped table-bordered table-hover" ID="dataTables" runat="server" PageSize="10" 
                  AutoGenerateColumns="false" AllowPaging="true" 
                  >
                 
            <Columns>
                <asp:BoundField DataField="CategoryName" HeaderText="Category Name" ReadOnly="True" 
                    SortExpression="CategoryName" />
                <asp:BoundField DataField="BrandName" HeaderText="Brand Name" ReadOnly="True" 
                    SortExpression="BrandName" />
                <asp:BoundField DataField="ItemName" HeaderText="Item Name" 
                    SortExpression="ItemName" />
                <asp:BoundField DataField="Price" HeaderText="Price" 
                    SortExpression="Price" />
                              <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                    SortExpression="Quantity" />
                

            </Columns>
                
        </asp:GridView> 
                          </form>
                    </div>
                    <!-- /.table-responsive -->

                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
</div>

<script src="Content/bootstrap/js/jquery-1.10.2.js"></script>



</asp:Content>
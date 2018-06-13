<%@ Page Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="OnlineShopping.Order" %>

<asp:content contentplaceholderid="ContentPlaceHolder1" runat="Server" xmlns:asp="#unknown">
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
                    these are the available Order's at Onlineshopping
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
                        <asp:Label ID="TxtMsg" runat="server" CssClass="text-danger"></asp:Label>
                          <form id="Form1" runat="server">                             
             <asp:GridView class="table table-striped table-bordered table-hover" ID="dataTables" runat="server" PageSize="10" 
                  AutoGenerateColumns="false" AllowPaging="true" DataKeyNames="ItemOrderID"
                  >
                 
            <Columns>
                <asp:BoundField DataField="CategoryName" HeaderText="Category Name" ReadOnly="True" 
                    SortExpression="CategoryName" />
                <asp:BoundField DataField="BrandName" HeaderText="Brand Name" ReadOnly="True" 
                    SortExpression="BrandName" />
                <asp:BoundField DataField="ItemName" HeaderText="Item Name" 
                    SortExpression="ItemName" />
            
                             
                <asp:TemplateField HeaderText="Delete">
                 <ItemTemplate>
                <asp:LinkButton ID="lnkdelete" runat="server"   OnClick="lnkdelete_Click" class="glyphicon glyphicon-trash"></asp:LinkButton>
                </ItemTemplate>
                  </asp:TemplateField>               

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



 <!-- Core Scripts - Include with every page -->
    <script src="@Url.Content("~/Content/bootstrap/js/jquery-1.10.2.js")"></script>

    </asp:content>

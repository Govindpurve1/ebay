<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="cmsQueries.aspx.cs" Inherits="OnlineShopping.cmsQueries" %>

<asp:Content contentplaceholderid="ContentPlaceHolder1" runat="Server" xmlns:asp="#unknown">

    <div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Customer Queries List</h1>
            <h5>@ViewBag.sucMsg</h5>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                  these are the available Queries at eBuy
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
                        
                           <form id="Form1" runat="server">                             
             <asp:GridView class="table table-striped table-bordered table-hover" ID="dataTables" runat="server" PageSize="10" 
                  AutoGenerateColumns="false" AllowPaging="true" DataKeyNames="QueryID" OnPaging="dataTables_SelectedIndexChanged"
                  >
                 
            <Columns>
                <asp:BoundField DataField="QueryID" HeaderText="QueryID" ReadOnly="True" 
                    SortExpression="QueryID" />
                <asp:BoundField DataField="Customer" HeaderText="Customer Name" ReadOnly="True" 
                    SortExpression="Customer" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="QueryDate" HeaderText="Query Date" 
                    SortExpression="QueryDate" />
                <asp:TemplateField HeaderText="Action">
                 <ItemTemplate>
                <asp:LinkButton ID="lnkEdit" runat="server"    class="btn btn-outline btn-warning btn-xs">Replay</asp:LinkButton>
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

<script src="Content/bootstrap/js/jquery-1.10.2.js"></script>

</asp:Content>
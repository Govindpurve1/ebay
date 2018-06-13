<%@ Page Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="ItemsDisplay.aspx.cs" Inherits="OnlineShopping.ItemsDisplay" %>

<asp:Content contentplaceholderid="ContentPlaceHolder1" runat="Server">
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            <small>eBuy electronics</small>
                        </h1>
                        <h5><asp:Label ID="TxtMsg" runat="server"></asp:Label></h5>
                    </div>
                </div>

                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <a href="Items.aspx">Back to Items</a>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form id="Form1" method="post" runat="server">  
                                        <div class="form-group">
                                            <label>Product Name : <b><asp:Label ID="ItemName" runat="server"></asp:Label></b></label>
                                        </div>
                                        <div class="form-group">
                                            <label>
                                             <asp:Image class="img-responsive" ID="Imgrl" runat="server" /></label>
                                        </div>
                                        <div class="form-group">
                                            <label>Product Description : <b><asp:Label ID="ItemDesc" runat="server"></asp:Label></b></label>
                                        </div>
                                        <div class="form-group">
                                            <label>Product Price : <b>$ <asp:Label ID="Price" runat="server"></asp:Label></b></label>
                                        </div>
                                        <div class="form-group">
                                            <label>Product Offer : <b><asp:Label ID="ItemOffer" runat="server"></asp:Label></b></label>
                                        </div>                                        
                                        <div class="form-group">
                                            <label>Product Quantity : </label>
                                            <asp:TextBox ID="ChkQuantity" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:Label ID="ErrorTxt" CssClass="text-danger" runat="server"></asp:Label>
                                            <asp:HiddenField ID="ItemID" runat="server"></asp:HiddenField>
                                            <asp:HiddenField ID="InventoryID" runat="server"></asp:HiddenField>
                                        </div>
                                        <div class="form-group">
                                            <asp:Button ID="ClicktoBuyOrder" runat="server" class="btn btn-success" Text="Click to Buy" OnClick="ClicktoBuyOrder_Click" />
                                            
                                           <asp:Button ID="AddtoCart" runat="server" class="btn btn-default" Text="Add to Cart" OnClick="AddtoCart_Click" />
                                            
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
            </div>
        </div>
    </div>
</div>
<script src="UScripts/jquery-1.7.1.js"></script>
<script>
    $(document).ready(function () {
        var SelectItemId = "";
        var Quantity = "";
        var InventoryId = "";
        // Click on Order to check the Quantity 
        $("#ClicktoBuyOrder").click(function () {
            CkeckQuantity();

        });

        // Change on Quantity to check the Quantity 
        $("#ContentPlaceHolder1_ChkQuantity").change(function () {
            SelectItemId = $("#ItemId_").val();
            Quantity = $("#ChkQuantity").val();
            InventoryId = $("#InventryI_").val();

            if (SelectItemId != '') {
                CkeckQuantity();
            }
        });

        // Check Quantity with function
        function CkeckQuantity() {
            $.post('@Url.Action("CheckQuantity","Items")',
                    {
                        ItemId: SelectItemId,
                        Quantity: Quantity,
                        InventoryId: InventoryId
                    },
                function (data, status) {
                    // alert("Data: " + data + "\nStatus: " + status);
                    $(".CheckQuantity").text('');
                    if (data == 1)
                    { }
                    else if (data == 0)
                    { $(".CheckQuantity").text('requested quantity is not available.'); }
                    else if (data == 404)
                    { window.location = '@Url.Action("Error")'; }

                });
        }
    });

</script>


</asp:Content>
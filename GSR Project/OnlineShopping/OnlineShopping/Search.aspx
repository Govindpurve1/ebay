﻿<%@ Page Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="OnlineShopping.Search" %>

<asp:Content contentplaceholderid="ContentPlaceHolder1" runat="Server" xmlns:asp="#unknown">

    <div id="page-wrapper">
    <div class="row">
        <div class="col-lg-6">
            <h1 class="page-header">Available Items</h1>
            <p>@ViewBag.sucMsg</p>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    These are the available items at eBuy
                </div>
                <!-- /.panel-heading -->

                <div class="panel-body">
                    <div class="table-responsive">

                        <p>@ViewBag.Count Item(s) are in search to buy.</p>
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                                <tr>
                                    <th>Brand/ Supplier</th>
                                    <th>Category</th>
                                    <th>Item</th>
                                    <th>Price $</th>
                                    <th>Add to Cart</th>
                                    @*<th>Buy</th>*@
                                </tr>
                            </thead>
                            <tbody>
                                @{
                                    string _class = string.Empty;
                                    int _cout = 0;
                                    if (Model != null)
                                    {
                                        foreach (var item in Model)
                                        {

                                            if (_cout == 0)
                                            {
                                                _cout = 1;
                                                _class = "odd gradeA";
                                            }
                                            if (_cout == 1)
                                            {
                                                _cout = 0;
                                                _class = "even gradeA";
                                            }
                                       
                                       
                                    <tr class="@_class">
                                        <td>@item.BrandName</td>
                                        <td>@item.CategoryName</td>
                                        <td>@item.ItemName</td>
                                        <td>$ @item.Price</td>
                                        <td><a href="@Url.Action("AddCart", "Search", new { id = item.ItemID,price=item.Price })" class="btn btn-default">Add to Cart</a></td>
                                      @*  <td><a href="@Url.Action("AddCart", "Search", new { id = item.ItemID,price=item.Price })" class="btn btn-success">Click to Buy</a></td>*@
                                    </tr>
                                        }
                                    }
                                }
                            </tbody>
                        </table>
                    </div>
                    <!-- /.table-responsive -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
</div>
 <!-- Core Scripts - Include with every page -->
    <script src="@Url.Content("~/Content/bootstrap/js/jquery-1.10.2.js")"></script>

    </asp:Content>
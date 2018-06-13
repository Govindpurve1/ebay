<%@ Page Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="QueriesCreate.aspx.cs" Inherits="OnlineShopping.QueriesCreate" %>


<asp:Content contentplaceholderid="ContentPlaceHolder1" runat="Server" xmlns:asp="#unknown">




    <div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Create-Query</h1>
            <span>@ViewBag.sucMsg</span>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    @Html.ActionLink("Back to Query", "Index", "Queries")
                </div>
                <div class="panel-body">
                    <div class="row">
                        
                        <div class="col-lg-6">
                            
                            @using (Html.BeginForm("CreateQuery", "Queries", FormMethod.Post, new {id = "QueryValidation" }))
                            {

                                <div class="form-group">
                                    <label>Query Description</label>
                                    <textarea class="form-control" placeholder="Enter query description" cols="2" name="Description"></textarea>
                                </div>
                                <div class="form-group">
                                    <input name="Input" type="submit" value="Submit" class="btn btn-default" />
                                    <input name="Input" type="reset" value="Reset" class="btn btn-default" />
                                </div>

                            }
                        </div>
                    </div>
                </div>

                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
</div>

<script src="@Url.Content("~/Scripts/jquery-1.7.1.js")"></script>
<script src="@Url.Content("~/Scripts/jquery.validate.js")"></script>
<script src="@Url.Content("~/Scripts/jquery-form-validation-V.1.js")"></script>
    </asp:Content>

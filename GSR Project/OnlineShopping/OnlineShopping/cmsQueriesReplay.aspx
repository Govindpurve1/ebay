﻿<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="cmsQueriesReplay.aspx.cs" Inherits="OnlineShopping.cmsQueriesReplay" %>

<asp:Content contentplaceholderid="ContentPlaceHolder1" runat="Server" xmlns:asp="#unknown">


    <div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Create-QueryReplay</h1>
            <span>@ViewBag.sucMsg</span>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    @Html.ActionLink("Back to Query", "Index", "cmsQueries")
                </div>
                <div class="panel-body">
                    <div class="row">
                        
                        <div class="col-lg-6">
                            
                            @using (Html.BeginForm("Replay", "cmsQueries", FormMethod.Post, new {id = "" }))
                            {
                                
                                <div class="form-group">
                                    <label>Query Description</label>
                                     <textarea class="form-control"  cols="2" readonly >@ViewBag.Query</textarea>
                                    <input type="hidden" value="@ViewBag.QueryId" name="QueryId" />
                                </div>
                                <div class="form-group">
                                    <label>Solution Description</label>
                                    <textarea  class="form-control" placeholder="Enter query description" cols="2" name="Solution1"></textarea>
                                </div>
                                <div class="form-group">
                                    <input name="Input" type="submit" value="Submit" class="btn btn-success" />
                                    <input name="Input" type="button" value="Clear" class="btn btn-default" />
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
</asp:Content>

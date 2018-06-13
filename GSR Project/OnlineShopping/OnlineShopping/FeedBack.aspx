<%@ Page Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" Inherits="OnlineShopping.FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Create-FeedBack</h1>
                <h6 class="text-success">
                    <asp:Label runat="server" ID="TxtMsg"></asp:Label></h6>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a href="Home.aspx">Back to Home</a>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">

                                <form runat="server" method="post" id="CreatefeedbackformValidation">

                                    <div class="form-group">
                                        <label>Brand</label>
                                        <asp:DropDownList ID="DDLBrands" CssClass="form-control" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label>Category</label>
                                        <asp:DropDownList ID="DDLCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label>Item</label>
                                        <asp:DropDownList ID="DDLItems" CssClass="form-control" runat="server"></asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <label>FeebBack Description</label>
                                        <asp:TextBox ID="FeedbackDesc" CssClass="form-control" placeholder="please enter Feedback description" TextMode="multiline" Columns="50" Rows="5" runat="server" />
                                    </div>
                                   
                                    <asp:Button ID="CreateFeedback" class="btn btn-success" runat="server" Text="Submit" OnClick="CreateFeedback_Click"></asp:Button>
                                    <button type="reset" class="btn btn-default">Reset</button>

                                </form>

                            </div>
                        </div>
                        <!-- /.row (nested) -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
    </div>

    <script src="Scripts/jquery-1.7.1.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <script>
        $(document).ready(function () {
            //$("#CreateBrandformValidation").validate({

            //    rules: {
            //        BrandName: { required: true }


            //    },
            //    messages: {
            //        BrandName: { required: 'Please enter category name.' }

            //    },
            //    submitHandler: function (form) {
            //        form.submit();
            //    }
            //});
        })
    </script>

</asp:Content>

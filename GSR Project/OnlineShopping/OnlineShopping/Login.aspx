<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineShopping.Login" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>OnlineShopping - login</title>

    
    <link href="Content/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Page-Level Plugin CSS - Forms -->

    <!-- SB Admin CSS - Include with every page -->
    <link href="Content/bootstrap/css/sb-admin.css" rel="stylesheet" />
</head>

<body>

    <div id="wrapper">
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                </button>
                <a class="Login.aspx">Online Shopping</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <a href="Login.aspx">Sign In</a>
                </li>
                <li>
                    <a href="Registration.aspx" class="btn btn-success btn-xs">New User - Sign Up for Onlineshopping</a>
                </li>


            </ul>
        </nav>

        <div class="container">

            <div class="row">

                <div class="col-md-4 col-md-offset-4">

                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Please Sign In to Online shopping</h3>
                        </div>
                        <div class="panel-body">
                            <div align="center">
                                <img src="Images/Onlineshop.png" width="100" height="100">
                            </div>
                            <span class="text-success"><asp:Label ID="TxtMsg" runat="server"></asp:Label></span>
                            <form id="ValidateLogin" method="post" action="" runat="server">                             

                                <div class="form-group">

                                    <asp:TextBox runat="server" class="form-control" placeholder="username" ID="Loginname" type="text" name="Loginname" />
                                </div>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Password" runat="server" class="form-control" placeholder="Password" name="Password" ID="Password" />
                                </div>
                               
                                <!-- Change this to a button or input when using this as a form -->
                                <asp:Button ID="LoginAccess" runat="server" class="btn btn-primary" Text="Sign In" OnClick="LoginAccess_Click" />
                                
                                <a href="Registration.aspx" class="btn btn-success">Sign Up for Shopping</a>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>    

     <script src="Scripts/jquery-1.7.1.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <script src="Scripts/jquery-form-validation-V.1.js"></script>

</body>

</html>

<style>
        form label.error {
        font: 10px Tahoma,sans-serif;
        color: #ED7476;
        margin-left: 5px;
    }

    form input.error, form input.error:hover, form input.error:focus, form select.error,
    form textarea.error {
        border: 1px solid #ED7476;
        background: #FFEDED;
    }
    </style>
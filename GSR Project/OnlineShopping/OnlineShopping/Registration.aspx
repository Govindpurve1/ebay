<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OnlineShopping.Registration" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>OnlineShopping-Registration</title>

    <!-- Core CSS - Include with every page -->

    <link href="Content/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <link href="Content/bootstrap/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!-- Page-Level Plugin CSS - Forms -->

    <!-- SB Admin CSS - Include with every page -->
    <link href="Content/bootstrap/css/sb-admin.css" rel="stylesheet" />

    <script type="text/javascript" src="scripts/general.js"> </script>
    <script type="text/javascript" src="scripts/ts_picker.js"> </script>
</head>
<body>

    <div id="wrapper">
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">

                <a class="navbar-brand" href="Login.aspx">Online Shopping</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <a href="Login.aspx">Sign In</a>
                </li>
                <li>
                    <a href="Registration.aspx" class="btn btn-success btn-xs">New User - Sign Up</a>
                </li>
            </ul>
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Registration</h3>
                        </div>
                        <div class="panel-body">
                            <asp:Label runat="server" ID="TxtMsg" CssClass="text-success"></asp:Label>
                            <form id="ValidateRegistration" method="post" runat="server">

                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="Firstname" class="form-control" placeholder="First Name" type="text" name="Firstname" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="Lastname" class="form-control" placeholder="Last Name" type="text" name="Lastname" ></asp:TextBox>
                                </div>
                               
                                 <div class="form-group">
                                    <p>
                                        <asp:TextBox runat="server" ID="Birthdate" class="form-control" placeholder="Birth Date DD/MMM/YYYY" name="Birthdate" ></asp:TextBox>
                                        <a href="javascript:show_calendar('document.register.Birthdate', document.register.Birthdate.value);" class="fa fa-calendar"></a>                                        
                                    </p>
                                </div>

                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="Hno" class="form-control" placeholder="Apt No#" type="text" name="Hno" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="Street" class="form-control" placeholder="Street Name..." type="text" name="Street" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="City" class="form-control" placeholder="Enter City..." type="text" name="City" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>State</label>
                                    <asp:DropDownList runat="server" ID="State" class="form-control" name="State">
                                        
                                        <asp:ListItem Value="Tennessee">Tennessee</asp:ListItem>
                                        <asp:ListItem Value="Texas">Texas</asp:ListItem>
                                        <asp:ListItem Value="IOWA">IOWA</asp:ListItem>
                                        <asp:ListItem Value="New York">New York</asp:ListItem>
                                        <asp:ListItem Value="Missouri">Missouri</asp:ListItem>
                                        <asp:ListItem Value="Mississippi">Mississippi</asp:ListItem>
                                        <asp:ListItem Value="Arkansas">Arkansas</asp:ListItem>
                                        <asp:ListItem Value="Alabama">Alabama</asp:ListItem>
                                        <asp:ListItem Value="California">California</asp:ListItem>
                                        <asp:ListItem Value="Utah">Utah</asp:ListItem>
                                        <asp:ListItem Value="Washington">Washington</asp:ListItem>
                                        <asp:ListItem Value="Delaware">Delaware</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <label>Country</label>
                                    <asp:DropDownList runat="server" ID="Country" class="form-control" name="Country">
                                        <asp:ListItem Value="United States">United States</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="Pincode" class="form-control" placeholder="Zipcode" type="text" name="Pincode" ></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="ContactNo" class="form-control" placeholder="Mobile Number" type="text" name="ContactNo" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="Email" class="form-control" placeholder="E-mail"   name="Email"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="Loginname" class="form-control" placeholder="Username" name="Loginname" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" class="form-control" placeholder="Password" name="Password" TextMode="Password" ID="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Security Question</label>
                                    <asp:DropDownList runat="server" ID="Squestionid" class="form-control" name="Squestionid">
                                        <asp:ListItem value="1">What is your favorite pastime?</asp:ListItem>
                                        <asp:ListItem value="2">Who your childhood hero?</asp:ListItem>
                                        <asp:ListItem value="3">What is the name of your first school?</asp:ListItem>
                                        <asp:ListItem value="4">Where did you meet your spouse?</asp:ListItem>
                                        <asp:ListItem value="5">What is your favorite sports team?</asp:ListItem>
                                        <asp:ListItem value="6">What is your father's middle name?</asp:ListItem>
                                        <asp:ListItem value="7">What was your high school mascot?</asp:ListItem>
                                        <asp:ListItem value="8">What make was your first car or bike?</asp:ListItem>
                                        <asp:ListItem value="9">What is your pet's name?</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="Sanswer" class="form-control" placeholder="Answer" name="Sanswer" ></asp:TextBox>
                                </div>
                                <div class="form-group">

                                    <asp:Button ID="CreateRegistration" runat="server" Text="Register" class="btn btn-success" OnClick="CreateRegistration_Click" />
                                    
                                    <a href="Login.aspx" class="btn btn-primary">Already Member- Sign In</a>
                                </div>



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


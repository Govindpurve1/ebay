<%@ Page Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Items.aspx.cs" Inherits="OnlineShopping.Items" %>

<asp:Content contentplaceholderid="ContentPlaceHolder1" runat="Server" xmlns:asp="#unknown">

    <div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            <small>eBuy electronics</small>
                        </h1>
                    </div>
                </div> <div class='row'>
               <form id="Form1" method="post" runat="server">
                 <asp:Repeater id="Repeater1" runat="server">
         <ItemTemplate>      
                      
                    <div class="col-md-4 portfolio-item">
                        <a href="Display.aspx?id=<%# DataBinder.Eval(Container.DataItem,"ItemID") %>">
                            <label><%# DataBinder.Eval(Container.DataItem,"ItemName") %></label>
                            <img class="img-responsive" src='images/Items/<%# DataBinder.Eval(Container.DataItem,"ImageURL") %>' style="width:200px; height:200px;">
                            <label><%# DataBinder.Eval(Container.DataItem,"ItemDesc") %></label><br />
                            Price: <b><%# DataBinder.Eval(Container.DataItem,"Price") %></b>
                        </a>
                    </div>
                      
                     </ItemTemplate>
      </asp:Repeater>
   </form>
                    </div>
            </div>
        </div>
    </div>
</div>
 <!-- Core Scripts - Include with every page -->
    <script src="Content/bootstrap/js/jquery-1.10.2.js"></script>

</asp:Content>

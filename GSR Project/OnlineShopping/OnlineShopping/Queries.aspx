<%@ Page Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Queries.aspx.cs" Inherits="OnlineShopping.Queries" %>

<asp:Content contentplaceholderid="ContentPlaceHolder1" runat="Server" xmlns:asp="#unknown">
    <div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">View Queries Response List</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    these are the available Queries Response at eBuy
                </div>


                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                                <tr>
                                    <th>S.No</th>
                                    <th>Query Description</th>
                                    <th>Created Date</th>
                                    <th>Response Query</th>
                                    <th>Response Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                @{
                                    string _class = string.Empty;
                                    int _cout = 0;
                                    int _cout00 = 0;
                                    int ItemsQuery = 0;
                                    if (ViewBag.AllQueries != null)
                                    {
                                        foreach (var item in ViewBag.AllQueries)
                                        {
                                            _cout00 += 1;
                                            ItemsQuery = item.QueryID;
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
                                        <td>@_cout00</td>
                                        <td>@item.Description</td>
                                        <td>@item.QueryDate.ToShortDateString()</td>

                                        @{IList<Solution> _Response = DB.Solutions.Where(x => x.QueryId == ItemsQuery).Take(1).ToList();
                                          if (_Response.Count() == 0)
                                          {
                                            <td class="text-warning">Thanks for contacting admin department, will get back you soon.</td>
                                            <td>@item.QueryDate.ToShortDateString()</td>
                                          }
                                          else
                                          {
                                              foreach (var item1 in _Response.ToList())
                                              {
                                            <td class="text-success">@item1.Solution1</td>
                                            <td>@item1.SolvedDate.Value.ToShortDateString()</td>
                                              }
                                          }
                                                   
                                        }
                                    </tr>
                                                   
                                        }
                                    }
                                }

                            </tbody>
                        </table>
                    </div>
                    <!-- /.table-responsive -->

                </div>


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

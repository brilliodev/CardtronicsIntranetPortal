<%@ Page Language="VB" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns='http://www.w3.org/1999/xhtml'>

<head runat="server">
    <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
    <title>Cardtronics Dashboard</title>
    <meta charset="utf">
    <meta name="viewport" content="width=device-width,inititial-scale=1.0">
    <script src="script.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <form id="form1" runat="server">
       
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server" EnablePageMethods="true">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
            </Scripts>
            
        </telerik:RadScriptManager>
        <script type="text/javascript">
            //Put your JavaScript code here.
            var grid = null;
            var masterTableView = null;

            initialize = function () {
                grid = $find("<%= DashboardRevenueChart.ClientID %>");
            grid.repaint();
        };




        </script>
       
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
            
        </telerik:RadAjaxManager>


        <header>
        <div class="header-content">
            <img class="logo" src="images/download.png">
        </div>
    </header>
        <main class="dashboard-wrapper">
        <p class="title">My Dashboard</p>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8 col-lg-8 padding-r0">
                    <div class="cards">
                        <div class="card-content">
                            <div class="network-header">
                                <img alt="user-icon" class="dashboard-icons" src="images/money-bag.png">
                                <p class="card-title">client listing</p>
                            </div>
                            <div class="col-md-12 col-lg-12">
                            <div  class="col-md-6 col-lg-6"></div>
                            <div  class="col-md-6 col-lg-6">
                            <div class="col-md-4 col-lg-4">
                                <asp:Label Text="Monthly Revenue" runat="server"></asp:Label>
                                
                                <telerik:RadTextBox RenderMode="Lightweight" runat="server" ID="SetTargetMarkerTxtBox" Width="100px" Text=""></telerik:RadTextBox>
                                <telerik:RadButton RenderMode="Lightweight" ID="SetTargetMarker" runat="server" OnClick="TargetMarkerChanged" Text="Set Target"></telerik:RadButton>
                            </div>
                                
                
                             <div class="col-md-1 col-lg-1 revenue-textbox">
                                <telerik:RadButton RenderMode="Lightweight" ID="RadButton37" runat="server" OnClick="Generate_BarChart">
                                <Icon PrimaryIconCssClass="rbRSS"></Icon>
                            </telerik:RadButton>
                                 
                            </div>

                            <div class="col-md-1 col-lg-1 revenue-textbox">
                                <telerik:RadButton RenderMode="Lightweight" ID="RadButton33" runat="server" OnClick="generateLineSeriesGraph">

                                <Icon PrimaryIconCssClass="rbCart"></Icon>
                                 </telerik:RadButton>
                            </div>

                            </div>
                        </div>

                            <!-- Graph -->
                            <div class="graph-wrapper">
                                 <telerik:RadHtmlChart runat="server" ID="DashboardRevenueChart" Width="100%" Height="250px" Transitions="true">

                                 </telerik:RadHtmlChart>
                                </div>
                                  <div class="stats-wrapper margin-t20">
                                <div class="col-md-3 col-lg-3">
                                    <span class="stats-value">$300K</span>
                                   
                                    <p class="stats-label">TOTAL REVENUE/2019</p>
                                </div>
                                <div class="col-md-3 col-lg-3">
                                    <span class="stats-value">1101</span>
                                   
                                    <p class="stats-label">CLIENT NETWORKS</p>
                                </div>
                                <div class="col-md-3 col-lg-3">
                                    <span class="stats-value">0.5% </span>
                                   
                                    <p class="stats-label">REVENUE MOM</p>
                                </div>
                                       <div class="col-md-3 col-lg-3">
                                    <span class="stats-value">13M</span>
                                   
                                    <p class="stats-label">SEARCHES</p>
                                </div>
                            </div>

                            <!-- Donut Chart -->
                            <div  class="donutChart">
                             <telerik:RadHtmlChart runat="server" ID="DonutChart1" Width="520" Height="500" Transitions="true" Skin="Silk">
                                    <ChartTitle Text="">
                                        <Appearance Align="Center" Position="Top">
                                        </Appearance>
                                    </ChartTitle>
                                    <Legend>
                                        <Appearance Position="Right" Visible="true">
                                        </Appearance>
                                    </Legend>
                                    <PlotArea>
                                        <Series>
                                            <telerik:DonutSeries StartAngle="90"  HoleSize="65" DataFieldY="clientCount" NameField="serviceType">
                                                <LabelsAppearance Position="Center" DataFormatString="{0} " Visible="true"></LabelsAppearance>
                                                <TooltipsAppearance Color="White" DataFormatString="{0}"></TooltipsAppearance>
                                            </telerik:DonutSeries>
                                        </Series>
                                    </PlotArea>
                                </telerik:RadHtmlChart>
                                </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4">
                    <div class="cards cards-right-big">
                        <div class="card-content">
                            <div class="network-header">
                                <img alt="network-icon" class="dashboard-icons" src="images/network.png"/>
                                <p class="card-title">networks</p>
                            </div>
                            <div class="stats-wrapper">
                                <div class="col-md-4 col-lg-4">
                                    <span class="stats-value">02</span>
                                    <span class="circle circle-yellow"></span>
                                    <p class="stats-label">not live</p>
                                </div>
                                <div class="col-md-4 col-lg-4">
                                    <span class="stats-value">2011</span>
                                    <span class="circle circle-green"></span>
                                    <p class="stats-label">live networks</p>
                                </div>
                                <div class="col-md-4 col-lg-4">
                                    <span class="stats-value">15</span>
                                    <span class="circle circle-red"></span>
                                    <p class="stats-label">closed works</p>
                                </div>
                            </div>
                            <div>
                                <telerik:RadHtmlChart runat="server" ID="BarChart" Height="250" Width="400" Transitions="false" Skin="Silk">
                                    <PlotArea>
            <Series>
                <telerik:BarSeries DataFieldY="NotLive" Stacked="true">
                    <LabelsAppearance DataFormatString="{0}" Position="Center"></LabelsAppearance>
                    <Appearance>
                        <FillStyle BackgroundColor="#ffcc66" />
                    </Appearance>
                    <TooltipsAppearance Visible="false"></TooltipsAppearance>
                </telerik:BarSeries>
                <telerik:BarSeries DataFieldY="Live">
                    <LabelsAppearance DataFormatString="{0}" Position="Center"></LabelsAppearance>
                    <Appearance>
                        <FillStyle BackgroundColor="#66ff33" />
                    </Appearance>
                    <TooltipsAppearance Visible="false"></TooltipsAppearance>
                </telerik:BarSeries>
                <telerik:BarSeries DataFieldY="Closed">
                    <LabelsAppearance DataFormatString="{0}" Position="Center"></LabelsAppearance>
                    <Appearance>
                        <FillStyle BackgroundColor="#ff3300" />
                    </Appearance>
                    <TooltipsAppearance Visible="false"></TooltipsAppearance>
                </telerik:BarSeries>
            </Series>
            <XAxis Visible="false" Color="Black" DataLabelsField="Item">
                
                <MajorGridLines Visible="false" Color="White" Width="0" />
                <MinorGridLines Color="White" Width="1" />
            </XAxis>
            <YAxis Visible="false">
                
                <MajorGridLines Color="White" Width="1" />
                <MinorGridLines Color="White" Width="1" />
            </YAxis>
        </PlotArea>
        
                                </telerik:RadHtmlChart>
                            </div>
                        </div>
                    </div>
                    <div class="cards cards-right-small">
                        <div class="card-content">
                            <div class="network-header">
                                <img alt="user-icon" class="dashboard-icons" src="images/user.png">
                                <p class="card-title">user access</p>
                            </div>
                            <div class="stats-wrapper">
                                <div class="col-md-4 col-lg-4">
                                    <span class="stats-value">750</span>
                                    <p class="stats-label">customer portal</p>
                                </div>
                                <div class="col-md-4 col-lg-4">
                                    <span class="stats-value">04</span>
                                    <p class="stats-label">internet portal</p>
                                </div>

                            </div>

                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </main>
    </form>
</body>
</html>

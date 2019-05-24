<%@ Page Language="VB" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns='http://www.w3.org/1999/xhtml'>

<head runat="server">
    <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
    <title>Cardtronics Dashboard</title>
    <meta charset="utf">
    <meta name="viewport" content="width=device-width,inititial-scale=1.0">
    <script src="scripts.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
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
                grid = $find("<%= LineChart.ClientID %>");
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
                                <telerik:RadTextBox RenderMode="Lightweight" disabled runat="server" ID="RadComboBox1" Width="280px" Text="Monthly Revenue"></telerik:RadTextBox>
                            </div>
                            <div class="col-md-1 col-lg-1 revenue-textbox">
                                <telerik:RadButton RenderMode="Lightweight" ID="RadButton33" runat="server">
                                <Icon PrimaryIconCssClass="rbCart"></Icon>
                                 </telerik:RadButton>
                                </div>
                             <div class="col-md-1 col-lg-1 revenue-textbox">
                                <telerik:RadButton RenderMode="Lightweight" ID="RadButton37" runat="server">
                                <Icon PrimaryIconCssClass="rbRSS"></Icon>
                            </telerik:RadButton>
                                
                            </div>
                            </div>
                        </div>

                            <!-- Graph -->
                            <div class="graph-wrapper">
                                 <telerik:RadHtmlChart runat="server" ID="LineChart" Width="100%" Height="250px" Transitions="true">

                                 </telerik:RadHtmlChart>
                               <%--<telerik:RadHtmlChart runat="server" ID="LineChart" Width="100%" Height="250px" Transitions="true">
                                
                          <PlotArea>
                             <Series>
                                 <telerik:LineSeries  Name="" MissingValues="Interpolate">
                                 <LineAppearance  LineStyle="Smooth" />
                                   <Appearance>
                                         <FillStyle BackgroundColor="LightBlue" />
                                   </Appearance>
                <LabelsAppearance DataFormatString="{0}" Position="Above" />
                <MarkersAppearance MarkersType="Square" BackgroundColor="Blue" />
                <SeriesItems>
                    <telerik:CategorySeriesItem Y="115" />
                    <telerik:CategorySeriesItem Y="230" />
                    <telerik:CategorySeriesItem Y="100"/>
                    <telerik:CategorySeriesItem Y="410" />
                    <telerik:CategorySeriesItem Y="330" />
                    <telerik:CategorySeriesItem Y="430" />
                    <telerik:CategorySeriesItem Y="233" />
                    <telerik:CategorySeriesItem Y="113" />
                    <telerik:CategorySeriesItem Y="339" />
                    <telerik:CategorySeriesItem Y="212" />
                    <telerik:CategorySeriesItem Y="163" />
                    <telerik:CategorySeriesItem Y="150" />
                </SeriesItems>
            </telerik:LineSeries>
                                
                             </Series>
                                 <XAxis MajorTickType="Outside" MinorTickType="Outside">
                                     <Items>
                                        <telerik:AxisItem LabelText="JAN 19" />
                                        <telerik:AxisItem LabelText="FEB 19" />
                                        <telerik:AxisItem LabelText="MAR 19" />
                                        <telerik:AxisItem LabelText="APR 19" />
                                        <telerik:AxisItem LabelText="MAY 19" />
                                        <telerik:AxisItem LabelText="JUN 19" />
                                        <telerik:AxisItem LabelText="JUL 19" />
                                        <telerik:AxisItem LabelText="AUG 19" />
                                        <telerik:AxisItem LabelText="SEP 19" />
                                        <telerik:AxisItem LabelText="OCT 19" />
                                        <telerik:AxisItem LabelText="NOV 19" />
                                        <telerik:AxisItem LabelText="DEC 19" />
                                     </Items>
                                     <MajorGridLines Color="#EFEFEF" Width="1" />
                                     <MinorGridLines Color="#F7F7F7" Width="1" />
                                    <TitleAppearance Position="Center" RotationAngle="0" Text="" />
                                 </XAxis>
                                 <YAxis MajorTickSize="1" MajorTickType="Outside" MaxValue="500" MinorTickSize="1"
                                 MinorTickType="Outside" MinValue="0">
                                    <LabelsAppearance DataFormatString="{0}" RotationAngle="0" />
                                    <MajorGridLines Color="#EFEFEF" Width="1" />
                                    <MinorGridLines Color="#F7F7F7" Width="1" />
                                    <TitleAppearance Position="Center" RotationAngle="0" Text="" />
                                 </YAxis>
                         </PlotArea>
                          <ChartTitle Text="">
                          </ChartTitle>
                          <Legend>
                            <Appearance Position="Bottom" />
                          </Legend>

                        </telerik:RadHtmlChart>--%>
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
                            <%-- Progress Bar --%>
                            <div>
                                <telerik:layoutrow  cssclass="jumbotron">
                <columns>
                    <telerik:layoutcolumn span="6" spanmd="12" spansm="12" hiddenxs="true" cssclass="jumbotron">
                        <div class="row">
                            <div class="cell">
                                <span class="rfdasplabel">ls web</span>
                                <span class="rfdasplabel bold">1011 clients / $ 190k</span>
                                <span class="rfdasplabel">&#94; 05% mom</span>
                            </div>                       
                        </div>
                        <telerik:radprogressbar rendermode="lightweight" runat="server"  id="radprogressbar2" bartype="value" showlabel="false" value="75" minvalue="0" maxvalue="100">
                            <clientevents onload="tuningprogressbarload"
                                onvaluechanged="tuningprogressbarvaluechanged"
                                oncompleted="tuningprogressbarcompleted" />
                            <animationsettings duration="0" />
                        </telerik:radprogressbar>
                    </telerik:layoutcolumn>

                    <telerik:layoutcolumn span="6" spanmd="12" spansm="12" hiddenxs="true" cssclass="jumbotron">
                        <div class="row">
                            <div class="cell">
                                <span class="rfdasplabel">di api</span>
                                <span class="rfdasplabel bold">300 clients / $ 30k</span>
                                <span class="rfdasplabel">&#94; 05% mom</span>
                            </div>                       
                        </div>
                        <telerik:radprogressbar rendermode="lightweight" runat="server" id="radprogressbar3" bartype="value" value="45" minvalue="0" maxvalue="100" showlabel="false">
                            <clientevents onload="tuningprogressbarload"
                                onvaluechanged="tuningprogressbarvaluechanged"
                                oncompleted="tuningprogressbarcompleted" />
                            <animationsettings duration="0" />
                        </telerik:radprogressbar>
                    </telerik:layoutcolumn>
                    <telerik:layoutcolumn span="6" spanmd="12" spansm="12" hiddenxs="true" cssclass="jumbotron">
                        <div class="row">
                            <div class="cell">
                                <span class="rfdasplabel">ls api</span>
                                <span class="rfdasplabel bold">450 clients / $ 70k</span>
                                <span class="rfdasplabel">&#94; 05% mom</span>
                            </div>                       
                        </div>
                        <telerik:radprogressbar rendermode="lightweight" runat="server"  id="radprogressbar1" bartype="value" value="50" minvalue="0" maxvalue="100" showlabel="false">
                            <clientevents onload="tuningprogressbarload"
                                onvaluechanged="tuningprogressbarvaluechanged"
                                oncompleted="tuningprogressbarcompleted" />
                            <animationsettings duration="0" />
                        </telerik:radprogressbar>
                    </telerik:layoutcolumn>

                    <telerik:layoutcolumn span="6" spanmd="12" spansm="12" hiddenxs="true" cssclass="jumbotron">
                         <div class="row">
                            <div class="cell">
                                <span class="rfdasplabel">others</span>
                                <span class="rfdasplabel bold">20 clients / $ 10k</span>
                                <span class="rfdasplabel">&#94; 05% mom</span>
                            </div>
                         </div>                        
                        <telerik:radprogressbar rendermode="lightweight" runat="server" id="radprogressbar4" bartype="value" value="25" minvalue="0" maxvalue="100" showlabel="false">
                            <clientevents onload="tuningprogressbarload"
                                onvaluechanged="tuningprogressbarvaluechanged"
                                oncompleted="tuningprogressbarcompleted" />
                            <animationsettings duration="0" />
                        </telerik:radprogressbar>
                    </telerik:layoutcolumn>
                    <telerik:layoutcolumn span="6" spanmd="12" spansm="12" hiddenxs="true" cssclass="jumbotron">
                        <div class="row">
                            <div class="cell">
                                <span class="rfdasplabel">di web</span>
                                <span class="rfdasplabel bold">350 clients / $ 20k</span>
                                <span class="rfdasplabel">&#94; 05% mom</span>
                            </div>                       
                        </div>
                        <telerik:radprogressbar rendermode="lightweight" runat="server" id="radprogressbar5" bartype="value" value="30" minvalue="0" maxvalue="100" showlabel="false">
                            <clientevents onload="tuningprogressbarload"
                                onvaluechanged="tuningprogressbarvaluechanged"
                                oncompleted="tuningprogressbarcompleted" />
                            <animationsettings duration="0" />
                        </telerik:radprogressbar>
                    </telerik:layoutcolumn>
                </columns>
            </telerik:layoutrow>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4">
                    <div class="cards cards-right-big">
                        <div class="card-content">
                            <div class="network-header">
                                <img alt="network-icon" class="dashboard-icons" src="images/network.png">
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
                           <telerik:RadHtmlChart runat="server" ID="BarChart1" Transitions="true">
                                    <PlotArea>
                                        <Series>
                                            <telerik:BarSeries Name="Not Live" Stacked="true">
                                                <Appearance>
                                                    <FillStyle BackgroundColor="#ffcc66" />
                                                </Appearance>
                                                <LabelsAppearance DataFormatString="{0}" Position="Center" />
                                                <TooltipsAppearance BackgroundColor="White" DataFormatString="${0}" />
                                                <SeriesItems>
                                                    <telerik:CategorySeriesItem Y="315000" />
                                                    <telerik:CategorySeriesItem Y="315000" />
                    
                                                </SeriesItems>
                                            </telerik:BarSeries>
                                            <telerik:BarSeries Name="Live" Stacked="true">
                                                <Appearance>
                                                    <FillStyle BackgroundColor="#66ff33" />
                                                </Appearance>
                                                <LabelsAppearance DataFormatString="${0}" Position="Center" />
                                                <TooltipsAppearance BackgroundColor="White" DataFormatString="${0}" />
                                                <SeriesItems>
                                                    <telerik:CategorySeriesItem Y="315000" />
                                                    <telerik:CategorySeriesItem Y="315000" />
                  
                                                </SeriesItems>
                                            </telerik:BarSeries>
                                            <telerik:BarSeries Name="Closed" Stacked="true">
                                                <Appearance>
                                                    <FillStyle BackgroundColor="#ff3300" />
                                                </Appearance>
                                                <LabelsAppearance DataFormatString="${0}" Position="Center" />
                                                <TooltipsAppearance BackgroundColor="White" DataFormatString="${0}" />
                                                <SeriesItems>
                                                    <telerik:CategorySeriesItem Y="315000" />
                                                    <telerik:CategorySeriesItem Y="315000" />
                    
                                                </SeriesItems>
                                            </telerik:BarSeries>
                                        </Series>
                                        <XAxis AxisCrossingValue="0" Color="White" MajorTickType="Outside" MinorTickType="Outside"
                                            Reversed="false">
                                            <Items>
                                                <telerik:AxisItem LabelText="Client Networks" />
                                                <telerik:AxisItem LabelText="ATM Networks" />
                
                                            </Items>
                                            <LabelsAppearance DataFormatString="" RotationAngle="0" />
                                            <MajorGridLines Color="White" Width="0" />
                                            <MinorGridLines Color="White" Width="0" />
                                            <%--<TitleAppearance Position="Center" RotationAngle="0" Text="Years" />--%>
                                        </XAxis>
                                        <YAxis AxisCrossingValue="0" Color="White" MajorTickSize="1" MajorTickType="Outside"
                                            MaxValue="1000000" MinorTickSize="1" MinorTickType="Outside" MinValue="0" Reversed="false"
                                            Step="100000">
                                            <LabelsAppearance DataFormatString="{0}" RotationAngle="0" />
                                            <MajorGridLines Color="White" Width="1" />
                                            <MinorGridLines Color="White" Width="1" />
                                            <%--<TitleAppearance Position="Center" RotationAngle="0" Text="Sum" />--%>
                                        </YAxis>
                                    </PlotArea>
                                   <%-- <ChartTitle Text="Current Status of Networks">
                                    </ChartTitle>--%>
                                    <Legend>
                                        <Appearance Visible="false" Position="Top" />
                                    </Legend>
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

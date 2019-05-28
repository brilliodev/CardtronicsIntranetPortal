Imports Telerik.Web.UI
Imports Telerik.Charting
Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page

    Sub Page_Load()
        generateLineSeriesGraph()
        generateDonutChart()
        GetNetworkStatusData()

    End Sub

    Function GetNetworkStatusData()
        Dim dataSource As List(Of [Object]) = New List(Of Object)()
        dataSource.Add(New With {
            Key .NotLive = 100,
            Key .Live = 1000,
            Key .Closed = 100,
            Key .Item = "Client Networks"
        })
        dataSource.Add(New With {
            Key .NotLive = 100,
            Key .Live = 995,
            Key .Closed = 25,
            Key .Item = "ATM Networks"
        })

        BarChart.DataSource = dataSource
        BarChart.DataBind()
    End Function

    Function TargetMarkerChanged()
        Dim newTargetValue = SetTargetMarkerTxtBox.Text
        If (IsNumeric(newTargetValue)) Then
            DashboardRevenueChart.PlotArea.YAxis.PlotBands.Clear()

            DashboardRevenueChart.PlotArea.YAxis.PlotBands.Add(New PlotBand(newTargetValue,
                                             newTargetValue + 1,
                                             System.Drawing.Color.Red,
                                             0))


        End If

    End Function


    Function GetData() As DataTable
        ' Create new DataTable instance.
        Dim dt As New DataTable

        dt.Columns.Add("ID")
        dt.Columns.Add("Weeks")
        dt.Columns.Add("data")


        dt.Rows.Add(1, "JAN'2019", 430)
        dt.Rows.Add(2, "FEB'2019", 232)
        dt.Rows.Add(3, "MAR'2019", 322)
        dt.Rows.Add(4, "APR'2019", 132)
        dt.Rows.Add(5, "MAY'2019", 204)
        dt.Rows.Add(6, "JUN'2019", 101)
        dt.Rows.Add(7, "JUL'2019", 222)
        dt.Rows.Add(8, "AUG'2019", 190)
        dt.Rows.Add(9, "SEP'2019", 132)
        dt.Rows.Add(10, "OCT'2019", 444)
        dt.Rows.Add(11, "NOV'2019", 111)
        dt.Rows.Add(12, "DEC'2019", 134)


        Return dt
    End Function

    Protected Sub generateLineSeriesGraph()

        DashboardRevenueChart.PlotArea.Series.Clear()
        DashboardRevenueChart.PlotArea.XAxis.Items.Clear()

        Dim numSeries As Integer = GetData().Columns.Count - 2
        Dim currLineSeries As LineSeries = New LineSeries()

        For i = 0 To numSeries - 1

            currLineSeries.DataFieldY = GetData().Columns(2 + i).Caption
            currLineSeries.LineAppearance.LineStyle = Telerik.Web.UI.HtmlChart.Enums.ExtendedLineStyle.Smooth
            DashboardRevenueChart.PlotArea.Series.Add(currLineSeries)

        Next

        DashboardRevenueChart.PlotArea.XAxis.DataLabelsField = "Weeks"
        'DashboardRevenueChart.PlotArea.Appearance.
        Dim chartSeries As New ChartSeries()
        DashboardRevenueChart.DataSource = GetData()
        DashboardRevenueChart.DataBind()
        DashboardRevenueChart.PlotArea.YAxis.PlotBands.Add(New PlotBand(300,
                                             301,
                                             System.Drawing.Color.Red,
                                             0))


    End Sub

    Protected Sub Generate_BarChart()
        DashboardRevenueChart.PlotArea.Series.Clear()
        DashboardRevenueChart.PlotArea.XAxis.Items.Clear()

        Dim numSeries As Integer = GetData().Columns.Count - 2
        Dim ColumnSeries As ColumnSeries = New ColumnSeries()
        For i = 0 To numSeries - 1

            ColumnSeries.DataFieldY = GetData().Columns(2 + i).Caption
            'currBarSeries.SeriesItems.
            'currBarSeries.Appearance = Telerik.Web.UI.HtmlChart.Enums.ExtendedLineStyle.Smooth

            DashboardRevenueChart.PlotArea.Series.Add(ColumnSeries)

        Next

        DashboardRevenueChart.PlotArea.XAxis.DataLabelsField = "Weeks"

        Dim chartSeries As New ChartSeries()
        DashboardRevenueChart.DataSource = GetData()
        DashboardRevenueChart.DataBind()
        DashboardRevenueChart.PlotArea.YAxis.PlotBands.Add(New PlotBand(300,
                                             301,
                                             System.Drawing.Color.Red,
                                             0))
    End Sub

    Function Generate_DonutChartData() As DataTable

        Dim tbl As New DataTable()
        tbl.Columns.Add(New DataColumn("clientCount"))
        tbl.Columns.Add(New DataColumn("serviceType"))

        tbl.Rows.Add(New Object() {450, "LS API"})
        tbl.Rows.Add(New Object() {1011, "LS WEB"})
        tbl.Rows.Add(New Object() {300, "DI API"})
        tbl.Rows.Add(New Object() {350, "DI WEB"})
        tbl.Rows.Add(New Object() {20, "OTHERS"})

        Return tbl
    End Function
    Protected Sub generateDonutChart()
        DonutChart1.DataSource = Generate_DonutChartData()
        DonutChart1.DataBind()

    End Sub

End Class





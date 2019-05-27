﻿Imports Telerik.Web.UI
Imports Telerik.Charting
Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page

    Sub Page_Load()
        generateLineSeriesGraph()
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

    End Sub

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

    Private Sub generateLineSeriesGraph()


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
                                             System.Drawing.Color.Blue,
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
    End Sub

End Class





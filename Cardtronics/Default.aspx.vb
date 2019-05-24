Imports Telerik.Web.UI
Imports Telerik.Charting
Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page

    Sub Page_Load()
        Me.generateLineSeriesGraph()
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
        dt.Columns.Add("a111")


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
        For i = 0 To numSeries - 1

            Dim currLineSeries As LineSeries = New LineSeries()
            currLineSeries.DataFieldY = GetData().Columns(2 + i).Caption
            LineChart.PlotArea.Series.Add(currLineSeries)
        Next
        'LineChart.PlotArea.XAxis.DataLabelsField = "Weeks"
        'LineChart.PlotArea.Appearance.
        Dim chartSeries As New ChartSeries()

        LineChart.DataSource = GetData()
        LineChart.DataBind()
    End Sub



    'Dim radChart As New RadChart()
    'radChart.ChartTitle.TextBlock.Text = "My RadChart"

    'Dim chartSeries As New ChartSeries()
    'chartSeries.Name = "Sales"
    'chartSeries.Type = ChartSeriesType.Line
    'chartSeries.AddItem(120, "Internet")
    'chartSeries.AddItem(140, "Retail")
    'chartSeries.AddItem(35, "Wholesale")
    'Me.Page.Controls.Add(radChart)


    'End Sub
End Class





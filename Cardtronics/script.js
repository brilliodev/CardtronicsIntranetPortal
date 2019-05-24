// JavaScript source code
(function(global, undefined) {
    global.OnSeriesClick = function OnSeriesClick(args) {
        logEvent("SeriesClick event: A " + args.series.type + " with value <strong>" + args.value + "</strong> has been clicked.");
    }
})(window);
const oracleDBModule = require('./oracleDBModule');
const chartModule = require('./chartModule');

oracleDBModule.connectAndFetchData((data) => {
    const chartData = chartModule.processData(data);
    chartModule.drawChart(chartData);
});

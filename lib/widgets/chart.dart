/// Package import
import 'package:flutter/material.dart';

/// Chart import
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    List<ColumnSeries<ChartSampleData, String>> getDefaultColumnSeries() {
      return <ColumnSeries<ChartSampleData, String>>[
        ColumnSeries<ChartSampleData, String>(
          dataSource: <ChartSampleData>[
            ChartSampleData(x: '5점', y: 90.0),
            ChartSampleData(x: '4점', y: 4.0),
            ChartSampleData(x: '3점', y: 3.0),
            ChartSampleData(x: '2점', y: 2.0),
            ChartSampleData(x: '1점', y: 1.0),
          ],
          xValueMapper: (ChartSampleData sales, _) => sales.x,
          yValueMapper: (ChartSampleData sales, _) => sales.y,
          dataLabelSettings: DataLabelSettings(
            isVisible: true,
            textStyle: TextStyle(
              fontSize: 12,
              color: Theme.of(context).primaryColor,
            ),
          ),
          color: Theme.of(context).primaryColor,
        )
      ];
    }

    return Flexible(
      flex: 1,
      child: SizedBox(
        height: 200,
        child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          primaryXAxis: CategoryAxis(
            axisLine: const AxisLine(width: 0),
            majorTickLines: const MajorTickLines(width: 0),
            majorGridLines: const MajorGridLines(width: 0),
          ),
          primaryYAxis: NumericAxis(
            isVisible: false,
            labelFormat: '{value}%',
            labelStyle: const TextStyle(
              fontSize: 12.0,
              color: Color(0xFF757575),
            ),
          ),
          series: getDefaultColumnSeries(),
        ),
      ),
    );
  }
}

class ChartSampleData {
  final String x;
  final double y;

  ChartSampleData({
    required this.x,
    required this.y,
  });
}

/// Horizontal bar chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class HorizontalBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final List<charts.Series> otherSeriesList;
  final bool animate;

  HorizontalBarChart(this.seriesList, this.otherSeriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory HorizontalBarChart.withSampleData() {
    return new HorizontalBarChart(
      _createSampleData(),
      _otherCreateSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    // For horizontal bar charts, set the [vertical] flag to false.
    return new charts.BarChart(
      seriesList,
      animate: animate,
      vertical: false,
    );
    new charts.BarChart(
      otherSeriesList,
      animate: animate,
      vertical: false,
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales('2010', 12.95),
      new OrdinalSales('2011', 12.46),
      new OrdinalSales('2012', 12.41),
      new OrdinalSales('2013', 12.49),
      new OrdinalSales('2014', 12.43),
      new OrdinalSales('2015', 12.42),
      new OrdinalSales('2016', 12.37),
      new OrdinalSales('2017', 12.47),
    ];

    final otherData = [
      new OrdinalSales('2010', 09.61),
      new OrdinalSales('2011', 11.54),
      new OrdinalSales('2012', 12.82),
      new OrdinalSales('2013', 12.84),
      new OrdinalSales('2014', 13.49),
      new OrdinalSales('2015', 13.33),
      new OrdinalSales('2016', 13.15),
      new OrdinalSales('2017', 13.23),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      ),
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: otherData,
      )
    ];
  }

  static List<charts.Series<OrdinalSales, String>> _otherCreateSampleData() {
    final otherData = [
      new OrdinalSales('2010', 09.61),
      new OrdinalSales('2011', 11.54),
      new OrdinalSales('2012', 12.82),
      new OrdinalSales('2013', 12.84),
      new OrdinalSales('2014', 13.49),
      new OrdinalSales('2015', 13.33),
      new OrdinalSales('2016', 13.15),
      new OrdinalSales('2017', 13.23),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: otherData,
      )
    ];
  }
}




/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final double sales;

  OrdinalSales(this.year, this.sales);
}
import 'package:charts_flutter/flutter.dart' as charts;

class CalculationMoney {
  final DateTime time;
  final int sales;
  CalculationMoney(this.time, this.sales);
}

class DataSample {
  static List<charts.Series<CalculationMoney, DateTime>> sampleDataMoney() {
    final data = [
      new CalculationMoney(new DateTime(2017, 9, 19), 1000),
      new CalculationMoney(new DateTime(2017, 9, 26), 25000),
      new CalculationMoney(new DateTime(2017, 10, 3), 1000000),
      new CalculationMoney(new DateTime(2017, 10, 10), 75000000),
    ];

    return [
      new charts.Series<CalculationMoney, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        domainFn: (CalculationMoney sales, _) => sales.time,
        measureFn: (CalculationMoney sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

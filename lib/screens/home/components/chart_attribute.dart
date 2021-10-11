import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:money_life/models/CalculationMoney.dart';
import 'package:money_life/screens/home/components/tooltip_chart.dart';

class ChartAttribute extends StatelessWidget {
  final List<charts.Series<CalculationMoney, DateTime>> seriesList;
  final bool animate;
  ChartAttribute(this.seriesList, {required this.animate});

  @override
  Widget build(BuildContext context) {
    return new charts.TimeSeriesChart(
      seriesList,
      animate: animate,
      // dateTimeFactory: const charts.LocalDateTimeFactory(),
      defaultRenderer: new charts.LineRendererConfig(
        includePoints: true,
      ),
      selectionModels: [
        SelectionModelConfig(changedListener: (SelectionModel model) {
          if (model.hasDatumSelection) {
            final value =
                model.selectedSeries[0].measureFn(model.selectedDatum[0].index);
            print(value);
            TooltipChart.value = value!;
          }
        })
      ],
      behaviors: [LinePointHighlighter(symbolRenderer: TooltipChart())],
    );
  }
}

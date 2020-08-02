import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class regionChorotegaStorytelling extends StatelessWidget {
  List<charts.Series<GlassesData, int>> _seriesGlassesData;
  final bool animate;

  regionChorotegaStorytelling(this._seriesGlassesData, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory regionChorotegaStorytelling.withSampleData() {
    return new regionChorotegaStorytelling(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Center(
                    child: Text(
                      'Región Socioeconómica Chorotega',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Center(
                    child: Text(
                      'Regiones Socioeconómicas de Costa Rica',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
    */
          //Text('1'),
        ],
      ),
    );

    Widget breveResenaSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Breve Reseña Histórica',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                    'La Región Chorotega es una región socioeconómica en la '
                        'parte noroccidental de Costa Rica. Corresponde a la '
                        'totalidad de la provincia de Guanacaste, siendo por '
                        'lo tanto una de las subdivisiones más grandes del '
                        'país.',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    'La Región Chorotega está formada por los cantones de la '
                        'provincia de Guanacaste: Liberia, Nicoya, Santa Cruz, '
                        'Bagacess, Carrillo, Cañas. Abangares, Tilarán, '
                        'Nandayure, La Cruz y Hojancha. ',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
              ],
            ),
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.find_in_page, 'WEB'),
        ],
      ),
    );

    Widget chartSection = Container(
      height: 400,
      width: 400,
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Promedio por vivienda de servicios de telefonía residencial'
                  ' y de telefonía celular',
              style: TextStyle(
                  fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: new charts.ScatterPlotChart(
                  _seriesGlassesData,
                  // Set up a bucketing axis that will place all values below 0.1 (10%)
                  // into a bucket at the bottom of the chart.
                  //
                  // Configure a tick count of 3 so that we get 100%, 50%, and the
                  // threshold.
                  primaryMeasureAxis: new charts
                      .BucketingAxisSpec(
                      threshold: 0.1,
                      tickProviderSpec: new charts
                          .BucketingNumericTickProviderSpec(
                          desiredTickCount: 3)),
                  // Add a series legend to display the series names.
                  behaviors: [
                    new charts.SeriesLegend(
                        position: charts.BehaviorPosition.end),
                  ],
                  animate: true),
            ),
          ],
        ),
      ),
    );


    Widget interpretacionCodigo= Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Interpretación del Gráfico',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                    'La Región Chorotega es una región socioeconómica en la '
                        'parte noroccidental de Costa Rica. Corresponde a la '
                        'totalidad de la provincia de Guanacaste, siendo por '
                        'lo tanto una de las subdivisiones más grandes del país.',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );



    return MaterialApp(
        home: DefaultTabController(
            length: 1,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xff1976d2),
                title: Text('Region Chorotega'),
              ),
              body: ListView(
                children: [
                  Image.asset(
                    'assets/regionChorotega.png',
                    width: 600,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                  titleSection,
                  buttonSection,
                  breveResenaSection,
                  chartSection,
                  FlatButton(
                    onPressed: () {
                      showGeneralDialog(
                          context: context,
                          barrierDismissible: true,
                          barrierLabel: MaterialLocalizations.of(context)
                              .modalBarrierDismissLabel,
                          barrierColor: Colors.black45,
                          transitionDuration: const Duration(milliseconds: 500),
                          pageBuilder: (BuildContext buildContext,
                              Animation animation,
                              Animation secondaryAnimation) {
                            return Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width-30,
                                height: MediaQuery.of(context).size.height-500,
                                padding: EdgeInsets.all(20),
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/informacionChorotegaGrafico.jpg',
                                      width: 300,
                                      height: 326,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    textColor: Colors.black,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFFD16BA5),
                            Color(0xFF86A8E7),
                            Color(0xFF5FFBF1),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child:
                      const Text('Ver Información del Gráfico', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  interpretacionCodigo,


                ],
              ),
            )));
  }



  /// Create one series with sample hard coded data.
  static List<charts.Series<GlassesData, int>> _createSampleData() {
    final OneGlassesData = [
      new GlassesData( 1, 0.06, 30.0, Color(0xffac75d5)),
      new GlassesData( 2, 0.16, 20.24, Color(0xff00b050)),
    ];

    /// TwoGlassesData: all data for the case: De 15 a 29 años.
    final TwoGlassesData = [
      new GlassesData( 1, 0.02, 29.01, Color(0xffac75d5)),
      new GlassesData( 2, 0.19, 24.05, Color(0xff00b050)),
    ];

    /// ThreeGlassesData: all data for the case: De 30 a 59 años.
    final ThreeGlassesData = [
      new GlassesData( 1, 0.01, 28.74, Color(0xffac75d5)),
      new GlassesData( 3, 0.27, 28.36, Color(0xff00b050)),
    ];

    /// FourGlassesData: all data for the case: De 60 a 64 años.
    final FourGlassesData = [
      new GlassesData( 1, 0.02, 28.78, Color(0xffac75d5)),
      new GlassesData( 3, 0.24, 30.0, Color(0xff00b050)),
    ];

    /// FiveGlassesData: all data for the case: De 65 a 74 años.
    final FiveGlassesData = [
      new GlassesData( 1, 0.02, 28.86, Color(0xffac75d5)),
      new GlassesData( 3, 0.24, 29.54, Color(0xff00b050)),
    ];

    /// SixGlassesData: all data for the case: De 75 a más años',
    final SixGlassesData = [
      new GlassesData( 1, 0.01, 28.51, Color(0xffac75d5)),
      new GlassesData( 3, 0.24, 29.51, Color(0xff00b050)),
    ];

    /// SixGlassesData: all data for the case: De 75 a más años',
    final SevenGlassesData = [
      new GlassesData( 1, 0.01, 28.59, Color(0xffac75d5)),
      new GlassesData( 3, 0.23, 29.21, Color(0xff00b050)),
    ];


    /// SixGlassesData: all data for the case: De 75 a más años',
    final EightGlassesData = [
      new GlassesData( 1, 0.00, 28.35, Color(0xffac75d5)),
      new GlassesData( 3, 0.28, 28.53, Color(0xff00b050)),
    ];


    return [
      // Blue bars with a lighter center color.

      new charts.Series<GlassesData, int>(
      id: '2010',
      data: OneGlassesData,
      domainFn: (GlassesData glasses, _) => glasses.numPerG,
      measureFn: (GlassesData glasses, _) => glasses.porcentG,
      radiusPxFn: (GlassesData glasses, _) => glasses.amountG,
      colorFn: (GlassesData glasses, _) =>
          charts.ColorUtil.fromDartColor(glasses.colorvarG),
      labelAccessorFn: (GlassesData glasses, _) =>
      '${glasses.numPerG}',
    ),
      new charts.Series<GlassesData, int>(
        id: '2011',
        data: TwoGlassesData,
        domainFn: (GlassesData glasses, _) => glasses.numPerG,
        measureFn: (GlassesData glasses, _) => glasses.porcentG,
        radiusPxFn: (GlassesData glasses, _) => glasses.amountG,
        colorFn: (GlassesData glasses, _) =>
            charts.ColorUtil.fromDartColor(glasses.colorvarG),
        labelAccessorFn: (GlassesData glasses, _) =>
        '${glasses.numPerG}',
      ),
      new charts.Series<GlassesData, int>(
        id: '2012',
        data: ThreeGlassesData,
        domainFn: (GlassesData glasses, _) => glasses.numPerG,
        measureFn: (GlassesData glasses, _) => glasses.porcentG,
        radiusPxFn: (GlassesData glasses, _) => glasses.amountG,
        colorFn: (GlassesData glasses, _) =>
            charts.ColorUtil.fromDartColor(glasses.colorvarG),
        labelAccessorFn: (GlassesData glasses, _) =>
        '${glasses.numPerG}',
      ),
      new charts.Series<GlassesData, int>(
        id: '2013',
        data: FourGlassesData,
        domainFn: (GlassesData glasses, _) => glasses.numPerG,
        measureFn: (GlassesData glasses, _) => glasses.porcentG,
        radiusPxFn: (GlassesData glasses, _) => glasses.amountG,
        colorFn: (GlassesData glasses, _) =>
            charts.ColorUtil.fromDartColor(glasses.colorvarG),
        labelAccessorFn: (GlassesData glasses, _) =>
        '${glasses.numPerG}',
      ),
      new charts.Series<GlassesData, int>(
        id: '2014',
        data: FiveGlassesData,
        domainFn: (GlassesData glasses, _) => glasses.numPerG,
        measureFn: (GlassesData glasses, _) => glasses.porcentG,
        radiusPxFn: (GlassesData glasses, _) => glasses.amountG,
        colorFn: (GlassesData glasses, _) =>
            charts.ColorUtil.fromDartColor(glasses.colorvarG),
        labelAccessorFn: (GlassesData glasses, _) =>
        '${glasses.numPerG}',
      ),
      new charts.Series<GlassesData, int>(
        id: '2015',
        data: SixGlassesData,
        domainFn: (GlassesData glasses, _) => glasses.numPerG,
        measureFn: (GlassesData glasses, _) => glasses.porcentG,
        radiusPxFn: (GlassesData glasses, _) => glasses.amountG,
        colorFn: (GlassesData glasses, _) =>
            charts.ColorUtil.fromDartColor(glasses.colorvarG),
        labelAccessorFn: (GlassesData glasses, _) =>
        '${glasses.numPerG}',
      ),
      new charts.Series<GlassesData, int>(
        id: '2016',
        data: SevenGlassesData,
        domainFn: (GlassesData glasses, _) => glasses.numPerG,
        measureFn: (GlassesData glasses, _) => glasses.porcentG,
        radiusPxFn: (GlassesData glasses, _) => glasses.amountG,
        colorFn: (GlassesData glasses, _) =>
            charts.ColorUtil.fromDartColor(glasses.colorvarG),
        labelAccessorFn: (GlassesData glasses, _) =>
        '${glasses.numPerG}',
      ),
      new charts.Series<GlassesData, int>(
        id: '2017',
        data: EightGlassesData,
        domainFn: (GlassesData glasses, _) => glasses.numPerG,
        measureFn: (GlassesData glasses, _) => glasses.porcentG,
        radiusPxFn: (GlassesData glasses, _) => glasses.amountG,
        colorFn: (GlassesData glasses, _) =>
            charts.ColorUtil.fromDartColor(glasses.colorvarG),
        labelAccessorFn: (GlassesData glasses, _) =>
        '${glasses.numPerG}',
      ),
    ];
  }


  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        GestureDetector(
            child:
            Icon(icon, color: color),
            onTap: () {
              // do what you need to do when "Click here" gets clicked
              launch('https://es.wikipedia.org/wiki/Regi%C3%B3n_Chorotega');
            }
        ),

        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Center(
            child:
            GestureDetector(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: color,
                  ),
                ),
                onTap: () {
                  // do what you need to do when "Click here" gets clicked
                  launch('https://es.wikipedia.org/wiki/Regi%C3%B3n_Chorotega');
                }
            ),
          ),
        ),
      ],
    );
  }

}

/// Sample ordinal data type.
class GlassesData {
  ///numPerG: Indicates the amount of people by numbers
  final int numPerG;
  ///porcentG: Indicates the amount of people by percent
  final double porcentG;
  ///amountG: Used as a graphical indicator of the amount of people
  final double amountG;
  ///colorvarG: Indicate the color that is going to be used.
  final Color colorvarG;

  GlassesData(
      this.numPerG, this.porcentG, this.amountG, this.colorvarG);
}
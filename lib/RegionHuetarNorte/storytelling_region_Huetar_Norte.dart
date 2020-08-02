import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class regionHuetarNorteStorytelling extends StatelessWidget {
  List<charts.Series> seriesList;
  final bool animate;

  regionHuetarNorteStorytelling(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory regionHuetarNorteStorytelling.withSampleData() {
    return new regionHuetarNorteStorytelling(
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
                      'Región Socioeconómica Huetar Norte',
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
                    'La Región Huetar Norte es una región socioeconómica del '
                        'norte de Costa Rica. Abarca esencialmente las '
                        'llanuras de Guatuso, San Carlos y Sarapiquí, '
                        'fronterizas con Nicaragua, así como las estribaciones '
                        'de la vertiente oriental de la Cordillera Volcánica '
                        'de Guanacaste y la norte de la Cordillera Volcánica '
                        'Central. Presenta reservas indígenas guatusos bajo '
                        'jurisdicción del Estado. Se destaca en la agricultura, '
                        'también se practican actividades ganaderas en forma '
                        'extensiva y Turismo.',
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
              child: new charts.OrdinalComboChart(seriesList,
                  animate: animate,
                  // Configure the default renderer as a bar renderer.
                  defaultRenderer: new charts.BarRendererConfig(
                      groupingType: charts.BarGroupingType.grouped),
                  // Custom renderer configuration for the line series. This will be used for
                  // any series that does not define a rendererIdKey.
                  customSeriesRenderers: [
                    new charts.LineRendererConfig(
                      // ID used to link series to this renderer.
                        customRendererId: 'customLine')
                  ]),
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
                    'Las regiones socioeconómicas de Costa Rica '
                        '(a menudo denominadas sólo como regiones funcionales) '
                        'son una subdivisión político-económica en la que '
                        'se ha delimitado este país centroamericano. Esta subdivisión '
                        'fue realizada por Decreto Ejecutivo Nº 7944 '
                        'del 26 de enero de 1978.',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    'Estas regiones son seis en total: Región Central, '
                        'Región Chorotega, Región Pacífico Central, '
                        'Región Brunca, Región Huetar Atlántica y '
                        'Región Huetar Norte. Algunos nombres de '
                        'región se derivan de las etnias precolombinas '
                        'que habitaron en esas zonas geográficas. ',
                    softWrap: true,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify),
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
                title: Text('Región Huetar Norte'),
              ),
              body: ListView(
                children: [
                  Image.asset(
                    'assets/regionHuetarNorte.png',
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
                                      'assets/regionChorotegaGrafico.jpg',
                                      width: 1100,
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
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final telefonoSalesData = [
      new OrdinalSales('2010', 100),
      new OrdinalSales('2011', 97),
      new OrdinalSales('2012', 97),
      new OrdinalSales('2013', 98),
      new OrdinalSales('2014', 97),
      new OrdinalSales('2015', 95),
      new OrdinalSales('2016', 95),
      new OrdinalSales('2017', 95),
    ];

    final mobileSalesData = [
      new OrdinalSales('2010', 75),
      new OrdinalSales('2011', 86),
      new OrdinalSales('2012', 97),
      new OrdinalSales('2013', 98),
      new OrdinalSales('2014', 100),
      new OrdinalSales('2015', 99),
      new OrdinalSales('2016', 98),
      new OrdinalSales('2017', 97),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
          id: 'Telefono',
          colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault.lighter,
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: telefonoSalesData),
      new charts.Series<OrdinalSales, String>(
          id: 'Celular',
          colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: mobileSalesData)
      // Configure our custom line renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customLine'),
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
              launch('https://es.wikipedia.org/wiki/Regi%C3%B3n_Huetar_Norte');
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
                  launch('https://es.wikipedia.org/wiki/Regi%C3%B3n_Huetar_Norte');
                }
            ),
          ),
        ),
      ],
    );
  }

}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
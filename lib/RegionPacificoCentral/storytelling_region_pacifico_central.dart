import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class regionPacificoCentralStorytelling extends StatelessWidget {
  List<charts.Series> seriesList;
  final bool animate;

  regionPacificoCentralStorytelling(this.seriesList,{this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory regionPacificoCentralStorytelling.withSampleData() {
    return new regionPacificoCentralStorytelling(
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
                      'Región Socioeconómica Pacífico Central',
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
                    'Es una región socioeconómica en la costa central del '
                        'Océano Pacífico de Costa Rica. Es la más pequeña de '
                        'las seis regiones en las que se ha subdividido '
                        'la República. Presenta algunos de los puertos más '
                        'importantes del litoral pacífico del país, como '
                        'Puntarenas, Caldera y Quepos y la región central '
                        'es una región en el centro de Costa Rica.',
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
              'Promedio por vivienda de servicios de telefonía residencial y Celular',
              style: TextStyle(
                  fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: new charts.BarChart(
                seriesList,
                animate: animate,
                vertical: false,
              ),
            ),
            SizedBox(height: 10.0),
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
                title: Text('Región Pacífico Central'),
              ),
              body: ListView(
                children: [
                  Image.asset(
                    'assets/regionPacificoCentral.png',
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
              launch('https://es.wikipedia.org/wiki/Regi%C3%B3n_Pac%C3%ADfico_Central');
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
                  launch('https://es.wikipedia.org/wiki/Regi%C3%B3n_Pac%C3%ADfico_Central');
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
  final double sales;

  OrdinalSales(this.year, this.sales);
}
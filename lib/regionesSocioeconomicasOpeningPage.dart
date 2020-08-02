
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RegionCentral/Opening_Page_Central.dart';
import 'storyTelling_regiones_socioeconomicas.dart';
import 'RegionBrunca/Opening_Page_Region_Brunca.dart';
import 'RegionChorotega/Opening_Page_Chorotega.dart';
import 'RegionHuetarAtlantica/Opening_Page_Huetar_Atlantica.dart';
import 'RegionHuetarNorte/Opening_Page_Huetar_Norte.dart';
import 'RegionPacificoCentral/Opening_Page_Pacifico_Central.dart';

class regionSocialEconomica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Regiones Socioeconómicas de Costa Rica',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Región Central', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Opening_Page_Central_Page()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Región Chorotega', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Opening_Page_Chorotega_Page()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Región Pacífico Central', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Opening_Page_Pacifico_Central_Page()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Región Brunca', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Opening_Page_Brunca_Page()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Región Huetar Atlántica', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Opening_Page_Huetar_Atlantica_Page()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Región Huetar Norte', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Opening_Page_Huetar_Norte_Page()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('StoryTelling Regiones Socioeconómicas', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>
                    storytellingRegionesSocioeconomicas.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'storytelling_region_Huetar_Atlantica.dart';

class Opening_Page_Huetar_Atlantica_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Región Huetar Atlántica Socioeconómica',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Limón', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaChorotegaGuanacaste()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('StoryTelling Región Huetar Atlántica', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionHuetarAtlanticaStorytelling.withSampleData()),
              )
            },
          ),
        ],
      ),
    );

  }
}
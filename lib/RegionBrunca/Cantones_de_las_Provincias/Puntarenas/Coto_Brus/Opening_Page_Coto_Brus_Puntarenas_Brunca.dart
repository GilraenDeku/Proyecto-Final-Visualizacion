///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Agua_Buena/StoryTelling_Agua_Buena_Coto_Brus_Puntarenas_Brunca.dart';
import 'Gutiérrez Brown/StoryTelling_Gutierrez_Brown_Coto_Brus_Puntarenas_Brunca.dart';
import 'Limoncito/StoryTelling_Limoncito_Coto_Brus_Puntarenas_Brunca.dart';
import 'Pittier/StoryTelling_Pittier_Coto_Brus_Puntarenas_Brunca.dart';
import 'Sabalito/StoryTelling_Sabalito_Coto_Brus_Puntarenas_Brunca.dart';
import 'San_Vito/StoryTelling_San_Vito_Coto_Brus_Puntarenas_Brunca.dart';

class regionSocialEconomicaBruncaPuntarenasCotoBrus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Coto Brus',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Agua Buena', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaPuntarenasCotoBrusAguaBuena()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Gutiérrez Brown', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaPuntarenasCotoBrusGutierrezBrown()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Limoncito', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaPuntarenasCotoBrusLimoncito()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Pittier', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaPuntarenasCotoBrusPittier()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Sabalito', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaPuntarenasCotoBrusSabalito()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Vito', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaPuntarenasCotoBrusSanVito()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('StoryTelling del Cantón de Coto Brus', style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );

  }
}
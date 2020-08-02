///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Buenos_Aires/Opening_Page_Buenos_Aires_Puntarenas_Brunca.dart';
import 'Corredores/Opening_Page_Corredores_Puntarenas_Brunca.dart';
import 'Coto_Brus/Opening_Page_Coto_Brus_Puntarenas_Brunca.dart';
import 'Golfito/Opening_Page_Golfito_Puntarenas_Brunca.dart';
import 'Osa/Opening_Page_Osa_Puntarenas_Brunca.dart';
import 'StoryTelling_Puntarenas_Brunca.dart';

class regionSocialEconomicaBruncaPuntarenas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Cantones de la Provincia de Puntarenas',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Buenos Aires', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaBruncaPuntarenasBuenosAires()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Corredores', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaBruncaPuntarenasCorredores()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Coto Brus', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaBruncaPuntarenasCotoBrus()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Golfito', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaBruncaPuntarenasGolfito()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Osa', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaBruncaPuntarenasOsa()),
              )
            },
          ),

          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Storytelling de la Provincia de Puntarenas', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionBruncaStorytelling.withSampleData()),
              )
            },
             */
          ),
        ],
      ),
    );

  }
}
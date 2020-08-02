///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Biolley/StoryTelling_Biolley_Buenos_Aires_Puntarenas_Brunca.dart';
import 'Boruca/StoryTelling_Boruca_Buenos_Aires_Puntarenas_Brunca.dart';
import 'Brunka/StoryTelling_Brunka_Buenos_Aires_Puntarenas_Brunca.dart';
import 'Buenos_Aires/StoryTelling_Buenos_Aires_Buenos_Aires_Puntarenas_Brunca.dart';
import 'Chánguena/StoryTelling_Changuena_Buenos_Aires_Puntarenas_Brunca.dart';
import 'Colinas/StoryTelling_Colinas_Buenos_Aires_Puntarenas_Brunca.dart';
import 'Pilas/StoryTelling_Pilas_Buenos_Aires_Puntarenas_Brunca.dart';
import 'Potrero_Grande/StoryTelling_Potrero_Grande_Buenos_Aires_Puntarenas_Brunca.dart';
import 'Volcán/StoryTelling_Volcan_Buenos_Aires_Puntarenas_Brunca.dart';

class regionSocialEconomicaBruncaPuntarenasBuenosAires extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Buenos Aires',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Biolley', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaPuntarenasBuenosAiresBiolley()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Boruca', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaPuntarenasBuenosAiresBoruca()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Brunka', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaPuntarenasBuenosAiresBrunka()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Buenos_Aires', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaPuntarenasBuenosAiresBuenosAires()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Chánguena', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaPuntarenasBuenosAiresChanguena()),
              )
            },

             */
          ),

          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Colinas', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaPuntarenasBuenosAiresColinas()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Pilas', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaPuntarenasBuenosAiresPilas()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Potrero Grande', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaPuntarenasBuenosAiresPotreroGrande()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Volcán', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaPuntarenasBuenosAiresVolcan()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('StoryTelling del Cantón de Buenos Aires', style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );

  }
}
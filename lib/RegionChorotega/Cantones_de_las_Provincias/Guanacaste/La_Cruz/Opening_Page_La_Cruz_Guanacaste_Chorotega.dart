///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'La_Cruz/StoryTelling_La_Cruz_La_Cruz_Guanacaste_Chorotega.dart';
import 'La_Garita/StoryTelling_La_Garita_La_Cruz_Guanacaste_Chorotega.dart';
import 'Santa_Cecilia/StoryTelling_Santa_Cecilia_La_Cruz_Guanacaste_Chorotega.dart';
import 'Santa_Elena/StoryTelling_Santa_Elena_La_Cruz_Guanacaste_Chorotega.dart';

class regionSocialEconomicaChorotegaGuanacasteLaCruz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de La Cruz',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('La Cruz', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteLaCruzLaCruz()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('La Garita', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteLaCruzLaGarita()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Santa Cecilia', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteLaCruzSantaCecilia()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Santa Elena', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteLaCruzSantaElena()),
              )
            },

             */
          ),


          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('StoryTelling del Cantón', style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );

  }
}
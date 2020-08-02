///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Bagaces/StoryTelling_Bagaces_Bagaces_Guanacaste_Chorotega.dart';
import 'La_Fortuna/StoryTelling_La_Fortuna_Bagaces_Guanacaste_Chorotega.dart';
import 'Mogote/StoryTelling_Mogote_Bagaces_Guanacaste_Chorotega.dart';
import 'Río_Naranjo/StoryTelling_Rio_Naranjo_Bagaces_Guanacaste_Chorotega.dart';

class regionSocialEconomicaChorotegaGuanacasteBagaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Bagaces',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Bagaces', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteBagacesBagaces()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('La Fortuna', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteBagacesLaFortuna()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Mogote', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteBagacesMogote()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Río Naranjo', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteBagacesRioNaranjo()),
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
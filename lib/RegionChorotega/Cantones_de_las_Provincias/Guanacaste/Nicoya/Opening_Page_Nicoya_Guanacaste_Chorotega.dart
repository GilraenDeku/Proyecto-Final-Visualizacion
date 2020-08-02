///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Belén/StoryTelling_Belen_Nicoya_Guanacaste_Chorotega.dart';
import 'Mansión/StoryTelling_Mansión_Nicoya_Guanacaste_Chorotega.dart';
import 'Nicoya/StoryTelling_Nicoya_Nicoya_Guanacaste_Chorotega.dart';
import 'Nosara/StoryTelling_Nosara_Nicoya_Guanacaste_Chorotega.dart';
import 'Quebrada_Honda/StoryTelling_Quebrada_Honda_Nicoya_Guanacaste_Chorotega.dart';
import 'San_Antonio/StoryTelling_San_Antonio_Nicoya_Guanacaste_Chorotega.dart';
import 'Sámara/StoryTelling_Samara_Nicoya_Guanacaste_Chorotega.dart';

class regionSocialEconomicaChorotegaGuanacasteNicoya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Nicoya',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Belén', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteNicoyaBelen()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Mansión', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteNicoyaMansión()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Nicoya', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteNicoyaNicoya()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Nosara', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteNicoyaNosara()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Quebrada Honda', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteNicoyaQuebradaHonda()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('San Antonio', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteNicoyaSanAntonio()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Sámara', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteNicoyaSamara()),
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
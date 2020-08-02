///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Arenal/StoryTelling_Arenal_Tilaran_Guanacaste_Chorotega.dart';
import 'Líbano/StoryTelling_Libano_Tilaran_Guanacaste_Chorotega.dart';
import 'Quebrada_Grande/StoryTelling_Quebrada_Grande_Tilaran_Guanacaste_Chorotega.dart';
import 'Santa_Rosa/StoryTelling_Santa_Rosa_Tilaran_Guanacaste_Chorotega.dart';
import 'Tierras_Morenas/StoryTelling_Tierras_Morenas_Tilaran_Guanacaste_Chorotega.dart';
import 'Tilarán/StoryTelling_Tilaran_Tilaran_Guanacaste_Chorotega.dart';
import 'Tronadora/StoryTelling_Tronadora_Tilaran_Guanacaste_Chorotega.dart';

class regionSocialEconomicaChorotegaGuanacasteTilaran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Tilarán',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Arenal', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteTilaranArenal()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Líbano', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteTilaranLibano()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Quebrada Grande', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteTilaranQuebradaGrande()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Santa Rosa', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteTilaranSantaRosa()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Tierras Morenas', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteTilaranTierrasMorenas()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Tilarán', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteTilaranTilaran()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Tronadora', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionChorotegaGuanacasteTilaranTronadora()),
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
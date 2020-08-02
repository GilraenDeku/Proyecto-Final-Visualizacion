///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Guanacaste/Abangares/Opening_Page_Abangares_Guanacaste_Chorotega.dart';
import 'Guanacaste/Bagaces/Opening_Page_Bagaces_Guanacaste_Chorotega.dart';
import 'Guanacaste/Carrillo/Opening_Page_Carrillo_Guanacaste_Chorotega.dart';
import 'Guanacaste/Cañas/Opening_Page_Cañas_Guanacaste_Chorotega.dart';
import 'Guanacaste/Hojancha/Opening_Page_Hojancha_Guanacaste_Chorotega.dart';
import 'Guanacaste/La_Cruz/Opening_Page_La_Cruz_Guanacaste_Chorotega.dart';
import 'Guanacaste/Liberia/Opening_Page_Liberia_Guanacaste_Chorotega.dart';
import 'Guanacaste/Nandayure/Opening_Page_Nandayure_Guanacaste_Chorotega.dart';
import 'Guanacaste/Nicoya/Opening_Page_Nicoya_Guanacaste_Chorotega.dart';
import 'Guanacaste/Santa_Cruz/Opening_Page_Santa_Cruz_Guanacaste_Chorotega.dart';
import 'Guanacaste/Tilarán/Opening_Page_Tilaran_Guanacaste_Chorotega.dart';


class regionSocialEconomicaChorotegaGuanacaste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Cantones de la Provincia de Guanacaste',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Liberia', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaChorotegaGuanacasteLiberia()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Nicoya', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaChorotegaGuanacasteNicoya()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Santa Cruz', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaChorotegaGuanacasteSantaCruz()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Bagaces', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaChorotegaGuanacasteBagaces()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Carrillo', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaChorotegaGuanacasteCarrillo()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Cañas', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaChorotegaGuanacasteCanas()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Abangares', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaChorotegaGuanacasteAbangares()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Tilarán', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaChorotegaGuanacasteTilaran()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Nandayure', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaChorotegaGuanacasteNandayure()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('La Cruz', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaChorotegaGuanacasteLaCruz()),
              )
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('Hojancha', style: TextStyle(fontSize: 25),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => regionSocialEconomicaChorotegaGuanacasteHojancha()),
              )
            },
          ),

          ListTile(
            leading: Icon(FontAwesomeIcons.trello),
            title: Text('StoryTelling de la Provincia', style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );

  }
}
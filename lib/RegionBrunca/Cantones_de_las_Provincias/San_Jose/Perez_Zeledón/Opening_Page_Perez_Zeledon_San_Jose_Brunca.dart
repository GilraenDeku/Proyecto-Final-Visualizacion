///Opening_Page
///
///This page contains the main page of the project, what
///it contains are buttons with which you can choose which
///graphics to observe
///


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class regionSocialEconomicaBruncaSanJosePerezZeledon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center (
              child: Text(
                'Distritos del Cantón de Pérez Zeledón',
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal,),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Barú', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaSanJosePerezZeledonBaru()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Cajón', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaSanJosePerezZeledonCajon()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Daniel Flores', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaSanJosePerezZeledonDanielFlores()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('El General', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaSanJosePerezZeledonElGeneral()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('La Amistad', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaSanJosePerezZeledonLaAmistad()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Pejibaye', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaSanJosePerezZeledonPejibaye()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Platanares', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaSanJosePerezZeledonPlatanares()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Páramo', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaSanJosePerezZeledonParamo()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Rivas', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaSanJosePerezZeledonRivas()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('Río Nuevo', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaSanJosePerezZeledonRioNuevo()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('San Isidro de El General', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaSanJosePerezZeledonSanIsidrodeElGeneral()),
              )
            },

             */
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.map),
            title: Text('San Pedro', style: TextStyle(fontSize: 25),
            ),
            /*
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => storyTellingRegionBruncaSanJosePerezZeledonSanPedro()),
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
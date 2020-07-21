import 'package:flutter/material.dart';
import 'package:treemap/treemap.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          width: 425,
          height: 425,
          child: TreeMapLayout(
            tile: Binary(),
            root: TreeNode.node(
                // padding: EdgeInsets.symmetric(horizontal: 20),
                children: [
                  TreeNode.leaf(
                    label: 'Región Central',
                    value: 592035,
                    margin: EdgeInsets.all(5),
                  ),
                  TreeNode.leaf(
                    label: 'Región Chorotega',
                    value: 48761,
                    margin: EdgeInsets.all(5),
                  ),
                  TreeNode.leaf(
                    label: 'Región Pacífico Central',
                    value:  43442,
                    margin: EdgeInsets.all(5),
                  ),
                  TreeNode.leaf(
                    label: 'Región  Brunca',
                    value: 50240,
                    margin: EdgeInsets.all(5),
                  ),
                  TreeNode.leaf(
                    label: 'Región Huetar Caribe',
                    value:  60999,
                    margin: EdgeInsets.all(5),
                  ),
                  TreeNode.leaf(
                    label: 'Región Huetar Norte'
                    value:  68797,
                    margin: EdgeInsets.all(5),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
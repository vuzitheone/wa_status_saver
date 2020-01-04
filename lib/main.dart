import 'package:flutter/material.dart';
import 'package:wa_status_saver/ui/dashboard.dart';
import 'package:wa_status_saver/ui/mydrawer.dart';
import 'package:share/share.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Savvy',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.teal,
        ),
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            key: _scaffoldKey,
            appBar: AppBar(
              leading: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => _scaffoldKey.currentState.openDrawer()),
              title: Text('Status Saver'),
              backgroundColor: Colors.teal,
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {
                      Share.share(
                          'check out my wa status downloader https://mastersam.io',
                          subject: 'Look what I made!');
                    }),
                IconButton(icon: Icon(Icons.help_outline), onPressed: () {})
              ],
              bottom: TabBar(tabs: [
                Container(
                  height: 30.0,
                  child: Text(
                    'IMAGES',
                  ),
                ),
                Container(
                  height: 30.0,
                  child: Text(
                    'VIDEOS',
                  ),
                ),
              ]),
            ),
            body: Dashboard(),
            backgroundColor: Colors.white,
            drawer: Drawer(
              child: MyNavigationDrawer(),
            ),
          ),
        ),
      ),
    );

import 'package:cupertino_app_flutter/feeds_page.dart';
import 'package:cupertino_app_flutter/search_page.dart';
import 'package:cupertino_app_flutter/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(primaryColor: CupertinoColors.systemOrange),
      home: HomePage(),
    );
  }
}

/*
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          // CupertinoNavigationBar adalah pengganti AppBar
          CupertinoNavigationBar(
        middle: Text('Cupertino App'),
      ),
      child: Center(
        child: Text(
          'Home Page',
          style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
        ),
        
      ),
    );
  }
}
*/

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      //tabBar berisi widget CUpertioTabBar yang menampilkan item tab
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.news),
          title: Text('Feeds'),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.search),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.settings),
          title: Text('Settings'),
        ),
      ]),
      //tabBuilder berisi funsi untuk menmpilkan halaman berdasarkan indeks tab yang dipilih
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return FeedsPage();
          case 1:
            return SearchPage();
          case 2:
            return SettingsPage();
          default:
            return Center(
              child: Text('Page not found!'),
            );
        }
      },
    );
  }
}

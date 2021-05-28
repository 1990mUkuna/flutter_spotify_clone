import 'package:flutter/material.dart ';
import 'package:spotify_clone/view/screens/home_page.dart';
import 'package:spotify_clone/view/screens/library.dart';
import 'package:spotify_clone/view/screens/search.dart';
import 'package:spotify_clone/view/screens/setting.dart';

class RootApp extends StatefulWidget {
  RootApp({Key key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [HomePage(), Library(), Search(), Setting()],
    );
  }

  Widget getFooter() {
    List tabIcons = [
      Icons.home,
      Icons.book,
      Icons.search,
      Icons.settings,
    ];
    return Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(tabIcons.length, (index) {
              return IconButton(
                  icon: Icon(
                    tabIcons[index],
                    color: activeTab == index ? Colors.green : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      activeTab = index;
                    });
                  });
            }),
          ),
        ));
  }
}

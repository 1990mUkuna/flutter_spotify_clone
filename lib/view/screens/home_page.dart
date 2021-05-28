import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:spotify_clone/json/songs_json.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMusicMenuList1 = 0;
  int activeMusicMenuList2 = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Entypo.list)
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, top: 20),
                      child: Row(
                        children: List.generate(song_type_1.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  activeMusicMenuList1 = index;
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    song_type_1[index],
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: activeMusicMenuList1 == index
                                            ? Colors.green
                                            : Colors.grey,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  activeMusicMenuList1 == index
                                      ? Container(
                                          width: 10,
                                          height: 3,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                        )
                                      : Container()
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                          children: List.generate(songs.length - 5, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  width: 180,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(songs[index]['img'])),
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  songs[index]['title'],
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 180,
                                  child: Text(
                                    songs[index]['description'],
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, top: 20),
                      child: Row(
                        children: List.generate(song_type_2.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  activeMusicMenuList2 = index;
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    song_type_2[index],
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: activeMusicMenuList2 == index
                                            ? Colors.green
                                            : Colors.grey,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  activeMusicMenuList2 == index
                                      ? Container(
                                          width: 10,
                                          height: 3,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                        )
                                      : Container()
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                          children: List.generate(songs.length - 5, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  width: 180,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              songs[index + 5]['img'])),
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  songs[index + 5]['title'],
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 180,
                                  child: Text(
                                    songs[index + 5]['description'],
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

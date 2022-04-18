import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

var backColor = const Color.fromRGBO(248, 228, 212, 1);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    const List<Widget> tabs = <Widget>[
      MapScreen(),
      Search(),
      User(),
    ];

    return SafeArea(
      child: Scaffold(
        body: tabs.elementAt(_selectedTab),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.orange[900],
          selectedItemColor: Colors.red[900],
          unselectedItemColor: Colors.white,
          currentIndex: _selectedTab,
          onTap: (index) {
            setState(() {
              _selectedTab = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 40,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.pin_drop), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
      ),
    );
  }
}

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return const Map();
  }
}

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: backColor,
      ),
      const GoogleMap(
        initialCameraPosition:
            CameraPosition(target: LatLng(41.8902102, 12.4922309), zoom: 16),
      ),
    ]);
  }
}

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

bool vozClicked = true;

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: backColor,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        color: Colors.white,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              vozClicked = true;
                            });
                          },
                          child: Text(
                            "VOZ",
                            style: TextStyle(
                              fontSize: 18,
                              color:
                                  vozClicked ? Colors.red[900] : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      vozClicked
                          ? Container(
                              color: Colors.white,
                              height: 15,
                            )
                          : const SizedBox(height: 15),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        color: Colors.white,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              vozClicked = false;
                            });
                          },
                          child: Text(
                            "PRESENCIAL",
                            style: TextStyle(
                              fontSize: 18,
                              color:
                                  !vozClicked ? Colors.red[900] : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      !vozClicked
                          ? Container(
                              color: Colors.white,
                              height: 15,
                            )
                          : const SizedBox(height: 15),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
                child: Container(
              color: Colors.white,
            ))
          ],
        ),
      ),
    ]);
  }
}

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backColor,
    );
  }
}

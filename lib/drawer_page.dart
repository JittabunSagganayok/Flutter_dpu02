import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

//class for drawer
class _DrawerPageState extends State<DrawerPage> {
  int _currentpage = 0;
  static const _titles = <Widget>[
    Text("Home"),
    Text("Apps"),
    Text("Games"),
    Text("Books"),
  ];
  static const _bodies = <Widget>[
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Apps'),
    ),
    Center(
      child: Text('Games'),
    ),
    Center(
      child: Text('Books'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _titles.elementAt(_currentpage),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            _BuildDrawerHeader(),
            _BuildDrawerBody(),
          ],
        ),
      ),
      body: _bodies.elementAt(_currentpage),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: "Apps",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.games),
            label: "Games",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Books",
          ),
        ],
        currentIndex: _currentpage,
        onTap: (index) => {
          setState(() {
            _currentpage = index;
          })
        },
      ),
    );
  }

  Flexible _BuildDrawerBody() => Flexible(
      flex: 2,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _BuildDrawerItems(Icons.home, "Home", 0),
          _BuildDrawerItems(Icons.apps, "Apps", 1),
          _BuildDrawerItems(Icons.games, "Games", 2),
          _BuildDrawerItems(Icons.book, "Books", 3),
        ],
      ));
  ListTile _BuildDrawerItems(IconData icon, String text, int index) {
    final color = _currentpage == index ? Colors.blue : null;
    return ListTile(
      textColor: color,
      title: Row(
        children: [
          Icon(icon, color: color),
          SizedBox(
            width: 5,
          ),
          Text(text),
        ],
      ),
      onTap: () => {
        Navigator.of(context).pop(),
        setState(() {
          _currentpage = index;
        })
      },
    );
  }

  Widget _BuildDrawerHeader() {
    return Flexible(
      child: DrawerHeader(
        decoration: BoxDecoration(color: Colors.blue),
        child: Center(
          child: Column(
            children: [
              ClipOval(
                child: Container(
                  color: Colors.amber,
                  width: 100,
                  height: 100,
                ),
              ),
              Text("Guest"),
            ],
          ),
        ),
      ),
    );
  }

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _currentpage = index;
  //   });
  // }
}

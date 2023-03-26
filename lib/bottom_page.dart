// import 'package:flutter/material.dart';

// class BottomPage extends StatefulWidget {
//   const BottomPage({super.key});

//   @override
//   State<BottomPage> createState() => _BottomPageState();
// }

// //class for drawer
// class _BottomPageState extends State<BottomPage> {
//   int _currentpage = 0;
//   static const _titles = <Widget>[
//     Text("Home"),
//     Text("Apps"),
//     Text("Games"),
//     Text("Books"),
//   ];
//   static const _bodies = <Widget>[
//     Center(
//       child: Text('Home'),
//     ),
//     Center(
//       child: Text('Apps'),
//     ),
//     Center(
//       child: Text('Games'),
//     ),
//     Center(
//       child: Text('Books'),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: _titles.elementAt(_currentpage),
//       ),
//       // drawer: Drawer(
//       //   child: Column(
//       //     children: [
//       //       _BuildDrawerHeader(),
//       //       _BuildDrawerBody(),
//       //     ],
//       //   ),
//       // ),
//       body: _bodies.elementAt(_currentpage),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home, color: Colors.blue), label: "Home"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.apps, color: Colors.blue), label: "Apps"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.games, color: Colors.blue), label: "Games"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.book, color: Colors.blue), label: "Books"),
//         ],
//         currentIndex: _currentpage,
//         onTap: _onItemTapped,
//       ),
//     );
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _currentpage = index;
//     });
//   }
// }

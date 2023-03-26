import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TopBarPage extends StatefulWidget {
  const TopBarPage({super.key});

  @override
  State<TopBarPage> createState() => _TopBarPageState();
}

class _TopBarPageState extends State<TopBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Top Bar Nav"),
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              isScrollable: true,
              tabs: [
                _buildTab(Icons.home, "Home"),
                _buildTab(Icons.apps, "Apps"),
                _buildTab(Icons.games, "Games"),
                _buildTab(Icons.book, "Books"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Home"),
              ),
              Center(
                child: Text("Apps"),
              ),
              Center(
                child: Text("Games"),
              ),
              Center(
                child: Text("Books"),
              ),
            ],
          ),
        ));
  }

  Widget _buildTab(IconData icon, String text) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(
            width: 8,
          ),
          Text(text),
        ],
      ),
    );
  }
}

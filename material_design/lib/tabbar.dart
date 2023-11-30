import 'package:flutter/material.dart';

class TabBarNavigation extends StatefulWidget {
  TabBarNavigation({super.key});

  @override
  State<TabBarNavigation> createState() => _TabBarNavigationState();
}

class _TabBarNavigationState extends State<TabBarNavigation> with SingleTickerProviderStateMixin{
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttom Navigation'),
        bottom:  TabBar(
          controller: _tabController,
          tabs:const [
            Icon(Icons.favorite_rounded),
            Icon(Icons.settings),
          ],
        ),
      ),
      body:  TabBarView(
        controller: _tabController,
        children:const [
          Text('Faveriotes'),
          Text(
            ('Settings'),
          ),
        ],
      ),
    );
  }
}

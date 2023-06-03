import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:official_vbuyy/layouts/bottom_nav.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Center(
        child: Text('Search'),
      ),
      bottomNavigationBar: bottomNav(context),
    ));
  }
}

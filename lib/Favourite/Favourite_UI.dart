import 'package:flutter/material.dart';
import 'package:ottapp/Favourite/Movie_page.dart';
import 'package:ottapp/Favourite/News_page.dart';
import 'package:ottapp/Favourite/Sports_page.dart';
import 'package:ottapp/Favourite/TvShows_page.dart';
import 'package:ottapp/Favourite/WebSeries_page.dart';

class My_Favourite extends StatefulWidget {
  const My_Favourite({Key? key}) : super(key: key);

  @override
  State<My_Favourite> createState() => _My_FavouriteState();
}

class _My_FavouriteState extends State<My_Favourite> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Favourites',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          bottom: const TabBar(
            isScrollable: true,
            indicatorWeight: 5,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                  child: Text('Movies',
                      style: TextStyle(fontSize: 15, color: Colors.white))),
              Tab(
                  child: Text('Web series',
                      style: TextStyle(fontSize: 15, color: Colors.white))),
              Tab(
                  child: Text('Tv shows',
                      style: TextStyle(fontSize: 15, color: Colors.white))),
              Tab(
                  child: Text('Sports',
                      style: TextStyle(fontSize: 15, color: Colors.white))),
              Tab(
                  child: Text('News',
                      style: TextStyle(fontSize: 15, color: Colors.white))),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Movies(),
            WebSeries(),
            TvShows(),
            Sports(),
            News(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ottapp/Favourite/Movie_page.dart';
import 'package:ottapp/Favourite/News_page.dart';
import 'package:ottapp/Favourite/Sports_page.dart';
import 'package:ottapp/Favourite/TvShows_page.dart';
import 'package:ottapp/Favourite/WebSeries_page.dart';

class My_Favourite extends StatefulWidget {
  My_Favourite({Key? key}) : super(key: key);

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
          title: Text(
            'My Favourites',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          bottom: TabBar(
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
        body: TabBarView(
          children: [
            Movies(),
            WebSeries(),
            TvShows(),
            Sports(),
            News(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 65.0,
          margin: EdgeInsets.only(
              bottom: 20), // Adjust the margin to lift the hover
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 28, 27, 27),
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
                bottom: Radius.circular(30)), // Add border radius
          ),
          child: BottomAppBar(
            elevation: 0,
            color:
                Colors.transparent, // Set the BottomAppBar color to transparent
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    // Handle home icon action
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    // Handle search icon action
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    // Handle favorite icon action
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.man,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    // Handle settings icon action
                  },
                ),
              ],
            ),
          ),
        ),
        extendBody: true, // Set the extendBody property to true
        backgroundColor: Colors.black,
      ),
    );
  }
}

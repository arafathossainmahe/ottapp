import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> category = ["Movies", "Web Series", "TV Shows", "Sports", "Youtube", "Trailers"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("ZETTA",
            style: TextStyle(
                fontSize: 28, color: Colors.blue, fontWeight: FontWeight.w900)),
        actions: [
          Icon(Icons.search_rounded, size: 35, color: Colors.white),
          SizedBox(width: 10)
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(12),
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Chip(
                      labelPadding: EdgeInsets.all(4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.blue,
                        label: Text(category[index],
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400))),
                  );
                }),
          )
        ],
      ),
    );
  }
}

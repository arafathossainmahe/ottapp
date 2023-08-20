import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> category = [
    "Movies",
    "Web Series",
    "TV Shows",
    "Sports",
    "Youtube",
    "Trailers"
  ];
  int current = 0;

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
                padding: EdgeInsets.all(12),
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade800),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: current == index
                                      ? [Colors.blue, Colors.blue]
                                      : [Colors.black, Colors.grey.shade800])),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(
                                child: Text(category[index],
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white))),
                          ),
                        ),
                      ));
                }),
          )
        ],
      ),
    );
  }
}

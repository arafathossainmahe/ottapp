import 'package:carousel_slider/carousel_slider.dart';
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

  List<String> movieName = [
    "Avengers",
    "Avengers Age of Ultron",
    "Avengers Infinite War",
    "Avengers ENDGAME"
  ];

  int current = 0;
  int currentMovie = 0;
  int currentPage = 0;
  CarouselController controller = CarouselController();

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Category Tab View
            SizedBox(
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
            ),
            SizedBox(height: 20),


            //Image Slider
            CarouselSlider.builder(
                carouselController: controller,
                itemCount: movieName.length,
                itemBuilder: (context, index, page) {
                  return Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/movie_slider_$index.jpg'), fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Colors.black, Colors.transparent])),
                      ),
                      Positioned(
                        bottom: 1,
                        left: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(movieName[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                              Text('Superhero, Action',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16)),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 1,
                        right: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.black),
                            width: 70,
                            height: 20,
                            child: Row(
                              children: [
                                Image.asset('assets/images/imdb.jpg'),
                                SizedBox(width: 5),
                                Text('8.5',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
                options: CarouselOptions(
                    onPageChanged: (val, _) {
                      setState(() {
                        currentMovie = val;
                      });
                    },
                    height: 230,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.9)),
            SizedBox(height: 10),


            // Slider Indication
            SizedBox(
              height: 15,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: movieName.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: currentMovie == index
                          ? Container(
                              width: 15,
                              height: 6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue),
                            )
                          : CircleAvatar(
                              backgroundColor: Colors.grey[700],
                              radius: 4,
                            ),
                    );
                  }),
            ),


            //Movie Type
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hollywood',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  Text('See all',
                      style: TextStyle(color: Colors.indigoAccent, fontSize: 16)),
                ],
              ),
            ),


            //Movie list
            SizedBox(
              height: 220,
              child: ListView.builder(
                  itemCount: 14,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                return Container(
                  width: 140,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage('assets/images/movie_$index.jpg'),
                          fit: BoxFit.cover)),
                );
              }),
            ),


            //Movie Type
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hollywood',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  Text('See all',
                      style: TextStyle(color: Colors.indigoAccent, fontSize: 16)),
                ],
              ),
            ),


            //Movie list
            SizedBox(
              height: 220,
              child: ListView.builder(
                  itemCount: 14,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 140,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/images/movie_$index.jpg'),
                              fit: BoxFit.cover)),
                    );
                  }),
            )

          ],
        ),
      )
    );
  }
}

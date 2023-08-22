import 'package:flutter/material.dart';

class Movies extends StatelessWidget {
  const Movies({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color.fromARGB(255, 39, 37, 37),
                  child: SizedBox(
                      height: 150,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movie_$index.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Avengers: End Game',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      _ActionRatingButton('Action'),
                                      SizedBox(width: 8),
                                      _ActionRatingButton('⭐ 8.7'),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Time: 2H37M',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: IconButton(
                                  color: Colors.white,
                                  icon: Icon(Icons.more_vert),
                                  onPressed: () {},
                                ))
                          ]))));
        },
      ),
    );
  }
}

class _ActionRatingButton extends StatelessWidget {
  final String text;

  _ActionRatingButton(this.text);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.grey,
        onPrimary: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        minimumSize: Size(0, 0),
      ),
      child: Text(text),
    );
  }
}

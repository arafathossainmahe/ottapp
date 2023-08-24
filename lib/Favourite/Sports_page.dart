import 'package:flutter/material.dart';

class Sports extends StatelessWidget {
  const Sports({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 2,
              color: const Color.fromARGB(255, 39, 37, 37),
              child: ListTile(
                contentPadding: const EdgeInsets.all(18.0),
                leading: SizedBox(
                  width: 100,
                  height: 500,
                  child: Image.asset(
                    'assets/images/Aven.jpeg',
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                  ),
                ),
                title: const Text(
                  'Avengers: End Game',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                subtitle: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        _ActionRatingButton('Action'),
                        SizedBox(width: 8),
                        _ActionRatingButton('⭐ 8.7'),
                      ],
                    ),
                    Text(
                      'Time: 2H37M',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                trailing: IconButton(
                  iconSize: 20,
                  color: Colors.white,
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ActionRatingButton extends StatelessWidget {
  final String text;

  const _ActionRatingButton(this.text);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Colors.grey,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        minimumSize: const Size(0, 0),
      ),
      child: Text(text),
    );
  }
}

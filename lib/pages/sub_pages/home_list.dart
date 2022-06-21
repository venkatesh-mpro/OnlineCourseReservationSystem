import 'package:flutter/material.dart';
class HomeList extends StatelessWidget {
  void python() {
    print('p');
  }
  void java() {
    print('j');
  }
  void dart() {
    print('d');
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF80DEEA),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 4),
                  child: Text(
                    'Courses Offered',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: python,
                  child: Image.network(
                    'https://devopedia.org/images/article/42/4936.1519034800.png',
                    width: 320,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: java,
                  child: Image.network(
                    'http://bigclasses.com/blog/wp-content/uploads/2013/04/Java_Logo.jpg',
                    width: 320,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: dart,
                  child: Image.network(
                    'https://www.vectorlogo.zone/logos/dartlang/dartlang-ar21.png',
                    width: 320,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

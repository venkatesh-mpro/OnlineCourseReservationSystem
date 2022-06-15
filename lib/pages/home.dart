import 'package:flutter/material.dart';
import 'package:course_reservation_system/pages/sub_pages/home_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<Widget> _widgetList = [
    HomeList(),
    HomeList(),
    HomeList(),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.shifting,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
            ),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Enrolled Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: 'My Account',
          )
        ],
      ),
      body: _widgetList[_index],
    );
  }
}


// Widget _buildBottomBar(BuildContext con) {
//   return BottomNavigationBar(
//     // selectedItemColor: Colors.green,
//     // unselectedItemColor: Colors.black,
//     type: BottomNavigationBarType.fixed,
//     currentIndex: 2,
//     onTap: (index) {},
//     items: [
//       BottomNavigationBarItem(
//           icon: Icon(
//             CartIcons.home,
//             color: Colors.black,
//           ),
//           title: Text('   Store  ', style: TextStyle())),
//       BottomNavigationBarItem(
//           icon: Icon(
//             CartIcons.cart,
//           ),
//           title: Text('My Cart', style: TextStyle())),
//       BottomNavigationBarItem(
//           icon: Icon(
//             CartIcons.favourites,
//           ),
//           title: Text('Favourites', style: TextStyle())),
//       BottomNavigationBarItem(
//           icon: Icon(
//             CartIcons.account,
//           ),
//           title: Text(
//             'My Account',
//             style: TextStyle(),
//           ))
//     ],
//   );
// }


import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  final Function(int) onPress;
  final int currentIndex;

  const BottomNavigator({required this.currentIndex, required this.onPress, Key? key,

    })
      : super(key: key);


  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      showSelectedLabels: false,
      // enableFeedback: false,
      // showUnselectedLabels: false,
      unselectedItemColor: Colors.grey,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/hometab/home.png',
            height: 40,
            color: Colors.grey
          ),
          activeIcon: Image.asset(
            'assets/images/hometab/home.png',
            height: 40,
          ),
          label: 'Learn',
        ),
        
       /*  BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/hometab/badge.png',
            color: Colors.grey,
            height: 40,
          ),
          activeIcon: Image.asset(
            'assets/images/hometab/badge.png',
            height: 40,
          ),
          label: '',
        ),
         */BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/hometab/task.png',
            height: 40,
            color: Colors.grey
          ),
          activeIcon: Image.asset(
            'assets/images/hometab/task.png',
            height: 40,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/hometab/profile.png',
            height: 40,
            color: Colors.grey
          ),
          activeIcon: Image.asset(
            'assets/images/hometab/profile.png',
            height: 40,
          ),
          label: '',
        ),
        /* BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/explore-off.png',
            height: 40,
          ),
          activeIcon: Image.asset(
            'assets/images/explore-on.png',
            height: 40,
          ),
          label: '',
        ) */
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.blue,
      onTap: onPress,
    );
  }

  // @override
  // State<StatefulWidget> createState() {
  //   return _BottomNavigatorState();
  // }

}

// class _BottomNavigatorState extends State<BottomNavigator> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     print('b ${widget.currentIndex}');
//
//     return BottomNavigationBar(
//       // showSelectedLabels: false,
//       // showUnselectedLabels: false,
//       unselectedItemColor: Colors.grey,
//       items: <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Image.asset(
//             'assets/images/learn-off.png',
//             height: 40,
//           ),
//           activeIcon: Image.asset(
//             'assets/images/learn-on.png',
//             height: 40,
//           ),
//           label: '',
//         ),
//         BottomNavigationBarItem(
//           icon: Image.asset(
//             'assets/images/person-off.png',
//             height: 40,
//           ),
//           activeIcon: Image.asset(
//             'assets/images/person-on.png',
//             height: 40,
//           ),
//           label: '',
//         ),
//         BottomNavigationBarItem(
//           icon: Image.asset(
//             'assets/images/shield-off.png',
//             color: Colors.grey,
//             height: 40,
//           ),
//           activeIcon: Image.asset(
//             'assets/images/shield-on.png',
//             height: 40,
//           ),
//           label: '',
//         ),
//         BottomNavigationBarItem(
//           icon: Image.asset(
//             'assets/images/shop-off.png',
//             height: 40,
//           ),
//           activeIcon: Image.asset(
//             'assets/images/shop-on.png',
//             height: 40,
//           ),
//           label: '',
//         ),
//         BottomNavigationBarItem(
//           icon: Image.asset(
//             'assets/images/explore-off.png',
//             height: 40,
//           ),
//           activeIcon: Image.asset(
//             'assets/images/explore-on.png',
//             height: 40,
//           ),
//           label: '',
//         ),
//       ],
//       currentIndex: widget.currentIndex,
//       selectedItemColor: Colors.blue,
//       onTap: widget.onPress,
//     );
//   }
// }

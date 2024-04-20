// import 'package:flutter/material.dart';

// class LeaderboardScreenV0 extends StatelessWidget {
//   final List<LeaderboardEntry> leaderboardEntries = [
//     LeaderboardEntry(rank: 1, userName: 'John Doe', totalPoints: 100),
//     LeaderboardEntry(rank: 2, userName: 'Jane Smith', totalPoints: 90),
//     LeaderboardEntry(rank: 3, userName: 'Alice Johnson', totalPoints: 85),
//     LeaderboardEntry(rank: 4, userName: 'John Doe', totalPoints: 84),
//     LeaderboardEntry(rank: 5, userName: 'Jane Smith', totalPoints: 80),
//     LeaderboardEntry(rank: 6, userName: 'Alice Johnson', totalPoints: 75),
//     LeaderboardEntry(rank: 7, userName: 'John Doe', totalPoints: 70),
//     LeaderboardEntry(rank: 8, userName: 'Jane Smith', totalPoints: 65),
//     LeaderboardEntry(rank: 9, userName: 'Alice Johnson', totalPoints: 55),
//     LeaderboardEntry(rank: 10, userName: 'John Doe', totalPoints: 50),
//     LeaderboardEntry(rank: 11, userName: 'Jane Smith', totalPoints: 45),
//     LeaderboardEntry(rank: 12, userName: 'Alice Johnson', totalPoints: 45),
//     LeaderboardEntry(rank: 13, userName: 'John Doe', totalPoints: 40),
//     LeaderboardEntry(rank: 14, userName: 'Jane Smith', totalPoints: 35),
//     LeaderboardEntry(rank: 15, userName: 'Alice Johnson', totalPoints: 36),
//     // Add more leaderboard entries as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         child: Column(
//           children: [
//             ListView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: leaderboardEntries.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   padding: EdgeInsets.symmetric(vertical: 4.0),
//                   child: Card(
//                     color: Colors.white,
//                     child: LeaderboardEntryRow(leaderboardEntry: leaderboardEntries[index]),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       );
//   }
// }

// class LeaderboardEntry {
//   final int rank;
//   final String userName;
//   final int totalPoints;

//   LeaderboardEntry(
//       {required this.rank, required this.userName, required this.totalPoints});
// }

// class LeaderboardEntryRow extends StatelessWidget {
//   final LeaderboardEntry leaderboardEntry;

//   LeaderboardEntryRow({required this.leaderboardEntry});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           flex: 1,
//           child: Container(
//             height: 40,
//             decoration: BoxDecoration(
//               border: Border(right: BorderSide(color: Colors.grey)),
//             ),
//             child: ListTile(
//               leading: Stack(
//                 children: [
//                   Icon(Icons.sports_tennis_sharp),
//                   Positioned.fill(
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: Text(
//                         leaderboardEntry.rank.toString(),
//                         style: TextStyle(color: Colors.redAccent),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 3,
//           child: ListTile(
//             title: Row(
//               children: [
//                 CircleAvatar(
//                   backgroundImage: AssetImage(
//                       'assets/images/hometab/profile.png'), // Replace with user photo
//                 ),
//                 SizedBox(width: 10),
//                 Text(leaderboardEntry.userName),
//               ],
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 1,
//           child: Container(
//             height: 40,
//             decoration: BoxDecoration(
//               border: Border(left: BorderSide(color: Colors.grey)),
//             ),
//             child: Center(
//               child: Text(
//                 leaderboardEntry.totalPoints.toString(),
//                 style: TextStyle(fontSize: 16),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import '../../model/course_model.dart';
// import '../../model/level_model.dart';
// import '../lesson_screen/lessons_catalog_screen.dart';

// class CourseLevelScreen extends StatefulWidget {
//   final CourseModel user_course;
//   final List<LevelModel> list_levels;

//   CourseLevelScreen({required this.user_course, required this.list_levels});

//   @override
//   _CourseLevelScreenState createState() => _CourseLevelScreenState();
// }

// class _CourseLevelScreenState extends State<CourseLevelScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.user_course.courseName),
//         centerTitle: true,
//         leading: IconButton(
//           icon: Icon(Icons.close),
//           onPressed: () {
//             Navigator.of(context).pop(); // Navigate back when back button is pressed
//           },
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: widget.list_levels.length,
//         itemBuilder: (BuildContext context, int index) {
//           if (index == 0 || widget.list_levels[index - 1].isCompleted) {
//             return buildLevelCard(context, widget.list_levels[index]);
//           } else {
//             return buildLockedLevelCard(context, widget.list_levels[index]);
//           }
//         },
//       ),
//     );
//   }

//   Widget buildLockedLevelCard(BuildContext context, LevelModel level) {
//     return Container(
//       margin: EdgeInsets.all(16.0),
//       padding: EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         color: Colors.grey[300], // Adjust the color as needed
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Icon(
//                   level.icon,
//                   size: 48.0,
//                   color: Colors.grey[600], // Adjust the color as needed
//                 ),
//                 SizedBox(width: 16.0),
//                 Text(
//                   level.levelName,
//                   style: TextStyle(
//                       fontSize: 24.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.grey[600]), // Adjust the color as needed
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   level.description,
//                   style: TextStyle(
//                       color: Colors.grey[600]), // Adjust the color as needed
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(width: 16.0),
//           Image.asset(
//             level.imagePath,
//             height: 150.0,
//             width: 150.0,
//             fit: BoxFit.cover,
//             color: Colors.grey[600], // Adjust the color as needed
//             //colorBlendMode: BlendMode.saturation,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildLevelCard(BuildContext context, LevelModel level) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => LessonsCatalogScreen(lessons: level.level_lessons,current_level: level),
//           ),
//         );
//       },
//       child: Container(
//         margin: EdgeInsets.all(16.0),
//         padding: EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           color: level.backgroundColor,
//           borderRadius: BorderRadius.circular(16.0),
//         ),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Icon(
//                     level.icon,
//                     size: 48.0,
//                     color: Colors.white,
//                   ),
//                   SizedBox(width: 16.0),
//                   Text(
//                     level.levelName,
//                     style: TextStyle(
//                         fontSize: 24.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                   SizedBox(height: 8.0),
//                   Text(
//                     level.description,
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(width: 16.0),
//             Image.asset(
//               level.imagePath,
//               height: 150.0,
//               width: 150.0,
//               fit: BoxFit.cover,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

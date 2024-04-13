import 'level_model.dart';

class CourseModel  {
  final String courseName;
  final int courseId;
  final String courseDescription;
  final String courseImage;
  List<CourseLevelModel> course_levels;
  CourseModel({
    required this.courseId,
    required this.courseName,
    required this.courseImage,
    required this.courseDescription,
    // ignore: non_constant_identifier_names
    this.course_levels =const <CourseLevelModel>[]
  });
}
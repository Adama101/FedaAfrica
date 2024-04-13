import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'course_level_screen.dart';
import 'model/course_model.dart';
import 'model/lesson_model.dart';
import 'model/level_model.dart';
import 'model/option_model.dart';
import 'model/question_model.dart';

class KidHomeLearningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Compete with top 5 kid financial learners', // Replace with first name and family name
            style: GoogleFonts.abel(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          //SizedBox(height: 4),
          //Display list of top five kid
          buildTopKidLearnersListView(),
          //SizedBox(height: 8),
          Text(
            'Start your financial literacy journey',
            style: GoogleFonts.abel(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          _buildCoursesPath(),
          //_build3DCard()
        ],
      ),
    );
  }

  Widget buildTopKidLearnersListView() {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildTopKidLearner('Lela', 'assets/kids/kid1.jpg', 100, 20),
          buildTopKidLearner('Abram', 'assets/kids/kid2.jpg', 95, 18),
          buildTopKidLearner('James', 'assets/kids/kid3.jpg', 90, 18),
          buildTopKidLearner('Deborah', 'assets/kids/kid4.jpg', 85, 16),
          buildTopKidLearner('Afi', 'assets/kids/kid5.jpeg', 80, 15),
        ],
      ),
    );
  }

  Widget buildTopKidLearner(
      String name, String imagePath, int score, int lessonsCompleted) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imagePath),
          ),
          Text(
            name,
            style: GoogleFonts.abel(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _build3DCard() {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001) // Perspective
        ..rotateX(0.1), // Rotate along Y-axis
      alignment: Alignment.center,
      child: Container(
        width: 200,
        height: 300,
        color: Colors.blue,
        child: Center(
          child: Text(
            '3D Card',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCoursesPath() {
    final List<LessonModel> lessons = [
      LessonModel(
        title: 'FL, Lesson 1',
        description: 'Financial literacy 101',
        icon: Icons.run_circle,
        image: "assets/images/hometab/money.png",
        urlContent: 'D9cPAuZIigs',
        backgroundColor: Color(0xFF795548),
        questions: [
          QuestionModel(
            points: 5,
            correctAnswerIndex: 1,
            text: 'Where\'s money from?',
            options: [
              OptionModel(
                  text: 'Bank', image: "assets/images/hometab/bank.png"),
              OptionModel(
                  text: 'Tree', image: "assets/images/hometab/tree.png"),
              OptionModel(
                  text: 'Parents', image: "assets/images/hometab/parent.png"),
              OptionModel(
                  text: 'Schools', image: "assets/images/hometab/school.png"),
            ],
          ),
          QuestionModel(
            points: 5,
            correctAnswerIndex: 2,
            text: 'How can you earn money ?',
            options: [
              OptionModel(
                  text: 'By asking their parents for it',
                  image: "assets/images/hometab/parents.png"),
              OptionModel(
                  text: 'By doing chores or tasks for others',
                  image: "assets/images/hometab/performing_task.png"),
              OptionModel(
                  text: 'By playing video games',
                  image: "assets/images/hometab/playing_games.png"),
              OptionModel(
                  text: 'By spending all their allowance',
                  image: "assets/images/hometab/sallowances.png"),
            ],
          ),
          QuestionModel(
            points: 5,
            correctAnswerIndex: 1,
            text: 'What are some chores you can do to earn money at home ?',
            options: [
              OptionModel(
                  text: 'Cleaning your room',
                  image: "assets/images/hometab/cleaning_rooms.png"),
              OptionModel(
                  text: 'Playing with toys',
                  image: "assets/images/hometab/playing_games.png"),
              OptionModel(
                  text: 'Watching TV',
                  image: "assets/images/hometab/watching_tv.png"),
              OptionModel(
                  text: 'Eating snacks',
                  image: "assets/images/hometab/eating_snacks.png"),
            ],
          ),
          QuestionModel(
            points: 5,
            correctAnswerIndex: 2,
            text: 'Why is it important to work hard to earn money ?',
            options: [
              OptionModel(
                  text: 'So you can spend it all at once',
                  image: "assets/images/hometab/spendmoney.png"),
              OptionModel(
                  text: 'So you can save it for the future',
                  image: "assets/images/hometab/save_future.png"),
              OptionModel(
                  text: 'So you can buy more toys',
                  image: "assets/images/hometab/toys.png"),
              OptionModel(
                  text: 'So you can give it away to your friends',
                  image: "assets/images/hometab/friends.png"),
            ],
          ),
          QuestionModel(
            points: 5,
            correctAnswerIndex: 2,
            text: 'Can you name some jobs people do to earn money ?',
            options: [
              OptionModel(
                  text: 'Playing with toys',
                  image: "assets/images/hometab/playing_games.png"),
              OptionModel(
                  text: 'Cleaning houses',
                  image: "assets/images/hometab/cleaning_rooms.png"),
              OptionModel(
                  text: 'Watching movies',
                  image: "assets/images/hometab/watching_tv.png"),
              OptionModel(
                  text: 'Eating snacks',
                  image: "assets/images/hometab/eating_snacks.png"),
            ],
          ),
          QuestionModel(
            points: 5,
            correctAnswerIndex: 2,
            text: 'How can you save or spend the money you earn wisely ?',
            options: [
              OptionModel(
                  text: 'By spending it all at once',
                  image: "assets/images/hometab/spendmoney.png"),
              OptionModel(
                  text: 'By saving some for the future',
                  image: "assets/images/hometab/save_future.png"),
              OptionModel(
                  text: 'By giving it away to your friends',
                  image: "assets/images/hometab/friends.png"),
              OptionModel(
                  text: 'By buying toys and games',
                  image: "assets/images/hometab/toys.png"),
            ],
          )
        ],
      ),
      LessonModel(
        title: 'FL, Lesson 2',
        description: 'Needs vs Wants',
        icon: Icons.run_circle,
        image: "assets/images/hometab/investNow.png",
        backgroundColor: Colors.redAccent,
        urlContent: "aRcXutXvfmM",
        questions: [
          QuestionModel(
            points: 5,
            correctAnswerIndex: 3,
            text: 'Where m',
            options: [
              OptionModel(
                  text: 'Option 1', image: "assets/images/hometab/goblin.png"),
              OptionModel(
                  text: 'Option 2', image: "assets/images/hometab/ogre.png"),
              OptionModel(
                  text: 'Option 3', image: "assets/images/hometab/troll.png"),
            ],
          ),
          QuestionModel(
            points: 5,
            text: 'Where the money\'s from',
            correctAnswerIndex: 2,
            options: [
              OptionModel(
                  text: 'Option 4', image: 'assets/images/hometab/goblin.png'),
              OptionModel(
                  text: 'Option 5', image: 'assets/images/hometab/ogre.png'),
              OptionModel(
                  text: 'Option 6', image: 'assets/images/hometab/troll.png'),
            ],
          ),
        ],
      ),
      LessonModel(
        title: 'Level 2',
        description: 'What is crypto currency',
        icon: Icons.run_circle,
        image: "assets/images/hometab/bitcoin.png",
        backgroundColor: Colors.blue,
        questions: [
          QuestionModel(
            points: 5,
            correctAnswerIndex: 4,
            text: 'What is crypto currency',
            options: [
              OptionModel(
                  text: 'NFT', image: "assets/images/hometab/goblin.png"),
              OptionModel(
                  text: 'Digital money',
                  image: "assets/images/hometab/ogre.png"),
              OptionModel(
                  text: 'Digital currency',
                  image: "assets/images/hometab/troll.png"),
              OptionModel(
                  text: 'Currency', image: "assets/images/hometab/troll.png"),
            ],
          ),
          QuestionModel(
            points: 5,
            correctAnswerIndex: 1,
            text: 'Where the money\'s from',
            options: [
              OptionModel(
                  text: 'Option 4', image: 'assets/images/hometab/goblin.png'),
              OptionModel(
                  text: 'Option 5', image: 'assets/images/hometab/ogre.png'),
              OptionModel(
                  text: 'Option 6', image: 'assets/images/hometab/troll.png'),
            ],
          ),
        ],
      )
      // Add more lessons as needed
    ];

    return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          CourseWidget(
              user_course: CourseModel(
                  courseId: 1,
                  courseName: 'Financial Literacy 101',
                  courseImage: 'assets/images/hometab/investNow.png',
                  courseDescription: 'Financial literacy for kids'),
              levels: [
                CourseLevelModel(
                    levelName: 'Level 1',
                    lessonsCount: 5,
                    isCompleted: false,
                    levelId: 1,
                    description: "Earn 1 FEDA coins",
                    imagePath: "assets/images/hometab/money.png",
                    level_lessons: lessons),
                CourseLevelModel(
                    levelName: 'Level 2',
                    lessonsCount: 5,
                    levelId: 2,
                    isCompleted: false,
                    description: "Earn 3 FEDA coins",
                    imagePath: "assets/images/hometab/investNow.png",
                    level_lessons: lessons),
                CourseLevelModel(
                    levelName: 'Level 3',
                    lessonsCount: 5,
                    levelId: 3,
                    description: "Earn 5 FEDA coins",
                    isCompleted: false,
                    imagePath: "assets/images/hometab/investNow.png",
                    level_lessons: lessons),
              ]),
          CourseWidget(
              user_course: CourseModel(
                  courseId: 2,
                  courseName: 'Saving',
                  courseImage: 'assets/images/hometab/money.png',
                  courseDescription: 'Learn savings basics'),
              levels: [
                CourseLevelModel(
                    levelName: 'Start',
                    lessonsCount: 5,
                    isCompleted: false,
                    description: "Earn 2 FEDA coins",
                    imagePath: 'assets/images/hometab/investNow.png',
                    levelId: 1,
                    level_lessons: lessons)
              ]),
          CourseWidget(
              user_course: CourseModel(
                  courseId: 3,
                  courseName: 'Budgeting',
                  courseImage: 'assets/images/hometab/investNow.png',
                  courseDescription: 'Budget everything'),
              levels: [
                CourseLevelModel(
                    levelName: 'Hero Budgetor',
                    lessonsCount: 5,
                    isCompleted: false,
                    imagePath: 'assets/images/hometab/investNow.png',
                    levelId: 1),
                CourseLevelModel(
                    levelName: 'Guru Budgetor',
                    lessonsCount: 5,
                    isCompleted: false,
                    imagePath: 'assets/images/hometab/investNow.png',
                    levelId: 2)
              ]),
          CourseWidget(
              user_course: CourseModel(
                  courseId: 4,
                  courseName: 'Needs vs Wants',
                  courseImage: 'assets/images/hometab/investNow.png',
                  courseDescription: 'Financial literacy for kids'),
              levels: [
                CourseLevelModel(
                    levelName: 'Beginner',
                    lessonsCount: 5,
                    isCompleted: false,
                    imagePath: 'assets/images/hometab/investNow.png',
                    levelId: 1),
                CourseLevelModel(
                    levelName: 'Intermediate Level',
                    lessonsCount: 5,
                    isCompleted: false,
                    imagePath: 'assets/images/hometab/investNow.png',
                    levelId: 1)
              ])

          // Add more CourseWidget instances here for additional courses
        ]);
  }
}

class CourseWidget extends StatelessWidget {
  final CourseModel user_course;
  final List<CourseLevelModel> levels;

  const CourseWidget(
      {Key? key, required this.levels, required this.user_course})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // Navigate to the CourseLevelScreen when tapped
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CourseLevelScreen(
                      user_course: user_course, //Example: Saving
                      list_levels: levels,
                    )),
          );
        },
        child: /* Card(
          elevation: 16.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  user_course.courseImage,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  user_course.courseName,
                  style: GoogleFonts.abyssinicaSil(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              LinearProgressIndicator(
                value: calculateProgress(),
                backgroundColor: Colors.blueAccent,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              ),
              Text(
                'Progress: ${(calculateProgress() * 100).toInt()}%',
                style: GoogleFonts.abel(
                  color: const Color(0xFFA2A2A2),
                  fontSize: 13,
                ),
              ),
              Text(
                'Levels: ${levels.length}',
                style: GoogleFonts.abel(
                  color: const Color(0xFFA2A2A2),
                  fontSize: 12,
                ),
              )
            ],
          ),
        ) */ SizedBox(
        height: double.infinity,
        child: Card(
          elevation: 5,
          semanticContainer: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FractionallySizedBox(
                widthFactor: 0.35, // Image takes 50% of card width
                child: Image.asset(
                  user_course.courseImage,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user_course.courseName,
                      style: GoogleFonts.abyssinicaSil(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //SizedBox(height: 4),
                    Text(
                      user_course.courseDescription,
                      style: TextStyle(fontSize: 13),
                    ),
                    //SizedBox(height: 4),
                    LinearProgressIndicator(
                      value: calculateProgress(),
                      backgroundColor: Colors.grey[300],
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                    //SizedBox(height: 4),
                    Text(
                      'Progress: ${(calculateProgress() * 100).toInt()}%',
                      style: GoogleFonts.abel(
                        color: const Color(0xFFA2A2A2),
                        fontSize: 13,
                      ),
                    ),
                    //SizedBox(height: 4),
                    Text(
                      'Levels: ${levels.length}',
                      style: GoogleFonts.abel(
                        color: const Color(0xFFA2A2A2),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
        );
  }

  double calculateProgress() {
    // For simplicity, assuming progress is calculated based on completed levels
    int completedLevels = levels.where((level) => level.isCompleted).length;
    return completedLevels / levels.length;
  }
}

class LevelModel {
  final String levelName;
  final int lessonsCount;
  bool isCompleted;

  LevelModel({
    required this.levelName,
    required this.lessonsCount,
    this.isCompleted = false,
  });
}

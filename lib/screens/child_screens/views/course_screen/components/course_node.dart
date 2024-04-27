import 'package:fedaafrica/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../common/hex_color.dart';
import '../../../model/lesson_model.dart';
import '../../../model/level_model.dart';
import '../../../model/option_model.dart';
import '../../../model/question_model.dart';

// ignore: must_be_immutable
class CourseNode extends StatelessWidget {
  final String name;
  String? image;
  Color? color;
  int? crown;
  double? percent;

  CourseNode(this.name,
      {this.image, this.color, this.crown, this.percent, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<LessonModel> lessons = [
      LessonModel(
        title: 'FL, Lesson 1',
        description: 'Financial literacy 101',
        icon: Icons.run_circle,
        image: "assets/images/hometab/money.png",
        completed: false,
        urlContent: 'aRcXutXvfmM',
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
        urlContent: "D9cPAuZIigs",
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

    // ignore: unused_local_variable
    final List<LevelModel> course_levels = [
      LevelModel(
          levelName: 'Level 1',
          lessonsCount: 5,
          isCompleted: false,
          levelId: 1,
          description: "Earn 1 FEDA coins",
          imagePath: "assets/images/hometab/money.png",
          level_lessons: lessons),
      LevelModel(
          levelName: 'Level 2',
          lessonsCount: 5,
          levelId: 2,
          isCompleted: false,
          description: "Earn 3 FEDA coins",
          imagePath: "assets/images/hometab/investNow.png",
          level_lessons: lessons),
      LevelModel(
          levelName: 'Level 3',
          lessonsCount: 5,
          levelId: 3,
          description: "Earn 5 FEDA coins",
          isCompleted: false,
          imagePath: "assets/images/hometab/investNow.png",
          level_lessons: lessons),
    ];

    return Column(
      children: [
        // Routing to Video Player Screen
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.stageOneScreen);
          },
          child: node(),
        ),
        const Padding(padding: EdgeInsets.all(5)),
        courseName(),
      ],
    );
  }

  node() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            progressCircle(),
            CircleAvatar(
              backgroundColor: color ?? const Color(0xFF2B70C9),
              radius: 55,
            ),
            Image.asset(
              image ?? 'assets/images/egg.png',
              width: 90,
            ),
            subCrown(),
          ],
        ),
      ],
    );
  }

  progressCircle() {
    return Transform.rotate(
      angle: 2.0,
      child: CircularPercentIndicator(
        radius: 75.0,
        lineWidth: 10.0,
        percent: percent ?? 0,
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: HexColor.fromHex('#036CFF'),
        backgroundColor: Colors.grey.shade300,
      ),
    );
  }

  subCrown() {
    return Positioned(
      right: 0,
      bottom: 5,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/crown.png', width: 40),
          Text(
            '${crown == null || crown == 0 ? '' : crown}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Color(0xFFB66E28),
            ),
          ),
        ],
      ),
    );
  }

  courseName() {
    return Text(name,
        style: GoogleFonts.abel(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ));
  }
}

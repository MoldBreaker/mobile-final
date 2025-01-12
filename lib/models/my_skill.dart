import 'package:job_finder/models/skill.dart';
import 'package:job_finder/models/user.dart';

class MySkill {
  int userId;
  String? level;
  int skillId;
  Skill skill;
  User user;

  MySkill({
    required this.userId,
    this.level,
    required this.skillId,
    required this.skill,
    required this.user,
  });

  // Factory method to create a MySkill object from JSON
  factory MySkill.fromJson(Map<String, dynamic> json) {
    return MySkill(
      userId: json['userId'],
      level: json['level'],
      skillId: json['skillId'],
      skill: Skill.fromJson(json['skill']),
      user: User.fromJson(json['user']),
    );
  }

  // Method to convert a MySkill object to JSON
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'level': level,
      'skillId': skillId,
      'skill': skill.toJson(),
      'user': user.toJson(),
    };
  }
}

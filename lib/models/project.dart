import 'package:job_finder/models/user.dart';

class Project {
  int projectId;
  String? projectName;
  int? isDoing;
  int? startMonth;
  int? startYear;
  int? endMonth;
  int? endYear;
  String? shortDescription;
  String? projectUrl;
  int userId;
  User user;

  Project({
    required this.projectId,
    this.projectName,
    this.isDoing,
    this.startMonth,
    this.startYear,
    this.endMonth,
    this.endYear,
    this.shortDescription,
    this.projectUrl,
    required this.userId,
    required this.user,
  });

  // Factory method to create a Project object from JSON
  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      projectId: json['projectId'],
      projectName: json['projectName'],
      isDoing: json['isDoing'],
      startMonth: json['startMonth'],
      startYear: json['startYear'],
      endMonth: json['endMonth'],
      endYear: json['endYear'],
      shortDescription: json['shortDescription'],
      projectUrl: json['projectUrl'],
      userId: json['userId'],
      user: User.fromJson(
          json['user']), // assuming User model has fromJson method
    );
  }

  // Method to convert a Project object to JSON
  Map<String, dynamic> toJson() {
    return {
      'projectId': projectId,
      'projectName': projectName,
      'isDoing': isDoing,
      'startMonth': startMonth,
      'startYear': startYear,
      'endMonth': endMonth,
      'endYear': endYear,
      'shortDescription': shortDescription,
      'projectUrl': projectUrl,
      'userId': userId,
      'user': user.toJson(), // assuming User model has toJson method
    };
  }
}

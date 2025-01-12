import 'package:job_finder/models/user.dart';

class WorkExperience {
  int weid;
  String? jobTitle;
  String? company;
  int? isWorking;
  int? fromMonth;
  int? fromYear;
  int? toMonth;
  int? toYear;
  String? description;
  int userId;
  User user; // Assuming the User model has a `fromJson` and `toJson` method.

  WorkExperience({
    required this.weid,
    this.jobTitle,
    this.company,
    this.isWorking,
    this.fromMonth,
    this.fromYear,
    this.toMonth,
    this.toYear,
    this.description,
    required this.userId,
    required this.user,
  });

  // Factory method to create a WorkExperience object from JSON
  factory WorkExperience.fromJson(Map<String, dynamic> json) {
    return WorkExperience(
      weid: json['weid'],
      jobTitle: json['jobTitle'],
      company: json['company'],
      isWorking: json['isWorking'],
      fromMonth: json['fromMonth'],
      fromYear: json['fromYear'],
      toMonth: json['toMonth'],
      toYear: json['toYear'],
      description: json['description'],
      userId: json['userId'],
      user: User.fromJson(
          json['user']), // Assuming User model has a `fromJson` method
    );
  }

  // Method to convert a WorkExperience object to JSON
  Map<String, dynamic> toJson() {
    return {
      'weid': weid,
      'jobTitle': jobTitle,
      'company': company,
      'isWorking': isWorking,
      'fromMonth': fromMonth,
      'fromYear': fromYear,
      'toMonth': toMonth,
      'toYear': toYear,
      'description': description,
      'userId': userId,
      'user': user.toJson(), // Assuming User model has a `toJson` method
    };
  }
}

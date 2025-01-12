import 'package:job_finder/models/job.dart';
import 'package:job_finder/models/user.dart';

class Recruitment {
  int userId;
  int jobId;
  String? fileCv;
  DateTime? sentAt;
  Job job;
  User user;

  Recruitment({
    required this.userId,
    required this.jobId,
    this.fileCv,
    this.sentAt,
    required this.job,
    required this.user,
  });

  // Factory method to create a Recruitment object from JSON
  factory Recruitment.fromJson(Map<String, dynamic> json) {
    return Recruitment(
      userId: json['userId'],
      jobId: json['jobId'],
      fileCv: json['fileCv'],
      sentAt: json['sentAt'] != null ? DateTime.parse(json['sentAt']) : null,
      job: Job.fromJson(json['job']), // assuming Job model has fromJson method
      user: User.fromJson(
          json['user']), // assuming User model has fromJson method
    );
  }

  // Method to convert a Recruitment object to JSON
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'jobId': jobId,
      'fileCv': fileCv,
      'sentAt': sentAt?.toIso8601String(),
      'job': job.toJson(), // assuming Job model has toJson method
      'user': user.toJson(), // assuming User model has toJson method
    };
  }
}

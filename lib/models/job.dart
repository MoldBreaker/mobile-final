import 'package:job_finder/models/company.dart';
import 'package:job_finder/models/recruitment.dart';
import 'package:job_finder/models/skill.dart';

class Job {
  int jobId;
  String? jobName;
  String? salary;
  String? location;
  String? workStyle;
  DateTime? postedDay;
  String? description;
  DateTime? endDay;
  int? experienceYear;
  int? recruitmentCount;
  bool status;
  int companyId;
  int userId;
  Company? company;
  List<Recruitment> recruitments;
  List<Skill> skills;

  Job({
    required this.jobId,
    this.jobName,
    this.salary,
    this.location,
    this.workStyle,
    this.postedDay,
    this.description,
    this.endDay,
    this.experienceYear,
    this.recruitmentCount,
    this.status = true,
    required this.companyId,
    required this.userId,
    this.company,
    this.recruitments = const [],
    this.skills = const [],
  });

  /// Factory method để tạo Job từ JSON
  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      jobId: json['jobId'] ?? 0,
      jobName: json['jobName'],
      salary: json['salary'],
      location: json['location'],
      workStyle: json['workStyle'],
      postedDay:
          json['postedDay'] != null ? DateTime.parse(json['postedDay']) : null,
      description: json['description'],
      endDay: json['endDay'] != null ? DateTime.parse(json['endDay']) : null,
      experienceYear: json['experienceYear'],
      recruitmentCount: json['recruitmentCount'],
      status: json['status'] ?? true,
      companyId: json['companyId'] ?? 0,
      userId: json['userId'] ?? 0,
      company:
          json['company'] != null ? Company.fromJson(json['company']) : null,
      recruitments: json['recruitments'] != null
          ? (json['recruitments'] as List)
              .map((r) => Recruitment.fromJson(r))
              .toList()
          : [],
      skills: json['skills'] != null
          ? (json['skills'] as List).map((s) => Skill.fromJson(s)).toList()
          : [],
    );
  }

  /// Chuyển Job sang JSON
  Map<String, dynamic> toJson() {
    return {
      'jobId': jobId,
      'jobName': jobName,
      'salary': salary,
      'location': location,
      'workStyle': workStyle,
      'postedDay': postedDay?.toIso8601String(),
      'description': description,
      'endDay': endDay?.toIso8601String(),
      'experienceYear': experienceYear,
      'recruitmentCount': recruitmentCount,
      'status': status,
      'companyId': companyId,
      'userId': userId,
      'company': company?.toJson(),
      'recruitments': recruitments.map((r) => r.toJson()).toList(),
      'skills': skills.map((s) => s.toJson()).toList(),
    };
  }
}

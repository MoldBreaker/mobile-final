import 'package:job_finder/models/company.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/models/my_skill.dart';

class Skill {
  int skillId;
  String? skillName;
  List<MySkill> mySkills;
  List<Company> companies;
  List<Job> jobs;

  Skill({
    required this.skillId,
    this.skillName,
    required this.mySkills,
    required this.companies,
    required this.jobs,
  });

  // Factory method to create a Skill object from JSON
  factory Skill.fromJson(Map<String, dynamic> json) {
    return Skill(
      skillId: json['skillId'],
      skillName: json['skillName'],
      mySkills: (json['mySkills'] as List)
          .map((e) => MySkill.fromJson(e))
          .toList(), // assuming MySkill model has fromJson method
      companies: (json['companies'] as List)
          .map((e) => Company.fromJson(e))
          .toList(), // assuming Company model has fromJson method
      jobs: (json['jobs'] as List)
          .map((e) => Job.fromJson(e))
          .toList(), // assuming Job model has fromJson method
    );
  }

  // Method to convert a Skill object to JSON
  Map<String, dynamic> toJson() {
    return {
      'skillId': skillId,
      'skillName': skillName,
      'mySkills': mySkills.map((e) => e.toJson()).toList(),
      'companies': companies.map((e) => e.toJson()).toList(),
      'jobs': jobs.map((e) => e.toJson()).toList(),
    };
  }
}

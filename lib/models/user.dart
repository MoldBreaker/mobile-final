import 'package:job_finder/models/certificate.dart';
import 'package:job_finder/models/cv.dart';
import 'package:job_finder/models/education.dart';
import 'package:job_finder/models/my_skill.dart';
import 'package:job_finder/models/project.dart';
import 'package:job_finder/models/recruitment.dart';
import 'package:job_finder/models/work_experience.dart';

class User {
  bool emailConfirmed;
  String? fullName;
  String? title;
  String? emailAddress;
  String? phone;
  DateTime? dateOfBirth;
  int? gender;
  String? city;
  String? address;
  String? personalLink;
  String? avatar;
  String? aboutMe;

  List<Certificate> certificates;
  List<Cv> cvs;
  List<Education> educations;
  List<MySkill> mySkills;
  List<Project> projects;
  List<Recruitment> recruitments;
  List<WorkExperience> workExperiences;

  User({
    required this.emailConfirmed,
    this.fullName,
    this.title,
    this.emailAddress,
    this.phone,
    this.dateOfBirth,
    this.gender,
    this.city,
    this.address,
    this.personalLink,
    this.avatar,
    this.aboutMe,
    this.certificates = const [],
    this.cvs = const [],
    this.educations = const [],
    this.mySkills = const [],
    this.projects = const [],
    this.recruitments = const [],
    this.workExperiences = const [],
  });

  // Generate fromJson method
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      emailConfirmed: json['emailConfirmed'] ?? false,
      fullName: json['fullName'],
      title: json['title'],
      emailAddress: json['emailAddress'],
      phone: json['phone'],
      dateOfBirth: json['dateOfBirth'] != null
          ? DateTime.parse(json['dateOfBirth'])
          : null,
      gender: json['gender'],
      city: json['city'],
      address: json['address'],
      personalLink: json['personalLink'],
      avatar: json['avatar'],
      aboutMe: json['aboutMe'],
      certificates: (json['certificates'] as List<dynamic>?)
              ?.map((e) => Certificate.fromJson(e))
              .toList() ??
          [],
      cvs: (json['cvs'] as List<dynamic>?)
              ?.map((e) => Cv.fromJson(e))
              .toList() ??
          [],
      educations: (json['educations'] as List<dynamic>?)
              ?.map((e) => Education.fromJson(e))
              .toList() ??
          [],
      mySkills: (json['mySkills'] as List<dynamic>?)
              ?.map((e) => MySkill.fromJson(e))
              .toList() ??
          [],
      projects: (json['projects'] as List<dynamic>?)
              ?.map((e) => Project.fromJson(e))
              .toList() ??
          [],
      recruitments: (json['recruitments'] as List<dynamic>?)
              ?.map((e) => Recruitment.fromJson(e))
              .toList() ??
          [],
      workExperiences: (json['workExperiences'] as List<dynamic>?)
              ?.map((e) => WorkExperience.fromJson(e))
              .toList() ??
          [],
    );
  }

  // Generate toJson method
  Map<String, dynamic> toJson() {
    return {
      'emailConfirmed': emailConfirmed,
      'fullName': fullName,
      'title': title,
      'emailAddress': emailAddress,
      'phone': phone,
      'dateOfBirth': dateOfBirth?.toIso8601String(),
      'gender': gender,
      'city': city,
      'address': address,
      'personalLink': personalLink,
      'avatar': avatar,
      'aboutMe': aboutMe,
      'certificates': certificates.map((e) => e.toJson()).toList(),
      'cvs': cvs.map((e) => e.toJson()).toList(),
      'educations': educations.map((e) => e.toJson()).toList(),
      'mySkills': mySkills.map((e) => e.toJson()).toList(),
      'projects': projects.map((e) => e.toJson()).toList(),
      'recruitments': recruitments.map((e) => e.toJson()).toList(),
      'workExperiences': workExperiences.map((e) => e.toJson()).toList(),
    };
  }
}

import 'package:job_finder/models/company_image.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/models/skill.dart';

class Company {
  int companyId;
  String? companyName;
  String? address;
  String? description;
  String? companyType;
  String? companySize;
  String? companyCountry;
  String? workingDay;
  int? overtimePolicy;
  String? hotline;
  String? website;
  String? logo;
  bool confirmCompany;
  String? emailCompany;
  String? emailOwner;

  List<CompanyImage> companyImages;
  List<Skill> skills;
  List<Job> jobs;

  Company({
    required this.companyId,
    this.companyName,
    this.address,
    this.description,
    this.companyType,
    this.companySize,
    this.companyCountry,
    this.workingDay,
    this.overtimePolicy,
    this.hotline,
    this.website,
    this.logo,
    this.confirmCompany = false,
    this.emailCompany,
    this.emailOwner,
    this.companyImages = const [],
    this.skills = const [],
    this.jobs = const [],
  });

  // Factory method to create a Company object from JSON
  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      companyId: json['companyId'],
      companyName: json['companyName'],
      address: json['address'],
      description: json['description'],
      companyType: json['companyType'],
      companySize: json['companySize'],
      companyCountry: json['companyCountry'],
      workingDay: json['workingDay'],
      overtimePolicy: json['overtimePolicy'],
      hotline: json['hotline'],
      website: json['website'],
      logo: json['logo'],
      confirmCompany: json['confirmCompany'] ?? false,
      emailCompany: json['emailCompany'],
      emailOwner: json['emailOwner'],
      companyImages: (json['companyImages'] as List<dynamic>?)
              ?.map((e) => CompanyImage.fromJson(e))
              .toList() ??
          [],
      skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => Skill.fromJson(e))
              .toList() ??
          [],
      jobs: (json['jobs'] as List<dynamic>?)
              ?.map((e) => Job.fromJson(e))
              .toList() ??
          [],
    );
  }

  // Method to convert a Company object to JSON
  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'companyName': companyName,
      'address': address,
      'description': description,
      'companyType': companyType,
      'companySize': companySize,
      'companyCountry': companyCountry,
      'workingDay': workingDay,
      'overtimePolicy': overtimePolicy,
      'hotline': hotline,
      'website': website,
      'logo': logo,
      'confirmCompany': confirmCompany,
      'emailCompany': emailCompany,
      'emailOwner': emailOwner,
      'companyImages': companyImages.map((e) => e.toJson()).toList(),
      'skills': skills.map((e) => e.toJson()).toList(),
      'jobs': jobs.map((e) => e.toJson()).toList(),
    };
  }
}

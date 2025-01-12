import 'package:job_finder/models/cv.dart';

class Template {
  int templateId;
  String? title;
  String? file;
  DateTime? createdAt;
  int? uploadedBy;
  DateTime? lastUpdatedAt;
  String? image;
  List<Cv> cvs;

  Template({
    required this.templateId,
    this.title,
    this.file,
    this.createdAt,
    this.uploadedBy,
    this.lastUpdatedAt,
    this.image,
    required this.cvs,
  });

  // Factory method to create a Template object from JSON
  factory Template.fromJson(Map<String, dynamic> json) {
    return Template(
      templateId: json['templateId'],
      title: json['title'],
      file: json['file'],
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      uploadedBy: json['uploadedBy'],
      lastUpdatedAt: json['lastUpdatedAt'] != null
          ? DateTime.parse(json['lastUpdatedAt'])
          : null,
      image: json['image'],
      cvs: (json['cvs'] as List)
          .map((e) => Cv.fromJson(e))
          .toList(), // assuming Cv model has fromJson method
    );
  }

  // Method to convert a Template object to JSON
  Map<String, dynamic> toJson() {
    return {
      'templateId': templateId,
      'title': title,
      'file': file,
      'createdAt': createdAt?.toIso8601String(),
      'uploadedBy': uploadedBy,
      'lastUpdatedAt': lastUpdatedAt?.toIso8601String(),
      'image': image,
      'cvs': cvs.map((e) => e.toJson()).toList(),
    };
  }
}

class Education {
  int educationId;
  String? school;
  String? major;
  int? isStudying;
  DateTime? fromMonth;
  DateTime? fromYear;
  DateTime? toMonth;
  DateTime? toYear;
  String? additionalDetail;
  int userId;

  Education({
    required this.educationId,
    this.school,
    this.major,
    this.isStudying,
    this.fromMonth,
    this.fromYear,
    this.toMonth,
    this.toYear,
    this.additionalDetail,
    required this.userId,
  });

  // Factory method to create an Education object from JSON
  factory Education.fromJson(Map<String, dynamic> json) {
    return Education(
      educationId: json['educationId'],
      school: json['school'],
      major: json['major'],
      isStudying: json['isStudying'],
      fromMonth:
          json['fromMonth'] != null ? DateTime.parse(json['fromMonth']) : null,
      fromYear:
          json['fromYear'] != null ? DateTime.parse(json['fromYear']) : null,
      toMonth: json['toMonth'] != null ? DateTime.parse(json['toMonth']) : null,
      toYear: json['toYear'] != null ? DateTime.parse(json['toYear']) : null,
      additionalDetail: json['additionalDetail'],
      userId: json['userId'],
    );
  }

  // Method to convert an Education object to JSON
  Map<String, dynamic> toJson() {
    return {
      'educationId': educationId,
      'school': school,
      'major': major,
      'isStudying': isStudying,
      'fromMonth': fromMonth?.toIso8601String(),
      'fromYear': fromYear?.toIso8601String(),
      'toMonth': toMonth?.toIso8601String(),
      'toYear': toYear?.toIso8601String(),
      'additionalDetail': additionalDetail,
      'userId': userId,
    };
  }
}

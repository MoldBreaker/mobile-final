class Certificate {
  int certificateId;
  String? certificateName;
  String? organization;
  int? issueMonth;
  int? issueYear;
  String? certificateUrl;
  String? description;
  int userId;

  Certificate({
    required this.certificateId,
    this.certificateName,
    this.organization,
    this.issueMonth,
    this.issueYear,
    this.certificateUrl,
    this.description,
    required this.userId,
  });

  // Factory method to create a Certificate object from JSON
  factory Certificate.fromJson(Map<String, dynamic> json) {
    return Certificate(
      certificateId: json['certificateId'],
      certificateName: json['certificateName'],
      organization: json['organization'],
      issueMonth: json['issueMonth'],
      issueYear: json['issueYear'],
      certificateUrl: json['certificateUrl'],
      description: json['description'],
      userId: json['userId'],
    );
  }

  // Method to convert a Certificate object to JSON
  Map<String, dynamic> toJson() {
    return {
      'certificateId': certificateId,
      'certificateName': certificateName,
      'organization': organization,
      'issueMonth': issueMonth,
      'issueYear': issueYear,
      'certificateUrl': certificateUrl,
      'description': description,
      'userId': userId,
    };
  }
}

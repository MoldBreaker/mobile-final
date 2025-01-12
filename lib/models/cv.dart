class Cv {
  int cvid;
  int userId;
  String? file;
  DateTime? lastUpdateAt;
  DateTime? createdAt;
  int templateId;

  Cv({
    required this.cvid,
    required this.userId,
    this.file,
    this.lastUpdateAt,
    this.createdAt,
    required this.templateId,
  });

  // Factory method to create a Cv object from JSON
  factory Cv.fromJson(Map<String, dynamic> json) {
    return Cv(
      cvid: json['cvid'],
      userId: json['userId'],
      file: json['file'],
      lastUpdateAt: json['lastUpdateAt'] != null
          ? DateTime.parse(json['lastUpdateAt'])
          : null,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      templateId: json['templateId'],
    );
  }

  // Method to convert a Cv object to JSON
  Map<String, dynamic> toJson() {
    return {
      'cvid': cvid,
      'userId': userId,
      'file': file,
      'lastUpdateAt': lastUpdateAt?.toIso8601String(),
      'createdAt': createdAt?.toIso8601String(),
      'templateId': templateId,
    };
  }
}

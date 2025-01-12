class Staff {
  int staffId;
  int userId;
  int companyId;
  int role;

  Staff({
    required this.staffId,
    required this.userId,
    required this.companyId,
    required this.role,
  });

  // Factory method to create a Staff object from JSON
  factory Staff.fromJson(Map<String, dynamic> json) {
    return Staff(
      staffId: json['staffId'],
      userId: json['userId'],
      companyId: json['companyId'],
      role: json['role'],
    );
  }

  // Method to convert a Staff object to JSON
  Map<String, dynamic> toJson() {
    return {
      'staffId': staffId,
      'userId': userId,
      'companyId': companyId,
      'role': role,
    };
  }
}

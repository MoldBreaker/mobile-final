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
  });

  // Factory method to create a Job object from JSON
  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      jobId: json['jobId'],
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
      companyId: json['companyId'],
      userId: json['userId'],
    );
  }

  // Method to convert a Job object to JSON
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
    };
  }
}

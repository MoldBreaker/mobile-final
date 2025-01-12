class CompanyImage {
  int companyImageId;
  String? file;
  int companyId;

  CompanyImage({
    required this.companyImageId,
    this.file,
    required this.companyId,
  });

  // Factory method to create a CompanyImage object from JSON
  factory CompanyImage.fromJson(Map<String, dynamic> json) {
    return CompanyImage(
      companyImageId: json['companyImageId'],
      file: json['file'],
      companyId: json['companyId'],
    );
  }

  // Method to convert a CompanyImage object to JSON
  Map<String, dynamic> toJson() {
    return {
      'companyImageId': companyImageId,
      'file': file,
      'companyId': companyId,
    };
  }
}

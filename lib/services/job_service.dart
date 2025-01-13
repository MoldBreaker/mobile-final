import 'dart:convert';

import 'package:job_finder/models/job.dart';
import 'package:job_finder/theme/constants.dart';
import 'package:http/http.dart' as http;

class JobService {
  Future<List<Job>> fetchAllJobs() async {
    final url = Uri.parse('$BASE_URL/api/job?page=1&pageSize=5');
    try {
      final response = await http.get(
        url,
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        // Access the jobs list from the response correctly
        final List<dynamic> jobList = data['jobs']['\$values'];

        return jobList.map((jobJson) => Job.fromJson(jobJson)).toList();
      } else {
        throw Exception(
            'Failed to load jobs. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching jobs: $e');
    }
  }
}

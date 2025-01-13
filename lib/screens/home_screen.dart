// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/screens/job_details_screen.dart';
import 'package:job_finder/services/job_service.dart';
import 'package:job_finder/theme/colors.dart';
import 'package:job_finder/theme/images.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final JobService jobService = JobService();
  final TextEditingController searchController = TextEditingController();
  String searchQuery = "";

  Widget _recommendJobs(
    BuildContext context, {
    required String img,
    required String company,
    required String title,
    required String sub,
    bool isActive = false,
  }) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => jobDetailScreen(),
              ));
        },
        child: Container(
          padding: EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
              color:
                  isActive ? colors.primary : colors.lightGrey.withOpacity(0.8),
              borderRadius: BorderRadius.circular(7)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: colors.background,
                    borderRadius: BorderRadius.circular(7)),
                child: Image.asset(img),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                company,
                style: TextStyle(
                    fontSize: 14,
                    color: isActive ? Colors.white38 : colors.subtitle),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 17,
                  color: isActive ? Colors.white : colors.title,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                sub,
                style: TextStyle(
                  fontSize: 14,
                  color: isActive ? Colors.white38 : colors.subtitle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(Images.user),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "NTV",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Flutter Developer",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: colors.subtitle),
                      )
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                    ),
                    iconSize: 30,
                    color: colors.primary,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: colors.subtitle),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Find your perfect jobs",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: colors.title),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    decoration: BoxDecoration(
                        color: colors.lightGrey.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: "What are you looking for?",
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(() {
                          searchQuery = value.toLowerCase();
                        });
                      },
                    ),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                        color: colors.primary,
                        borderRadius: BorderRadius.circular(8)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      color: colors.background,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              FutureBuilder<List<Job>>(
                future: jobService.fetchAllJobs(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData) {
                    final jobs = snapshot.data!
                        .where((job) =>
                            job.jobName?.toLowerCase().contains(searchQuery) ??
                            false)
                        .toList();

                    return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: jobs.length,
                      itemBuilder: (context, index) {
                        final job = jobs[index];
                        return _recommendJobs(
                          context,
                          img: Images.google,
                          company: job.company?.companyName ?? 'Unknown',
                          title: job.jobName ?? 'No Title',
                          sub: job.salary ?? 'Negotiable',
                        );
                      },
                    );
                  } else {
                    return Center(child: Text('No jobs found.'));
                  }
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}

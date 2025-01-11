// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:job_finder/screens/job_details_screen.dart';
import 'package:job_finder/screens/splash_screen.dart';
import 'package:job_finder/theme/colors.dart';
import 'package:job_finder/theme/images.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});
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

  Widget _jobCard(
    BuildContext context, {
    required String img,
    required String title,
    required String subtitle,
    required String salary,
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
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          margin: EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
              color: colors.lightGrey.withOpacity(0.8),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: colors.lightGrey,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Image.asset(img),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 14, color: colors.subtitle),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: colors.title,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                salary,
                style: TextStyle(fontSize: 15, color: colors.title),
              ),
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
                      decoration: InputDecoration(
                        hintText: "What are you looking for?",
                        border: InputBorder.none,
                      ),
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
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 12,
                ),
                height: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recommend Jobs",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: colors.title,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _recommendJobs(
                            context,
                            img: Images.google,
                            company: "Google",
                            title: "App Developer",
                            sub: "\$45,500 Onsite",
                            isActive: true,
                          ),
                          _recommendJobs(
                            context,
                            img: Images.dropbox,
                            company: "Dropbox",
                            title: "Web Developer",
                            sub: "\$65,500 Remote",
                            isActive: false,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recently Added",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: colors.title,
                      fontSize: 18,
                    ),
                  ),
                  _jobCard(
                    context,
                    img: Images.gitlab,
                    title: "Gitlab",
                    subtitle: "UX Developer",
                    salary: "\$75.800",
                  ),
                  _jobCard(
                    context,
                    img: Images.bitbucket,
                    title: "Bitbucket",
                    subtitle: "App Developer",
                    salary: "\$45.800",
                  ),
                  _jobCard(
                    context,
                    img: Images.slack,
                    title: "Slack",
                    subtitle: "Web Developer",
                    salary: "\$85.800",
                  ),
                  _jobCard(
                    context,
                    img: Images.dropbox,
                    title: "Dropbox",
                    subtitle: "Ai Engineer",
                    salary: "\$95.800",
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

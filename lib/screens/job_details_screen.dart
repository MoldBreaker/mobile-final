// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:job_finder/theme/colors.dart';
import 'package:job_finder/theme/images.dart';

class jobDetailScreen extends StatelessWidget {
  Widget _headerStatic(String title, String sub) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: colors.subtitle),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          sub,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: colors.title),
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.background,
      appBar: AppBar(
        backgroundColor: colors.background,
        iconTheme: IconThemeData(color: colors.primary),
        elevation: 0,
        title: Text("Job Details"),
        actions: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.cloud_upload,
                size: 28,
              ))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                Images.google,
                height: 150,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Google Company",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: colors.title),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "App Developer",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: colors.subtitle),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                _headerStatic("Salary", "\$85,000"),
                _headerStatic("Applicants", "35"),
                _headerStatic("Location", "New York"),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                    child: Image.asset(
                  Images.doc,
                  height: 25,
                  color: colors.primary,
                )),
                Expanded(
                    child: Image.asset(
                  Images.museum,
                  height: 25,
                  color: colors.icon,
                )),
                Expanded(
                    child: Image.asset(
                  Images.clock,
                  height: 25,
                  color: colors.icon,
                )),
                Expanded(
                    child: Image.asset(
                  Images.map,
                  height: 25,
                  color: colors.icon,
                )),
              ],
            ),
            Divider(
              color: colors.icon,
              height: 40,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Job Description",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: colors.title),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Google's innovative search technologies connect millions of people around the world with information every day. Founded in 1998 by Stanford Ph.D. students Larry Page and Sergey Brin, Google today is a top web property in all major global markets. Google's targeted advertising program, which is the largest and fastest growing in the industry, provides businesses of all sizes with measurable results, while enhancing the overall web experience for users. ",
              style: TextStyle(fontSize: 15, color: colors.subtitle),
            ),
            TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                child: Text(
                  "Read more",
                  style: TextStyle(color: colors.primary, fontSize: 14),
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(
                        color: colors.primary,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "Apply now",
                        style: TextStyle(
                            fontSize: 16,
                            color: colors.background,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                    height: 55,
                    width: 50,
                    decoration: BoxDecoration(
                        color: colors.background,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: colors.primary)),
                    child: Center(
                        child: Icon(
                      Icons.bookmark_border,
                      color: colors.primary,
                    ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restapi/Model_Class/modedata.dart';

class postTile extends StatelessWidget {
  final Courses courses;
  postTile({required this.courses});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${courses.courseId}',
                  style: TextStyle(
                      color: Color(0xffF56A4D),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.calendar_month_rounded,
                        size: 26,
                        color: Color(0xffF56A4D),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '${courses.nextSessionDate}',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              child: Column(children: [
                Text(
                  '${courses.courseName}',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '${courses.universitiesInstitutions}',
                  style: TextStyle(
                      color: (Colors.grey),
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  '${courses.provider}',
                  style: TextStyle(
                      color: Color(0xffF56A4D),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                Text('${courses.parentSubject}')
              ]),
            )
          ],
        ),
      ),
    );
  }
}

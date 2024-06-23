import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Column(
            children: [
              // College banner with profile
              Container(
                height: 250,
                child: Stack(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            Text(
                              'Edit Profie',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      height: 180,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.collegedunia.com/public/college_data/images/appImage/1622459356CampusofSNSCollegeofTechnologyCoimbatoreCampusView.jpg?h=260&w=360&mode=crop'),
                              fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(4, 5),
                              blurRadius: 6,
                            )
                          ]),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.lightBlue,
                          backgroundImage:
                              AssetImage('assets/images/kavinkumar.jpg'),
                          radius: 55,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // Student name
              Container(
                height: 40,
                child: Text(
                  'Kavin Kumar S',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              // Student basic details
              Container(
                child: Column(
                  children: [
                    // Row widget for blood group, number, status
                    Row(
                      children: [
                        buildPadding(
                            Icon(
                              Icons.bloodtype,
                              color: Colors.red,
                            ),
                            'A1+ve'),
                        buildPadding(
                            Icon(
                              Icons.call,
                              color: Colors.blue,
                            ),
                            '9629402630'),
                        buildPadding(
                            Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            ),
                            'Active'),
                      ],
                    ),

                    Column(
                      children: [
                        buildPadding1(
                            Icon(
                              Icons.verified_outlined,
                              color: Colors.blue,
                              size: 30,
                            ),
                            'Name',
                            'Kavin Kumar S'),
                        buildPadding1(
                            Icon(
                              Icons.numbers,
                              color: Colors.blue,
                              size: 30,
                            ),
                            'Roll No',
                            '20IT016'),
                        buildPadding1(
                            Icon(
                              Icons.info,
                              color: Colors.blue,
                              size: 30,
                            ),
                            'Department',
                            'Information Technology'),
                        buildPadding1(
                            Icon(
                              Icons.calendar_month,
                              color: Colors.blue,
                              size: 30,
                            ),
                            'Degree | Batch',
                            'B.Tech | 2020 - 2024'),
                        buildPadding1(
                            Icon(
                              Icons.bookmark_outline_outlined,
                              color: Colors.blue,
                            ),
                            'College',
                            'SNS College Of Technology')
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildPadding1(icon, title, subtitle) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: icon,
            title: Text(
              title,
              style: TextStyle(fontSize: 17),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }

  Padding buildPadding(icon, title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(title),
          ],
        ),
      ),
    );
  }
}

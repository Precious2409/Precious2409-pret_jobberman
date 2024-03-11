import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  const JobCard({super.key,
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.hourlyRate});

  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
          child: Container(
            width: 300,
            padding: EdgeInsets.all(12),
            color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      child: Image.asset(logoImagePath),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        padding: EdgeInsets.all(8),
                          child: Text(
                              "Heart",
                          style: TextStyle(color: Colors.red),
                          ),
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                      jobTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  ),
                ),
                Text(
                   "\$" + hourlyRate.toString() +
                    '/m'
                )
              ],
            ),
          ),
        ),
      );
  }
}

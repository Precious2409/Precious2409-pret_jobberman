import 'package:flutter/material.dart';

class RecentJobCard extends StatelessWidget {
  const RecentJobCard({super.key, 
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
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(color: Colors.grey[200],
          border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.all(12),
                    color: Colors.grey[300],
                    child: Image.asset(logoImagePath),
                  ),
                ),
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        jobTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10
                    ) ,
                    ),
                    SizedBox(height: 4,),
                    Text(
                        companyName,
                    style: TextStyle(
                      color: Colors.grey[600]
                    ),
                    ),
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                height:30,
                padding: EdgeInsets.all(5),
                color: Colors.white,
                child: Text(
                    "\$ + hourlyRate.toString() + /m,",
                        style: TextStyle(color: Colors.white),))
                ),
              ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pret_jobberman/widgets/job_card.dart';
import 'package:pret_jobberman/widgets/recent_job_card.dart';

import 'message.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final List jobsForYou = [
    ["Google","Lead Product Manager", "assets/images/googleimg.png", 2500],
    ["Shopify","Senior UI/UX Designer", "assets/images/read_icon_5.jpg", 2500],
    ["Facebook","Software Engineer", "assets/images/fbimg.png", 2500],
  ];

  final List recentJobs = [
    ["Full Time","UI/UX Designer", "assets/images/fbimg.png", 4500],
    ["Full Time","Product Designer", "assets/images/read_icon_5.jpg", 4500],
    ["Full Time","Visual Designer", "assets/images/googleimg.png", 4500],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 50,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue.shade800
                      ),
                      child: Icon(
                        Icons.format_list_numbered_rtl,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  SizedBox(width: 200,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 50,
                    padding: EdgeInsets.all(12),
                    decoration:BoxDecoration(
                        color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(12)
                    ) ,
                    child: Icon(
                      Icons.filter_list_outlined,
                    color: Colors.white,
                    )
                  )
                ],
              ),
            ),

            SizedBox(height: 20,),

            //popular job _ job cards
            Padding(
                padding: const EdgeInsets.only(left: 25),
              child: Text(
                  "Popular Job",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )
              ),
            ),

            SizedBox(height: 20,),

            SizedBox(
              height: 140,
              child: ListView.builder(
                  itemCount:jobsForYou.length,
                  scrollDirection:  Axis.horizontal,
                  itemBuilder: (context,index){
                return JobCard(
                  companyName: jobsForYou[index][0],
                  jobTitle: jobsForYou[index][1],
                  logoImagePath: jobsForYou[index][2],
                  hourlyRate: jobsForYou[index][3] ,
                );
              })
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                  "Recent Post",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ListView.builder(
                    itemCount: recentJobs.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index){
                    return RecentJobCard(
                      companyName: recentJobs[index][0],
                      jobTitle: recentJobs[index][1],
                      logoImagePath: recentJobs[index][2],
                      hourlyRate:recentJobs[index][3] ,
                    );
                  }),
                ))

          ],
        ),
      ),
    );
  }
}

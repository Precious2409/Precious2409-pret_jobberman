import 'package:flutter/material.dart';
import 'package:pret_jobberman/widgets/job_card.dart';
import 'package:pret_jobberman/widgets/recent_job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    ["Google","Lead Product Manager", "assets/images/googleimg.png", 2500],
    ["Shopify","Senior UI/UX Designer", "assets/images/read-icon-5/jpg", 2500],
    ["Facebook","Software Engineer", "assets/images/fbimg.png", 2500],
  ];

  final List recentJobs = [
    ["Facebook","UI/UX Designer", "assets/images/fbimg.png", 4500],
    ["Shopify","Product Designer", "assets/images/read-icon-5/jpg", 4500],
    ["Google","Visual Designer", "assets/images/googleimg.png", 4500],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 75,),
          //app bar
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
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
          SizedBox(height: 50,),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here..."
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

          SizedBox(height: 50,),

          //popular job _ job cards
          Padding(
              padding: const EdgeInsets.only(left: 25),
            child: Text(
                "Popular Job",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            )
            ),
          ),

          SizedBox(height: 25,),

          Container(
            height: 140,
            color: Colors.white,
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

          SizedBox(height: 50,),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
                "Recent Post",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                )
            ),
          ),

          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView.builder(
                  itemCount: recentJobs.length,
                    itemBuilder: (context, index){
                  return RecentJobCard(
                    companyName: recentJobs[index][0],
                    jobTitle: recentJobs[index][1],
                    logoImagePath: recentJobs[index][2],
                    hourlyRate:recentJobs[index][3] ,
                  );
                }),
              ))

          //recent posts _ job tiles
        ],
      )
    );
  }
}

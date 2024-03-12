import 'package:flutter/material.dart';
import 'package:pret_jobberman/widgets/UserAvatar.dart';

class MessageSection extends StatefulWidget {
  const MessageSection({super.key});

  @override
  State<MessageSection> createState() => _MessageSectionState();
}

class _MessageSectionState extends State<MessageSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Expanded(
        child: SizedBox(
          height: 500,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 70, right: 5, left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black,)
                    ),
                    Text(
                        "Messages",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search_rounded, color: Colors.black,)
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ListView(
                padding: EdgeInsets.only(left: 25),
                  scrollDirection: Axis.vertical,
                  children: [
                      buildConversationRow(
                        "Rozanne Barrlentes",
                    "A wonderful Serenity has taken....",
                    "assets/images/ab1_inversions.jpg", 2),
                    buildConversationRow(
                        "Anaya Sanji",
                        "What about Paypal?",
                        "assets/images/ab2_quick_yoga.jpg", 5),
                    buildConversationRow(
                        "Elizabeth Olsen",
                        "We should move forward to work with...",
                        "assets/images/ab3_stretching.jpg", 0),
                    buildConversationRow(
                        "Tony Stark",
                        "Let's have a call for a future project....",
                        "assets/images/ab4_tabata.jpg", 0),
                    buildConversationRow(
                        "Banner",
                        "I don't think I can fit on this ui we should....",
                        "assets/images/ab5_hit.jpg", 0),
                    buildConversationRow(
                        "Steave",
                        "Move in some special work recently so....",
                        "assets/images/ab6_pre_natal_yoga.jpg", 0),
                    buildConversationRow(
                        "Thor",
                        "You should be an avenger I thing the....",
                        "assets/images/fc1_short_mantras.jpg", 0),
                    buildConversationRow(
                        "Natasha",
                        "I am going to die in avengers endgame....",
                        "assets/images/fc4_self_massage.jpg", 0),
                    buildConversationRow(
                        "Hak Eye",
                        "I am going to save Natasha in endgame....",
                        "assets/images/fc5_overwhelmed.jpg", 0)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column buildConversationRow(String name, String message,String filename, int msgCount, ) {
    return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            UserAvatar(
                                filename: filename
                            ),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                            name,
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(height: 5,),
                                Text(message,
                                style: TextStyle(color: Colors.black54),
                                ),

                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25.0, top: 5),
                          child: Column(
                            children: [
                              if(msgCount>0)
                              CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.blue.shade800,
                                child: Text(
                                    msgCount.toString(),
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                );
  }

  Row buildContactAvatar(String name, String filename) {
    return Row(
                children: [
                  UserAvatar(
                    filename: filename,
                  ),
                  SizedBox(width: 5, ),
                  Text(
                    name,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black54,
                      fontSize: 13
                    ),
                  )
                ],
    );
  }
}


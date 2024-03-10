import 'package:flutter/material.dart';
import 'package:pret_jobberman/views/register.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 25,),
              Text(
                  "Welcome Back!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Fill your details or continue with social media",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          prefixIcon: Icon(Icons.email_outlined),
                        hintText: "Email Address"
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.lock_outlined),
                          suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.remove_red_eye_outlined),
                          ),
                          hintText: "Password"
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: null,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(),
                    )
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade800,
                          shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))
                      ),
                      child: Text(
                          "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        
                      ),
                        
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width:30,
                        child: Divider()
                    ),
                    Text("Or Continue with"),
                    SizedBox(
                        width:30,
                        child: Divider()
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/googleimg.png"),
                      Image.asset("assets/images/fbimg.png")
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterAccount())
                  );
                },
                child: Text.rich(
                  TextSpan(
                      text:"New User?",
                      style: TextStyle(
                          color: Colors.black54
                      ),
                      children: [
                        TextSpan(
                          text:"Create Account?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:groceries/screen/home/home_screen.dart';





class RegisterPageScreen extends StatelessWidget {
  const RegisterPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28),
              Center(child: Image.asset("assets/images/Group.png")),

              SizedBox(height: 100),

              Text(
                "Sign Up",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),

              SizedBox(height: 15),
              Text(
                "Enter your credentials to continue",
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 40),

              Text("Email"),

              TextFormField(),
              SizedBox(height: 30),
               SizedBox(height: 30),

              Text("Username"),
              TextFormField(),
              SizedBox(height: 40),

              Text("Password"),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(suffixIcon: Icon(Icons.visibility)),
              ),
              SizedBox(height: 20),


               RichText(
  textAlign: TextAlign.center,
  text: TextSpan(
    style: TextStyle(
      fontSize: 14, 
      color: Colors.black, 
    ), 
    children: [
      TextSpan(
        text: "By continuing you agree to our ",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      TextSpan(
        text: "Terms of Service and Privacy Policy.",
        style: TextStyle(
          color: Color(0xff53B175),
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  ),
),
            


             SizedBox(height: 30), 

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                  
                },
                child: Container(
                  width: double.infinity,
                  height: 67,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff53B175),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Text(
                    "sign up",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? Sign up",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "SignUp",
                    style: TextStyle(
                      color: Color(0xff53B175),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
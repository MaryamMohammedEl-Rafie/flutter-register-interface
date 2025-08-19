import 'package:flutter/material.dart';

class task_4 extends StatefulWidget {
  const task_4({super.key});

  @override
  State<task_4> createState() => _task_4State();
}

class _task_4State extends State<task_4> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(30, 54, 30, 34),
        children: <Widget>[
          Text("Create an account",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
          Text("Let's help you set up your account,\n it won't take long. ",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11)),
          SizedBox(height: 20),
          Text("Name",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
          SizedBox(height: 10),
          TextFormField(
            onTapOutside: (e) => FocusScope.of(context).unfocus(),
            decoration: InputDecoration(
              hintText: "Enter Name",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: Color(0xFFD9D9D9)),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFFD9D9D9))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFFD9D9D9))),
            ),
          ),
          SizedBox(height: 20),
          Text("Email",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
          SizedBox(height: 10),
          TextFormField(
            onTapOutside: (e) => FocusScope.of(context).unfocus(),
            decoration: InputDecoration(
              hintText: "Enter Email",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: Color(0xFFD9D9D9)),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFFD9D9D9))),
            ),
          ),
          SizedBox(height: 20),
          Text("Password",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
          SizedBox(height: 10),
          TextFormField(
            onTapOutside: (e) => FocusScope.of(context).unfocus(),
            decoration: InputDecoration(
              hintText: "Enter Password",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: Color(0xFFD9D9D9)),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFFD9D9D9))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFFD9D9D9))),
            ),
          ),
          SizedBox(height: 20),
          Text("Confirm Password",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
          SizedBox(height: 10),
          TextFormField(
            onTapOutside: (e) => FocusScope.of(context).unfocus(),
            decoration: InputDecoration(
              hintText: "Retype Password",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: Color(0xFFD9D9D9)),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFFD9D9D9))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFFD9D9D9))),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){setState(() {
                  isChecked = !isChecked;
                });},
                child: SizedBox(
                  height: 17,
                  width: 17,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFF9C00), width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: isChecked? Icon(Icons.check,color:Color(0xFFFF9C00),size:12,):null,
                  ),
                ),
              ),

              SizedBox(width: 8),
              Text(
                "Accept terms & conditions",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    color: Color(0xFFFF9C00)),
              ),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 60,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                WidgetStateProperty.all<Color>(Color(0xFF129575)),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white)),
                  SizedBox(width: 30),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 60),
              Expanded(child: Divider()),
              Padding(
                padding: EdgeInsets.all(12),
                child: Text("or sign in with",
                    style:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 11)),
              ),
              Expanded(child: Divider()),
              SizedBox(width: 60),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/google.png"),
              ),
              SizedBox(width: 20),
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/facebook.png"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already a member? ",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              TextButton(
                onPressed: (){},
                child: Text(" Sign in", style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xffFF9C00)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

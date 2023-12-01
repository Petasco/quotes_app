import 'package:flutter/material.dart';

class Contactme extends StatelessWidget {
  const Contactme({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Petasco ID App"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/bgprofile.png"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.deepOrange,
            ),
            Text(
              "NAME:",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Diyouh Peter",
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),

            Text(
              "DATE OF BIRTH:",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "25/12/2000",
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),

            Text(
              "EDUCATION LEVEL:",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "University",
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),

            Text(
              "UNIVERSITY LEVEL:",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(

              "Five",
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),

            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  "0547736844",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  "peterdiyouh@gmail.com",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  //print("Success");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.deepOrange)
                ),
                child: Text(
                  "Contact Me",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:navigator/wisata.dart';
import 'package:navigator/profile.dart';

void main() => runApp(login());

class login extends StatelessWidget {
  get widht => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login',
      home: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('assets/vokasi.png'),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Sekolah Vokasi',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Text(
              'Unggul, Mandiri & Berkarakter',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(50.0),
              ),
            ),
            Container(
              width: 200,
              height: 35,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffEE8301),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => LayoutD());
                  Navigator.push(context, route);
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(5.0),
              ),
            ),
            Container(
              width: 200,
              height: 35,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    width: 1.0,
                    color: Color(0xffEE8301),
                  ),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Color(0xffEE8301),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
      theme: ThemeData(
        scaffoldBackgroundColor: (Colors.white),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GoogleFonts {
  static poppins(
      {int? fontSize, required FontWeight fontWeight, MaterialColor? color}) {}
}

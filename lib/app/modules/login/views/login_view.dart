import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mypramuka/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            SizedBox(height: 30),
            Container(
              height: 250,
              child: Image.asset(
                "assets/logo/login.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Masukan Username",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Username",
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Masukan Password",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text(
                "Login",
                style: TextStyle(
                  color: Color(0xFFf0eee4),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF602924), fixedSize: Size(50, 50)),
            ),
            SizedBox(height: 10),
            Center(
              child: Text("Masuk melalui"),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/fb.png"),
                      SizedBox(width: 7),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF747D8C),
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      Size(150, 50),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF385998),
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/gogoo 1.png"),
                      SizedBox(width: 7),
                      Text(
                        "Google",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF747D8C),
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      Size(150, 50),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF385998),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

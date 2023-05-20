import 'package:bootcamp_uty/final_task/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalTask extends StatefulWidget {
  const FinalTask({Key? key}) : super(key: key);

  @override
  State<FinalTask> createState() => _FinalTaskState();
}

class _FinalTaskState extends State<FinalTask> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
              ),
            ),
            const Icon(
              Icons.arrow_back_ios,
              color: Colors.black45,
              size: 30,
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
              ),
            ),
            Text(
              "Welcome \nback!",
              style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              )),
            ),
            Container(
              height: 10,
              width: 30,
              margin: const EdgeInsets.only(top: 7),
              decoration: BoxDecoration(
                  color: const Color(0xfff68647),
                  borderRadius: BorderRadius.circular(10)),
            ),
            const Expanded(
              flex: 2,
              child: SizedBox(
                width: double.infinity,
              ),
            ),
            TextFormField(
              controller: emailController,
              maxLength: 30,
              cursorColor: const Color(0xfff68647),
              decoration: const InputDecoration(
                labelText: "Masukkan email",
                floatingLabelStyle: TextStyle(
                  color: Color(0xfff68647),
                  fontWeight: FontWeight.bold,
                ),
                hintText: "Silahkan masukkan email anda!",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            TextFormField(
              controller: passwordController,
              maxLength: 30,
              cursorColor: Color(0xfff68647),
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Masukkan password",
                floatingLabelStyle: TextStyle(
                  color: Color(0xfff68647),
                  fontWeight: FontWeight.bold,
                ),
                hintText: "Silahkan masukkan password anda!",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: Icon(
                  Icons.lock,
                  color: Color(0xfff68647),
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xfff68647),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MainMenu();
                  }));
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

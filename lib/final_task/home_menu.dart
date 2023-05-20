import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bootcamp_uty/final_task/final_task.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  String textButton = "Klik Akuuu ...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 1,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 15, 17, 18),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("asset/image/warmindo.png"))),
              child: Container(
                width: 100,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Color(0x990F1113),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                              child: Text(
                                  'Warmindo Anti Galau!\nPesan Makan Sesukamu \nlebih mudah',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.kanit(
                                    textStyle: const TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  )))
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                              child: Text(
                            'Pesan langsung\n dari ponselmu\n lebih cepat dan praktis',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.kanit(
                                textStyle: const TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ))
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 70),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (context) {
                                return const FinalTask();
                              }));
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(12.0),
                              backgroundColor:
                                  const Color.fromARGB(255, 16, 215, 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                            ),
                            child: const Text("Pesan Sekarang"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

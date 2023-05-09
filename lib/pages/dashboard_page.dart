import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/about');
                                },
                                child: Text(
                                  'ABOUT',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/contact');
                                },
                                child: Text(
                                  'CONTACT',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 16, left: 16),
                        child: Image(
                          image: ResizeImage(
                            AssetImage('assets/images/logo.png'),
                            width: 200,
                            height: 200,
                          ),
                          height: 500,
                          width: 500,
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Container(
                        height: 650,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'assets/images/bgm1.png',
                          color: Colors.black.withOpacity(0.1),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        height: 650,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.red,
                        child: Image.asset(
                          'assets/images/bgm2.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        height: 650,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.blue,
                        child: Image.asset(
                          'assets/images/bgm3.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        height: 650,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.orange,
                        child: Image.asset(
                          'assets/images/bgm4.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        height: 650,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.lime,
                        child: Image.asset(
                          'assets/images/bgm5.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

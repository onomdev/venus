import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
// ignore: implementation_imports
import 'package:beamer/src/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String _url = 'https://www.instagram.com/onomdev/';

    void _launchURL() async {
      if (!await launch(_url)) throw 'Could not launch $_url';
    }

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Card(
                  margin: EdgeInsetsGeometry.lerp(
                      EdgeInsets.zero, EdgeInsets.zero, 0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.white,
                    ),
                    height: height * 0.08,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('images/logologo1.png'),
                            ),
                            Text(
                              'Venus Coffee Shop',
                              style: GoogleFonts.fjallaOne(
                                fontSize: 20,
                                color: Colors.deepOrange[900],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () => context.beamToNamed('/menu'),
                                child: Text(
                                  'Menu',
                                  style: GoogleFonts.fjallaOne(
                                    color: Colors.deepOrange[900],
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 15,
                  child: Container(
                    height: width,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(1), BlendMode.dstATop),
                          image: const AssetImage('images/venusjashte.jpeg'),
                          fit: BoxFit.cover,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          DefaultTextStyle(
                            style: GoogleFonts.fjallaOne(
                                fontSize: 70.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange[900]),
                            child: AnimatedTextKit(
                              repeatForever: true,
                              animatedTexts: [
                                ScaleAnimatedText('Mendo'),
                                ScaleAnimatedText('Zgjidh'),
                                ScaleAnimatedText('Shijo'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 15,
                  child: Container(
                      height: width,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          //color: Colors.white,
                          image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(1), BlendMode.dstATop),
                            image: const AssetImage('images/venusbrenda.jpeg'),
                            fit: BoxFit.cover,
                          )),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.deepOrange[900],
                                  elevation: 15,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  //fixedSize: const Size( 50, 30) ,
                                ),
                                onPressed: () => context.beamToNamed('/menu'),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Shko te menu-ja',
                                    style: GoogleFonts.fjallaOne(
                                        fontSize: 20.0, color: Colors.white),
                                  ),
                                ))
                          ],
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 15,
                  child: Container(
                    height: width,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        //color: Colors.white,
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(1), BlendMode.dstATop),
                          image: const AssetImage('images/imagevenus.png'),
                          fit: BoxFit.cover,
                        )),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 80,
                            width: width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.transparent,
                            ),
                            alignment: Alignment.center,
                            child: DefaultTextStyle(
                              style: GoogleFonts.fjallaOne(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange[900]),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  ScaleAnimatedText('Rreth Nesh'),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.deepOrange[900],
                                elevation: 15,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        title: Text(
                                          'Rreth nesh',
                                          style: GoogleFonts.fjallaOne(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.deepOrange[900]),
                                        ),
                                        content: Text(
                                          'A contemporary coffee bar with family management where the environment and the service provided will make you feel at home and the most demanding foreign tourists while offering the citizens of Fier a piece of Europe in the heart of the city.The use of materials while further reinforcing their natural aesthetics are the strong elements of this project.Solid wood as the dominant material is used for the most part in its natural form and to achieve the required aesthetics only the artisanal process of accelerating its aging has been used to have unique chromatic differences as in the case of the counter dressing.The outdoor environment is characterized by Italian brick with its characteristic color, by the supporting elements of the shelter made of hand-beaten iron and designed especially for Venus and by the vase surrounded by vegetation that create a feeling of calm and privacy despite the flow of the main road.                                                                                                        - Elis Baba',
                                          style: GoogleFonts.fjallaOne(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.deepOrange[900]),
                                        ),
                                      );
                                    });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Me Trego Historine',
                                  style: GoogleFonts.fjallaOne(
                                      fontSize: 20.0, color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 15,
                    child: Container(
                        height: height * 0.4,
                        width: width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            //color: Colors.white,
                            image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(1),
                                  BlendMode.dstATop),
                              image:
                                  const AssetImage('images/venusjashte4.jpeg'),
                              fit: BoxFit.cover,
                            )),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.location_on_sharp,
                                  color: Colors.deepOrange[900], size: 30),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.deepOrange[900],
                                  ),
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        'Venus Coffee Shop, Lagja 15 Tetori, Rruga "Jakov Mile", Fier',
                                        style: GoogleFonts.fjallaOne(
                                            fontSize: 15.0,
                                            color: Colors.white)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))),
              ),
              Container(
                height: height * 0.4,
                width: width,
                color: Colors.deepOrange[900],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Oraret',
                          style: GoogleFonts.fjallaOne(
                              fontSize: 12.5, color: Colors.white),
                        ),
                        Text(
                          'SUN, MON, TUE, WED, THUR, FRI, SAT',
                          style: GoogleFonts.fjallaOne(
                              fontSize: 12.5, color: Colors.white),
                        ),
                        Text(
                            '8:00 AM - 2:00 PM',
                            style: GoogleFonts.fjallaOne(
                                fontSize: 12.5, color: Colors.white),
                          ),
                          Text(
                            '4:00 PM - 10:00 PM',
                            style: GoogleFonts.fjallaOne(
                                fontSize: 12.5, color: Colors.white),
                          ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Powered By',
                              style: GoogleFonts.fjallaOne(
                                  fontSize: 12.5, color: Colors.white),
                            ),
                            GestureDetector(
                              onTap: () => _launchURL(),
                              child: Container(
                                height: 60,
                                width: 100,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('images/onomlogo2.png'),
                                  fit: BoxFit.fill,
                                )),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

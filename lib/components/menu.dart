import 'package:animated_text_kit/animated_text_kit.dart';
// ignore: implementation_imports
import 'package:beamer/src/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

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
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.dstATop),
            image: const AssetImage('images/bak.jpg'),
            fit: BoxFit.cover,
          )),
          child: Center(
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
                      width: width,
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
                                  onPressed: () => context.beamToNamed('/'),
                                  child: Text(
                                    'Home',
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
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 25,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.transparent
                          // image: DecorationImage(
                          //   colorFilter: ColorFilter.mode(
                          //       Colors.black.withOpacity(1), BlendMode.dstATop),
                          //   image: const AssetImage('images/milkshake.jpg'),
                          //   fit: BoxFit.cover,
                          // )
                          ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Kategoria(kategoria: 'Milkshakes'),
                            Produkti(
                              emriProduktit: 'Fruta pylli',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Banane',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Cokollate',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Caramel',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Vanilje',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Kiwi',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox.square(
                    dimension: 1,
                    child: Container(
                      color: Colors.black87,
                      height: 1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 25,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                        // image: DecorationImage(
                        //   colorFilter: ColorFilter.mode(
                        //       Colors.black.withOpacity(0.8),
                        //       BlendMode.dstATop),
                        //   image: const AssetImage('images/caj.jpg'),
                        //   fit: BoxFit.cover,
                        // )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Kategoria(kategoria: 'Caj Natyral'),
                            Produkti(
                              emriProduktit: 'Caj Mali',
                              perberesit: 'Permet',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Caj Bjeshke',
                              perberesit: 'Tropoje',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Caj Kamomili',
                              perberesit: '',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Caj Sherebele',
                              perberesit: '',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Caj Bliri',
                              perberesit: '',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Caj i Zi',
                              perberesit: 'Anglez',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Caj i Zi',
                              perberesit: 'Meksikan',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Caj Jeshil + Mente',
                              perberesit: '',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Caj Jeshil',
                              perberesit: '',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Caj Xhinxher + Kiwi',
                              perberesit: '',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Caj Limoni',
                              perberesit: '',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Caj me Fruta Pylli',
                              perberesit: '',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Caj Portokalli',
                              perberesit: '',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Caj Borronice',
                              perberesit: '',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Mjalt',
                              perberesit: '',
                              cmimi: '50 leke',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox.square(
                    dimension: 1,
                    child: Container(
                      color: Colors.black87,
                      height: 1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 25,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                        // image: DecorationImage(
                        //   colorFilter: ColorFilter.mode(
                        //       Colors.black.withOpacity(1), BlendMode.dstATop),
                        //   image: const AssetImage('images/smoothe.jpg'),
                        //   fit: BoxFit.cover,
                        // )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Kategoria(kategoria: 'Lengje Frutash'),
                            Produkti(
                              emriProduktit: 'Portokall',
                              perberesit: '',
                              cmimi: '200 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Molle',
                              perberesit: '',
                              cmimi: '200 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Molle + Karrote',
                              perberesit: '',
                              cmimi: '200 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Portokall + Karrote',
                              perberesit: '',
                              cmimi: '200 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Lengu I Jetes',
                              perberesit: '',
                              cmimi: '300 leke',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox.square(
                    dimension: 1,
                    child: Container(
                      color: Colors.black87,
                      height: 1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 25,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                        // image: DecorationImage(
                        //   colorFilter: ColorFilter.mode(
                        //       Colors.black.withOpacity(1), BlendMode.dstATop),
                        //   image: const AssetImage('images/soda.jpg'),
                        //   fit: BoxFit.cover,
                        // )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Kategoria(kategoria: 'Freskuese'),
                            Produkti(
                              emriProduktit: 'Red Bull',
                              perberesit: '',
                              cmimi: '300 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Schweppes',
                              perberesit: '',
                              cmimi: '120 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Amita',
                              perberesit: '',
                              cmimi: '120 leke',
                            ),
                            Produkti(
                              emriProduktit: 'B52',
                              perberesit: '',
                              cmimi: '200 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Biter',
                              perberesit: '',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Krodino',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Cokollate e Ftohte',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Coca-Cola',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Bravo',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Uje Natyral',
                              perberesit: '',
                              cmimi: '60 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Uje me Vitamina',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox.square(
                    dimension: 1,
                    child: Container(
                      color: Colors.black87,
                      height: 1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 25,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                        // image: DecorationImage(
                        //   colorFilter: ColorFilter.mode(
                        //       Colors.black.withOpacity(1), BlendMode.dstATop),
                        //   image: const AssetImage('images/coffee1.jpg'),
                        //   fit: BoxFit.cover,
                        // )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Kategoria(kategoria: 'Kafe'),
                            Produkti(
                              emriProduktit: 'Ekspres',
                              perberesit: '',
                              cmimi: '60 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Makiato',
                              perberesit: '',
                              cmimi: '70 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Kapucino e Ngrohte',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Kapucino e Ftohte',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Kafe Bon Bon',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Kafe Marokene',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Kafe Amerikane',
                              perberesit: '',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Kafe Korreto',
                              perberesit: '',
                              cmimi: '120 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Frape',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Nescafe',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Kafe Latte',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Kakao',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Kakao Filxhan i Vogel',
                              perberesit: '',
                              cmimi: '80 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Salep',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Makiato e Ftohte',
                              perberesit: '',
                              cmimi: '100 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Kafe Turke',
                              perberesit: '',
                              cmimi: '60 leke',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox.square(
                    dimension: 1,
                    child: Container(
                      color: Colors.black87,
                      height: 1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 25,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                        // image: DecorationImage(
                        //   colorFilter: ColorFilter.mode(
                        //       Colors.black.withOpacity(0.9),
                        //       BlendMode.dstATop),
                        //   image: const AssetImage('images/alkool.jpg'),
                        //   fit: BoxFit.cover,
                        // )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Kategoria(kategoria: 'Alkoolike'),
                            Produkti(
                              emriProduktit: 'Birra Korca',
                              perberesit: '',
                              cmimi: '150 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Peroni',
                              perberesit: '',
                              cmimi: '200 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Paulaner',
                              perberesit: '',
                              cmimi: '300 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Raki',
                              perberesit: '',
                              cmimi: '70 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Vere',
                              perberesit: '',
                              cmimi: '300 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Johnnie Walker',
                              perberesit: '',
                              cmimi: '250 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Uzo',
                              perberesit: '',
                              cmimi: '250 leke',
                            ),
                            Produkti(
                              emriProduktit: 'Metaksa',
                              perberesit: '',
                              cmimi: '250 leke',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
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
      ),
    );
  }
}

class Produkti extends StatelessWidget {
  const Produkti(
      {required this.emriProduktit,
      required this.perberesit,
      required this.cmimi,
      Key? key})
      : super(key: key);

  final String emriProduktit;
  final String perberesit;
  final String cmimi;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: const BorderSide(
          width: 2,
          color: Colors.black87,
        ),
      ),
      elevation: 25,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      emriProduktit,
                      style: GoogleFonts.fjallaOne(
                          fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      perberesit,
                      style: GoogleFonts.fjallaOne(
                          fontSize: 15.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  cmimi,
                  style: GoogleFonts.fjallaOne(
                    fontSize: 20.0,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Kategoria extends StatelessWidget {
  const Kategoria({required this.kategoria, Key? key}) : super(key: key);

  final String kategoria;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: const BorderSide(
          width: 2,
          color: Colors.black87,
        ),
      ),
      elevation: 25,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 80,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DefaultTextStyle(
                  style: GoogleFonts.fjallaOne(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      ScaleAnimatedText(kategoria),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

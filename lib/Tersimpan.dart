import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Tersimpan extends StatefulWidget {
  @override
  _TersimpanState createState() => new _TersimpanState();
}

class _TersimpanState extends State<Tersimpan> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    Widget menuTersimpan() {
      Widget jenisTersimpan(String img, String text, String subText) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey, width: 2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: GoogleFonts.poppins(
                        color: const Color(0xff090A0A),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subText,
                      style: GoogleFonts.poppins(
                        color: const Color(0xff090A0A),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24),
            child: Text(
              "Wishlist",
              style: GoogleFonts.poppins(
                color: const Color(0xff090A0A),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5)),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: 750,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
                children: [
                  jenisTersimpan(
                      "asset/setwajan.jpg", "A Set of Pans", "\u0024 25"),
                  jenisTersimpan(
                      "asset/vasgucci.jpg", "Flower Vase Set", "\u0024 80"),
                  jenisTersimpan(
                      "asset/setalatmasak.jpg", "A Set of Pans", "\u0024 15"),
                  jenisTersimpan(
                      "asset/gamingkursi.jpeg", "Gaming Chair", "\u0024 20"),
                  jenisTersimpan(
                      "asset/kursikeren.jpeg", "Aesthetic chair ", "\u0024 30"),
                  jenisTersimpan(
                      "asset/kemoceng.jpeg", "Feather Duster", "\u0024 32"),
                  jenisTersimpan(
                      "asset/setgelas.jpeg", "Glass Sets", "\u0024 32"),
                  jenisTersimpan(
                      "asset/lukisan.jpeg", "Wall Painting", "\u0024 32"),
                ],
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: ListView(children: [
        Container(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
          decoration: BoxDecoration(
            color: Color(0xFF674AEF),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.dashboard,
                    size: 30,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.favorite,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
        menuTersimpan(),
      ]),
    );
  }
}

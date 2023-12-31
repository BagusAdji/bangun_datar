import 'package:bangun_datar_app/pages/LingkaranPage.dart';
import 'package:bangun_datar_app/pages/PersegiPage.dart';
import 'package:bangun_datar_app/pages/PersegiPanjangPage.dart';
import 'package:bangun_datar_app/pages/SegitigaPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "HomePage",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [

          Row(

            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PersegiPage()));
                  },
                  child: CustomMenu(
                    imageAssets: "assets/persegi.png",
                    title: "persegi",
                  )),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PersegiPanjangPage()));
                  },
                  child: CustomMenu(
                    imageAssets: "assets/persegipanjang.png",
                    title: "persegi panjang",
                  )),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SegitigaPage()));
                  },
                  child: CustomMenu(
                    imageAssets: "assets/segitiga.png",
                    title: "Segitiga",
                  )),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LingkaranPage()));
                  },
                  child: CustomMenu(
                    imageAssets: "assets/lingkaran.png",
                    title: "lingkaran",
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAssets,
    required this.title,
  });

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(color: Colors.blue),
      child: Column(
        children: [
          Image.asset(imageAssets, height: 100),
          Text(title),
        ],
      ),
    );
  }
}

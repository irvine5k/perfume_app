import 'package:flutter/material.dart';
import 'package:perfume_app/src/home/widgets/best_deals_widget.dart';
import 'package:perfume_app/src/home/widgets/perfume_catalog_widget.dart';
import 'package:perfume_app/src/home/widgets/tab_bar_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.short_text,
          color: Colors.black,
        ),
        actions: <Widget>[
          Stack(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_basket,
                  color: Colors.black,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                  backgroundColor: Color(0xFF59A05E),
                  radius: 2,
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Perfume',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TabBarWidget(),
            PerfumeCatalogWidget(),
            BestDealsWidget(),
          ],
        ),
      ),
    );
  }
}

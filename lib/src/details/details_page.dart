import 'package:flutter/material.dart';
import 'package:perfume_app/src/details/widgets/description_widget.dart';
import 'package:perfume_app/src/details/widgets/header_widget.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff458F52),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff7CB25C),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          HeaderWidget(),
          DescriptionWidget(),
        ],
      ),
    );
  }
}

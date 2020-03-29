import 'package:flutter/material.dart';
import 'package:perfume_app/src/home/widgets/rounded_container_widget.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          RoundedContainerWidget(
            padding: const EdgeInsets.all(6.0),
            child: Icon(
              Icons.tune,
              color: Colors.white,
              size: 30,
            ),
          ),
          RoundedContainerWidget(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: Colors.white,
            child: Text(
              'FLORAL',
              style: TextStyle(
                color: Color(0xFF59A05E),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            border: Border.all(width: 1, color: Colors.grey),
          ),
          RoundedContainerWidget(
            border: Border.all(width: 1, color: Colors.grey),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: Colors.white,
            child: Text(
              'WARM & SPICY',
              style: TextStyle(
                color: Color(0xFF59A05E),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

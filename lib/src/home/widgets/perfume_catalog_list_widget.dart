import 'package:flutter/material.dart';
import 'package:perfume_app/src/details/details_page.dart';
import 'package:perfume_app/src/home/widgets/rounded_container_widget.dart';

class PerfumeCatalogListWidget extends StatelessWidget {
  const PerfumeCatalogListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 250,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemCount: 5,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(),
                ),
              );
            },
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RoundedContainerWidget(
                      margin: EdgeInsets.only(right: 15),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.5, 1],
                        colors: [
                          Color(0xff7CB25C),
                          Color(0xff458F52),
                        ],
                      ),
                      width: 140,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Image.network(
                          'https://shopping.tallink.com/images/prod/B/E/2/2/BE22720F-B613-4826-AD0B-F715DF1E44EE_1_big.png',
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Chanel Coco Noir',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '\$ 44.00',
                      style: TextStyle(
                        color: Color(0xff7CB25C),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                      margin: EdgeInsets.only(
                        bottom: 20,
                        right: 15,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(13),
                          topRight: Radius.circular(12),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      width: 45,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.black,
                        size: 20,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

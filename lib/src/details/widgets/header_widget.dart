import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 1],
            colors: [
              Color(0xff7CB25C),
              Color(0xff458F52),
            ],
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 195),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 15,
                    )
                  ]),
              width: 140,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.network(
                'https://shopping.tallink.com/images/prod/B/E/2/2/BE22720F-B613-4826-AD0B-F715DF1E44EE_1_big.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:perfume_app/src/home/widgets/rounded_container_widget.dart';

class BestDealsWidget extends StatelessWidget {
  const BestDealsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Best deals',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    'ALL',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.grey,
                  ),
                ],
              )
            ],
          ),
        ),
        Stack(
          children: <Widget>[
            RoundedContainerWidget(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              padding: EdgeInsets.all(8),
              height: 80,
              color: Colors.white,
              border: Border.all(
                width: 1,
                color: Colors.grey.withOpacity(0.3),
              ),
              child: Row(
                children: <Widget>[
                  RoundedContainerWidget(
                    width: 60,
                    padding: EdgeInsets.all(8),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.5, 1],
                      colors: [
                        Color(0xff7CB25C),
                        Color(0xff458F52),
                      ],
                    ),
                    child: Container(
                      child: Image.network(
                          'https://shopping.tallink.com/images/prod/B/E/2/2/BE22720F-B613-4826-AD0B-F715DF1E44EE_1_big.png'),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'My Burberry Black',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '\$ 44.00',
                        style: TextStyle(
                          color: Color(0xff7CB25C),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(13),
                    topLeft: Radius.circular(13),
                  ),
                ),
                padding: EdgeInsets.all(8),
                width: 55,
                child: Text(
                  '-20%',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

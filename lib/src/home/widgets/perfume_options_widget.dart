import 'package:flutter/material.dart';

class PerfumeOptionsWidget extends StatelessWidget {
  const PerfumeOptionsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RotatedBox(
          quarterTurns: 15,
          child: Text(
            'SUGGESTED',
            style: TextStyle(
              color: Color(0xFF59A05E),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 20),
        RotatedBox(
          quarterTurns: 15,
          child: Text(
            'POPULAR',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

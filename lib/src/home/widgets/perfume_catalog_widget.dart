import 'package:flutter/material.dart';
import 'package:perfume_app/src/home/widgets/perfume_catalog_list_widget.dart';
import 'package:perfume_app/src/home/widgets/perfume_options_widget.dart';

class PerfumeCatalogWidget extends StatelessWidget {
  const PerfumeCatalogWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 30.0,
        bottom: 20.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PerfumeOptionsWidget(),
          PerfumeCatalogListWidget(),
        ],
      ),
    );
  }
}

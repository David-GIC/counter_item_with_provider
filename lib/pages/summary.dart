import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'file:///D:/Project/Learn/testing_provider_package/lib/models/item.dart';

class SummaryPage extends StatefulWidget {
  final List<Item> itemList;
  SummaryPage({this.itemList});
  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  final spacerHeight = SizedBox(
    height: 8,
  );
  final spacerWidth = SizedBox(
    width: 8,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Summary",
          style: GoogleFonts.ubuntu(),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.itemList.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.coffee,
                            color: Colors.blueAccent,
                          ),
                          spacerWidth,
                          spacerWidth,
                          Text(
                            itemList[index].item,
                            style: GoogleFonts.ubuntu(),
                          )
                        ],
                      ),
                      Text("x${widget.itemList[index].qty}")
                    ],
                  ),
                  Divider(
                    height: 30,
                  )
                ],
              );
            }),
      ),
    );
  }
}

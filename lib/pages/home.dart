import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'file:///D:/Project/Learn/testing_provider_package/lib/helper/page_route.dart';
import 'file:///D:/Project/Learn/testing_provider_package/lib/models/item.dart';
import 'file:///D:/Project/Learn/testing_provider_package/lib/pages/summary.dart';
import 'file:///D:/Project/Learn/testing_provider_package/lib/provider/item_provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final spacerHeight = SizedBox(
      height: 8,
    );
    final spacerWidth = SizedBox(
      width: 8,
    );

    final ItemProvider itemProvider = Provider.of<ItemProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Provider Package",
          style: GoogleFonts.ubuntu(),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Item(s)",
              style: GoogleFonts.ubuntu(fontSize: 20),
            ),
            spacerHeight,
            spacerHeight,
            Container(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: itemList.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) {
                    return Column(
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
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    Icons.remove_circle,
                                    color: Colors.blueAccent,
                                  ),
                                  onPressed: () => itemProvider
                                      .decrementQty(itemList[index]),
                                ),
                                Text("${itemList[index].qty}"),
                                IconButton(
                                  icon: Icon(
                                    Icons.add_circle,
                                    color: Colors.blueAccent,
                                  ),
                                  onPressed: () => itemProvider
                                      .incrementQty(itemList[index]),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          height: 20,
                        )
                      ],
                    );
                  }),
            ),
            spacerHeight,
            spacerHeight,
            Align(
              alignment: Alignment.center,
              child: FlatButton(
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.blueAccent,
                child: Text(
                  "Place Order",
                  style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.w700, color: Colors.white),
                ),
                onPressed: () => GoTo().fadeTransaction(
                    SummaryPage(
                      itemList: itemList,
                    ),
                    context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

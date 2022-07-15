import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) 
  : assert(catalog!=null),
   super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: 
        Container(
          color: Colors.white,
          child: ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    buttonPadding: Vx.mH8,
                    children: [
                      "\$${catalog.price}".text.bold.xl4.color(Colors.green).make(),
                      ElevatedButton(
                        onPressed:(){},
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            StadiumBorder(),
                          )
                        ),
                         child: "Buy".text.color(Colors.white).make()).wh(100,50)
                    ],
      ).p8(),
        ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(
              catalog.image
              )
              ).h32(context),
              Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                catalog.name.text.xl4.color(MyTheme.darkblueColor).bold.make(),
                catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                10.heightBox,],
                    ).py64(),
                  ),
                )
                ),
        ],
        ),
      ),
    );
  }
}

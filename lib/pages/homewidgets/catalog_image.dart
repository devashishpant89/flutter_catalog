import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_catalog/widgets/theme.dart';


class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({Key? key, required this.image})
      : assert(image != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(MyTheme.creamColor).make().p16().h24(context).w40(context);
  }
}
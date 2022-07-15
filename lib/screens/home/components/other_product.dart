import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class OtherProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Ulteriori proposte per te", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        Column(
          children: <Widget>[
            Padding(
                padding:
                    EdgeInsets.only(right: getProportionateScreenWidth(20)),
                child: GridView(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisExtent: 260.0),
                    children: [
                      ...List.generate(
                          otherProducts.length,
                          ((index) =>
                              ProductCard(product: otherProducts[index])))
                    ]))
          ],
        )
      ],
    );
  }
}

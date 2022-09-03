import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/Widgets/custom_navbar.dart';
import 'package:ecommerce/Widgets/hero_carousel.dart';
import 'package:ecommerce/Widgets/product_carousel.dart';
import 'package:ecommerce/Widgets/section_title.dart';
import 'package:ecommerce/models/category_models.dart';
import 'package:ecommerce/models/product_models.dart';
import 'package:flutter/material.dart';
import '../Widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => HomePage());
  }

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Zero to Unicorn"),
      bottomNavigationBar: const CustomNavBar(),
      body: Column(
        children: [
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              enlargeCenterPage: true,
            ),
            items: Category.categories
                .map((Category) => HeroCarouselCard(category: Category))
                .toList(),
          )),
          SectionTitle(
            title: "RECOMENDED",
          ),
          ProductCarousel(
            products: Product.products
                .where((Product) => Product.isRecommended)
                .toList(),
          )
        ],
      ),
    );
  }
}

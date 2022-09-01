import 'package:ecommerce/Widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import '../Widgets/custom_appbar.dart';

class ProductPage extends StatelessWidget {
  static const String routeName = '/product';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => ProductPage());
  }

  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Product"),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

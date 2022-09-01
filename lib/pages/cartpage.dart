import 'package:ecommerce/Widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import '../Widgets/custom_appbar.dart';

class CartPage extends StatelessWidget {
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => CartPage());
  }

  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Cart"),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

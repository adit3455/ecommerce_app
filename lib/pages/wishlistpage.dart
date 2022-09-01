import 'package:ecommerce/Widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import '../Widgets/custom_appbar.dart';

class WishlistPage extends StatelessWidget {
  static const String routeName = '/wishlist';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => WishlistPage());
  }

  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Wishlist"),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

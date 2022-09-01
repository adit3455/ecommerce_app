import 'package:ecommerce/Widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import '../Widgets/custom_appbar.dart';

class CatalogPage extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => CatalogPage());
  }

  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Catalog"),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

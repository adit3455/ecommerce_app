import 'package:ecommerce/pages/cartpage.dart';
import 'package:ecommerce/pages/catalogpage.dart';
import 'package:ecommerce/pages/homepage.dart';
import 'package:ecommerce/pages/productpage.dart';
import 'package:ecommerce/pages/wishlistpage.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    print("this is route: ${settings.name}");

    switch (settings.name) {
      case "/":
        return HomePage.route();
      case HomePage.routeName:
        return HomePage.route();
      case CartPage.routeName:
        return CartPage.route();
      case ProductPage.routeName:
        return ProductPage.route();
      case WishlistPage.routeName:
        return WishlistPage.route();
      case CatalogPage.routeName:
        return CatalogPage.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: "/error"),
        builder: (context) => Scaffold(
              appBar: AppBar(title: Text("Error")),
            ));
  }
}

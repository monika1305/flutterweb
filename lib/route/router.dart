
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web/route/route_names.dart';
import 'package:web/screens/about/about_view.dart';
import 'package:web/screens/episodes/episodes_view.dart';
import 'package:web/screens/home/homeview.dart';
Route<dynamic> generateRoute(RouteSettings settings) {
  print(settings.name);

  try {
    switch (settings.name) {
      case HomeRoute:
        return _getPageRoute(HomeView(), settings.name.toString());
      case AboutRoute:
        return _getPageRoute(AboutView(), settings.name.toString());
      case EpisodesRoute:
        return _getPageRoute(EpisodesView(), settings.name.toString());
      default:
    }
  } catch (Exc) {
    print(Exc);
    rethrow;
  }
  return _getPageRoute(HomeView(),"");
}

PageRoute _getPageRoute(Widget child, String routeName) {
  // return MaterialPageRoute(builder: (context) => child);
  return _FadeRoute(child: child, routeName: routeName);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({ required this.child, required this.routeName})
      : super(
      pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          ) =>
      child,
      settings: RouteSettings(name: routeName),
      transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
          ) =>
          FadeTransition(
            opacity: animation,
            child: child,
          ));
}
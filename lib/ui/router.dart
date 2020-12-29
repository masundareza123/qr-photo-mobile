import 'package:qrphoto/constants/route_name.dart';
import 'package:qrphoto/ui/views/camera_view.dart';
import 'package:qrphoto/ui/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:qrphoto/qr/home_qr.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRoute:
      return _pageRoute(
        routeName: settings.name,
        viewToShow: HomeView(),
      );
    case QrViewRoute:
      return _pageRoute(
        routeName: settings.name,
        viewToShow: MyHomePage(),
      );
    case CameraViewRoute:
      return _pageRoute(
        routeName: settings.name,
        viewToShow: CameraView(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text(
              'No route defined for ${settings.name}',
            ),
          ),
        ),
      );
  }
}

PageRoute _pageRoute({String routeName, Widget viewToShow}) {
  return MaterialPageRoute(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow,
  );
}

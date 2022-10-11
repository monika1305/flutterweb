
import 'package:flutter/material.dart';

class NavigationService{

  final GlobalKey<NavigatorState> navigatorkey = GlobalKey<NavigatorState>();

  Future<dynamic>? navigateTo(String routeName){
    return navigatorkey.currentState?.pushNamed(routeName);
  }
  NavigatorState? goBack(){
    return navigatorkey.currentState;
  }
}
import 'package:flutter/material.dart';
import 'package:movies/feature/favorite/presentation/views/favorite_view.dart';
import 'package:movies/feature/home/presentation/views/home_view.dart';
import 'package:movies/feature/profile/presentation/views/profile_view.dart';

List<BottomNavigationBarItem> barItems = const [
  BottomNavigationBarItem(
      icon: ImageIcon(AssetImage('assets/images/home.png')), label: 'Home'),
  BottomNavigationBarItem(
      icon: Icon(Icons.bookmark_outline_sharp), label: 'favorite'),
  BottomNavigationBarItem(
      icon: ImageIcon(AssetImage('assets/images/user.png')), label: 'profile'),
];

List<Widget> screens = const [
  HomeView(),
  FavoriteView(),
  ProfileView(),
];

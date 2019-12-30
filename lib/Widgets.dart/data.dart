import 'package:flutter/material.dart';

var pageList = [
  PageModel(
      imageUrl: "assets/walk1.png",
      title: "Short and crispy",
      body: "Know the happenings in less than 80 words",
      titleGradient: gradients[0]),
  PageModel(
      imageUrl: "assets/walk2.png",
      title: "Updated notifications",
      body: "Notification will be sent,when a new hot news is updated",
      titleGradient: gradients[1]),
  PageModel(
      imageUrl: "assets/walk3.png",
      title: "Easy share",
      body: "Share the news to your friends and family in a single tap",
      titleGradient: gradients[2]),
];

List<List<Color>> gradients = [
  [Color(0xFF23ade3), Color(0xFF39bb54)],
  [Color(0xFF23ade3), Color(0xFF39bb54)],
  [Color(0xFF23ade3), Color(0xFF39bb54)],
];

class PageModel {
  var imageUrl;
  var title;
  var body;
  List<Color> titleGradient = [];
  PageModel({this.imageUrl, this.title, this.body, this.titleGradient});
}
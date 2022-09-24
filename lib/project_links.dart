import 'dart:convert';

import 'package:flutter/material.dart';

class Project {
  final String title;
  final String imgPath;
  final String details;
  final String urlPath;
  final int id;

  Project({
    required this.title,
    required this.imgPath,
    required this.details,
    required this.urlPath,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'imgPath': imgPath,
      'details': details,
      'urlPath': urlPath,
      'id': id
    };
  }

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      title: map['title'] ?? '',
      imgPath: map['imgPath'] ?? '',
      details: map['details'],
      urlPath: map['urlPath'] ?? '',
      id: map['urlPath'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Project.fromJson(String source) =>
      Project.fromMap(json.decode(source));
}

var color = [
  const Color(0xFF827397),
  const Color(0xFF4D4C7D),
  const Color(0xFFE9D5DA),
  const Color(0xFF363062),
];

final projectList = [
  Project(
      title: "User Form",
      imgPath: 'user_creator.jpg',
      details: "Form design for user creation",
      urlPath: '/user_creator',
      id: 1),
  Project(
      title: "Wallet App",
      imgPath: 'wallet.jpg',
      details: "Wallet Dashboard page responsive",
      urlPath: '/wallet_page',
      id: 2),
  Project(
      title: "Finance Bank",
      imgPath: 'pages/fin_bank.jpg',
      details: "Form design for user creation",
      urlPath: '/loading',
      id: 3),
  Project(
      title: "Simple Teams App",
      imgPath: 'pages/teams_app.jpg',
      details: "Form design for user creation",
      urlPath: '/loading',
      id: 4),
];

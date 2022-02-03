import 'package:flutter/material.dart';

class TweetModel {
  String? actionType;
  Icon? actionIcon;
  List<String>? actionUserNameList;
  String userImage;
  String userName;
  String nickName;
  String tweetTime;
  String textContent;
  String subContent;
  String? contentImage;
  int commentNumber = 0;
  int retweetNumber = 0;
  int likeNumber = 0;
  bool showSubContent;

  TweetModel({
    this.actionType,
    this.actionIcon,
    this.actionUserNameList,
    required this.userImage,
    required this.userName,
    required this.nickName,
    required this.tweetTime,
    required this.textContent,
    required this.subContent,
    this.contentImage,
    required this.commentNumber,
    required this.retweetNumber,
    required this.likeNumber,
    required this.showSubContent,
  });
}
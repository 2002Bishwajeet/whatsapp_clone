

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String date;
  final String avatar;
  final Icon ucon;

  CallModel({this.name, this.date, this.avatar,this.ucon});
}

List<CallModel> calldata = [
  CallModel(
    name: "Virus",
    date: "21 April, 8:15 am",
    avatar: "assets/images/virus.jpg",
    ucon: Icon(Icons.videocam,color: Color.fromRGBO(18, 140, 126,-240),),
  ),
  CallModel(
    name: "Millimeter",
    date: "21 April, 6:15 am",
    avatar: "assets/images/mm.jpg",
     ucon: Icon(Icons.call,color: Color.fromRGBO(18, 140, 126,-240),),
  ),
  CallModel(
    name: "Raju",
    date: "20 April, 2:18 pm",
    avatar: "assets/images/raju.jpg",
     ucon: Icon(Icons.videocam,color: Color.fromRGBO(18, 140, 126,-240),),
    ),
  CallModel(
    name: "Farhan",
    date: "19 April, 7:09 pm",
    avatar: "assets/images/farhan.jpg",
     ucon: Icon(Icons.call,color: Color.fromRGBO(18, 140, 126,-240),),
  ),
  CallModel(
    name: "Chatur",
    date: "15 April, 8:30 pm",
    avatar: "assets/images/chatur.jpg",
     ucon: Icon(Icons.call,color: Color.fromRGBO(18, 140, 126,-240),),
  ),
  CallModel(
    name: "Rancho",
    date: "11 April, 1:25 am",
    avatar: "assets/images/rancho.jpg",
     ucon: Icon(Icons.videocam,color: Color.fromRGBO(18, 140, 126,-240),),
  ),
  CallModel(
    name: "Pia",
    date: "1 April, 2:37 am",
    avatar: "assets/images/priya.jpg",
     ucon: Icon(Icons.videocam,color: Color.fromRGBO(18, 140, 126,-240),),
  ),
];

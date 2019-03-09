import 'package:flutter/material.dart';
import 'package:init_flutter/video_list.dart';
import 'package:init_flutter/models/youtube_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VideoList(listData: youtubeData);
  }
}
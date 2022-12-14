import 'package:flutter/material.dart';
import 'package:streaming_app/presentation/src/feature/home/model/streaming_model.dart';
import 'package:streaming_app/presentation/src/feature/home/widget/category_list.dart';
import 'package:streaming_app/presentation/src/feature/home/widget/category_title.dart';
import 'package:streaming_app/presentation/src/feature/home/widget/welcome_card.dart';
import 'package:streaming_app/presentation/src/utils/size_utils.dart';
import 'package:streaming_app/presentation/src/widget/app_bottom_navigation_bar.dart';
import 'package:streaming_app/presentation/src/widget/app_scaffold.dart';
import 'package:streaming_app/presentation/src/widget/app_top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);

    int selectedIndex = 0;

    const List<StreamingModel> series = [
      StreamingModel(
        title: 'Mercredi',
        cover: 'mercredi.jpeg',
        genre: 'Thriller',
      ),
      StreamingModel(
        title: 'Dhammer',
        cover: 'dhammer.jpeg',
        genre: 'Horreur',
      ),
      StreamingModel(
        title: 'The handmaid tales',
        cover: 'thehandmaidtales.png',
        genre: 'Thriller',
      ),
    ];

    const List<StreamingModel> movies = [
      StreamingModel(
        title: 'Avatar',
        cover: 'avatar.jpeg',
        genre: 'SF',
      ),
      StreamingModel(
        title: 'Bullet train',
        cover: 'bullet-train.jpg',
        genre: 'Action',
      ),
      StreamingModel(
        title: 'Avenger',
        cover: 'avenger.jpg',
        genre: 'Action',
      ),
      StreamingModel(
        title: 'Thor',
        cover: 'thor.jpg',
        genre: 'Action',
      ),
    ];

    return AppScaffold(
      body: ListView(
        children: const [
          SizedBox(height: 10.0),
          AppTopBar(),
          SizedBox(height: 20.0),
          WelcomeCard(),
          SizedBox(height: 12.0),
          CategoryTitle(
            title: 'Series',
            icon: Icons.movie_creation_outlined,
          ),
          SizedBox(height: 16.0),
          CategoryList(data: series),
          SizedBox(height: 32.0),
          CategoryTitle(
            title: 'Movies',
            icon: Icons.movie_creation_outlined,
          ),
          SizedBox(height: 16.0),
          CategoryList(data: movies),
          SizedBox(height: 32.0),
        ],
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        selectedIndex: selectedIndex,
        onTap: (int index) => selectedIndex = index,
      ),
    );
  }
}

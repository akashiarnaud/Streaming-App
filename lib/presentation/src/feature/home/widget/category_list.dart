import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:streaming_app/presentation/src/core/router/app_router.gr.dart';
import 'package:streaming_app/presentation/src/feature/home/model/streaming_model.dart';
import 'package:streaming_app/presentation/src/feature/home/widget/category_card.dart';

class CategoryList extends StatelessWidget {
  ///
  final List<StreamingModel> data;

  const CategoryList({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    return SizedBox(
      height: 172.0,
      child: ListView.builder(
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              controller.increment();
              context.router.push(const DetailRoute());
            },
            child: CategoryCard(
              data: data[index],
              index: index,
              length: data.length,
            ),
          );
        },
      ),
    );
  }
}

class Controller extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update();
  }
}

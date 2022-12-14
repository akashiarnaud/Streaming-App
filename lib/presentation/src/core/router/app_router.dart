import 'package:auto_route/annotations.dart';
import 'package:streaming_app/presentation/src/feature/detail/detail_page.dart';
import 'package:streaming_app/presentation/src/feature/home/home_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: DetailPage, initial: true),
  ],
)
class $AppRouter {}

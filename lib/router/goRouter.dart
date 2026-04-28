
import 'package:devcommunity/features/homeScreenWrapper/homeScreenWrapper.dart';
import 'package:devcommunity/router/routerConstant.dart';
import 'package:go_router/go_router.dart';
import '../features/authentication/genderMainScreen.dart';
import '../features/authentication/loginScreen.dart';
import '../features/feedPage/screen/mainFeedScreen.dart';

class GoRouterPath {
  static final GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return LoginScreen();
        },
      ),
      GoRoute(
        path: '/genderMainScreen',
        name: RouterConstant.gender,
        builder: (context, state) {
          return GenderMainScreen();
        },
      ),
      GoRoute(path: '/mainFeedScreen',
      name: RouterConstant.mainFeedScreen,
      builder: (context, state){
        return MainFeedScreen();
      }
      ),
      GoRoute(path: '/homeScreenWrapper',
      name: RouterConstant.homeScreenWrapper,
        builder: (context, state){
        return HomeScreenWrapper();
        }

      )
    ],
  );
}

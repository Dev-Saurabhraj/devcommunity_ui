
import 'package:devcommunity/router/routerConstant.dart';
import 'package:devcommunity/screens/feedPage/screen/mainFeedScreen.dart';
import 'package:go_router/go_router.dart';
import '../screens/authentication/loginScreen.dart';
import '../screens/authentication/genderMainScreen.dart';

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
      )
    ],
  );
}


import 'package:devcommunity/authentication/loginScreen.dart';
import 'package:devcommunity/router/routerConstant.dart';
import 'package:go_router/go_router.dart';
import '../screens/gender/genderMainScreen.dart';



class GoRouterPath {
  static final GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return LoginScreen();
        },
      ),
      GoRoute(path: '/genderMainScreen',
      name: RouterConstant.gender,
      builder: (context, state){
        return GenderMainScreen();
      }
      )

    ],
  );
}

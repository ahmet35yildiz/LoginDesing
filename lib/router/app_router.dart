import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: "Page,Route",

)
class AppRouter extends $AppRouter{
  @override

  List<AutoRoute> get routes => [
    AutoRoute(page: TabControllerRoute.page, path: "/tabControllerPageRoute",initial: true),
    AutoRoute(page: LoginRoute.page,path: "/loginPageRoute"),
    AutoRoute(page: NewPasswordRoute.page, path: "/newPasswordPageRoute"),
    AutoRoute(page: ResetPasswordRoute.page, path: "/resetPasswordPageRoute"),
    AutoRoute(page: ForgotPasswordRoute.page, path: "/forgotPasswordPageRoute"),
    AutoRoute(page: VerifyCodeRoute.page, path: "/verifyCodePageRoute"),

  ];
}
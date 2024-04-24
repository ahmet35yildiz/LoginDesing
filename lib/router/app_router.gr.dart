// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:login_design/presentation/views/forgot_password_page.dart'
    as _i1;
import 'package:login_design/presentation/views/login_page.dart' as _i2;
import 'package:login_design/presentation/views/new_password_page.dart' as _i3;
import 'package:login_design/presentation/views/reset_password_page.dart'
    as _i4;
import 'package:login_design/presentation/views/tab_controller_page.dart'
    as _i5;
import 'package:login_design/presentation/views/verify_code_page.dart' as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    ForgotPasswordRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ForgotPasswordPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    NewPasswordRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.NewPasswordPage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ResetPasswordPage(),
      );
    },
    TabControllerRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.TabControllerPage(),
      );
    },
    VerifyCodeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.VerifyCodePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ForgotPasswordPage]
class ForgotPasswordRoute extends _i7.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.NewPasswordPage]
class NewPasswordRoute extends _i7.PageRouteInfo<void> {
  const NewPasswordRoute({List<_i7.PageRouteInfo>? children})
      : super(
          NewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewPasswordRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ResetPasswordPage]
class ResetPasswordRoute extends _i7.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.TabControllerPage]
class TabControllerRoute extends _i7.PageRouteInfo<void> {
  const TabControllerRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TabControllerRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabControllerRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.VerifyCodePage]
class VerifyCodeRoute extends _i7.PageRouteInfo<void> {
  const VerifyCodeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          VerifyCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyCodeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

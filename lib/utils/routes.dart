import 'package:go_router/go_router.dart';
import 'package:masimu_app/src/view/pages/home_page.dart';
import 'package:masimu_app/src/view/pages/login_page.dart';
import 'package:masimu_app/src/view/pages/signup_page.dart';
import 'package:masimu_app/src/view/pages/widgets/products.dart';

final routes = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: "/signup",
      builder: (context, state) => const SignUpPage(),
    ),
    GoRoute(
      path: "/products",
      builder: (context, state) => const ProductsWidget(),
    ),
  ]
);
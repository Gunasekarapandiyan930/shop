import 'package:apkrestart/Screens/Cart/cart.dart';
import 'package:apkrestart/Screens/Cart/edit.dart';
import 'package:apkrestart/Screens/Categories/automobile.dart';
import 'package:apkrestart/Screens/Categories/beauty.dart';
import 'package:apkrestart/Screens/Categories/categories.dart';
import 'package:apkrestart/Screens/Categories/cellphones.dart';
import 'package:apkrestart/Screens/Categories/comicbooks.dart';
import 'package:apkrestart/Screens/Categories/detailingwomens.dart';
import 'package:apkrestart/Screens/Categories/electronics.dart';
import 'package:apkrestart/Screens/Categories/homedecoration.dart';
import 'package:apkrestart/Screens/Categories/kidscloth.dart';
import 'package:apkrestart/Screens/Categories/menscloth.dart';
import 'package:apkrestart/Screens/Categories/sports.dart';
import 'package:apkrestart/Screens/Categories/toys.dart';
import 'package:apkrestart/Screens/Categories/womenscloth.dart';
import 'package:apkrestart/Screens/Homescreen/brands.dart';
import 'package:apkrestart/Screens/Homescreen/buyingscreen.dart';
import 'package:apkrestart/Screens/Homescreen/flashdeal.dart';
import 'package:apkrestart/Screens/Homescreen/homescreen.dart';
import 'package:apkrestart/Screens/Homescreen/search.dart';
import 'package:apkrestart/Screens/Homescreen/seeall.dart';
import 'package:apkrestart/Screens/Homescreen/todaysdeal.dart';
import 'package:apkrestart/Screens/Homescreen/topsellers.dart';
import 'package:apkrestart/Screens/Profile/mobnumber.dart';
import 'package:apkrestart/Screens/Profile/personal.dart';
import 'package:apkrestart/Screens/Profile/profilee.dart';
import 'package:apkrestart/Screens/Profile/registration.dart';
import 'package:apkrestart/Screens/Profile/signup.dart';

import 'package:apkrestart/Screens/accountpage.dart';
import 'package:apkrestart/Screens/error.dart';
import 'package:apkrestart/main.dart';

import 'package:apkrestart/splashscreen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
    initialLocation: '/splash',
     errorBuilder: (context, state) => const ErrorScreen(),
routes: [
  GoRoute(

      name: 'splash',
      path: '/splash',
      builder: (context, state) => const SplashScareen()),
       GoRoute(

      name: 'main',
      path: '/main',
      builder: (context, state) => Main()),
  GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) =>  Homescreen()),
  GoRoute(
      name: 'categories',
      path: '/categories',
      builder: (context, state) => const Categories()),
  GoRoute(
      name: 'profile',
      path: '/profile',
      builder: (context, state) =>  Profile()),
  GoRoute(
      name: 'account',
      path: '/account',
      builder: (context, state) => const AccountPage()),
  GoRoute(
      name: 'brands',
      path: '/brands',
      builder: (context, state) => const Brands()),
  GoRoute(
    name: 'details',
    path: '/details',
    builder: (context, state) {
      final datas = state.extra as Map;
      return Detailingwomens(allproducts: datas);
    },
  ),

  GoRoute(path: '/buying', builder: (context, state) {
    final values = state.extra as Map;
    return Buyingscreen(documents: values);
  }),
  GoRoute(
      name: 'flash',
      path: '/flash',
      builder: (context, state) => const Flashdeal()),
  GoRoute(
      name: 'search',
      path: '/search',
      builder: (context, state) => const Search()),
  GoRoute(
      name: 'seaall',
      path: '/seeall',
      builder: (context, state) => const Seeall()),
  GoRoute(
      name: 'todays',
      path: '/todays',
      builder: (context, state) => const Todaysdeal()),
  GoRoute(
      name: 'top',
      path: '/top',
      builder: (context, state) => const Topsellers()),
  GoRoute(
      name: 'mobile',
      path: '/mobile',
      builder: (context, state) => const MobileNumber()),
  //GoRoute(path: '/otp', builder: (context, state) => EnterOTP(verificationId: )),
  GoRoute(
      name: 'personal',
      path: '/personal',
      builder: (context, state) => const Personal()),
 
  GoRoute(
      name: 'register',
      path: '/register',
      builder: (context, state) => Register()),
  GoRoute(
      name: 'signup',
      path: '/signup',
      builder: (context, state) =>  SignUp()),
  GoRoute(
      name: 'cart', path: '/cart', builder: (context, state) =>  Cart()),
  GoRoute(
      name: 'edit', path: '/edit', builder: (context, state) =>  Edit()),
  GoRoute(
      name: 'auto',
      path: '/auto',
      builder: (context, state) => const Automobile()),
  GoRoute(
      name: 'beauty',
      path: '/beauty',
      builder: (context, state) => const Beauty()),
 
  GoRoute(
      name: 'cell',
      path: '/cell',
      builder: (context, state) => const Cellphones()),
  GoRoute(
      name: 'comic',
      path: '/comic',
      builder: (context, state) => const Comicbooks()),
  GoRoute(
      name: 'electronic',
      path: '/electronic',
      builder: (context, state) => const Electronics()),
  GoRoute(
      name: 'homedecor',
      path: '/homedecor',
      builder: (context, state) => const Homedecoration()),
  GoRoute(
      name: 'kids',
      path: '/kids',
      builder: (context, state) => const Kidscloth()),
  GoRoute(
      name: 'mens',
      path: '/mens',
      builder: (context, state) => const Menscloth()),
  GoRoute(
      name: 'sports',
      path: '/sports',
      builder: (context, state) => const Sports()),
  GoRoute(
      name: 'toys', path: '/toys', builder: (context, state) => const Toys()),
  GoRoute(
      name: 'womens',
      path: '/womens',
      builder: (context, state) => const Womenscloth()),
]);

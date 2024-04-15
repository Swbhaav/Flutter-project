import '../login/login_page.dart';
import '../main_page.dart';
import 'edit_profile_page.dart';
import 'home_page.dart';

class AppRoutes{

  static final pages ={
  '/' :(context) => LoginPage(),
  '/home' :(context) => HomePage(),
  '/main' :(context) => MainPage(),
  '/edit_profile':(context)=> EditProfilePage(),
};

static const login = '/';
static const home = '/home';
static const main = '/main';
static const editProfile = '/edit_profile';

}
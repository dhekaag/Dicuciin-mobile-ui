import 'package:dicuciin_2/src/features/authentication/screens/home/home.dart';
import 'package:dicuciin_2/src/features/authentication/screens/login/login.dart';
import 'package:dicuciin_2/src/repository/exception/login_email_password_failure.dart';
import 'package:dicuciin_2/src/repository/exception/signup_email_password_failure.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  //Will be load when app launches this func will be called and set the firebaseUser state
  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  /// If we are setting initial screen from here
  /// then in the main.dart => App() add CircularProgressIndicator()
  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const HomeScreen());
  }

  //FUNC
  Future<String?> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const HomeScreen())
          : Get.to(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignupEmailAndPasswordFailure.code(e.code);
      return ex.message;
    } catch (_) {
      const ex = SignupEmailAndPasswordFailure();
      return ex.message;
    }
    return null;
  }

  Future<String?> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = LoginEmailAndPasswordFailure.fromCode(e.code);
      return ex.message;
    } catch (_) {
      const ex = LoginEmailAndPasswordFailure();
      return ex.message;
    }
    return null;
  }
}

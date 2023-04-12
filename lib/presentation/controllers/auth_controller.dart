import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Rx<User?> user = Rx<User?>(null);
  RxBool isLoggedIn = false.obs;

  @override
  void onInit() {
    super.onInit();
    user.bindStream(_auth.authStateChanges());
    checkLoginStatus();
  }

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _auth.signInWithCredential(credential);
      Get.snackbar('Success', 'Signed in with Google');
      checkLoginStatus();
    } catch (e) {
      Get.snackbar('Error', 'Failed to sign in with Google');
    }
  }

  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut();
      await _auth.signOut();
      await SharedPreferences.getInstance().then((prefs) {
        prefs.remove('isLoggedIn');
      });
      Get.snackbar('Success', 'Signed out');
      checkLoginStatus();
    } catch (e) {
      Get.snackbar('Error', 'Failed to sign out');
    }
  }

  void checkLoginStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isLoggedIn.value = prefs.getBool('isLoggedIn') ?? false;
    if (user.value != null) {
      await prefs.setBool('isLoggedIn', true);
      isLoggedIn.value = true;
      Get.snackbar('Success', 'Welcome back ${user.value!.displayName}');
    }
  }
}

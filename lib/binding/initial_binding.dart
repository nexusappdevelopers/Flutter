
/*
 * @copyright : Nexus App Developers. < https://www.nexusappdevelopers.com/ >
 * @author     : Elliot
 * All Rights Reserved.
 * Proprietary and confidential :  All information contained herein is, and remains
 * the property of Nexus App Developers. and its partners.
 * Unauthorized copying of this file, via any medium is strictly prohibited
 */

import 'package:flutter_code_base/pages/authentication/presentation/controllers/loginController.dart';

import '../export.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(OnboardingController());
    Get.put(LoginController());

  }
}
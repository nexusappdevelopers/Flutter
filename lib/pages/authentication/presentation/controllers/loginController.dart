/*
 * @copyright : Nexus App Developers. < https://www.nexusappdevelopers.com/ >
 * @author     : Elliot
 * All Rights Reserved.
 * Proprietary and confidential :  All information contained herein is, and remains
 * the property of Nexus App Developers. and its partners.
 * Unauthorized copying of this file, via any medium is strictly prohibited
 */

import 'package:flutter_code_base/model/responseModal/myaccount_model.dart';

import '../../../../export.dart';

class LoginController extends SuperController {
  late TextEditingController emailController;
  late TextEditingController forgetEmailController;
  late TextEditingController passwordController;
  late FocusNode emailFocusNode;
  late FocusNode forgetEmailFocusNode;
  late FocusNode passwordFocusNode;
  late FocusNode loginFocusNode;
  MyAccountModel? myAccountModel;
  RxBool loader = false.obs;
  RxBool hidePswd = true.obs;

  @override
  void onInit() {
    emailController = TextEditingController();
    forgetEmailController = TextEditingController();
    passwordController = TextEditingController();
    emailFocusNode = FocusNode();
    forgetEmailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    loginFocusNode = FocusNode();

    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    forgetEmailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    forgetEmailFocusNode.dispose();
    passwordFocusNode.dispose();
    loginFocusNode.dispose();
    super.onClose();
  }

  @override
  void onReady() {
    if (storage.read(LOCALKEY_token) != null &&
        storage.read(LOCALKEY_myAccount) == null) {

    } else {
      if (storage.read(LOCALKEY_myAccount) != null) {
        myAccountModel =
            MyAccountModel.fromJson(storage.read(LOCALKEY_myAccount));
      }
    }
    update();
  }



  onSend() {
    Get.offAll(() => LoginScreen());
  }

  onForget() {
    emailController.clear();
    passwordController.clear();
    forgetEmailController.clear();
    Get.focusScope!.unfocus();
  }

  togglePasswordVisibility() {
    hidePswd.value=!hidePswd.value;
    update();

  }

  onManage() {
  }

  void gotoSingup() {

  }

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {}
}

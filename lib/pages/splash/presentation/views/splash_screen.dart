/*
 * @copyright : Nexus App Developers. < https://www.nexusappdevelopers.com/ >
 * @author     : Elliot
 * All Rights Reserved.
 * Proprietary and confidential :  All information contained herein is, and remains
 * the property of Nexus App Developers. and its partners.
 * Unauthorized copying of this file, via any medium is strictly prohibited
 */

import '../../../../export.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GetBuilder<SplashController>(
      builder: (controller) {
        return  FlutterLogo(
          size: 40,
        );
      },
    ));
  }
}

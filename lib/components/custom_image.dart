/*
 * @copyright : Nexus App Developers. < https://www.nexusappdevelopers.com/ >
 * @author     : Elliot
 * All Rights Reserved.
 * Proprietary and confidential :  All information contained herein is, and remains
 * the property of Nexus App Developers. and its partners.
 * Unauthorized copying of this file, via any medium is strictly prohibited
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget imageAsset(String name,
        {double? scale, double? width, double? height, BoxFit? fit}) =>
    Image.asset(
      name,
      height: height,
      width: width,
      fit: fit,
    );

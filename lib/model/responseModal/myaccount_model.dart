/*
 * @copyright : Nexus App Developers. < https://www.nexusappdevelopers.com/ >
 * @author     : Elliot
 * All Rights Reserved.
 * Proprietary and confidential :  All information contained herein is, and remains
 * the property of Nexus App Developers. and its partners.
 * Unauthorized copying of this file, via any medium is strictly prohibited
 */

class MyAccountModel {
  String? fullName;
  String? email;
  String? mobile;

  MyAccountModel({this.fullName, this.email, this.mobile});

  MyAccountModel.fromJson(Map<String, dynamic> json) {
    fullName = json['fullname'];
    email = json['email'];
    mobile = json['mobile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullname'] = this.fullName;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    return data;
  }
}

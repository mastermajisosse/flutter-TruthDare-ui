import 'dart:convert';

import 'package:kora/Api.dart';
import 'package:kora/model.dart';

class ProfileService {
  static final ProfileService profileService = ProfileService._internal();
  ProfileService._internal();

  factory ProfileService() {
    return profileService;
  }

  Api api = Api();

  Profilemodel lists;

  Future<Profilemodel> getLists() async {
    // lists = new List();
    // await api.httpGet('bins/fyqiq').then((reponse) {
    return await api.httpGet('bins/jj24k').then((reponse) {
      var data = jsonDecode(reponse.body);
      // data["news"].forEach((l) {
      // });
      return Profilemodel().fromJson(data);
    });
    // return lists;
  }
}

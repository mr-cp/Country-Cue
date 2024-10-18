import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';

import '../../service/app_services.dart';
import '../model/country_detail_model.dart';

class DetailController extends GetxController {
 

  var isLoading = false.obs;

  List<CountryDetailModel> countryList = [];

  fetchCountry(String country) async {
    try {
      isLoading.value = true;
      update();

      final Uri url = Uri.parse(AppServices.baseUrl+country);

      final response = await http.get(url, headers: {
        'content-type': 'application/json',
        'Accept': 'application/json',
      });

      if (response.statusCode == 200) {
        List<dynamic> jsonData = jsonDecode(response.body);
        countryList = jsonData
            .map((country) => CountryDetailModel.fromJson(country))
            .toList();
        log('-----------------$countryList');
        isLoading.value = false;
        update();
      }
    } on SocketException {
      throw ('No internet connection');
    } catch (e) {
      log('Country error ::: ${e.toString()}');
    } finally {
      isLoading.value = false;
      update();
    }
  }
}

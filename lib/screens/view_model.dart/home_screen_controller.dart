import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isCountrySelected = false.obs;
  var selectedCountry = "Select Country".obs;

  final TextEditingController searchController = TextEditingController();

  List<Map<String, String>> countryList = [
    {"name": "India", "flag": "https://flagcdn.com/w320/in.png"},
    {"name": "Germany", "flag": "https://flagcdn.com/w320/de.png"},
    {"name": "israel", "flag": "https://flagcdn.com/w320/il.png"},
    {"name": "Sri Lanka", "flag": "https://flagcdn.com/w320/lk.png"},
    {"name": "Italy", "flag": "https://flagcdn.com/w320/it.png"},
    {"name": "China", "flag": "https://flagcdn.com/w320/tw.png"},
    {"name": "Korea", "flag": "https://flagcdn.com/w320/kp.png"},
  ];

  var filteredCountryList = <Map<String, String>>[].obs;

  HomeController() {
    filteredCountryList.value = countryList;
  }
  searchFilter(String searchCountry) {
    if (searchCountry.isEmpty) {
      countryList;
    } else {
      filteredCountryList.value = countryList
          .where((country) => country['name']!
              .toLowerCase()
              .contains(searchCountry.toLowerCase()))
          .toList();
    }
  }
}

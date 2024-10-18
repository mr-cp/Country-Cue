import 'package:country_cue/utils/size_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared_widget/custom_text.dart';
import '../../shared_widget/search_bar.dart';
import '../view_model.dart/detail_screen_controller.dart';
import '../view_model.dart/home_screen_controller.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(HomeController());
  DetailController detailController = Get.put(DetailController());
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        height: h,
        width: w,
        decoration: const BoxDecoration(color: Colors.white),
        child: SafeArea(
          child: GetBuilder<HomeController>(
            init: homeController,
            builder: (homeController) => SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: h * 0.2),
                  const Icon(Icons.pin_drop_outlined, size: 50),
                  SizedBox(height: h * 0.035),
                  Text(
                    "Choose Your Country",
                    style: GoogleFonts.mulish(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.8),
                  ),
                  SizedBox(height: h * 0.015),
                  const CustomText(
                    text:
                        "Please select your country to help\n us give you more details",
                    fontSize: 12,
                  ),
                  SizedBox(height: h * 0.085),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.60),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        Obx(() {
                          return CustomText(
                            text: homeController.selectedCountry.value,
                            fontSize: 14,
                          );
                        }),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            homeController.filteredCountryList
                                .assignAll(homeController.countryList);
                            showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                      content: SizedBox(
                                        height: h * 0.3,
                                        child: Column(
                                          children: [
                                            h10,
                                            SearchField(
                                              onSubmitted: (value) {
                                                // homeController
                                                //     .searchFilter(value);
                                              },
                                              onChanged: (value) {
                                                homeController
                                                    .searchFilter(value);
                                              },
                                              hintText: 'Search Country',
                                              controller: homeController
                                                  .searchController,
                                            ),
                                            h10,
                                            Expanded(
                                              child: Obx(() {
                                                return ListView.separated(
                                                    separatorBuilder:
                                                        (context, index) =>
                                                            const Divider(
                                                              height: 0,
                                                            ),
                                                    itemCount: homeController
                                                        .filteredCountryList
                                                        .length,
                                                    itemBuilder:
                                                        (context, index) =>
                                                            InkWell(
                                                              onTap: () {
                                                                homeController
                                                                        .selectedCountry
                                                                        .value =
                                                                    homeController
                                                                        .filteredCountryList[
                                                                            index]
                                                                            [
                                                                            'name']
                                                                        .toString();
                                                                homeController
                                                                    .isCountrySelected
                                                                    .value = true;
                                                                Get.back();
                                                                homeController
                                                                    .searchController
                                                                    .clear();
                                                              },
                                                              child: Container(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .symmetric(
                                                                        vertical:
                                                                            10),
                                                                child: Row(
                                                                  children: [
                                                                    CustomText(
                                                                        fontSize:
                                                                            14,
                                                                        fontweight:
                                                                            FontWeight
                                                                                .w500,
                                                                        color: Colors
                                                                            .blueGrey,
                                                                        text: homeController.filteredCountryList[index]["name"] ??
                                                                            ''),
                                                                    const Spacer(),
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12),
                                                                      child: SizedBox(
                                                                          height:
                                                                              20,
                                                                          width:
                                                                              20,
                                                                          child: FadeInImage.assetNetwork(
                                                                              fit: BoxFit.fill,
                                                                              placeholder: 'assets/placeholder.jpg',
                                                                              image: '${homeController.filteredCountryList[index]["flag"]}')),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ));
                                              }),
                                            )
                                          ],
                                        ),
                                      ),
                                    ));
                          },
                          icon: const Icon(Icons.arrow_circle_right_outlined),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.08),
                  Obx(() {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: homeController.isCountrySelected.value
                            ? const Color.fromARGB(255, 93, 176, 245)
                            : const Color.fromARGB(255, 218, 214, 214),
                      ),
                      onPressed: () {
                        detailController
                            .fetchCountry(homeController.selectedCountry.value)
                            .then((_) {
                          if (homeController.isCountrySelected.value) {
                            Get.to(() => const DetailScreen());
                          }
                        });
                      },
                      child: Obx(() {
                        return CustomText(
                          text: 'Explore',
                          fontSize: 14,
                          color: homeController.isCountrySelected.value
                              ? Colors.white
                              : Colors.grey,
                        );
                      }),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

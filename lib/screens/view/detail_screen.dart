import 'package:country_cue/screens/view_model.dart/detail_screen_controller.dart';
import 'package:country_cue/shared_widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/size_constants.dart';

class DetailScreen extends StatefulWidget {
  final String? countryNname;
  final String? commonName;
  final String? flag;
  final String? currnecy;
  const DetailScreen(
      {super.key,
      this.countryNname,
      this.commonName,
      this.flag,
      this.currnecy});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  DetailController detailController = Get.put(DetailController());
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: w,
        height: h,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(15, 15, 15, 5),
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0.89, -0.45),
                  end: Alignment(-0.89, 0.45),
                  colors: [
                    Color.fromARGB(255, 242, 242, 245),
                    Color.fromARGB(255, 255, 253, 253),
                    Color.fromARGB(255, 245, 245, 245),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      width: 0.50, color: Color.fromARGB(255, 211, 213, 214)),
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x87E9F9FF),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: GetBuilder<DetailController>(
                  init: detailController,
                  builder: (countryController) => countryController
                          .isLoading.value
                      ? const Center(child: CircularProgressIndicator())
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(12, 15, 12, 22),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                child: Image(
                                    image: NetworkImage(countryController
                                            .countryList[0].flags?.png
                                            .toString() ??
                                        '')),
                              ),
                            ),
                            // h5,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Expanded(
                                  child: CustomText(
                                    text: 'Country Name :    ',
                                    fontSize: 13,
                                    fontweight: FontWeight.w600,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    countryController
                                            .countryList[0].name?.common
                                            .toString() ??
                                        "",
                                    //  textAlign: TextAlign.center,
                                    style: GoogleFonts.italiana(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            h8,
                            const Divider(
                              thickness: 0.50,
                              color: Color.fromARGB(255, 202, 203, 204),
                            ),
                            h8,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Expanded(
                                  child: CustomText(
                                    text: 'Common Name :    ',
                                    fontSize: 13,
                                    fontweight: FontWeight.w600,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    countryController
                                            .countryList[0].name?.official
                                            .toString() ??
                                        "",
                                    maxLines: 2,
                                    // textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.italiana(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            h8,
                            const Divider(
                              thickness: 0.50,
                              color: Color.fromARGB(255, 202, 203, 204),
                            ),
                            h8,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Expanded(
                                  child: CustomText(
                                    text: 'Language :    ',
                                    fontSize: 13,
                                    fontweight: FontWeight.w600,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    countryController
                                            .countryList[0].languages?.deu
                                            .toString() ??
                                        "",
                                    // textAlign: TextAlign.center,
                                    style: GoogleFonts.italiana(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            h10,
                          ],
                        )),
            ),
          ],
        ),
      ),
    );
  }
}

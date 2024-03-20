import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:tasbex_app/utils/app_icons/app_icons.dart';
import 'package:tasbex_app/utils/app_images/app_images.dart';
import 'package:tasbex_app/utils/app_text_style/app_text_style.dart';
import 'package:tasbex_app/utils/size/app_responsive_size.dart';
import 'package:tasbex_app/view_model/home_screen_view_model.dart';
import '../../utils/app_colors/app_colors.dart';
import 'dialogs/zikr_name_show_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      images.length,
                      (index) => images[index],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 190.h),
                  Expanded(
                    child: Container(
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.w),
                          topRight: Radius.circular(30.w),
                        ),
                        color: const Color(0xFFf5f5f5),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.w, vertical: 7.h),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    showZikrDialog(context: context);
                                  },
                                  child: SvgPicture.asset(
                                    AppIcons.menuIcon,
                                    height: 24.h,
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  padding: EdgeInsets.all(3.w),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: AppColors.black,
                                      width: 2.w,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "33",
                                      style: TextStyle(
                                        fontSize: 10.w,
                                      ),
                                    ),
                                  ),
                                ),
                                17.getW(),
                                SvgPicture.asset(
                                  AppIcons.zvukIcon,
                                  height: 24.h,
                                ),
                                17.getW(),
                                GestureDetector(
                                  onTap: () {
                                    context
                                        .read<HomeScreenViewModel>()
                                        .resetCounter();
                                  },
                                  child: Image.asset(
                                    "assets/images/reply.png",
                                    height: 24.h,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.w),
                                topRight: Radius.circular(30.w),
                              ),
                              color: AppColors.cF2F6F8,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: AppColors.black.withOpacity(.25),
                                    blurRadius: 4.0,
                                    offset: const Offset(0.0, 4))
                              ],
                            ),
                            padding: EdgeInsets.symmetric(vertical: 25.h),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: 170.h,
                                      width: 170.w,
                                      child: CircularProgressIndicator(
                                        backgroundColor: AppColors.cA2DCEF,
                                        valueColor:
                                            const AlwaysStoppedAnimation(
                                          AppColors.c0069C9,
                                        ),
                                        value: context
                                                .watch<HomeScreenViewModel>()
                                                .getCounter /
                                            33,
                                        strokeWidth: 15,
                                      ),
                                    ),
                                    Positioned(
                                      top: 50.h,
                                      left: 40.w,
                                      child: Text(
                                        "${context.watch<HomeScreenViewModel>().getCounter}/${context.watch<HomeScreenViewModel>().getZikr}",
                                        style: TextStyle(
                                          color: AppColors.c0069C9,
                                          fontSize: 40.w,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20.h),
                              ],
                            ),
                          ),
                          24.getH(),
                          Text(
                            "Subhanalloh",
                            style: AppTextStyle.interRegular.copyWith(
                                fontSize: 35.w, color: AppColors.c0069C9),
                          ),
                          30.getH(),
                          GestureDetector(
                            onTap: () {
                              context.read<HomeScreenViewModel>().increment();
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.c0069C9,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 45.w, vertical: 45.h),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      offset: const Offset(0, 4),
                                      color: AppColors.black.withOpacity(.25),
                                      blurRadius: 4,
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15.w, vertical: 15.h),
                                child: Image.asset(AppImages.add, width: 30.w),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> images = [
  Image.asset(
    AppImages.imgOne,
    width: width,
    fit: BoxFit.cover,
  ),
  Image.asset(
    AppImages.imgTwo,
    width: width,
    fit: BoxFit.cover,
  ),
  Image.asset(
    AppImages.imgThree,
    width: width,
    fit: BoxFit.cover,
  ),
  Image.asset(
    AppImages.imgFour,
    width: width,
    fit: BoxFit.cover,
  ),
  Image.asset(
    AppImages.imgFive,
    width: width,
    fit: BoxFit.cover,
  ),
  Image.asset(
    AppImages.imgSix,
    width: width,
    fit: BoxFit.cover,
  ),
  Image.asset(
    AppImages.imgSeven,
    width: width,
    fit: BoxFit.cover,
  ),
  Image.asset(
    AppImages.imgEight,
    width: width,
    fit: BoxFit.cover,
  ),
];

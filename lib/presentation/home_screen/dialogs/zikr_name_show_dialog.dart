import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:tasbex_app/presentation/home_screen/dialogs/zikr_count_show_dialog.dart';
import 'package:tasbex_app/utils/app_colors/app_colors.dart';
import 'package:tasbex_app/utils/app_icons/app_icons.dart';
import 'package:tasbex_app/utils/size/app_responsive_size.dart';
import '../../../view_model/home_screen_view_model.dart';

void showZikrDialog({required BuildContext context}) {
  String zikrName = '';

  showDialog(
    context: context,
    builder: (BuildContext context) {
      width = MediaQuery.of(context).size.width;
      height = MediaQuery.of(context).size.height;

      return Consumer<HomeScreenViewModel>(
        builder: (BuildContext context, value, Widget? child) {
          return AlertDialog(
            backgroundColor: AppColors.white,
            content: Container(
              height: 210.h,
              padding: EdgeInsets.only(top: 15.h),
              child: Column(
                children: [
                  value.allZikrModelList.isNotEmpty
                      ? SizedBox(
                          width: width,
                          height: 140.h,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                ...List.generate(
                                  value.allZikrModelList.length,
                                  (index) => Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: const Text(
                                                  'Delete Zikr?',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                                content: Text(
                                                  'Zikrni o\'chirishni istaysizmi?',
                                                  style: TextStyle(
                                                    fontSize: 22.w,
                                                    color: AppColors.black,
                                                  ),
                                                ),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      value.deleteZikr(
                                                        value
                                                            .allZikrModelList[
                                                                index]
                                                            .id!,
                                                      );
                                                      Navigator.of(context)
                                                          .pop();
                                                      showDialog(
                                                        context: context,
                                                        builder: (BuildContext
                                                            context) {
                                                          return AlertDialog(
                                                            content: Text(
                                                              'Zikr muvaffaqiyatli ochirildi!',
                                                              style: TextStyle(
                                                                fontSize: 22.w,
                                                                color: AppColors
                                                                    .black,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: const Text(
                                                      'Ha',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: const Text(
                                                      'Yo\'q',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        child: SvgPicture.asset(
                                            AppIcons.deleteIcon,
                                            width: 17.w),
                                      ),
                                      7.getW(),
                                      Text(
                                        value.allZikrModelList[index].name,
                                        style: TextStyle(
                                          color: AppColors.c0069C9,
                                          fontSize: 15.w,
                                        ),
                                      ),
                                      const Spacer(),
                                      SizedBox(
                                        height: 15.h,
                                        child: Checkbox(
                                          value: true,
                                          onChanged: (newValue) {
                                            print("CheckBox news: $newValue");
                                          },
                                          activeColor: AppColors.c0069C9,
                                          checkColor: AppColors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : const SizedBox(),
                  const Spacer(),
                  SizedBox(
                    width: 140.w,
                    child: TextFormField(
                      onChanged: (value) {
                        zikrName = value;
                      },
                      decoration: InputDecoration(
                        hintText: "Zikr qo'shing",
                        hintStyle: TextStyle(
                          color: AppColors.c0069C9,
                          fontSize: 15.w,
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.h),
                          child: SvgPicture.asset(AppIcons.editIcon,
                              height: 15.h, width: 10.w),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              Row(
                children: [
                  SvgPicture.asset(AppIcons.outlineArrowIcon,
                      height: 20.h, width: 20.w),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Bekor Qilish',
                      style: TextStyle(
                        color: AppColors.c0069C9,
                        fontSize: 15.w,
                      ),
                    ),
                  ),
                  5.getW(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      showZikrCountDialog(context: context, zikrName: zikrName);
                    },
                    child: Text(
                      'Saqlash',
                      style: TextStyle(
                        color: AppColors.c0069C9,
                        fontSize: 15.w,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      );
    },
  );
}

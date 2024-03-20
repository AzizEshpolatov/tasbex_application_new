import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:tasbex_app/utils/app_colors/app_colors.dart';
import 'package:tasbex_app/utils/app_icons/app_icons.dart';
import 'package:tasbex_app/utils/size/app_responsive_size.dart';
import '../../../data/model/zikr_model.dart';
import '../../../view_model/home_screen_view_model.dart';

void showZikrCountDialog(
    {required BuildContext context, required String zikrName}) {
  int count = 0;
  showDialog(
    context: context,
    builder: (BuildContext context) {
      width = MediaQuery.of(context).size.width;
      height = MediaQuery.of(context).size.height;
      return AlertDialog(
        content: Container(
          height: 210.h,
          padding: EdgeInsets.only(top: 15.h),
          child: Column(
            children: [
              Row(
                children: [],
              ),
              SizedBox(
                width: 140.w,
                child: TextFormField(
                  onChanged: (value) {
                    count = int.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Sonini kiriting",
                    hintStyle: TextStyle(
                      color: AppColors.c0069C9,
                      fontSize: 15.w,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: SvgPicture.asset(
                        AppIcons.editIcon,
                        height: 15.h,
                        width: 10.w,
                      ),
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
                  if (zikrName.isNotEmpty) {
                    Provider.of<HomeScreenViewModel>(context, listen: false)
                        .addZikr(
                      ZikrModel(
                        name: zikrName,
                        count: count,
                      ),
                    );
                  }
                  Navigator.of(context).pop();
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 24.h),
                          child: Text(
                            'Zikr muvaffaqiyatli qoshildi!',
                            style: TextStyle(
                              fontSize: 22.w,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                      );
                    },
                  );
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
}

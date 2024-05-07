import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class TelaInicialOneScreen extends StatelessWidget {
  const TelaInicialOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [appTheme.gray800, appTheme.gray700, appTheme.gray500],
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 10.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage1,
                  height: 210.adaptSize,
                  width: 210.adaptSize,
                ),
                SizedBox(height: 16.v),
                Text(
                  "Bem-vindo, André!",
                  style: theme.textTheme.displaySmall,
                ),
                SizedBox(height: 26.v),
                Text(
                  "O que você deseja?",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 64.v),
                CustomElevatedButton(
                  width: 200.h,
                  text: "Status do Processo",
                  buttonTextStyle: CustomTextStyles.titleSmallGray900,
                  onPressed: () {
                    onTapStatusdo(context);
                  },
                ),
                SizedBox(height: 35.v),
                CustomElevatedButton(
                  width: 200.h,
                  text: "Denunciar",
                  buttonTextStyle: CustomTextStyles.titleSmallGray900,
                  onPressed: () {
                    onTapDenunciar(context);
                  },
                ),
                SizedBox(height: 33.v),
                CustomElevatedButton(
                  width: 200.h,
                  text: "Aprender",
                  buttonTextStyle: CustomTextStyles.titleSmallGray900,
                ),
                Spacer(),
                SizedBox(height: 37.v),
                SizedBox(
                  height: 17.v,
                  width: 65.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            onTapView(context);
                          },
                          child: Container(
                            height: 17.v,
                            width: 65.h,
                            decoration: BoxDecoration(
                              color: appTheme.tealA200,
                              borderRadius: BorderRadius.circular(
                                8.h,
                              ),
                              border: Border.all(
                                color: appTheme.black900,
                                width: 1.h,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 18.h),
                          child: Text(
                            "Sair",
                            style: CustomTextStyles.labelLarge12,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the telaDeStatusScreen when the action is triggered.
  onTapStatusdo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.telaDeStatusScreen);
  }

  /// Navigates to the telaDeDenNciaScreen when the action is triggered.
  onTapDenunciar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.telaDeDenNciaScreen);
  }

  /// Navigates to the telaInicialScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.telaInicialScreen);
  }
}

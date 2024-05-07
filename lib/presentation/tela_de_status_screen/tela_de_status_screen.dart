import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class TelaDeStatusScreen extends StatelessWidget {
  const TelaDeStatusScreen({Key? key})
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
              horizontal: 13.h,
              vertical: 10.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(right: 77.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomElevatedButton(
                          height: 28.v,
                          width: 65.h,
                          text: "Voltar",
                          margin: EdgeInsets.only(
                            top: 9.v,
                            bottom: 173.v,
                          ),
                          buttonStyle: CustomButtonStyles.fillLightBlue,
                          onPressed: () {
                            onTapVoltar(context);
                          },
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1,
                          height: 210.adaptSize,
                          width: 210.adaptSize,
                          margin: EdgeInsets.only(left: 12.h),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                Text(
                  "Bem-vindo, André!",
                  style: theme.textTheme.displaySmall,
                ),
                SizedBox(height: 25.v),
                Text(
                  "Status do Processo",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 71.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 29.h,
                    right: 35.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.outlineGray,
                        child: Text(
                          "Denúncia",
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Container(
                        width: 100.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 4.v,
                        ),
                        decoration: AppDecoration.outlineWhiteA,
                        child: Text(
                          "Conciliação",
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Container(
                        width: 100.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.outlineWhiteA700,
                        child: Text(
                          "Processo",
                          style: theme.textTheme.labelLarge,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 51.v),
                Container(
                  width: 276.h,
                  margin: EdgeInsets.only(
                    left: 46.h,
                    right: 41.h,
                  ),
                  child: Text(
                    "Você está em processo \nde conciliação",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 46.v),
                Container(
                  width: 342.h,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    right: 6.h,
                  ),
                  child: Text(
                    "Data e hora:\n03/07/2024 - 18:00 (Online)",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 62.v),
                Text(
                  "Link do evento:",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 15.v),
                Text(
                  "Ver aqui",
                  style: CustomTextStyles.headlineSmallBluegray700,
                ),
                SizedBox(height: 5.v)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the telaInicialOneScreen when the action is triggered.
  onTapVoltar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.telaInicialOneScreen);
  }
}

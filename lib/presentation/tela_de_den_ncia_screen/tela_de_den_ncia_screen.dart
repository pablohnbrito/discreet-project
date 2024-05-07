import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class TelaDeDenNciaScreen extends StatelessWidget {
  TelaDeDenNciaScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController bullyingAuthorEditTextController =
      TextEditingController();

  TextEditingController priceEditTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
                        _buildVoltarButton(context),
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
                SizedBox(height: 11.v),
                Text(
                  "DENÚNCIA",
                  style: theme.textTheme.displaySmall,
                ),
                Spacer(
                  flex: 40,
                ),
                _buildBullyingAuthorEditText(context),
                SizedBox(height: 36.v),
                _buildPriceEditText(context),
                SizedBox(height: 59.v),
                _buildEnviarButton(context),
                Spacer(
                  flex: 59,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVoltarButton(BuildContext context) {
    return CustomElevatedButton(
      height: 28.v,
      width: 65.h,
      text: "Voltar",
      margin: EdgeInsets.only(
        top: 9.v,
        bottom: 173.v,
      ),
      buttonStyle: CustomButtonStyles.fillLightBlue,
      onPressed: () {
        onTapVoltarButton(context);
      },
    );
  }

  /// Section Widget
  Widget _buildBullyingAuthorEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 18.h,
      ),
      child: CustomTextFormField(
        controller: bullyingAuthorEditTextController,
        hintText: "AUTOR DO BULLYING:",
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 18.h,
      ),
      child: CustomTextFormField(
        controller: priceEditTextController,
        hintText: "DESCRIÇÃO DO CASO:",
        textInputAction: TextInputAction.done,
        maxLines: 5,
      ),
    );
  }

  /// Section Widget
  Widget _buildEnviarButton(BuildContext context) {
    return CustomElevatedButton(
      height: 33.v,
      width: 142.h,
      text: "ENVIAR",
      buttonStyle: CustomButtonStyles.fillLightBlue,
      onPressed: () {
        onTapEnviarButton(context);
      },
    );
  }

  /// Navigates to the telaInicialOneScreen when the action is triggered.
  onTapVoltarButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.telaInicialOneScreen);
  }

  /// Navigates to the telaInicialOneScreen when the action is triggered.
  onTapEnviarButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.telaInicialOneScreen);
  }
}

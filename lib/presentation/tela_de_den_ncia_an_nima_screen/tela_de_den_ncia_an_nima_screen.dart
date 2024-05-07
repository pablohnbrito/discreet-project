import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class TelaDeDenNciaAnNimaScreen extends StatelessWidget {
  TelaDeDenNciaAnNimaScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController yournameEditTextController = TextEditingController();

  TextEditingController registrationEditTextController =
      TextEditingController();

  TextEditingController classEditTextController = TextEditingController();

  TextEditingController victimEditTextController = TextEditingController();

  TextEditingController bullyauthorEditTextController = TextEditingController();

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
                SizedBox(height: 78.v),
                _buildYournameEditText(context),
                SizedBox(height: 24.v),
                _buildRegistrationEditText(context),
                SizedBox(height: 24.v),
                _buildClassEditText(context),
                SizedBox(height: 25.v),
                _buildVictimEditText(context),
                SizedBox(height: 19.v),
                _buildBullyauthorEditText(context),
                SizedBox(height: 36.v),
                _buildPriceEditText(context),
                SizedBox(height: 5.v)
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildEnviarButton(context),
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
  Widget _buildYournameEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: CustomTextFormField(
        controller: yournameEditTextController,
        hintText: "SEU NOME:",
      ),
    );
  }

  /// Section Widget
  Widget _buildRegistrationEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: CustomTextFormField(
        controller: registrationEditTextController,
        hintText: "MATRÍCULA:",
      ),
    );
  }

  /// Section Widget
  Widget _buildClassEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 18.h,
      ),
      child: CustomTextFormField(
        controller: classEditTextController,
        hintText: "TURMA:",
      ),
    );
  }

  /// Section Widget
  Widget _buildVictimEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 18.h,
      ),
      child: CustomTextFormField(
        controller: victimEditTextController,
        hintText: "VITIMA:",
      ),
    );
  }

  /// Section Widget
  Widget _buildBullyauthorEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 18.h,
      ),
      child: CustomTextFormField(
        controller: bullyauthorEditTextController,
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
      margin: EdgeInsets.only(
        left: 121.h,
        right: 127.h,
        bottom: 37.v,
      ),
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

  /// Navigates to the telaInicialScreen when the action is triggered.
  onTapEnviarButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.telaInicialScreen);
  }
}

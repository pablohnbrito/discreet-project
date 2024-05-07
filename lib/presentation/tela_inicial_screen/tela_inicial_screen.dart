import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class TelaInicialScreen extends StatelessWidget {
  TelaInicialScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController registrationController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 31.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1,
                        height: 210.adaptSize,
                        width: 210.adaptSize,
                      ),
                      SizedBox(height: 59.v),
                      Text(
                        "LOGIN",
                        style: theme.textTheme.displaySmall,
                      ),
                      SizedBox(height: 61.v),
                      _buildRegistration(context),
                      SizedBox(height: 39.v),
                      _buildPasswordOne(context),
                      SizedBox(height: 23.v),
                      _buildEntrar(context),
                      SizedBox(height: 5.v)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildDenuncia(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegistration(BuildContext context) {
    return CustomTextFormField(
      controller: registrationController,
      hintText: "MATRÍCULA:",
    );
  }

  /// Section Widget
  Widget _buildPasswordOne(BuildContext context) {
    return CustomTextFormField(
      controller: passwordOneController,
      hintText: "SENHA:",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildEntrar(BuildContext context) {
    return CustomElevatedButton(
      height: 33.v,
      width: 142.h,
      text: "ENTRAR",
      buttonStyle: CustomButtonStyles.fillLightBlue,
      onPressed: () {
        onTapEntrar(context);
      },
    );
  }

  /// Section Widget
  Widget _buildDenuncia(BuildContext context) {
    return CustomElevatedButton(
      width: 200.h,
      text: "Denúncia Anônima",
      margin: EdgeInsets.only(
        left: 100.h,
        right: 90.h,
        bottom: 54.v,
      ),
      buttonTextStyle: CustomTextStyles.titleSmallGray900,
      onPressed: () {
        onTapDenuncia(context);
      },
    );
  }

  /// Navigates to the telaInicialOneScreen when the action is triggered.
  onTapEntrar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.telaInicialOneScreen);
  }

  /// Navigates to the telaDeDenNciaAnNimaScreen when the action is triggered.
  onTapDenuncia(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.telaDeDenNciaAnNimaScreen);
  }
}

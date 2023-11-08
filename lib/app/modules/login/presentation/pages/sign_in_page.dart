import 'package:flutter/material.dart';
import 'package:pokedex_flutter/app/commons/theme/colors_theme.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage>
    with SingleTickerProviderStateMixin {

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isCircle = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: CustomColors.mainBlue,
        key: _scaffoldKey,
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          _buildLogo(),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: _getSize().height,
            width: _getSize().width,
          ),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Image.asset(
          "assets/logo/pokemon-logo.png",
          fit: BoxFit.contain,
          height: MediaQuery.of(context).size.height * 0.15,
        ),
      ),
    );
  }

  Size _getSize() {
    if (_isCircle) {
      return const Size(150, 150);
    }
    return Size(
      MediaQuery.of(context).size.width,
      MediaQuery.of(context).size.height * 0.755,
    );
  }
}

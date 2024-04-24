import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';
import '../../router/app_router.gr.dart';

@RoutePage()
class VerifyCodePage extends StatefulWidget {
  const VerifyCodePage({Key? key}) : super(key: key);

  @override
  _VerifyCodePageState createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(5, (index) => TextEditingController());
    for (var i = 0; i < _controllers.length - 1; i++) {
      _controllers[i].addListener(() {
        if (_controllers[i].text.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: screenHeight / 2.5,
          width: screenWidth,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Check your email",
                  style:
                  TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                const Text("We have sent a code to your email address enter 5 digit code that mentioned in the email",
                  style: TextStyle(
                      color: Colors.black38, fontWeight: FontWeight.bold,fontSize: 16),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    5,
                        (index) => SizedBox(
                      width: screenWidth / 8,
                      height: screenHeight / 17,
                      child: TextField(
                        controller: _controllers[index],
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                        //
                        buildCounter: (BuildContext context, {required int currentLength, required bool isFocused, required int? maxLength}) => null,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: firstColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        onPressed: () {
                          context.router.push(const ResetPasswordRoute());
                        },
                        child: const Text(
                          "Verify Code",
                          style:
                          TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Haven't got the email yet?",
                  style: TextStyle(
                      color: Colors.black38, fontWeight: FontWeight.bold,fontSize: 16),),
                    TextButton(
                      onPressed: () {},
                      child: Text("Resend email",style: TextStyle(color: firstColor, fontSize: 16.0,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }
}

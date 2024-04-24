import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';

@RoutePage()
class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: screenHeight / 3,
          width: screenWidth,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Set a new password",
                  style:
                  TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                const Text("Create a new password. Ensure it differs from previous one for security.",style: TextStyle(
                    color: Colors.black38, fontWeight: FontWeight.bold,fontSize: 16.0),),
                TextField(
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide(color: secondColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide(
                          color: thirdColor), // Seçili durum için çerçeve rengi
                    ),
                    labelText: "Enter your new password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                      icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                ),
                TextField(
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide(color: secondColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide(
                          color: thirdColor), // Seçili durum için çerçeve rengi
                    ),
                    labelText: "Re-enter password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                      icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
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
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(backgroundColor: Colors.white,
                              title: const Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Successful",
                                    style:
                                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              content: SizedBox(height: screenHeight / 5, width: screenWidth,
                                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ScaleTransition(
                                      scale: Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
                                        parent: ModalRoute.of(context)!.animation!,
                                        curve: Curves.fastOutSlowIn,
                                      )),
                                      child: const Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                        size: 64,
                                      ),
                                    ),
                                    const Text("Congratulations! Your password has been changed.Click continue to login.",
                                      style: TextStyle(
                                          color: Colors.black38, fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                              actions: [
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
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text("Continue",
                                          style:
                                          TextStyle(color: Colors.white, fontSize: 16.0),),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                        child: const Text("Update Password",style: TextStyle(color: Colors.white,fontSize: 16.0),),
                      ),
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
}

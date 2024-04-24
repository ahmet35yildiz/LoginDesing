import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:login_design/colors.dart';
import 'package:login_design/presentation/views/login_page.dart';
import 'package:login_design/presentation/views/signup_page.dart';

@RoutePage()
class TabControllerPage extends StatelessWidget {
  const TabControllerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Column(
            children: [
              const SizedBox(height: kToolbarHeight), // Boşluğu kaldırma
              TabBar(
                indicatorColor: firstColor,
                labelColor: firstColor,
                unselectedLabelColor: Colors.black26,
                tabs: const [
                  Tab(
                    child: Text(
                      "Log In",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),

              const Expanded(
                child: TabBarView(
                  children: [
                    LoginPage(),
                    SignupPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:classroom_hackathon/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: Theme.of(context).textTheme.subtitle1,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Username",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: Theme.of(context).textTheme.subtitle1,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: primaryColor,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: darkColor, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
        body: Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: Text(
                      "Flipr Classroom",
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: defaultPadding / 2),
                  Container(
                    color: darkColor,
                    // child: (Image.asset("assets/images/66632.jpg",width: 500,)),
                  ),
                ],
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              flex: 3,
              child: Container(
                color: Color(0xFF242430),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Spacer(),
                    Text("Login/Signup",
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    SizedBox(height: defaultPadding),
                    Container(width: defaultWidth, child: emailField),
                    SizedBox(height: defaultPadding),
                    Container(width: defaultWidth, child: passwordField),
                    SizedBox(height: defaultPadding),
                    loginButon,
                    SizedBox(height: defaultPadding),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Do not have an account?"),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "SignUp",
                            style: TextStyle(color: primaryColor),
                          ),
                        ),
                      ],
                    ),
                    Text("or"),
                    InkWell(
                      onTap: () {},
                      child: Ink(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(6),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Icon(Icons
                                  .android), // <-- Use 'Image.asset(...)' here
                              SizedBox(width: 12),
                              Text('Sign in with Google'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

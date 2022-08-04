import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:qasim/Screens/Oppointment.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Center(child: Image.asset('assets/heart.png',height: 64,width: 80,)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    children: [
                      Text('Welcome Back to ',style: TextStyle(fontSize: 20 ),),
                      Text('Care Pro ',style: TextStyle(color: Color(0xffE00065),fontSize: 20 ),),

                    ],
                  ),
                  Center(child: Text('Join 1+ millions doctors for free',style: TextStyle(color: Color(0xff656565),fontSize: 15),)),
                  SizedBox(height: 16,),
                  Text('Email Address',style: TextStyle(fontSize: 14 ,color: Color(0xff0C2A6E)),),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.check_circle,color: Colors.green,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "lehieuds@gmail.com",
                          fillColor: Colors.white70),
                    ),
                  ),
                  SizedBox(height: 6,),
                  Text('Mobile Phone',style: TextStyle(fontSize: 14 ,color: Color(0xff0C2A6E))),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber);
                      },
                      onInputValidated: (bool value) {
                        print(value);
                      },
                      selectorConfig: SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: TextStyle(color: Colors.black),
                      //initialValue: number,
                    //  textFieldController: controller,
                      formatInput: false,
                      keyboardType:
                      TextInputType.numberWithOptions(signed: true, decimal: true),
                      inputBorder: OutlineInputBorder(),
                      onSaved: (PhoneNumber number) {
                        print('On Saved: $number');
                      },
                    ),
                  ),
                  SizedBox(height: 6,),
                  Text('Password',style: TextStyle(fontSize: 14 ,color: Color(0xff0C2A6E)),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(


                          suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey,),
                          border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,

                          hintStyle: TextStyle(color: Colors.grey[800]),
                          //hintText: "",
                          fillColor: Colors.white70),
                    ),
                  ),
                  SizedBox(height: 7,),
                  Row(
                    children: [
                      Text('By clicking Sign Up you are agreeing to the ',style: TextStyle(fontSize: MediaQuery.of(context).size.width/28 ),),
                      Text('Terms of use',style :TextStyle(color: Color(0xffE00065),fontSize: MediaQuery.of(context).size.width/28 ),),
                    ],
                  ),
                  Text('& Privacy Policy',style: TextStyle(color: Color(0xffE00065),fontSize: MediaQuery.of(context).size.width/28 ),),
                  SizedBox(height: 7,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Shedule()),
                      );
                    },
                    child: Container(
                      height:60 ,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Colors.lightBlueAccent,
                            Colors.blue,
                          ],
                        ),
                      ),
                      child: Center(child: Text('SignUp')),
                    ),
                  ),
                  SizedBox(height: 7,),
                  Row(
                    children: [
                      Container(
                        color: Colors.black,
                        height: 1,
                        width: MediaQuery.of(context).size.width/2.7,

                      ),
                      Text('  Or Countinue  '),
                      Container(
                        color: Colors.black,
                        height: 1,
                        width: MediaQuery.of(context).size.width/3,

                      ),
                    ],
                  ),
                  SizedBox(height: 7,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height:60 ,
                        width: MediaQuery.of(context).size.width/3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                       color: Colors.black
                        ),
                        child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/apple.png',height: 22,width: 17,),
                                Text('  Continue With',style: TextStyle(color: Colors.white,fontSize: 12),),
                              ],
                            ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.asset('assets/gmail.png'),
                      ),
                      Container(
                          height: 100,
                        width: 100,

                        child: Image.asset('assets/facebook.png',)
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

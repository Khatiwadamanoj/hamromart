import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Login With Google/controllers/phone_authentication.dart';
import '../consts/colors.dart';
import 'otp_screen.dart';
class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Country selectedCountry = Country(
    phoneCode: '977',
    countryCode: "NP",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: 'Nepal',
    example: 'Nepal',
    displayName: 'NP',
    displayNameNoCountryCode: 'NP',
    e164Key: "",
  );

  // Send OTP
  Future<void> sendOTP() async {
    await PhoneAuthentication().sendOTPCode(
      phoneController.text,
          (String verId) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => OTPScreen(verification: verId),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).popAndPushNamed('/homeScreen');
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/images/phone.jpg",
                      width: 500,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Verify Phone Number',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'A OTP of 6 digit code will be sent to your phone number',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        controller: phoneController,
                        inputFormatters: [LengthLimitingTextInputFormatter(10)],
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter phone number';
                          }
                          if (value.length != 10) {
                            return 'Enter 10 digit number';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            // phoneController.text = value;
                          });
                        },
                        autofillHints: const [AutofillHints.oneTimeCode],
                        decoration: InputDecoration(
                          hintText: 'Enter phone number',
                          prefixIcon: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                showCountryPicker(
                                  context: context,
                                  countryListTheme: const CountryListThemeData(
                                    flagSize: 20,
                                    bottomSheetHeight: 500,
                                  ),
                                  onSelect: (value) {
                                    setState(() {
                                      selectedCountry = value;
                                    });
                                  },
                                );
                              },
                              child: Text(
                                  '${selectedCountry.flagEmoji} +${selectedCountry.phoneCode}'),
                            ),
                          ),
                          suffixIcon: phoneController.text.length == 10
                              ? Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                              child: const Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          )
                              : null,
                          hintStyle: const TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w300,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
          
           ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor:Colors.deepPurple,
                minimumSize: const Size(250, 50)),
                onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          await sendOTP();
                        }
                      },    
              label: const Text("login",
                 style: TextStyle(
                color: whiteColor,fontSize: 15),),
               icon: const Icon(
                  Icons.logout_outlined,
                   color: whiteColor,),
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 125.0, left: 21),
              child: Text("Karyana",style: GoogleFonts.kronaOne(
                fontWeight: FontWeight.w400,
                fontSize: 28.4,
                color: Color(0xffFF5934)
              ),),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 73.0, left: 86),
              child: Text("Retailer App",style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 11.11,
                  color: Color(0xff121212)
              ),),
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Welcome to Karyana!",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                        color: Color(0xff121212)
                    ),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/images/shopping-cart.png",height: 28,width: 28,),
                    title: Text("We make shopping for your business easier than ever before",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xff949494)
                      ),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/images/shopping-cart.png",height: 28,width: 28,),
                    title: Text("We make shopping for your business easier than ever before",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xff949494)
                      ),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/images/shopping-cart.png",height: 28,width: 28,),
                    title: Text("We make shopping for your business easier than ever before",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xff949494)
                      ),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/images/shopping-cart.png",height: 28,width: 28,),
                    title: Text("We make shopping for your business easier than ever before",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xff949494)
                      ),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/images/shopping-cart.png",height: 28,width: 28,),
                    title: Text("We make shopping for your business easier than ever before",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xff949494)
                      ),),
                  ),
                  SizedBox(
                    height: 56,
                    width: 335,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffFF5934),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ), child: Text("Create Account",style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Color(0xffFFFFFF)
                        ),)),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 56,
                    width: 335,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),child: Column(
                          children: [
                            Text("Have an account?",style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xffBDBDBD)
                            ),),
                            Text("Login",style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Color(0xffFF5934)
                            ),),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}

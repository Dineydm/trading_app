import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/style.dart';
import 'size_config.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: AppBar().preferredSize.height,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Spacer(flex: 3),
          Text(
            'Welcome, John!',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Style.textColor1,
              fontWeight: FontWeight.w500,
              fontSize: SizeConfig.titleSize,
            ),
          ),
          Spacer(flex: 3),
          Container(
            height: SizeConfig.height * .21,
            child: Stack(
              children: [
                Container(
                  height: SizeConfig.height * .18,
                  width: SizeConfig.width * .8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage('assets/images/banner.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Gold',
                          style: GoogleFonts.poppins(
                            color: Colors.white.withOpacity(.5),
                            fontSize: SizeConfig.fontSize,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'US\$ 198.57',
                          style: GoogleFonts.poppins(
                            color: Colors.white.withOpacity(.8),
                            fontSize: SizeConfig.mFontSize,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: SizeConfig.width * .8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 64,
                            width: SizeConfig.width * .7,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Profit',
                                  style: GoogleFonts.poppins(
                                    color: Style.textColor1.withOpacity(.5),
                                    fontSize: SizeConfig.fontSize,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'US\$ 31,83',
                                  style: GoogleFonts.poppins(
                                    color: Style.primaryColor,
                                    fontSize: SizeConfig.fontSize,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Spacer(flex: 3),
          Container(
            height: 60,
            width: SizeConfig.width * .7,
            decoration: BoxDecoration(
              color: Style.chipColor,
              borderRadius: BorderRadius.circular(100),
            ),
            alignment: Alignment.center,
            child: Text(
              'View live price list',
              style: GoogleFonts.poppins(
                color: Colors.white.withOpacity(0.7),
                fontSize: SizeConfig.fontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Spacer(
            flex: 5,
          ),
          BottomSheet(
              onClosing: () {},
              builder: (ctx) {
                return Container(
                  color: Style.backgroundColor,
                  child: Container(
                    height: SizeConfig.height * .2,
                    width: SizeConfig.width,
                    decoration: BoxDecoration(
                      color: Style.secondaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Recent Transactions',
                          style: GoogleFonts.poppins(
                            color: Style.textColor1.withOpacity(.7),
                            fontSize: SizeConfig.mFontSize,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Divider(),
                        Spacer(),
                        ListTile(
                          onTap: () {},
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          title: Text(
                            'Sale of gold #1234',
                            style: GoogleFonts.poppins(
                              color: Style.textColor1.withOpacity(.5),
                              fontSize: SizeConfig.fontSize,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Text(
                            '23 April 2021',
                            style: GoogleFonts.poppins(
                              color: Style.textColor1.withOpacity(.2),
                              fontSize: SizeConfig.fontSize * .8,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: Text(
                            'US\$ 21.76',
                            style: GoogleFonts.poppins(
                              color: Style.primaryColor.withOpacity(.8),
                              fontSize: SizeConfig.fontSize,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}

import 'package:ahamedabisheik/config/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'responsive_widget.dart';
import '../data/skills.dart';
import '../config/constants.dart';
import '../config/styles.dart';
import '../config/colors.dart';

class About extends StatelessWidget {
  final String _avatar = 'images/ahmd.jpg';
  final String _description =
      "I am developer has around 2+ years experience in Flutter App Development with Full SDLC, also worked in Agile methodology. Developed 10+ Flutter and Dart applications from scratch for mobile and tablet devices that offer users an intuitive, friendly interface and successfully executed a lot of updates to existing applications. I have experience in team management. I can quickly grasp new technology and begin working on it.";

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
            vertical: 100,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Container(
                      color: AppColors.white,
                      child: Image.asset(
                        _avatar,
                        width: 300,
                        height: 300,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ABOUT ME',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          _description,
                          // style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          //       color: Colors.black.withOpacity(.7),
                          //       fontSize: 17,
                          //     ),
                          style: AppTextStyle.instance.mainTextStyle(
                            fSize: 17,
                            fWeight: FontWeight.bold,
                            color: Colors.black,
                            // optional
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            // RaisedButton(
                            //   onPressed: () {},
                            //   color: AppColors.yellow,
                            //   textColor: Colors.white,
                            //   padding: const EdgeInsets.symmetric(
                            //       horizontal: 30, vertical: 20),
                            //   child: Text('HIRE ME NOW'),
                            // ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    AppColors.yellow, // Background color
                                overlayColor: Colors.white, // Text color
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              child: Text(
                                'HIRE ME NOW',
                                style: AppTextStyle.instance.mainTextStyle(
                                  fSize: 18,
                                  fWeight: FontWeight.bold,
                                  color: Colors.black,
                                  // optional
                                ),
                              ),
                            ),

                            const SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: _downloadCV,
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    AppColors.yellow, // Background color
                                overlayColor: Colors.white, // Text color
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              //   color: AppColors.black,
                              //    textColor: Colors.white,
                              //   padding: const EdgeInsets.symmetric(
                              //       horizontal: 30, vertical: 20),
                              child: Text(
                                'VIEW RESUME',
                                style: AppTextStyle.instance.mainTextStyle(
                                  fSize: 18,
                                  fWeight: FontWeight.bold,
                                  color: Colors.black,
                                  // optional
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Text(
                'MY SKILLS',
                style: AppTextStyle.instance.mainTextStyle(
                  fSize: 18,
                  fWeight: FontWeight.bold,
                  color: Colors.black,
                  // optional
                ),
              ),
              // Text('MY SKILLS', style: AppStyles.title,

              //  ),
              Container(width: 100, height: 2, color: AppColors.yellow),
              const SizedBox(height: 3),
              Container(width: 75, height: 2, color: AppColors.yellow),
              const SizedBox(height: 50),
              Wrap(
                spacing: 25,
                runSpacing: 25,
                runAlignment: WrapAlignment.spaceBetween,
                children: SKILLS.map(_buildSkill).toList(),
              ),
            ],
          ),
        ),
        mobileScreen: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
            vertical: 50,
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Container(
                  color: AppColors.greyLight,
                  child: Image.asset(
                    _avatar,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'ABOUT ME',
                style: TextStyle(
                  color: AppColors.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                _description,
                style: AppTextStyle.instance.mainTextStyle(
                  fSize: 17,
                  fWeight: FontWeight.w500,
                  color: Colors.black,
                  // optional
                ),
                // style: Theme.of(context).textTheme.bodySmall!.copyWith(
                //       color: Colors.black.withOpacity(.7),
                //       fontSize: 13,
                //     ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              // ElevatedButton(
              //   onPressed: () {},
              //   // color: AppColors.yellow,
              //   // textColor: Colors.white,
              //   // padding:
              //   //     const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              //   child: Text('HIRE ME NOW'),
              // ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.yellow, // Background color
                  overlayColor: Colors.white, // Text color
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'HIRE ME NOW',
                  style: AppTextStyle.instance.mainTextStyle(
                    fSize: 18,
                    fWeight: FontWeight.bold,
                    color: Colors.black,
                    // optional
                  ),
                ),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _downloadCV,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.yellow, // Background color
                  overlayColor: Colors.white, // Text color
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                // color: AppColors.black,
                // textColor: Colors.white,
                // padding:
                //     const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Text(
                  'VIEW RESUME',
                  style: AppTextStyle.instance.mainTextStyle(
                    fSize: 18,
                    fWeight: FontWeight.bold,
                    color: Colors.black,
                    // optional
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'MY SKILLS',
                style: AppTextStyle.instance.mainTextStyle(
                  fSize: 15,
                  fWeight: FontWeight.bold,
                  color: Colors.black,
                  // optional
                ),
              ),
              // Text('MY SKILLS', style: AppStyles.title),
              Container(width: 75, height: 2, color: AppColors.yellow),
              const SizedBox(height: 3),
              Container(width: 50, height: 2, color: AppColors.yellow),
              const SizedBox(height: 25),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.spaceBetween,
                children: SKILLS.map(_buildSkill).toList(),
              ),
            ],
          ),
        ),
      );

  void _downloadCV() {
    launch(AppConstants.cv);
  }

  Widget _buildSkill(Skill skill) => Chip(label: Text(skill.name!));
}

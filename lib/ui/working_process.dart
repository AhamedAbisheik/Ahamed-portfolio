import 'package:flutter/material.dart';
import 'package:ahamedabisheik/ui/responsive_widget.dart';

import '../config/styles.dart';
import '../config/colors.dart';
import 'icon.dart';

class WorkingProcess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.amberAccent.shade100,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text('WORKING PROCESS', style: AppStyles.title),
            Container(width: 100, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: __buildProcess(
                      context,
                      '01.',
                      'icons/pencil.png',
                      'Plan',
                      'Every project begins with a clear and strategic planning phase. I start by understanding the core purpose of the application — identifying the target audience, key features, and user flows. I define the functional requirements and determine whether the app needs to work online, offline, or both. Based on this, I select the appropriate technologies, such as SQLite for offline storage or REST APIs for real-time data. I also consider the backend architecture (e.g., Firebase or custom API), platform targets (Android, iOS, web), and finalize the state management approach (Provider, Riverpod, Bloc). During this stage, I outline the folder structure and create a roadmap for development, breaking down tasks into manageable milestones to ensure timely delivery.'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(
                      context,
                      '02.',
                      'icons/design.png',
                      'Design',
                      'The design phase is focused on creating an intuitive and engaging user experience. I start by sketching out wireframes to visualize the structure of the app’s interface and user journeys. These wireframes are refined into high-fidelity UI designs using tools like Figma or Adobe XD, adhering to Material Design guidelines for consistency and familiarity. I pay close attention to layout responsiveness, color schemes, typography, and accessibility. When designing for both Android and iOS, I ensure platform-specific nuances are respected, using appropriate components like Cupertino widgets where needed. This phase results in a visually appealing and user-centered design that guides the development process.'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(
                      context,
                      '03.',
                      'icons/coding.png',
                      'Code',
                      'In the coding phase, I bring the design to life using Flutter. I begin by initializing the project with a well-organized folder structure — typically separating screens, widgets, models, services, and providers. I implement the core functionality first, such as navigation, user authentication, and API integration using packages like http or dio. For local storage, I use SQLite or Hive, and manage application state efficiently using Provider, Riverpod, or Bloc. I focus on building reusable components, maintaining clean and readable code, and ensuring the UI is responsive across all screen sizes. After implementing features, I perform thorough testing, including manual testing on real devices, and use logging and debugging tools to optimize performance and fix bugs. Finally, I prepare the app for release, generate the signed APK or app bundle, and handle deployment to the Play Store or web if required.'),
                )
                
              ],
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
            Text(
              'WORKING PROCESS',
              style: AppStyles.title,
              textAlign: TextAlign.center,
            ),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            __buildProcess(context, '01.', 'icons/pencil.png', 'Plan',
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor laboris nisi ut aliquip ex ea commodo.'),
            const SizedBox(height: 10),
            __buildProcess(context, '02.', 'icons/design.png', 'Design',
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor laboris nisi ut aliquip ex ea commodo.'),
            const SizedBox(height: 10),
            __buildProcess(context, '03.', 'icons/coding.png', 'Code',
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor laboris nisi ut aliquip ex ea commodo.'),
          ],
        ),
      ),
    );
  }

  Widget __buildProcess(BuildContext context, String index, String iconPath,
      String title, String description) {
    return Card(
      elevation: 4,
      shadowColor: Colors.amberAccent.shade100,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                index,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
                ),
              ),
            ),
            const SizedBox(height: 10),
            Divider(color: AppColors.greyLight),
            const SizedBox(height: 10),
            AppIcon(iconPath, color: AppColors.black, size: 40),
            const SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

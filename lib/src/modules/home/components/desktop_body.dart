import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../content/contact_section.dart';
import '../../content/footer.dart';
import '../../content/k_divider.dart';
import '../../content/recent_works.dart';
import '../../content/skills_and_experience.dart';
import '../../content/top_intro_section.dart';
import '../../content/top_menu_bar.dart';
import '../../service-break/service_break_banner.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  State<DesktopBody> createState() => _BodyState();
}

class _BodyState extends State<DesktopBody> {
  bool isMaintainence = isGlobalMaintainence;
  double height = 38.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          if (isMaintainence)
            ServiceBreakBanner(
              height: height,
              onPressed: () => setState(() {
                height = 0.0;
                Future.delayed(const Duration(milliseconds: 350), () {
                  isMaintainence = false;
                });
              }),
            ),
          TopMenuBar(key: topMenubarSectionKey),
          const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 2,
                  vertical: defaultPadding * 0.5),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: FooterAllSocialsLinks())),
          TopIntroSection(key: topIntroSectionKey),
          const KDivider(),
          SkillsAndExperience(key: aboutSectionKey),
          const KDivider(),
          RecentWorks(key: recentWorksSectionKey),
          const SizedBox(height: defaultPadding * 2),
          // const KDivider(),
          // HireMeCard(key: collaborationSectionKey),
          // const SizedBox(height: defaultPadding * 2),
          const KDivider(),
          ContactSection(key: contactSectionKey),
          const KDivider(),
          Footer(key: socialLinksSectionKey)
        ],
      ),
    );
  }
}

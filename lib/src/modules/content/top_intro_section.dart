import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/size_config/responsive.dart';
import '../../constants/size_config/size_config.dart';

class TopIntroSection extends StatelessWidget {
  const TopIntroSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context) ? defaultPadding * 2 : defaultPadding, vertical: 10.0),
      child: Row(
        mainAxisAlignment: mainCenter,
        children: [
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: mainCenter,
              crossAxisAlignment: crossStart,
              children: [
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Md. Sabik Alam ",
                        style: TextStyle(
                          fontSize: 28,
                          letterSpacing: 0.65,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      TextSpan(
                        text: 'Rahat',
                        style: TextStyle(
                          fontSize: 28,
                          letterSpacing: 0.65,
                          color: kDefaultColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding * 0.7),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Flutter Developer ',
                        style: TextStyle(
                          fontSize: 14,
                          // color: kDefaultColor,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "from Dhaka, Bangladesh.",
                        style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 0.6,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding * 0.5),
                const Text(
                  'Focused professional having excellent technical and communication skills, and offering almost 4 years of experience in Computer industry. Proficient at designing and formulating test automation frameworks, writing code in various languages, feature development and implementation. Specialize in thinking outside the box to find unique solutions to difficult engineering problems.',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: bodyTextColor,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: defaultPadding),
                const Text(
                  'What Skill I Have',
                  style: TextStyle(
                    fontSize: 14.0,
                    letterSpacing: 0.6,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: defaultPadding * 0.4),
                Wrap(
                  spacing: defaultPadding * 0.5,
                  runSpacing: defaultPadding * 0.5,
                  children: List.generate(
                    skills.length,
                    (index) => Chip(
                      label: Text(
                        skills[index],
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                // const SizedBox(height: defaultPadding * 2),
                // const Text.rich(
                //   TextSpan(
                //     children: [
                //       TextSpan(
                //         text: 'An Undergraduate Student ',
                //         style: TextStyle(
                //           fontSize: 15,
                //           color: kDefaultColor,
                //           letterSpacing: 0.6,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //       TextSpan(
                //         text: "from East West University.",
                //         style: TextStyle(
                //           fontSize: 15,
                //           letterSpacing: 0.6,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // const SizedBox(height: defaultPadding * 0.35),
                // const Text(
                //   '(B.Sc in CSE from 2019 to Present [Dec 2022]*) ',
                //   style: TextStyle(
                //     fontSize: 13.5,
                //     // color: kDefaultColor,
                //     letterSpacing: 0.6,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                const SizedBox(height: defaultPadding * 0.5),
                if (!Responsive.isDesktop(context)) Image.asset("assets/gifs/programmer.gif"),
              ],
            ),
          ),
          if (Responsive.isDesktop(context))
            Expanded(
              flex: 4,
              child: Image.asset("assets/gifs/programmer.gif"),
            ),
        ],
      ),
    );
  }
}

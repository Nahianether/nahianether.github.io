class Experience {
  final List<Designation> designations;
  final String companyName;
  final String link;
  final String imgPath;
  final String location;

  Experience({
    required this.designations,
    required this.companyName,
    required this.link,
    required this.imgPath,
    required this.location,
  });
}

class Designation {
  final String title;
  final DateTime startDate;
  final DateTime? endDate;

  Designation({
    required this.title,
    required this.startDate,
    this.endDate,
  });
}

List<Experience> experiences = [
  Experience(
    designations: [
      Designation(
        title: 'Flutter Developer',
        startDate: DateTime.parse('2023-05-01 00:00:00.000'),
        endDate: null,
      ),
    ],
    companyName: 'Royex Technologies',
    link: 'https://www.linkedin.com/company/royex-technologies/',
    imgPath: 'assets/experiences/royex-technologies.png',
    location: 'Dubai, United Arab Emirates',
  ),
  Experience(
    designations: [
      Designation(
        title: 'Junior Flutter Application Developer',
        startDate: DateTime.parse('2022-11-01 00:00:00.000'),
        endDate: DateTime.parse('2023-04-30 00:00:00.000'),
      ),
      Designation(
        title: 'Permanent Flutter Apprentice',
        startDate: DateTime.parse('2021-12-01 00:00:00.000'),
        endDate: DateTime.parse('2022-11-01 00:00:00.000'),
      ),
      Designation(
        title: 'Flutter Apprentice',
        startDate: DateTime.parse('2021-08-01 00:00:00.000'),
        endDate: DateTime.parse('2021-12-01 00:00:00.000'),
      ),
    ],
    companyName: 'Algorithm Generation Ltd',
    link: 'https://www.linkedin.com/company/algorithmgeneration/mycompany/',
    imgPath: 'assets/experiences/algorithm-generation.png',
    location: 'Dhaka, Bangladesh',
  ),
  Experience(
    designations: [
      Designation(
        title: 'Led Android Developer',
        startDate: DateTime.parse('2020-03-01 00:00:00.000'),
        endDate: DateTime.parse('2021-02-01 00:00:00.000'),
      ),
    ],
    companyName: 'Accelerating Intelligence',
    link: 'https://www.linkedin.com/company/acceleratingintelligence/',
    imgPath: 'assets/experiences/accelerating-intelligence.png',
    location: 'Dhaka, Bangladesh',
  ),
];

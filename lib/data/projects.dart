class Project {
  final String? name;
  final String? description;
  final String? image;
  final String? url;
  final List<String>? skills;

  Project({this.name, this.description, this.image, this.url, this.skills});
}

// ignore: non_constant_identifier_names
List<Project> PROJECTS = [
  Project(
    name: 'Mutram Magazine',
    description:
        'This is a monthly magazine for and about the SHGs published by TNCDW. The Mutram Monthly Magazine was started in 1998 and is disseminating information about various women welfare schemes of State and Central Government and other subjects such as education, health, sanitation, women empowerment, poverty reduction, consumer rights and duties, legal support available for women and success stories of economic empowerment and social mobilization.',
    image: 'images/projects/mu-lo.png', 
    url:
        'https://play.google.com/store/apps/details?id=com.isky.mutram_magazine',
    skills: [
      'Flutter',
      'Dart',
      'Sql',
      'PaymentGateway',
      'NTTData PaymentServices',
      'Provider',
      'MVC Architecture',
      'Git',
    ],
  ),
  Project(
    name: 'TNTWD-Tribal Welfare Department',
    description: 'Introducing housing developmentUnder this Scheme provides housing development activities, Improvement of Roof houses, Road work, Improvement of infrastructure in GTR schools, Drinking water, Economic development Schemes and training skills to the Tribal people living below poverty line.',
    image: 'images/projects/twd.png',
    url: 'https://play.google.com/store/apps/details?id=com.twd.scheme_implementation',
    skills: [
      'Dart',
      'Flutter',
      'RestApi',
      'jwtToken',
      'offlineStorage',
      'Latitude &Longitude fetching',
      'Provider',
      'MVC Architecture',
      'Git',
    ],
  ),
  Project(
    name: 'Flagday-Armed Forces',
    description:
        'This is the only official App for Armed Forces Flag Day Fund, Tamil Nadu.',
    image: 'images/projects/flg.png',
    url:
        'https://play.google.com/store/apps/details?id=com.isky.flag_day&pli=1',
    skills: [
      'PaymentGateway',
      'Flutter',
      'Dart',
      'Sql',
      'NTTData PaymentServices',
      'RestApi',
      'otp Verification',
      'Wordline PaymentServices',
      'Provider',
      'MVC Architecture',
      'Git',
    ],
  ),
  Project(
    name: 'SBGI-MIS',
    description: 'The app is exclusively designed to monitor the administration work of accounts section.',
    image: 'images/projects/sbi-M.png',
    url: 'https://play.google.com/store/apps/details?id=com.isky.sbgi_mis',
    skills: [
      'Flutter',
      'Dart',
      'Sql',
      'RestApi',
      'jwtToken',
      'Provider',
      'MVC Architecture',
      'Git',
    ],
  ),
  Project(
    name: 'Co-optex',
    description: 'Cooptex is the largest apex handloom weavers’ cooperative society in India promoting handloom industry and the interest of cooperative weavers on a commercially viable manner. Its main functions are – organization of production according to the needs and taste of market, procurement of stock from handloom weavers’ cooperative societies and marketing of those products through its effective network of shops throughout the country. It also provides technical and financial help to the weavers.',
    image: 'images/projects/co.png',
    url:
        'https://play.google.com/store/apps/details?id=com.isky.aavin.tiruppur',
    skills: [
      'Flutter',
      'Dart',
      'Sql',
      'RestApi',
      'jwtToken',
      'PaymentGateway',
      'NTTData PaymentServices',
      'Wordline PaymentServices',
      'Provider',
      'MVC Architecture',
    ],
  ),
  Project(
    name: 'SDAT-Pass Registration',
    description: 'Khelo India Youth Games 2023,Tamil Nadu - Visitors Pass Registry ',
    image: 'images/projects/k.png',
    url: 'https://play.google.com/store/apps/details?id=com.isky.pass_registry',
    skills: ['Flutter', 'Dart', 'Sql', 'RestApi', 'RestApi', 'jwtToken'],
  ),
  Project(
    name: 'Face Regonition',
    description: 'Developed Face Attendance, a facial recognition-based staff and Students attendance solution integrated with the TensorFlow Mobile App. Enabled seamless attendance tracking and automatic sync across various business environments.',
    image: 'images/projects/fac.png',
    url: 'https://drive.google.com/file/d/1x22YBUOBEk94lqsf6JxDwLuMi0D-sQeD/view?usp=drivesdk',
    skills: [
      'Flutter',
      'Dart',
      'Sql',
      'Git',
    ],
  ),
  Project(
    name: 'Aavin Triuppur',
    description: 'Triuppur general public and Aavin booth agents can easily purchase milk and milk products online from the comfort of their homes with Aavin Triuppur - mobile app.',
    image: 'images/projects/av.png',
    url:
        'https://play.google.com/store/apps/details?id=com.isky.aavin.tiruppur',
    skills: [
      'Flutter',
      'Dart',
      'Sql',
      'RestApi',
      'jwtToken',
      'PaymentGateway',
      'NTTData PaymentServices',
      'Wordline PaymentServices',
      'Provider',
      'MVC Architecture',
    ],
  ),
  Project(
    name: 'Tholkudi Tholan',
    description: 'Developed a mobile app for the Tamil Nadu Farm Machinery scheme to connect farmers and custom hiring centers. Enabled rental of agricultural equipment to boost farmer income and ensure optimal machinery utilization',
    image: 'images/projects/Th-tol.png',
    url: 'https://drive.google.com/file/d/1wzCdmF8qt1CSRHk4H5b-9aeJZVLJ83NO/view?usp=drivesdk',
    skills: [
      'Flutter',
      'Dart',
      'Sql',
      'Provider',
      'MVC Architecture',
      'PaymentGateway',
      'NTTData PaymentServices',
      'Wordline PaymentServices',
      'Git',
    ],
  ),
  // Project(
  //   name: 'Tholkudi Tholan',
  //   description: '',
  //   image: 'images/projects/Th-tol.png',
  //   url: 'https://play.google.com/store/apps/details?id=com.ouahiddev.juda',
  //   skills: [
  //     'Flutter',
  //     'Dart',
  //     'Sql',
  //     'Git',
  //   ],
  // ),
  Project(
    name: 'Tholkudi MemberShip',
    description: '',
    image: 'images/projects/nala-thu.png',
    url: 'https://play.google.com/store/apps/details?id=com.ouahiddev.juda',
    skills: [
      'Flutter',
      'Dart',
      'RestApi',
      'jwtToken',
      'Provider',
      'MVC Architecture',
      'Sql',
      'Git',
    ],
  ),
];

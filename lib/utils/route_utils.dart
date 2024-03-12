class MyRoutes {
  static String splashScreen = '/';
  static String homePage = 'home_page';
  static String buildOptionPage = 'build_Option_page';

  static String iconPath = "lib/assets/icon";

  static List buildOptions = [
    {
      'title': 'Personal info',
      'route': 'personal_info',
      'icon': '$iconPath/details.png',
    },
    {
      'title': 'Education',
      'route': 'education',
      'icon': '$iconPath/education.png',
    },
    {
      'title': 'Experience ',
      'route': 'experience',
      'icon': '$iconPath/experience.png',
    },
    {
      'title': 'Certified courses',
      'route': 'certified_courses',
      'icon': '$iconPath/certificate.png',
    },
    {
      'title': 'Projects ',
      'route': 'projects',
      'icon': '$iconPath/project.png',
    },
    {
      'title': 'Technical skills',
      'route': 'technical_skills',
      'icon': '$iconPath/skills.png',
    },
    {
      'title': 'Hobbies',
      'route': 'hobbies',
      'icon': '$iconPath/hobbies.png',
    },
    {
      'title': 'Achievements',
      'route': 'achievements',
      'icon': '$iconPath/achievement.png',
    },
    {
      'title': 'About',
      'route': 'about_info',
      'icon': '$iconPath/info.png',
    },
  ];
}

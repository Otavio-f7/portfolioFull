import 'package:flutter/material.dart';
import 'package:portifolio/presentation/widgets/contact_section.dart';
import 'package:portifolio/presentation/widgets/home_section.dart';
import 'package:portifolio/presentation/widgets/profile_section.dart';
import 'package:portifolio/presentation/widgets/projects_section.dart';
import 'package:portifolio/presentation/widgets/skill_section.dart';
import 'package:portifolio/presentation/widgets/custom_title.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<GlobalKey> sections= [GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey()];

  void scrollToSection (int index) async {
    final section = sections[index].currentContext!;
    await Scrollable.ensureVisible(
      section,
      duration: const Duration(milliseconds: 700),
    );
  }


  @override
  Widget build(BuildContext context) {
  Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        leadingWidth: 65,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset('assets/images/flutter_icon.png', fit: BoxFit.cover,),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:  CustomTitle(
          action: scrollToSection, 
          screenSize: screenSize
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProfileSection(action: scrollToSection, screenSize: screenSize, sectionKey: sections[0]),
            // HomeSection(size: screenSize, sectionKey: sections[4]),
            SkillSection(size: screenSize, sectionKey: sections[1]),
            ProjectsSection(size: screenSize, sectionKey: sections[2]),
            ContactSection(size: screenSize, sectionKey: sections[3]),
          ],
        ),
      ),
    );
  }
}
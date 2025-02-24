import 'package:flutter/material.dart';
import 'package:portifolio/presentation/widgets/about_section.dart';
import 'package:portifolio/presentation/widgets/conect_section.dart';
import 'package:portifolio/presentation/widgets/profile_section.dart';
import 'package:portifolio/presentation/widgets/project_section.dart';
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
        backgroundColor: Colors.black,
        scrolledUnderElevation: 0.0,
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
            SizedBox(height: 60, child: Divider(color: Colors.white.withOpacity(0.2),),),
            ProjectSection(screenSize: screenSize, sectionKey: sections[1]),
            SizedBox(height: 60, child: Divider(color: Colors.white.withOpacity(0.2),),),
            AboutSection(screenSize: screenSize, sectionKey: sections[2]),
            SizedBox(height: 60, child: Divider(color: Colors.white.withOpacity(0.2),),),
            ConectSection(screenSize: screenSize, sectionKey: sections[3])
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:portifolio/data/skills_data.dart';
import 'package:portifolio/domain/skill_item.dart';

class SkillSection extends StatefulWidget {
  final Key sectionKey;
  final Size size;
  const SkillSection({super.key, required this.sectionKey, required this.size});

  @override
  State<SkillSection> createState() => _SkillSectionState();
}

class _SkillSectionState extends State<SkillSection> {

  List<SkillItem> skills = skillList; 

  @override
  Widget build(BuildContext context) {
    double width = widget.size.width;
    return SizedBox(
      key: widget.sectionKey,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,  
        children: [
          SizedBox(height: 0.07 * width,),
          Text('Skills', style: TextStyle(fontSize: width >= 850 ? width * 0.035 : 30) ),
          SizedBox(
            height: width * 0.09,
            width: width >= 750 ? width * 0.5 : width * 0.85,
            child: Card(
              // elevation: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height:width * 0.04,
                    width: width * 0.04,
                    child: Image.asset('assets/images/flutter_icon.png', fit: BoxFit.cover,),
                  ),
                  Text('Desenvolvimento Flutter', style: TextStyle(fontSize: width * 0.035),),
                ],
              ),
            ),
          ),
          SizedBox(
            height: width * 0.35,
            width: width >= 750 ? width * 0.5 : width * 0.85,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:  2,
              childAspectRatio: 3.2,
              mainAxisSpacing: 0.9,
              crossAxisSpacing: 0.9 
              ), 
              itemCount: skills.length,
              itemBuilder: (ctx, i) => Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                    height: width * 0.045,
                    width: width * 0.045,
                      child: Image.asset(skills[i].folder, fit: BoxFit.contain,)),
                    Text(skills[i].title,style: TextStyle(fontSize: width >= 625 ? width * 0.014 : width * 0.027))
                  ],
                ),
              )  
            )
          ),
        ],
      ),
    );
  }
}
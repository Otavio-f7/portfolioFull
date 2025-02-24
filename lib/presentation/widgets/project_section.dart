import 'package:flutter/material.dart';
import 'package:portifolio/data/projects_data.dart';
import 'package:portifolio/domain/project_item.dart';
import 'package:portifolio/presentation/widgets/project_build_item.dart';

class ProjectSection extends StatefulWidget {
  const ProjectSection({super.key, required this.screenSize, required this.sectionKey});

  final Size screenSize;
  final Key sectionKey;

  @override
  State<ProjectSection> createState() => _ProjectSectionState();
}

class _ProjectSectionState extends State<ProjectSection> {

  List<ProjectItem> projectsData = projectsdata; 
  @override
  Widget build(BuildContext context) {
    return Column(
      key: widget.sectionKey,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
                padding: const EdgeInsets.only(left: 50),
                height: 100,
                width: 500,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Meus Projetos', style: TextStyle(fontSize: 50),),
                  ],
                ),
              ),
        SizedBox(
          width: widget.screenSize.width >= 1200 ? 1200 : 500,
          height: widget.screenSize.width >= 1200 ? 700 * 5 : 1055 * 5,
          child: ListView.builder(
            // shrinkWrap: true,
            itemCount: projectsData.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, i){
              return ProjectBuildItem(
                isSize50: widget.screenSize.width >= 1200, 
                folder: projectsData[i].folder, 
                title: projectsData[i].title, 
                description: projectsData[i].description,
                link: projectsData[i].link
              );
              // Container(
              //   padding: EdgeInsets.only(left: 50, right: widget.screenSize.width <=1200 ? 50 : 0),
              //   height: 700,
              //   width: 500,
              //   child: Card(
              //     color: Theme.of(context).colorScheme.secondary,
              //     child: Text(
              //       'Gif aqui', 
              //       style: TextStyle(fontSize: 50),
              //     )
              //   ),
              // );
              // SizedBox(
              //   height: widget.screenSize.width >= 1200 ? 0 : 5,
              //   width: widget.screenSize.width >= 1200 ? 50 : 0,
              // );
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              //   height: 400,
              //   width: 600,
              //   child: const Column(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text('Titulo ', 
              //         style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
              //       ),
              //       Text('Descrição '),
              //     ],
              //   )
              // );
            },
          ),
        ),
      ],
    );
  }
}
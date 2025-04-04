import 'package:flutter/material.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({super.key, required this.action, required this.screenSize, required this.sectionKey});

  final Function action;
  final Size screenSize;
  final Key sectionKey;

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: widget.screenSize.width >= 1100 ? 1100 : 500,
          height: widget.screenSize.width >= 1100 ? widget.screenSize.width * 0.45 : 805,
          key: widget.sectionKey,
          child: ListView(
            scrollDirection: widget.screenSize.width >= 1100 ? Axis.horizontal : Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                // padding: const EdgeInsets.only(left: 50),
                height: 400,
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Text('Olá,', style: TextStyle(fontSize: 70, height: 0.5),),
                    const Text('Olá, sou', style: TextStyle(fontSize: 70, height: 0.9),),
                    const Text('Otávio Freitas', style: TextStyle(fontSize: 70, height: 0.9)),
                    const SizedBox(height: 20,),
                    const Text('Desenvolvedor Mobile de Uberlândia-MG, em busca de novos desafios!'),
                    const SizedBox(height: 10,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary, // Cor de fundo primária
                        foregroundColor: Theme.of(context).colorScheme.onPrimary
                      ),
                      onPressed: ()=> widget.action(3), 
                      child: const Text('Entre em Contato')
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: widget.screenSize.width >= 1100 ? 0 : 5,
                width: widget.screenSize.width >= 1100 ? 100 : 0,
              ),
              SizedBox(
                height: 400,
                width: 300,
                child: FittedBox(
                  child: Image.network(
                    'https://media.licdn.com/dms/image/v2/D4D03AQHnxxGX1fesvA/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720633124458?e=1745452800&v=beta&t=h6eblSkrpFdd278d2oDdHSRuJJrGQG85aTlnAFNtlS8',
                    // height: 400,
                  fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class CustomTitle extends StatefulWidget {
  const CustomTitle({super.key, required this.action, required this.screenSize});

  final Function action;
  final Size screenSize;

  @override
  State<CustomTitle> createState() => _CustomTitleState();
}

class _CustomTitleState extends State<CustomTitle> {
  @override
  Widget build(BuildContext context) {
    return widget.screenSize.width >= 550
    ? Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        TextButton(
          onPressed: ()=> widget.action(1), 
          child: const Text(
            'Projetos', 
            style: TextStyle(
              fontSize: 25,
              color: Colors.white
            ),
          )
        ),
        TextButton(
          onPressed: ()=> widget.action(2), 
          child: const Text(
            'Sobre', 
            style: TextStyle(
              fontSize: 25,
              color: Colors.white
            ),
          )
        ),
        TextButton(
          onPressed: ()=> widget.action(3), 
          child: const Text(
            'Contato', 
            style: TextStyle(
              fontSize: 25,
              color: Colors.white
            ),
          )
        ),
      ],
    )
    : Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: 
          [
            PopupMenuButton(
              onSelected: (value){widget.action(value);},
              iconSize: 45,
              icon: const Icon(Icons.menu_outlined),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text('Projetos'),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text('Sobre'),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text('Contato'),
                ),
              ],
            )
          ],
    );
  }
}
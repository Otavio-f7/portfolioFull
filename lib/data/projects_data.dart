
import 'package:portifolio/domain/project_item.dart';

List<ProjectItem> projectsdata = [
  ProjectItem(
    title: 'Notes', 
    description: 'Nesse aplicativo o usuário é capaz de salvar suas anotações e consulta-las mesmo que feche o aplicativo, esse foi um projeto feito de forma autônoma para entender mais sobre persistência de dados.', 
    folder: 'assets/images/notes.gif',
    link: 'https://github.com/Otavio-f7/notes', 
    year: '2024'
  ),
  ProjectItem(
    title: 'Pomodoro', 
    description: 'Com esse App o usuário faz ciclos de trabalho e descanso seguindo a metodológica pomodoro. Nesse projeto implementei o gerenciamento de estado Mobx e a distribuição de estado Provider.', 
    folder: 'assets/images/pomodoro.gif',
    link: 'https://github.com/Otavio-f7/pomodoro', 
    year: '2025'
  ),
  ProjectItem(
    title: 'Chat', 
    description: 'Esse aplicativo simula as funcionalidades de um Chat usando Firebase pra login, envio de mensagens e notificações. Nele usei pacotes que encapsulam a logica por trás das funcionalidades que envolvem o Firebase.', 
    folder: 'assets/images/chat.gif',
    link: 'https://github.com/Otavio-f7/4chat',
    year: '2025'
  ),
  ProjectItem(
    title: 'Calculadora', 
    description: 'Uma calculadora simples onde o principal objetivo foi exercitar um pouco da logica de funcionamento pra que as ações ocorressem  corretamente durante o uso.', 
    folder: 'assets/images/calculator.gif',
    link: 'https://github.com/Otavio-f7/calculator',
    year: '2025'
  ),
  ProjectItem(
    title: 'Campo Minado', 
    description: 'Esse aplicativo é o jogo Campo minado. Nele a logica foi o principal desafio já que ele precisa limpar todos os campos que não tem bomba por exemplo. Há também uma parte de testes que foram usados pra definir uma boa logica nas classes.', 
    folder: 'assets/images/campo_minado.gif',
    link: 'https://github.com/Otavio-f7/campo_minado',
    year: '2025'
  ),
  ProjectItem(
    title: 'Shop', 
    description: 'Esse aplicativo é uma loja online, onde o usuário pode logar, ver os itens, adiciona-los ao carrinho e ver seus pedidos anteriores. Ele faz parte de uma serie de aplicativos desenvolvidos no curso da Cod3r de flutter.', 
    folder: 'assets/images/shop.gif',
    link: 'https://github.com/Otavio-f7/shop',
    year: '2024'
  ),
  ProjectItem(
    title: 'Expenses', 
    description: 'Esse aplicativo permite o controle de gastos do usuário.Ele faz parte de uma serie de aplicativos desenvolvidos no curso da Cod3r de flutter.', 
    folder: 'assets/images/expenses.gif',
    link: 'https://github.com/Otavio-f7/expenses',
    year: '2024'
  ),
  ProjectItem(
    title: 'Great Places', 
    description: 'Esse projeto explora o uso de recursos nativos do smartphone, onde o usuário pode salvar os lugares favoritos dele. Ele faz parte dos projetos presentes no Curso da Cod3r de Flutter.', 
    folder: 'assets/images/greatplaces.gif',
    link: 'https://github.com/Otavio-f7/great_places',
    year: '2024'
  ),
  ProjectItem(
    title: 'Meals', 
    description: 'Nesse projeto o usuário tem acesso a uma série de Categorias de comidas e seus ingredientes e modos de preparo, podendo filtrar por meio das configurações Ele faz parte dos projetos presentes no Curso da Cod3r de Flutter.', 
    folder: 'assets/images/meals.gif',
    link: 'https://github.com/Otavio-f7/meals',
    year: '2024'
  ),
];
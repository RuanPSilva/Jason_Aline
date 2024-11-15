import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// Importações das páginas
import 'bio_screen.dart';
import 'work_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;
  List<String> players = [];

  // Lista de imagens e descrições
  final List<Map<String, String>> items = [
    // Post 1
    {
      'imageUrl':
          'https://github.com/user-attachments/assets/ac34464e-a350-4f97-958c-aec115e0ed25',
      'description':
          'Introdução: Conheça Jason Chan, um dos ilustradores digitais mais celebrados da atualidade! De games a ilustrações épicas de fantasia, ele encanta e inspira artistas e fãs pelo mundo.',
    },
    // Post 2
    {
      'imageUrl':
          'https://github.com/user-attachments/assets/f3f52b94-ddc5-435a-995a-702218d9ea07',
      'description':
          'Início da Carreira: Jason Chan descobriu sua paixão pelo desenho ainda jovem. Com influências de anime, quadrinhos e RPG, ele decidiu transformar seu hobby em profissão. A formação em ilustração o levou a explorar o mundo da fantasia visual.',
    },
    // Post 3
    {
      'imageUrl':
          'https://github.com/user-attachments/assets/9c90fb0d-2fc2-404a-80d0-bfbb2d9fc97b',
      'description':
          'A Ascensão na Indústria dos Games: Após a faculdade, Jason iniciou sua carreira na indústria dos jogos, integrando a equipe de grandes estúdios e contribuindo para títulos icônicos. Ele rapidamente se destacou com seu talento em criar mundos e personagens envolventes.',
    },
    // Post 4
    {
      'imageUrl':
          'https://github.com/user-attachments/assets/62324c19-40c1-4162-a54b-00924f14b8a1',
      'description':
          'Estilo Artístico: Jason é conhecido por um estilo detalhado e imersivo, com destaque para o uso de cores dramáticas e expressões faciais profundas. Suas obras capturam a essência dos personagens, mesclando fantasia e realidade de maneira única.',
    },
    //poste 5
    {
      'imageUrl':
          'https://github.com/user-attachments/assets/2aa15f10-e478-4333-b4a8-dba082a8fd8b',
      'description':
          'Contribuições para Magic: The Gathering: Jason também fez ilustrações para o famoso jogo de cartas Magic: The Gathering, onde seu talento trouxe vida a personagens e criaturas lendárias, deixando uma marca inesquecível no universo do jogo.',
    },
    // Post 6
    {
      'imageUrl':
          'https://github.com/user-attachments/assets/3b6017b1-12e5-4112-9f2c-53826bae5ffb',
      'description':
          'Influência e Referências: As influências de Jason vão de animes a mestres da pintura clássica. Ele cita artistas como Yoshitaka Amano e Norman Rockwell como inspirações, incorporando seu amor por histórias visuais em cada projeto.',
    },
    // Post 7
    {
      'imageUrl':
          'https://github.com/user-attachments/assets/ba37c66b-9aa8-4b55-8226-feaf444b0c49',
      'description':
          'Impacto na Arte Conceitual: Jason Chan é hoje uma referência para ilustradores e designers. Ele contribuiu para elevar o valor da arte conceitual e inspirou a nova geração de artistas digitais a explorarem suas próprias visões.',
    },
    // Post 8
    {
      'imageUrl':
          'https://github.com/user-attachments/assets/564f8cf6-be0b-42f3-9caa-94d919052b15',
      'description':
          'A Vida Além da Arte: Jason acredita em equilibrar trabalho e vida pessoal, e compartilha essa filosofia com novos artistas. Ele valoriza a liberdade criativa e incentiva outros a buscarem autenticidade em suas carreiras.',
    },
    // Post 9
    {
      'imageUrl':
          'https://github.com/user-attachments/assets/1cb6650a-edeb-42bf-90ab-4737e54f7d5b',
      'description':
          'Legado e Futuro: Com uma carreira impressionante, Jason Chan continua a explorar novas fronteiras. Cada trabalho seu é uma oportunidade de transportar fãs para novos universos, reafirmando seu papel como um mestre da ilustração digital.',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b2b2b), // Cor de fundo
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //
            // Banner ***
            //
            Stack(
              clipBehavior: Clip.hardEdge,
              fit: StackFit.loose,
              children: [
                Positioned.fill(
                  child: Container(
                    height: 250, // Aumente a altura conforme necessário
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://github.com/user-attachments/assets/837ee8c8-e66b-4f9b-a248-ef6fbae29a13',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 15,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //
            // Área de Informações ***
            //
            Container(
              decoration: BoxDecoration(
                color: Color(0xff2b2b2b),
              ),
              padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal:
                      65), // Menor padding vertical para reduzir a altura
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topLeft,
                    children: [
                      //
                      // Foto de Perfil com Sobreposição ao Banner
                      //
                      Positioned(
                        top:
                            -60, // Ajuste de posição para que metade do avatar fique sobre o banner
                        left: -15,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            'https://github.com/user-attachments/assets/c1417d0f-ca63-418c-9c5f-269d3ceecd8e',
                          ),
                        ),
                      ),
                      //
                      // Nome e outras informações
                      //
                      Padding(
                        padding: const EdgeInsets.only(
                            left:
                                100), // Deslocamento para que o texto fique à direita do avatar
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jason Chan',
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //
            SizedBox(height: 10),
            //
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'I draw stuff for books and vidia games👾',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xff343334), // Cor do fundo da barra de navegação
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
          child: GNav(
            selectedIndex: _selectedIndex,
            color: Color(0x85000000),
            activeColor: Color(0xffabd904),
            tabBackgroundColor: Color(0x4d5fa90c),
            gap: 8,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
              if (index == 0) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WorkScreen()));
              } else if (index == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              } else if (index == 2) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BioScreen()));
              }
            },
            padding: EdgeInsets.all(8),
            tabs: [
              GButton(
                icon: Icons.shield_rounded,
              ),
              GButton(
                icon: Icons.house,
              ),
              GButton(
                icon: Icons.account_circle_rounded,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Esse Projeto foi construido no intuito de ser visualizado em tela cheia pois com a quantidade de informações
// apesar de adaptaveis facilmente quebra em janelas minimizadas

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade800,
        appBar: AppBar(
          title: const Text('Perfil do Herói Faramis'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      height: 250,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Hero761-portrait.webp'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.account_circle,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'Herói: Faramis',
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Icon(
                                Icons.auto_fix_high,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'Classe: Mago/Suporte',
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'Especialidade: Proteção/Avanço',
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Icon(
                                Icons.castle_rounded,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'Localidade: Fortaleza Necrokeep',
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Atributo(
                                Colors.red,
                                Icons.local_hospital_rounded,
                                'Pontos de Vida',
                                4902,
                              ),
                              const SizedBox(width: 70),
                              Atributo(
                                Colors.blue,
                                Icons.whatshot_rounded,
                                'Mana Total',
                                1970.0,
                              ),
                              const SizedBox(width: 65),
                              Atributo(
                                Colors.yellow,
                                Icons.directions_run_rounded,
                                'Vel. de Movimento',
                                245.0,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Atributo(
                                Colors.grey,
                                Icons.shield,
                                'Defesa Fisica',
                                20.0,
                              ),
                              const SizedBox(width: 80),
                              Atributo(
                                Colors.deepPurple.shade400,
                                Icons.flash_on_outlined,
                                'Poder Mágico',
                                216.0,
                              ),
                               const SizedBox(width: 55),
                              Atributo(
                                Colors.green,
                                Icons.speed_sharp,
                                'Vel. de Ataque',
                                1.09,
                              ),
                            ],
                          ),
                           const SizedBox(height: 20),
                          Row(
                            children: [
                              Atributo(
                                Colors.cyan,
                                Icons.shield_moon,
                                'Defesa Magica',
                                15.0,
                              ),
                              const SizedBox(width: 70),
                              Atributo(
                                Colors.deepOrange.shade400,
                                Icons.fitness_center_outlined,
                                'Poder Fisico',
                                0.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 40, bottom: 10),
                      child: Text(
                        'Habilidades:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 25, bottom: 20),
                          constraints: BoxConstraints(
                            maxWidth: 1500,
                            maxHeight: 230,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Habilidades(
                              'assets/images/Vicious_Retrieval.webp', 
                              'Passiva :', 
                              'Recuperação Viciosa', 
                              'Recarga : 0s',
                              '[Faramis coleta fragmentos de alma aumentando seu poder magico]'),
                              const SizedBox(height: 10),
                              Habilidades(
                              'assets/images/Shadow_Stampede.webp', 
                              'Habilidade 1 :', 
                              'Fuga da Sombra', 
                              'Recarga : 15s',
                              '[Faramis assume uma forma fantasmagorica tornado-se impermeavel ao terreno]'),
                              const SizedBox(height: 10),
                              Habilidades(
                              'assets/images/Ghost_Bursters.webp', 
                              'Habilidade 2 :', 
                              'Explosão Fantasma', 
                              'Recarga : 7s',
                              '[Faramis Atira uma explosão de energia necromante que se espalha entre os alvos]'),
                              const SizedBox(height: 10),
                              Habilidades('assets/images/Cult_Altar.webp', 
                              'Ultimate :', 
                              'Altar do Culto', 
                              'Recarga : 80s',
                              '[Faramis conjura ao seu redor um altar de imortalidade temporaria para ele e seus aliados]'),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Habilidades extends StatelessWidget {
  final String imagem;
  final String tipoHabilidade;
  final String nomeHabilidade;
  final String tempoRecarga;
  final String descricao;

  const Habilidades(
    this.imagem,
    this.tipoHabilidade,
    this.nomeHabilidade,
    this.tempoRecarga,
    this.descricao,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagem),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Text(
          tipoHabilidade,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w200,
          ),
        ),
        const SizedBox(width: 15),
        Text(
          nomeHabilidade,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(width: 15),
        Text(
          tempoRecarga,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(width: 30,),
        Text(
          descricao,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}

class Atributo extends StatelessWidget {
  final Color? color;
  final IconData? icon;
  final String atributo;
  final double valor;

  const Atributo(
    this.color,
    this.icon,
    this.atributo,
    this.valor,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: color),
            const SizedBox(width: 10),
            Text(
              '$valor',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            atributo,
            style: const TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w300,
              color: Colors.white
            ),
          ),
        ),
      ],
    );
  }
}
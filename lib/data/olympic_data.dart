import 'package:flutter/material.dart';
import 'package:olimpo/models/modality.dart';
import 'package:olimpo/models/athlete.dart';

const listModality = [
  Modality(
    id: 's1',
    title: 'Skate',
    imageUrl: 'https://i.metroimg.com/kVn78WOv_ip_zVfPpl2qLN0FjEUUu71_ajfv1CGszS8/w:1200/q:85/f:webp/plain/2024/07/28093618/rayssa-leal-1-1.jpg',
    color: Colors.red,
    history: 'Surgiu na Califórnia nos anos 1950 como "sidewalk surfing". Evoluiu das pranchinhas de madeira para os shapes modernos. Estreou nas Olimpíadas em Tóquio 2020.',
    rules: 'O skate nas Olimpíadas é dividido em duas modalidades: Street e Park. No Street, os atletas performam em obstáculos urbanos como corrimões e escadas. No Park, competem em piscinas com transições e bowls. As notas são baseadas na dificuldade, execução, originalidade e consistência dos truques.',
  ),
  Modality(
    id: 's2',
    title: 'Futebol',
    color: Colors.blue,
    imageUrl: 'https://s2-valor.glbimg.com/nVH4-az82Td8CycdAWOEAaLnAzc=/0x0:5454x3636/888x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_63b422c2caee4269b8b34177e8876b93/internal_photos/bs/2024/c/1/AgEK2QSIy5UsUrrpIcDw/ap24207689860273-1-.jpg',
    history: 'Criado na Inglaterra em 1863 com a fundação da Football Association. Espalhou-se globalmente tornando-se o esporte mais popular do mundo. Está nas Olimpíadas desde 1900.',
    rules: 'Jogo disputado entre duas equipes de 11 jogadores. A partida dura 90 minutos, divididos em dois tempos de 45 minutos. O objetivo é marcar gols colocando a bola na rede adversária. São permitidos toques com os pés, cabeça e tronco, sendo proibido o uso das mãos (exceto pelo goleiro em sua área).',
  ),
  Modality(
    id: 's3',
    title: 'Ginástica Artística',
    color: Colors.purple,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Gym_combination_2.JPG/500px-Gym_combination_2.JPG',
    history: 'Originária da Grécia Antiga, foi revitalizada na Alemanha no século XIX. Friedrich Jahn criou os primeiros aparelhos. Está presente desde a primeira Olimpíada moderna em 1896.',
    rules: 'Dividida em provas masculinas (solo, cavalo com alças, argolas, salto, barras paralelas e barra fixa) e femininas (solo, salto, barras assimétricas e trave). Os atletas são avaliados por dificuldade, execução e artística. Cada rotina deve incluir elementos obrigatórios específicos de cada aparelho.',
  ),
  Modality(
    id: 's4',
    title: 'Judô',
    color: Colors.green,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Haraigoshi.jpg/500px-Haraigoshi.jpg',
    history: 'Criado no Japão em 1882 por Jigoro Kano. Derivou do jiu-jitsu tradicional. Tornou-se esporte olímpico em Tóquio 1964, primeiro como país-sede.',
    rules: 'Luta japonesa onde o objetivo é derrubar o oponente com as costas no tatame (ippon) ou imobilizá-lo por 20 segundos. Também é possível vencer por pontos (waza-ari). São proibidos golpes abaixo da cintura, torções de dedos e golpes no rosto. A luta dura 4 minutos para homens e mulheres.',
  ),
  Modality(
    id: 's5',
    title: 'Surfe',
    color: Colors.orange,
    imageUrl: 'https://s2-ge.glbimg.com/Gbbuhs3EPPx832INCR3WxIO6b2M=/0x0:6561x4361/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2024/A/9/kwsnF9SKazYl8hsPJJJA/000-367c7gl.jpg',
    history: 'Praticado há séculos no Havaí como parte da cultura polinésia. Duke Kahanamoku popularizou o esporte globalmente. Estreou oficialmente nos Jogos de Tóquio 2020.',
    rules: 'Os atletas têm 30 minutos para pegar o máximo de ondas, sendo consideradas as duas melhores notas. As ondas são avaliadas por critérios como comprometimento, grau de dificuldade, manobras inovadoras, combinações, velocidade, potência e fluidez. Cada onda pode receber até 10 pontos.',
  ),
  Modality(
    id: 's6',
    title: 'Vôlei',
    color: Colors.amber,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Europei_di_pallavolo_2005_-_Italia-Russia.jpg/500px-Europei_di_pallavolo_2005_-_Italia-Russia.jpg',
    history: 'Criado em 1895 por William G. Morgan nos EUA como alternativa ao basquete. Chamado inicialmente de "mintonette". Tornou-se olímpico em Tóquio 1964.',
    rules: 'Disputado entre duas equipes de 6 jogadores em uma quadra dividida por uma rede. O objetivo é fazer a bola tocar o chão da quadra adversária. Cada set vai até 25 pontos (com diferença de 2 pontos) e a partida é melhor de 5 sets. Cada jogada começa com um saque.',
  ),
  Modality(
    id: 's7',
    title: 'Basquete',
    color: Colors.teal,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/LeBron_James_Layup_%28Cleveland_vs_Brooklyn_2018%29.jpg/500px-LeBron_James_Layup_%28Cleveland_vs_Brooklyn_2018%29.jpg',
    history: 'Inventado em 1891 por James Naismith nos EUA. Usava cestas de pêssego como alvo. Tornou-se esporte olímpico em Berlim 1936. A NBA revolucionou o esporte nos anos 1980.',
    rules: 'Jogo entre duas equipes de 5 jogadores. A partida tem 4 períodos de 10 minutos. Cestas valem 2 ou 3 pontos (quando arremessadas de fora da linha de 3 pontos) e 1 ponto em lances livres. Os jogadores não podem dar mais de dois passos sem quicar a bola (andar).',
  ),
  Modality(
    id: 's8',
    title: 'Taekwondo',
    color: Colors.lightBlue,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Taekwondo_Fight_01.jpg/330px-Taekwondo_Fight_01.jpg',
    history: 'Arte marcial coreana desenvolvida após a Segunda Guerra. Unificou estilos tradicionais coreanos. Tornou-se esporte olímpico oficial em Sydney 2000.',
    rules: 'Arte marcial coreana onde são permitidos chutes e socos. Chutes na cabeça valem 3-4 pontos, chutes no tronco valem 2 pontos e socos no tronco valem 1 ponto. A luta tem 3 rounds de 2 minutos cada. Vence quem tiver mais pontos ao final ou por nocaute.',
  ),
  Modality(
    id: 's9',
    title: 'Ciclismo',
    color: Colors.lightGreen,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Henninger_Turm-2005-Finale-450m_vor_Ziel.jpg/330px-Henninger_Turm-2005-Finale-450m_vor_Ziel.jpg',
    history: 'Surgiu com a invenção da bicicleta no século XIX. A primeira corrida foi em 1868 em Paris. Está presente desde a primeira Olimpíada moderna em 1896.',
    rules: 'Inclui várias modalidades como estrada, pista, mountain bike e BMX. Nas provas de estrada, vence o primeiro a cruzar a linha de chegada. No mountain bike, percorre-se um circuito com obstáculos naturais. No BMX, corridas em pistas curtas com saltos e curvas fechadas.',
  ),
  Modality(
    id: 's10',
    title: 'Esgrima',
    color: Colors.pink,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/0408_USA_Olympic_fencing.jpg/500px-0408_USA_Olympic_fencing.jpg',
    history: 'Uma das mais antigas artes marciais, praticada desde o Egito Antigo. Modernizada na Europa como esporte de duelo. Presente desde os primeiros Jogos de 1896.',
    rules: 'Disputada com três armas: florete, espada e sabre. No florete e sabre, há convenção de ataque e defesa. Na espada, ambos os esgrimistas podem marcar ponto simultaneamente. Vence quem atingir 15 pontos primeiro (ou 5 em algumas fases) em até 3 períodos de 3 minutos.',
  ),
  Modality(
    id: 's11',
    title: 'Hipismo',
    color: Colors.brown,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Lafouge_gabelou_01.JPG',
    history: 'Praticado desde a Grécia Antiga como treino militar. Modernizado como esporte na Europa do século XIX. Está no programa olímpico desde Paris 1900.',
    rules: 'Dividido em três modalidades: adestramento, CCE (Concurso Completo de Equitação) e saltos. No adestramento, avalia-se a harmonia entre cavalo e cavaleiro. No CCE, combina adestramento, cross-country e saltos. Nos saltos, vence quem completar o percurso com menos faltas no menor tempo.',
  ),
  Modality(
    id: 's12',
    title: 'Atletismo',
    color: Colors.indigo,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Athletics_competitions.jpg/500px-Athletics_competitions.jpg',
    history: 'Considerado o esporte mais antigo, remonta aos Jogos da Grécia Antiga em 776 a.C. Corridas, saltos e arremessos eram as provas originais. Base dos Jogos Olímpicos modernos.',
    rules: 'Compreende corridas (velocidade, meio-fundo, fundo, barreiras), saltos (altura, distância, triplo, vara), arremessos (peso, disco, dardo, martelo) e provas combinadas. Cada prova tem regras específicas sobre largadas, faltas e medições. Vence quem obtiver melhor marca ou tempo.',
  ),
  Modality(
    id: 's13',
    title: 'Boxe',
    color: Colors.cyan,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Boxing080905_photoshop.jpg/500px-Boxing080905_photoshop.jpg',
    history: 'Praticado desde a Antiguidade, com registros na Suméria de 3000 a.C. Modernizado com as Regras de Queensberry em 1867. Está nas Olimpíadas desde St. Louis 1904.',
    rules: 'Luta com socos usando luvas. A partida tem 3 rounds de 3 minutos cada. São permitidos socos acima da cintura e na frente do corpo. São proibidos golpes na nuca, abaixo da cintura e agarramentos. A vitória pode ser por nocaute, decisão dos juízes ou desistência.',
  ),
  Modality(
    id: 's14',
    title: 'Natação',
    color: Colors.deepPurple,
    imageUrl: 'https://ichef.bbci.co.uk/ace/ws/640/cpsprodpb/94bf/live/23ca2720-503e-11ef-8f0f-0577398c3339.jpg.webp',
    history: 'Praticada desde a Pré-história, competições organizadas começaram no século XIX. A Federação Internacional foi fundada em 1908. Está presente desde a primeira Olimpíada moderna.',
    rules: 'Inclui quatro estilos: livre, costas, peito e borboleta, além de medley. As provas variam de 50m a 1500m. Cada estilo tem regras específicas para viradas, saídas e técnicas. Vence o nadador que tocar a plataforma eletrônica no menor tempo. São desclassificados os que cometerem saídas falsas.',
  ),
];

const listAthlete = [
  Athlete(
  id: 'a1', 
  title: 'Sarah Menezes', 
  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Sarah_Menezes_2015.jpg/800px-Sarah_Menezes_2015.jpg', 
  biography: 'Sarah Menezes, nascida em Teresina em 1989, entrou para a história do esporte brasileiro ao conquistar a medalha de ouro no judô na categoria até 48 kg nos Jogos Olímpicos de Londres 2012, tornando-se a primeira mulher do país a alcançar tal feito na modalidade. Revelada em projetos sociais no Piauí, ela consolidou sua carreira com títulos em campeonatos mundiais e pan-americanos, tornando-se referência de superação e inspiração para jovens atletas, especialmente mulheres no judô.', 
  honors: '- Olimpíadas de Londres 2012 - Medalha de Ouro\n- Mundial de Judô (Rio de Janeiro 2013) - Medalha de Prata\n- Mundial de Judô (Paris 2011) - Medalha de Bronze\n- Jogos Panamericanos de Guadalajara 2011 - Medalha de Ouro',
  )
];
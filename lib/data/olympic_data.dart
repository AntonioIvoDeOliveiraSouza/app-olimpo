import 'package:flutter/material.dart';
import 'package:olimpo/models/modality.dart';
import 'package:olimpo/models/athlete.dart';

const listModality = [
  Modality(
    id: 's1',
    title: 'Skate',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/3e/Rayssa_Leal_durante_a_prova_em_T%C3%B3quio.jpg',
    color: Colors.red,
    history: 'Surgiu na Califórnia nos anos 1950 como "sidewalk surfing". Evoluiu das pranchinhas de madeira para os shapes modernos. Estreou nas Olimpíadas em Tóquio 2020.',
    rules: 'O skate nas Olimpíadas é dividido em duas modalidades: Street e Park. No Street, os atletas performam em obstáculos urbanos como corrimões e escadas. No Park, competem em piscinas com transições e bowls. As notas são baseadas na dificuldade, execução, originalidade e consistência dos truques.',
  ),
  Modality(
    id: 's2',
    title: 'Futebol',
    color: Colors.blue,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/d/d2/Marta_%26_Alex_Greenwood.jpg',
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
    imageUrl: 'https://upload.wikimedia.org/wikipedia/pt/1/1a/Gabriel_Medina_por_Jerome_Brouillet_%28The_Golden_Moment%29.jpg',
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
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/9/98/Competitions_in_judo_at_the_2016_Olympics_06.jpg', 
    biography: 'Sarah Menezes, nascida em Teresina em 1989, entrou para a história do esporte brasileiro ao conquistar a medalha de ouro no judô na categoria até 48 kg nos Jogos Olímpicos de Londres 2012, tornando-se a primeira mulher do país a alcançar tal feito na modalidade. Revelada em projetos sociais no Piauí, ela consolidou sua carreira com títulos em campeonatos mundiais e pan-americanos, tornando-se referência de superação e inspiração para jovens atletas, especialmente mulheres no judô.', 
    honors: '- Olimpíadas de Londres 2012 - Medalha de Ouro\n- Mundial de Judô (Rio de Janeiro 2013) - Medalha de Prata\n- Mundial de Judô (Paris 2011) - Medalha de Bronze\n- Jogos Panamericanos de Guadalajara 2011 - Medalha de Ouro',
  ),
  Athlete(
    id: 'a2',
    title: 'Ítalo Ferreira',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/60/%C3%8Dtalo_Ferreira_durante_a_competi%C3%A7%C3%A3o.jpg',
    biography: 'Ítalo Ferreira, nascido em Baía Formosa, Rio Grande do Norte, em 1994, tornou-se uma referência do surfe brasileiro ao conquistar a medalha de ouro nos Jogos Olímpicos de Tóquio 2020, primeira edição do surfe como esporte olímpico. Revelado nas praias potiguares e campeão do World Surf League em 2019, Ítalo é conhecido por seu estilo agressivo e aéreo, inspirando uma nova geração de surfistas brasileiros e colocando o país no mapa mundial do surfe competitivo.',
    honors: '- Olimpíadas de Tóquio 2020 - Medalha de Ouro\n- Circuito Mundial de Surfe (WSL 2019) - Medalha de Ouro',
  ),
  Athlete(
    id: 'a3', 
    title: 'Rebeca Andrade', 
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Rebeca_Andrade_Rio_2016.jpg/800px-Rebeca_Andrade_Rio_2016.jpg', 
    biography: 'Rebeca Andrade, nascida em Guarulhos, São Paulo, em 1999, é uma das maiores ginastas brasileiras da história. Especialista em salto e solo, conquistou a medalha de prata no individual geral e o ouro no salto nos Jogos Olímpicos de Tóquio 2020, tornando-se a primeira ginasta do Brasil a ganhar uma medalha olímpica no individual geral. Com conquistas em campeonatos mundiais e Pan-Americanos, Rebeca é referência de superação, dedicação e inspiração para jovens atletas no Brasil e no mundo.', 
    honors: '- Olimpíadas de Paris 2024 - Medalha de Ouro:Solo\n- Olimpíadas de Paris 2024 - Medalha de Prata:Salto \n- Olimpíadas de Tóquio 2020 - Medalha de Ouro:Salto\n- Olimpíadas de Tóquio 2020 - Medalha de Prata:Individual'
  ),
  Athlete(
    id: 'a4',
    title: 'César Cielo',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/61/Cesar_Cielo_in_2012_Summer_Olympics.jpg', 
    biography: 'César Cielo, nascido em Santa Bárbara d`Oeste, São Paulo, em 1987, é o maior nadador brasileiro da história em provas de velocidade. Especialista em 50m e 100m livre, conquistou três medalhas olímpicas e estabeleceu recordes mundiais, tornando-se referência mundial no sprint da natação. Com títulos em Campeonatos Mundiais, Jogos Pan-Americanos e participação em quatro edições olímpicas, Cielo é ícone do esporte brasileiro e inspiração para gerações de nadadores.', 
    honors: '- Olimpíadas de Londres 2012 - Medalha de Ouro:50m livre\n- Olimpíadas de Pequim 2008 - Medalha de Bronze:100m livre\n- Olimpíadas de Pequim 2008 - Medalha de Bronze:50m livre',
  ),
  Athlete(
    id: 'a5', 
    title: 'Daniel Dias', 
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/c/c2/Daniel_Dias_Rio2016b.jpg', 
    biography: 'Daniel Dias, nascido em Campinas, São Paulo, em 1988, é considerado um dos maiores atletas paralímpicos do Brasil e do mundo. Nascido com má-formação congênita nos membros superiores, Daniel transformou a natação em sua paixão e carreira, conquistando dezenas de medalhas em Jogos Paralímpicos e Campeonatos Mundiais. Reconhecido por sua força, técnica e superação, ele se tornou inspiração para atletas com deficiência e referência da excelência esportiva paralímpica.', 
    honors: '- Paralimpíadas de Pequim 2008 - Medalhas de Ouro: 50m livre, 100m livre, 200m livre, 50m borboleta\n- Paralimpíadas de Londres 2012 - Medalhas de Ouro: 50m livre, 200m medley'
  ),
  Athlete(
    id: 'a6',
    title: 'Natália Falavigna',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/04/Natalia_Falavigna.jpg',
    biography: 'Natália Falavigna, nascida em Curitiba, Paraná, em 1984, é uma das pioneiras do taekwondo brasileiro e primeira mulher do país a conquistar uma medalha olímpica na modalidade. Ela ganhou o bronze nos Jogos Olímpicos de Pequim 2008 na categoria peso pesado feminino, consolidando-se como referência do esporte no Brasil. Ao longo da carreira, Natália também conquistou títulos em Campeonatos Mundiais, Jogos Pan-Americanos e Sul-Americanos, inspirando gerações de atletas de taekwondo e elevando o nível da modalidade no país.',
    honors: '- Olimpíadas de Pequim 2008 - Medalha de Bronze: Peso Pesado\n- Panamericano do Rio 2007 - Medalha de Prata\n- Campeonato Mundial de Taekwondo de Madrid 2005 - Medalha de Ouro',
  ),
  Athlete(
    id: 'a7', 
    title: 'Robson Conceição', 
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/a/a7/Rio_2016_Olympic_Games_-_Medal_Ceremonies_%2828928697962%29.png', 
    biography: 'Robson Conceição, nascido em Salvador, Bahia, em 1988, é o primeiro e único boxeador brasileiro a conquistar uma medalha de ouro olímpica. Ele brilhou nos Jogos Olímpicos Rio 2016 na categoria peso leve (60 kg), garantindo o ouro em casa e marcando a história do boxe brasileiro. Revelado em torneios nacionais e sul-americanos, Robson também conquistou medalhas em campeonatos pan-americanos e mundiais, tornando-se referência de disciplina, técnica e superação no esporte.', 
    honors: '- Olimpíadas de Rio 2016 - Medalha de Ouro: Peso Livre\n- Panamericano de Guadalajara 2011 - Medalha de Ouro\n- Panamericano de Toronto 2015 - Medalha de Ouro',
  ),
  Athlete(
    id: 'a8',
    title: 'Rayssa Leal',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Rayssa_Leal_ap%C3%B3s_receber_a_medalha.jpg/1024px-Rayssa_Leal_ap%C3%B3s_receber_a_medalha.jpg',
    biography: 'Rayssa Leal, nascida em Imperatriz, Maranhão, em 2008, é uma das maiores revelações do skate mundial e referência do esporte brasileiro nas Olimpíadas. Conhecida como a “Fadinha do Skate” desde os 7 anos, Rayssa conquistou medalhas em competições internacionais de skate street, incluindo os Jogos Olímpicos de Tóquio 2020, onde ganhou a medalha de prata, tornando-se a atleta brasileira mais jovem a subir ao pódio olímpico. Com vitórias em campeonatos mundiais e eventos da World Skate, Rayssa inspira uma nova geração de skatistas e consolidou o Brasil como potência no skate feminino.',
    honors: '- Olimpíadas de Paris 2024 - Medalha de Bronze\n- Panamericano de Santiago 2023 - Medalha de Ouro\n- Olimpíadas de Tóquio 2020 - Medalha de Prata\n',
  ),
  Athlete(
    id: 'a9',
    title: 'Neymar Jr.',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/f/ff/Brasil_conquista_primeiro_ouro_ol%C3%ADmpico_nos_penaltis_1039248-20082016-_mg_0015.jpg',
    biography: 'Neymar da Silva Santos Júnior, nascido em Mogi das Cruzes, São Paulo, em 1992, é um dos maiores nomes do futebol brasileiro contemporâneo e figura central nas conquistas olímpicas da seleção. Sua participação nos Jogos Olímpicos marcou a trajetória do futebol brasileiro: após conquistar a medalha de prata em Londres 2012, liderou a equipe rumo ao inédito ouro olímpico nos Jogos do Rio 2016, em pleno Maracanã, convertendo o pênalti decisivo contra a Alemanha e entrando para a história.',
    honors: '- Olimpíadas de Londres 2012 - Medalha de Prata\n- Olimpíadas do Rio 2016 - Medalha de Ouro'
  ),
  Athlete(
    id: 'a10',
    title: 'Vanderlei Cordeiro',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/35/Vanderlei-Cordeiro-de-Lima-ABr-3.jpg',
    biography: 'Vanderlei Cordeiro de Lima, nascido em Cruzeiro do Oeste, Paraná, em 1969, é um dos maiores nomes do atletismo brasileiro e símbolo de espírito olímpico. Especialista em maratonas, conquistou a medalha de bronze nos Jogos Olímpicos de Atenas 2004, em uma das histórias mais marcantes do esporte: liderava a prova quando foi interrompido por um invasor, mas ainda assim retomou a corrida e terminou em terceiro lugar, sendo aplaudido mundialmente pela coragem e dignidade. Pelo gesto, recebeu a raríssima Medalha Pierre de Coubertin, concedida pelo Comitê Olímpico Internacional, tornando-se um ícone de fair play. Em 2016, foi o escolhido para acender a pira olímpica na abertura dos Jogos do Rio, coroando sua trajetória.',
    honors: '- Olimpíadas de Atenas 2004 - Medalha Pierre de Coubertin \n- Olimpíadas de Atenas 2004 - Medalha de Bronze\n- Panamericano de Santo Domingo 2003 - Medalha de Ouro'
  ),
  Athlete(
    id: 'a11',
    title: 'Yane Marques',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/f/f2/Yane_Marques_London_2012.jpg',
    biography: 'Yane Marques, nascida em Afogados da Ingazeira, Pernambuco, em 1984, é uma das maiores representantes brasileiras do pentatlo moderno. Com força, técnica e resistência, conquistou a medalha de bronze nos Jogos Olímpicos de Londres 2012, tornando-se a primeira mulher brasileira a conquistar uma medalha olímpica no pentatlo moderno. Ao longo da carreira, Yane acumulou títulos em Jogos Pan-Americanos e campeonatos mundiais, consolidando-se como referência do esporte feminino no Brasil.',
    honors: '- Olimpíadas de Londres 2012 - Medalha de Bronze\n- Panamericano de Toronto 2015 - Medalha de Ouro\n- Panamericano do Rio 2007 - Medalha de Ouro'
  ),
  Athlete(
    id: 'a12',
    title: 'Marta',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/f/ff/Futebol_feminino_ol%C3%ADmpico-_Brasil_e_Su%C3%A9cia_no_Maracan%C3%A3_%2829033096805%29.jpg',
    biography: 'Marta Vieira da Silva, nascida em Dois Riachos, Alagoas, em 1986, é considerada uma das maiores jogadoras de futebol de todos os tempos. Referência mundial, conquistou inúmeros títulos individuais e coletivos, incluindo quatro medalhas olímpicas com a seleção brasileira. Conhecida por sua habilidade, visão de jogo e faro de gol, Marta ajudou a colocar o futebol feminino brasileiro em destaque nos palcos internacionais, sendo inspiração para gerações de atletas.',
    honors: '- Olimpíadas de Atenas 2004 - Medalha de Prata\n- Olimpíadas de Pequim 2008 - Medalha de Prata\n- Olimpíadas de Paris 2024 - Medalha de Prata'
  )
];
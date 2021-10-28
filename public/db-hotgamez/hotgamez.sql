-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2021 at 10:30 PM
-- Server version: 5.7.33
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotgamez`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `idQuestion` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `idUser` bigint(20) UNSIGNED NOT NULL,
  `idGame` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `platform` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `developer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `franchise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memory` int(11) DEFAULT NULL,
  `idIntelProcessor` bigint(20) UNSIGNED DEFAULT NULL,
  `idAmdProcessor` bigint(20) UNSIGNED DEFAULT NULL,
  `idNvidiaGraphicsCard` bigint(20) UNSIGNED DEFAULT NULL,
  `idAmdGraphicsCard` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `game`, `description`, `platform`, `publisher`, `developer`, `releaseDate`, `franchise`, `memory`, `idIntelProcessor`, `idAmdProcessor`, `idNvidiaGraphicsCard`, `idAmdGraphicsCard`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Need for Speed™ Payback', 'Need for Speed™ Payback - Издание Deluxe дает вам преимущество над соперниками.\r\n\r\n\r\nВыделитесь из толпы, получив эксклюзивные возможности кастомизации, скидки в игре, бонусы к репутации и пять поставок в качестве приветственного подарка.\r\n\r\n\r\n\r\nТакже в комплекте: выходящий в скором времени набор сюжетных заданий и Платиновый набор машин Need for Speed™ Payback с эксклюзивной† платиновой синей подсветкой.\r\n\r\n\r\n\r\nМатериалы Издания Deluxe:\r\n\r\n• Выходящий в скором времени набор сюжетных заданий\r\n\r\n• Эксклюзивный цвет нитро издания Deluxe (можно применить к 5 машинам)\r\n\r\n• Эксклюзивный номерной знак издания Deluxe\r\n• Эксклюзивный значок для списка лидеров издания Deluxe\r\n\r\n• 5 поставок\r\n\r\n• Бонус к репутации в 5%\r\n\r\n• Скидка в 10% на покупки игрового контента за игровую валюту\r\n\r\n\r\n\r\nВ состав Платинового набора машин входят:\r\n\r\n• Эксклюзивные украшения - платиновые синие дым покрышек и подсветка\r\n\r\n• Chevrolet Camaro SS 1967\r\n\r\n• Dodge Charger R/T 1969\r\n\r\n• Ford F-150 Raptor 2016\r\n\r\n• Nissan 350Z 2008\r\n\r\n• Volkswagen Golf GTI Clubsport 2016 ', '64-bit Windows 7 or later', 'Electronic Arts', 'Ghost Games', '2017-11-06', NULL, 6, 1, 11, 76, 250, NULL, NULL, NULL),
(2, 'STAR WARS™ Battlefront™ II', 'Станьте героем самых фантастических сражений вселенной «Звёздных Войн™» в «Праздничном издании» для Star Wars™ Battlefront™ II II! Издание включает в себя копию игры Star Wars Battlefront II и полную коллекцию предметов для персонализации, которые можно приобрести в игре, — от контента, доступного со дня выхода игры, и до новинок по мотивам фильма «Звёздные Войны™: СКАЙУОКЕР. ВОСХОД™»*.\r\n\r\nВ «Праздничное издание» входит:\r\n\r\n    Копия основной игры — В том числе все прошлые и будущие бесплатные обновления\r\n    Более 25 обликов героев — В том числе шесть легендарных обликов, а также по одному облику для Рей, Финна и Кайло Рена по мотивам фильма «ЗВЁЗДНЫЕ ВОЙНЫ: СКАЙУОКЕР. ВОСХОД»\r\n    Более 125 обликов бойцов и подкреплений\r\n    Более 100 эмоций и реплик героев и бойцов\r\n    Более 70 победных стоек героев и бойцов\r\n\r\n    * Контент для персонализации, который выйдет после 20 декабря 2019 г., не входит в «Праздничное издание».', '64-bit Windows 7 SP1/Windows 8.1/Windows 10', 'Electronic Arts', 'DICE', '2017-11-16', NULL, 8, 2, 14, 75, 250, NULL, NULL, NULL),
(3, 'Call of Duty®: Modern Warfare® Remastered', 'Call of Duty: Modern Warfare, одна из самых популярных игр в истории, возвращается с режимом высокой четкости, улучшенными текстурами, реалистичной физикой, расширенным динамическим диапазоном освещения и другими передовыми технологиями. Разработанная студией Infinity Ward, эта признанная публикой и критиками игра установила новые стандарты зрелищности и динамичности, войдя в золотой фонд индустрии. Теперь этот шедевр, удостоенный целого ряда наград \"Игра года\" и совершивший революцию в своем жанре, сможет оценить новое поколение игроков.\r\n\r\nПереживите заново события легендарной кампании, приняв участие в таких культовых эпизодах, с такими культовыми эпизодами, как \"Все в камуфляже\", \"Секс в самолете\" и \"Разрешение на ликвидацию экипажа\". Вместе с капитаном Джоном Прайсом, Джоном МакТавишем по кличке \"Соуп\" и другими незабываемыми персонажами вы будете сражаться с врагами в самых разных уголках мира - от Восточной Европы и российской глубинки до Ближнего Востока. Увлекательный сюжет, полный неожиданных поворотов, высокие технологии и мощнейшее оружие, координация наземных и воздушных ударов - все это прославило легендарную игру, в которой меткость и быстрота всегда были основой победы.\r\n\r\nВдобавок к этому, игра позволит вам объединиться с друзьями в классических сетевых режимах с сериями убийств, опытом, престижем и другими возможностями, изменившими облик Call of Duty. ', 'Windows 7 64-Bit or later', 'Activision', 'Raven Software', '2017-07-27', NULL, 8, 3, NULL, 75, 250, NULL, NULL, NULL),
(4, 'FIFA 22', 'Заряжено футболом. EA SPORTS™ FIFA 22 приближает игру к реальности с фундаментальными улучшениями игрового процесса и инновациями во всех режимах.\r\n\r\nЧто такое FIFA?\r\n\r\nИграйте во всемирную игру — в вашем распоряжении более 17 000 игроков, 700 команд и 90 стадионов, а также более 30 лиг со всего мира.\r\n\r\nИГРОВЫЕ РЕЖИМЫ\r\n\r\n    Режим карьеры – Воплотите свои мечты — как тренера, так и игрока — в жизнь в FIFA 22. Соберите новый клуб в FIFA, придумайте дизайн формы, создайте стиль стадиона и выбирайте — играть среди элиты или поднимать ваш клуб к славе из нижних дивизионов. Или же проверьте свое мастерство в качестве игрока в режиме карьеры: оцените новые способы прогрессировать и добиваться успеха и с головой погрузитесь в восхождение вашего игрока в футбольной иерархии.\r\n\r\n    VOLTA FOOTBALL – Верните футбол на улицы в режиме VOLTA FOOTBALL. Создайте игрока, выберите экипировку и демонстрируйте свой уличный стиль в одиночку или в команде на игровых площадках по всему миру. Новый стиль игрового процесса вознаграждает вас за ваше мастерство работы с мячом. Играйте в уникальных событиях в особых локациях в каждом сезоне и открывайте новую экипировку в новой системе сезонного прогресса, с которой вы зарабатываете опыт для всех представленных в VOLTA FOOTBALL наград, в каком бы режиме вы ни играли.\r\n\r\n    FIFA Ultimate Team — Играйте в самом популярном режиме в FIFA — FIFA Ultimate Team. Соберите состав вашей мечты из тысяч игроков со всего мира, придайте своему клубу настоящую индивидуальность, выбрав уникальные формы, эмблемы и даже внешний вид целого стадиона FUT, и участвуйте с вашей командой в матчах против ИИ или других игроков из сообщества FUT. А еще встречайте возвращение в игру самых памятных футболистов в качестве Героев FUT — они снова выйдут на поле.\r\n\r\n    Непревзойденная реалистичность— Играйте самыми знаменитыми игроками в главных турнирах мира, таких как UEFA Champions League, UEFA Europa League, новая UEFA Europa Conference League, CONMEBOL Libertadores, CONMEBOL Sudamericana, Премьер-Лига, Бундеслига и LaLiga Santander.\r\n\r\n    При игре в FIFA 22 в Steam вы сможете пользоваться контроллером DUALSHOCK 4 и геймпадом Xbox и играть в своем стиле.\r\n\r\nВ игре предусмотрена возможность необязательных внутриигровых покупок и содержится виртуальная игровая валюта, за которую можно приобретать виртуальные внутриигровые предметы, в том числе их случайную выборку.', 'Windows 10 - 64-Bit', 'Electronic Arts', 'EA Canada', '2021-10-01', NULL, 8, 4, 17, 75, 250, NULL, NULL, NULL),
(5, 'New World', 'Explore a thrilling, open-world MMO filled with danger and opportunity where you\'ll forge a new destiny for yourself as an adventurer shipwrecked on the supernatural island of Aeternum. Endless opportunities to fight, forage, and forge await you among the island\'s wilderness and ruins. Channel supernatural forces or wield deadly weapons in a classless, real-time combat system, and fight alone, with a small team, or in massed armies for PvE and PvP battles—the choices are all yours.\r\n\r\nKEY FEATURES:\r\n\r\nCARVE YOUR DESTINY\r\nFor thousands of years, Aeternum has been the source of fantastical legends—and now you’ve found it. Shipwrecked and without supplies or allies, you’ll need to make your way in a dangerous world where supernatural power has changed all the rules. In such a land, your destiny is whatever you make of it.\r\n\r\nA LAND SHAPED BY MAGIC\r\nAeternum\'s mysteries run as deep and dark as its history. Delve into the world and uncover the secret truth of the island and its millennia of strange inhabitants. As you explore Aeternum, you’ll discover beauty, danger, and opportunity at every turn. You\'ll need to use all your skills to take advantage of the island\'s bounty—and survive its horrors.\r\n\r\nSWORDS, GUNS & SORCERY\r\nArm yourself with brutal melee weapons, ranged artillery, or supernatural powers and jump into New World\'s classless, real-time action combat system. As you progress you\'ll be able to determine what you want your gameplay experience to be like—will you act as a protective shield on the front lines of battle? Will you sling spells to support your allies from a safe distance? Only you can decide.\r\n\r\nSTRONGER TOGETHER\r\nAt the core of the New World’s social features are the three factions, organizations of like-minded players and non-player characters with their own motives and schemes for the island\'s future. It is as a member of one of these factions that you\'ll wage war and claim, defend, and develop your territory. ', 'Windows® 10 64-bit', 'Amazon Games', 'Amazon Games', '2021-09-28', NULL, 8, 5, NULL, 90, 299, NULL, NULL, NULL),
(6, 'RAILROADS Online!', 'Railroads Online - Постройте и управляйте железной дорогой своей мечты в огромном открытом мире!\r\nИграйте в увлекательные сетевые многопользовательские сеансы с друзьями или создайте свой собственный одиночный режим!\r\n\r\nСтройте рельсы, переключатели, поворотные столы, эстакады и многое другое, чтобы путешествовать по лесам, самолетам, рекам и каньонам.\r\nСтройте станции, дворы и другую инфраструктуру вдоль своих маршрутов, чтобы снабжать поезда топливом, водой и песком.\r\n\r\nВзаимодействуйте с регуляторами, клапанами, тормозами, муфтами и многими другими функциями от первого лица, чтобы управлять своими транспортными средствами.\r\n\r\nТранспортируйте товары, такие как бревна, руда, уголь, нефть и другие грузы, для самых разных отраслей промышленности, чтобы заработать капитал.\r\nИнвестируйте, модернизируйте и настраивайте свой подвижной состав и маршруты.\r\n\r\nНаслаждайтесь реалистичной системой физики железных дорог: Railroads Online использует передовую систему физики UnrealEngine, чтобы добиться очень реалистичного ощущения от движения на железной дороге.\r\nПодходит как для аркад, так и для друзей-симуляторов! ', 'Windows 7', 'Stefan Kelnberger', 'Stefan Kelnberger', '2021-10-01', NULL, 4, 6, 22, 350, 350, NULL, NULL, NULL),
(7, 'World War Z: Aftermath', 'World War Z: Aftermath это сногсшибательный кооперативный зомби-шутер, вдохновленный блокбастером Paramount Pictures, и новая ступень эволюции игры World War Z, очаровавшей более 15 миллионов игроков. Оберните вспять зомби-апокалипсис в полном кроссплее между консолями и ПК. Объединитесь с тремя игроками или противостоите ордам кровожадным зомби в одиночку, проходя интенсивные сюжетные эпизоды в новых, разоренных зомби локациях по всему свету. Отбейте Ватикан в эпическом противостоянии в Риме и объедините силы с выжившими на снежном полуострове Камчатка.\r\n\r\nНовые истории мира в войне\r\nОтбейте Ватикан в эпическом противостоянии в Риме и объедините силы с выжившими на снежном полуострове Камчатка в совершенно новых сюжетных миссиях. Играйте за старых и новых персонажей в наступлении на нежить с новой брутальной системой ближнего боя, расправляйтесь с зомби уникальными приемами, перками и двуручным оружием вроде серпа и тесака. Отбивайтесь от новых чудищ, включая жаждущих плоти крыс, которые будут сеять хаос в вашей команде.\r\n\r\nНовое поколение Зомби орд\r\nИграйте в восхитительном 4K | 60fps. Сопротивляйтесь волнам все более сильных зомби в новом игровом режиме Horde Mode XL, в котором на экране будет на сотни больше зомби, чем было возможно. Horde Mode XL появится в бесплатном дополнении после запуска на PC.\r\n\r\nПродуманная прогрессия и Новая Перспектива\r\nИспытайте новую будоражащую перспективу Aftermath с захватывающим режимом от первого лица. Улучшайте 8 уникальных классов - Стрелок, Подрывник, Палач, Медик, Технарь, Истребитель, Оператор Дрона, Защитник - каждый со своими собственными способностями и стилями игры. Настраивайте свое оружие, чтобы выжить в любом испытании, и покоряйте новые ежедневные задания с модификаторами и бонусными наградами. ', 'Windows 7', 'Saber Interactive Inc', 'Saber Interactive Inc', '2021-09-21', NULL, 8, 7, 25, 62, 290, NULL, NULL, NULL),
(8, 'NBA 2K22', 'МИР БАСКЕТБОЛА\r\nNBA 2K22 подарит вам целую вселенную баскетбола. ИГРАЙТЕ на настоящих площадках NBA и WNBA против реальных команд и игроков. Соберите команду своей мечты в режиме MyTEAM и добавьте в нее звезд настоящего и легенд прошлого. Сделайте карьеру в профессиональном спорте в режиме MyCAREER и преодолейте путь к вершинам NBA. Продемонстрируйте навыки профессионального менеджмента и станьте влиятельным управленцем в режимах MyGM и MyLEAGUE. Играть в NBA 2K22 может кто угодно и где угодно.\r\nБУДЬТЕ ГОТОВЫ\r\nНовым стратегиям нападения противостоит тактика защиты: соперничество в NBA 2K22 стало еще более напряженным, чем раньше. Добавьте в свой арсенал дриблинг, броски, данки и навесные передачи, а также блоки и прессинг на другой стороне площадки.\r\nДОБРО ПОЖАЛОВАТЬ НА БОРТ\r\nОтправьтесь в морской круиз вместе с новым Neighborhood 2K22 для ПК. Создайте идеального игрока MyPLAYER и повышайте его уровень, чтобы выразить ваш уникальный стиль.\r\nКОМАНДА ВАШЕЙ МЕЧТЫ\r\nСобирайте, создавайте и побеждайте в фантастических соревнованиях вашей мечты — NBA 2K22 MyTEAM. Наберите команду из ваших любимых звезд и легенд NBA из любой эпохи и ощутите радикальную эволюцию режима MyTEAM, изучая изменения игры в каждом сезоне.\r\nНОВЫЕ СЕЗОНЫ, НОВЫЕ ОТКРЫТИЯ\r\nВ NBA 2K22 каждый сезон дарит возможность получить новые награды. Неважно, в каком режиме вы играете, и в MyTEAM, и в MyCAREER вас будут ждать новые соперники, победа над которыми принесет вам уникальные награды этого сезона. ', 'Windows 7 64-bit, Windows 8.1 64-bit or Windows 10 64-bit', '2K', 'Visual Concepts', '2021-09-10', NULL, 4, 8, 28, 32, 248, NULL, NULL, NULL),
(9, 'Hell Let Loose', 'Присоединяйтесь к постоянно развивающейся игре Hell Let Loose — хардкорному шутеру от первого лица о Второй мировой войне с эпическими битвами на 100 игроков с участием пехоты, танков, артиллерии, с динамично меняющейся линией фронта и уникальной ресурсной метаигрой, при создании которой разработчики черпали вдохновение из стратегий в реальном времени.\r\n\r\nПримите участие в самых знаковых битвах Западного фронта, в том числе Carentan, Omaha Beach, Foy и многих других. Ощутите битву на совершенно ином уровне: среди грохочущих танков, господствующих на поле боя, и линий снабжения, обеспечивающих припасами передовую, вы будете чувствовать себя винтиком в колоссальной машине сражений. Игра Hell Let Loose позволит вам окунуться в хаос войны, который дополняется полностью управляемой игроком техникой, меняющейся линией фронта и фокусировкой на управлении бойцами, которое может изменить ход сражения.\r\n\r\nБолее девяти обширных карт, созданных на основе реальных фотографий разведки и данных со спутников. Поле боя делится на большие зоны захвата, благодаря которым каждая битва двух команд из 50 человек будет уникальной и будет принимать неожиданные обороты как в черте города, так и в полях, лесах или на мостах, в зависимости от пролегания линии фронта. После захвата сектора на нем образуется один из трех типов ресурсов для вашей команды, создавая метаигру, которая будет влиять на ваш путь к победе.\r\n\r\nГрандиозный театр военных действий\r\n\r\nПримите участие в сетевом сражении 50 на 50 человек на обширных картах. Выберите одну из 14 игровых ролей среди пехоты, разведки или бронированных боевых единиц с уникальным оружием, техникой и снаряжением. Примерьте на себя роль офицера, корректировщика, пулеметчика, медика, инженера, командира танка и многие другие, чтобы ощутить все многообразие сражений Второй мировой войны.\r\n\r\nХардкорный игровой процесс\r\n\r\nВозможность принять участие более чем в девяти знаковых сражениях Второй мировой войны (например, Omaha Beach, Carentan и Foy) — основа Hell Let Loose. Исторически достоверные техника, оружие и униформа, проработанные до мелочей, и столь же жестокие и кровавые сражения, как и в то время. Все битвы проходят на обширных, выполненных в соответствии с настоящими масштабами картах реальных боевых действий, воссозданных до мелочей на Unreal Engine 4 с помощью архивных фотографий воздушной съемки и изображений со спутников.\r\n\r\nБоритесь и побеждайте вместе\r\n\r\nОсновная задача в Hell Let Loose — не возглавить список лидеров по количеству убитых врагов, а слаженно работать в команде. Взаимодействие с другими — важнейшая часть игры. Игрокам предстоит работать сообща под руководством офицеров и своего командира, чтобы уничтожать стратегические цели и контролировать поле боя. В Hell Let Loose грамотная командная работа и взаимодействие помогают не только победить, но и выжить.\r\n\r\nУникальная метаигра\r\n\r\nСражайтесь за победу, прорываясь сквозь ряды врагов на большом, меняющемся поле боя. Уникальная метаигра в захваченных зонах требует от команд постоянного принятия больших тактических решений, например о том, в какой точке держать оборону, а в какой начать атаку. Управляйте ресурсами и припасами, чтобы вызвать поддержку, бомбардировщик, новую технику, атаки с бреющего полета, а также укрепить огневые позиции или обойти противника с фланга. Грамотная стратегия — залог победы.\r\n\r\nКлючевые особенности:\r\n\r\n• Участвуйте в грандиозных сетевых многопользовательских сражениях 50 на 50.\r\n• Два различных игровых режима: Offensive и Warfare.\r\n• Девять больших карт и часто добавляемые новые зоны боевых действий: высадитесь на Omaha Beach, прорвитесь с боем сквозь Carentan и отправьтесь в ледяные леса Foy перед штурмом высоты 400.\r\n• Неповторяющиеся битвы: благодаря 99 вариантам расположения точек захвата на карте вас ждут тысячи уникальных боевых сценариев.\r\n• Выберите и освойте одну из 14 уникальных ролей:\r\nофицер, медик, пулеметчик, командир, член экипажа, снайпер и множество других.\r\n• Постоянное добавление новых карт, оружия, функций и исправление ошибок.\r\n• Реалистичная баллистика и отдача создают ощущение настоящих перестрелок.\r\n• Игровые голосовые чаты при приближении, для командования и для боевых единиц.\r\n• Жестокие сражения: тяжелое вооружение будет прошивать как врагов, так и союзников.\r\n• Непрерывное развитие игрока: покажите свой опыт, получив новую униформу, снаряжение или другие предметы персонализации при повышении уровня игрока или в определенной роли.\r\n• Управляйте различной техникой времен Второй мировой: «Тигром», «Шерманом», «Стюартом», «Пумой» и др. Список доступной техники постоянно дополняется.\r\n• Уничтожайте врагов с помощью бомбардировки и тяжелого вооружения, например противотанковыми орудиями или зенитными пушками.\r\n• Создавайте защитные сооружения для укрепления своей позиции.\r\n• Работайте сообща, чтобы прорваться сквозь отряды врагов и вырвать у них победу.\r\n• Присоединитесь к игре в роли командира, чтобы координировать действия отряда на тактической карте и использовать различные способности.', 'Windows10 64bit', 'Team17', 'Black Matter Pty Ltd', '2021-07-27', NULL, 12, 9, 34, 94, 314, NULL, NULL, NULL),
(10, 'DEATHLOOP', 'DEATHLOOP — шутер нового поколения от лионской студии Arkane, авторов серии Dishonored. DEATHLOOP — это история о двух идеальных убийцах, застрявших в загадочной временной петле. Они обречены проживать один и тот же день снова и снова. Для Кольта единственный шанс вырваться из петли — до конца дня уничтожить восемь ключевых целей. Каждый виток петли — это возможность узнать что-то о мире, опробовать новые пути и методы, получить новое оружие и способности, чтобы наконец вырваться на свободу.\r\nПопытаться. Умереть. Повторить.\r\nКаждый виток петли — это возможность что-то изменить. Используйте полученные знания, чтобы адаптировать стиль прохождения под ситуацию: можно незаметно красться к цели, лишний раз не вступая в конфронтацию, а можно устраивать громкие перестрелки. Начиная день заново, узнавайте новые секреты, собирайте сведения о целях и расширяйте свой арсенал. Сверхъестественные способности и устрашающие орудия убийства — в этом деле все средства хороши, если подобрать их сочетание с умом.\r\nСетевые Баталии Внутри Одиночной Игры\r\nЛюбите играть за героев или злодеев? В образе Кольта вы шагаете по Чёрному рифу и уничтожаете цели на пути к свободе. При этом на вас охотится Джулианна, которой может управлять другой игрок. Так что если вам охота пошалить, влезайте в стильные кроссовки Джулианны и нахально вламывайтесь в чужую игру — пусть Кольт побегает! Но если вы в такое играть не хотите, то и не надо. Просто укажите, что Джулианной всегда должен управлять компьютер.\r\nОстров Чёрный Риф — Рай Или Тюрьма?\r\nArkane славится изумительно красивыми мирами с широкой свободой действий и непредсказуемыми игровыми ситуациями. DEATHLOOP отправит вас в потрясающий ретрофутуристический мир в духе 1960-х. Чёрный риф — стильная страна чудес, но для Кольта этот остров — тюрьма, где смерть лишена смысла, а у злодеев вечный праздник.', '64 bit Windows 10 version 1909 or higher', 'Bethesda Softworks', 'Arkane Studios', '2021-09-14', NULL, 12, 10, 36, 106, 332, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_genres`
--

CREATE TABLE `game_genres` (
  `idGame` bigint(20) UNSIGNED NOT NULL,
  `idGenre` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `graphics_cards`
--

CREATE TABLE `graphics_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `graphics_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `graphics_cards`
--

INSERT INTO `graphics_cards` (`id`, `graphics_card`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'NVIDIA GeForce GT 620M', NULL, NULL, NULL),
(2, 'NVIDIA GeForce GT 540M', NULL, NULL, NULL),
(3, 'NVIDIA GeForce GT 550M', NULL, NULL, NULL),
(4, 'NVIDIA GeForce GT 630M', NULL, NULL, NULL),
(5, 'NVIDIA GeForce GT 635M', NULL, NULL, NULL),
(6, 'NVIDIA GeForce 710M', NULL, NULL, NULL),
(7, 'NVIDIA GeForce GT 630', NULL, NULL, NULL),
(8, 'NVIDIA GeForce GT 440', NULL, NULL, NULL),
(9, 'NVIDIA GeForce GT 445M', NULL, NULL, NULL),
(10, 'NVIDIA GeForce GT 555M', NULL, NULL, NULL),
(11, 'NVIDIA GeForce GT 720M', NULL, NULL, NULL),
(12, 'NVIDIA GeForce GT 640M LE', NULL, NULL, NULL),
(13, 'NVIDIA GeForce 820M', NULL, NULL, NULL),
(14, 'NVIDIA GeForce GTX 460M', NULL, NULL, NULL),
(15, 'NVIDIA GeForce GT 730M', NULL, NULL, NULL),
(16, 'NVIDIA GeForce GT 735M', NULL, NULL, NULL),
(17, 'NVIDIA GeForce 640M', NULL, NULL, NULL),
(18, 'NVIDIA GeForce GT 740M', NULL, NULL, NULL),
(19, 'NVIDIA GeForce GT 645M', NULL, NULL, NULL),
(20, 'NVIDIA GeForce 920M', NULL, NULL, NULL),
(21, 'NVIDIA GeForce GTX 560M', NULL, NULL, NULL),
(22, 'NVIDIA GeForce 920MX', NULL, NULL, NULL),
(23, 'NVIDIA GeForce MX110', NULL, NULL, NULL),
(24, 'NVIDIA GeForce 830M', NULL, NULL, NULL),
(25, 'NVIDIA GeForce GTX 470M', NULL, NULL, NULL),
(26, 'NVIDIA GeForce GT 650M', NULL, NULL, NULL),
(27, 'NVIDIA GeForce 930M', NULL, NULL, NULL),
(28, 'NVIDIA GeForce GT 640', NULL, NULL, NULL),
(29, 'NVIDIA GeForce GTX 570M', NULL, NULL, NULL),
(30, 'NVIDIA GeForce 930MX', NULL, NULL, NULL),
(31, 'NVIDIA GeForce GT 745M', NULL, NULL, NULL),
(32, 'NVIDIA GeForce GTS 450', NULL, NULL, NULL),
(33, 'NVIDIA GeForce 840M', NULL, NULL, NULL),
(34, 'NVIDIA GeForce GTX 480M', NULL, NULL, NULL),
(35, 'NVIDIA GeForce GT 750M', NULL, NULL, NULL),
(36, 'NVIDIA GeForce 940M', NULL, NULL, NULL),
(37, 'NVIDIA GeForce GTX 550 Ti', NULL, NULL, NULL),
(38, 'NVIDIA GeForce 940MX', NULL, NULL, NULL),
(39, 'NVIDIA GeForce GTX 660M', NULL, NULL, NULL),
(40, 'NVIDIA GeForce GTX 460 SE', NULL, NULL, NULL),
(41, 'NVIDIA GeForce GTX 555 OEM', NULL, NULL, NULL),
(42, 'NVIDIA GeForce GTX 560 SE', NULL, NULL, NULL),
(43, 'NVIDIA GeForce MX130', NULL, NULL, NULL),
(44, 'NVIDIA GeForce GT 645', NULL, NULL, NULL),
(45, 'NVIDIA GeForce GTX 485M', NULL, NULL, NULL),
(46, 'NVIDIA GeForce GTX 670M', NULL, NULL, NULL),
(47, 'NVIDIA GeForce GTX 650', NULL, NULL, NULL),
(48, 'NVIDIA GeForce GTX 580M', NULL, NULL, NULL),
(49, 'NVIDIA GeForce GTX 460', NULL, NULL, NULL),
(50, 'NVIDIA GeForce GTX 465', NULL, NULL, NULL),
(51, 'NVIDIA GeForce GTX 760M', NULL, NULL, NULL),
(52, 'NVIDIA GeForce GTX 460 v2', NULL, NULL, NULL),
(53, 'NVIDIA GeForce GTX 675M', NULL, NULL, NULL),
(54, 'NVIDIA GeForce GTX 670MX', NULL, NULL, NULL),
(55, 'NVIDIA GeForce GTX 765M', NULL, NULL, NULL),
(56, 'NVIDIA GeForce GTX 470', NULL, NULL, NULL),
(57, 'NVIDIA GeForce GTX 675MX', NULL, NULL, NULL),
(58, 'NVIDIA GeForce GTX 560', NULL, NULL, NULL),
(59, 'NVIDIA GeForce GTX 850M', NULL, NULL, NULL),
(60, 'NVIDIA GeForce GTX 560 Ti', NULL, NULL, NULL),
(61, 'NVIDIA GeForce GTX 950M', NULL, NULL, NULL),
(62, 'NVIDIA GeForce GTX 650 Ti', NULL, NULL, NULL),
(63, 'NVIDIA GeForce GTX 770M', NULL, NULL, NULL),
(64, 'NVIDIA GeForce GTX 750', NULL, NULL, NULL),
(65, 'NVIDIA GeForce GT 1030', NULL, NULL, NULL),
(66, 'NVIDIA GeForce MX150', NULL, NULL, NULL),
(67, 'NVIDIA GeForce MX250', NULL, NULL, NULL),
(68, 'NVIDIA GeForce GTX 480', NULL, NULL, NULL),
(69, 'NVIDIA GeForce GTX 860M', NULL, NULL, NULL),
(70, 'NVIDIA GeForce GTX 570', NULL, NULL, NULL),
(71, 'NVIDIA GeForce GTX 650 Ti Boost', NULL, NULL, NULL),
(72, 'NVIDIA GeForce GTX 560 Ti 448', NULL, NULL, NULL),
(73, 'NVIDIA GeForce GTX 680M', NULL, NULL, NULL),
(74, 'NVIDIA GeForce GTX 580', NULL, NULL, NULL),
(75, 'NVIDIA GeForce GTX 660', NULL, NULL, NULL),
(76, 'NVIDIA GeForce GTX 750 Ti', NULL, NULL, NULL),
(77, 'NVIDIA GeForce GTX 960M', NULL, NULL, NULL),
(78, 'NVIDIA GeForce MX350', NULL, NULL, NULL),
(79, 'NVIDIA GeForce GTX 680MX', NULL, NULL, NULL),
(80, 'NVIDIA GeForce GTX 870M', NULL, NULL, NULL),
(81, 'NVIDIA GeForce GTX 965M', NULL, NULL, NULL),
(82, 'NVIDIA GeForce GTX 660 Ti', NULL, NULL, NULL),
(83, 'NVIDIA GeForce GTX 780M', NULL, NULL, NULL),
(84, 'NVIDIA GeForce GTX 760', NULL, NULL, NULL),
(85, 'NVIDIA GeForce GTX 950', NULL, NULL, NULL),
(86, 'NVIDIA GeForce GTX 880M', NULL, NULL, NULL),
(87, 'NVIDIA GeForce GTX 590', NULL, NULL, NULL),
(88, 'NVIDIA GeForce GTX 1050 M', NULL, NULL, NULL),
(89, 'NVIDIA GeForce GTX 1050', NULL, NULL, NULL),
(90, 'NVIDIA GeForce GTX 670', NULL, NULL, NULL),
(91, 'NVIDIA GeForce GTX 970M', NULL, NULL, NULL),
(92, 'NVIDIA GeForce MX450', NULL, NULL, NULL),
(93, 'NVIDIA GeForce GTX 680', NULL, NULL, NULL),
(94, 'NVIDIA GeForce GTX 960', NULL, NULL, NULL),
(95, 'NVIDIA GeForce GTX 1050 Ti', NULL, NULL, NULL),
(96, 'NVIDIA GeForce GTX 1050 Ti M', NULL, NULL, NULL),
(97, 'NVIDIA GeForce GTX 770', NULL, NULL, NULL),
(98, 'NVIDIA GeForce GTX 1650 M', NULL, NULL, NULL),
(99, 'NVIDIA GeForce GTX 980M', NULL, NULL, NULL),
(100, 'NVIDIA GeForce GTX 1650 Ti M', NULL, NULL, NULL),
(101, 'NVIDIA GeForce GTX 580 ASUS MarsII', NULL, NULL, NULL),
(102, 'NVIDIA GeForce GTX 1650', NULL, NULL, NULL),
(103, 'NVIDIA GeForce GTX 780', NULL, NULL, NULL),
(104, 'NVIDIA GeForce GTX 1060 M', NULL, NULL, NULL),
(105, 'NVIDIA GeForce GTX TITAN', NULL, NULL, NULL),
(106, 'NVIDIA GeForce GTX 1060', NULL, NULL, NULL),
(107, 'NVIDIA GeForce GTX 780 Ti', NULL, NULL, NULL),
(108, 'NVIDIA GeForce GTX TITAN Black', NULL, NULL, NULL),
(109, 'NVIDIA GeForce GTX 970', NULL, NULL, NULL),
(110, 'NVIDIA GeForce RTX 3050 M', NULL, NULL, NULL),
(111, 'NVIDIA GeForce GTX 690', NULL, NULL, NULL),
(112, 'NVIDIA GeForce GTX 1650 SUPER', NULL, NULL, NULL),
(113, 'NVIDIA GeForce GTX 980', NULL, NULL, NULL),
(114, 'NVIDIA GeForce RTX 3050 Ti M', NULL, NULL, NULL),
(115, 'NVIDIA GeForce GTX 1660', NULL, NULL, NULL),
(116, 'NVIDIA GeForce GTX 1660 Ti M', NULL, NULL, NULL),
(117, 'NVIDIA GeForce GTX 1070 M', NULL, NULL, NULL),
(118, 'NVIDIA GeForce GTX 1660 SUPER', NULL, NULL, NULL),
(119, 'NVIDIA GeForce GTX 2060 M', NULL, NULL, NULL),
(120, 'NVIDIA GeForce GTX 980 Ti', NULL, NULL, NULL),
(121, 'NVIDIA GeForce GTX 1070', NULL, NULL, NULL),
(122, 'NVIDIA GeForce GTX 1660 Ti', NULL, NULL, NULL),
(123, 'NVIDIA GeForce GTX 1070 Ti', NULL, NULL, NULL),
(124, 'NVIDIA GeForce RTX 2060', NULL, NULL, NULL),
(125, 'NVIDIA GeForce RTX 2070 M', NULL, NULL, NULL),
(126, 'NVIDIA GeForce GTX TITAN Z', NULL, NULL, NULL),
(127, 'NVIDIA GeForce GTX TITAN X', NULL, NULL, NULL),
(128, 'NVIDIA GeForce RTX 2060 SUPER', NULL, NULL, NULL),
(129, 'NVIDIA GeForce GTX 1080 M', NULL, NULL, NULL),
(130, 'NVIDIA GeForce GTX 1080', NULL, NULL, NULL),
(131, 'NVIDIA GeForce RTX 3060 M', NULL, NULL, NULL),
(132, 'NVIDIA GeForce RTX 2070', NULL, NULL, NULL),
(133, 'NVIDIA GeForce RTX 2070 SUPER', NULL, NULL, NULL),
(134, 'NVIDIA GeForce RTX 2080 M', NULL, NULL, NULL),
(135, 'NVIDIA GeForce RTX 3070 M', NULL, NULL, NULL),
(136, 'NVIDIA TITAN X Pascal', NULL, NULL, NULL),
(137, 'NVIDIA GeForce GTX 1080 Ti', NULL, NULL, NULL),
(138, 'NVIDIA GeForce RTX 2080', NULL, NULL, NULL),
(139, 'NVIDIA GeForce RTX 3080 M', NULL, NULL, NULL),
(140, 'NVIDIA GeForce RTX 2080 SUPER', NULL, NULL, NULL),
(141, 'NVIDIA GeForce RTX 3060 Ti', NULL, NULL, NULL),
(142, 'NVIDIA GeForce RTX 3070', NULL, NULL, NULL),
(143, 'NVIDIA TITAN Xp', NULL, NULL, NULL),
(144, 'NVIDIA GeForce RTX 2080 Ti', NULL, NULL, NULL),
(145, 'NVIDIA TITAN RTX', NULL, NULL, NULL),
(146, 'NVIDIA GeForce RTX 3080', NULL, NULL, NULL),
(147, 'NVIDIA GeForce RTX 3090', NULL, NULL, NULL),
(148, 'AMD Radeon HD 2400 Pro', NULL, NULL, NULL),
(149, 'AMD Radeon HD 2400 XT', NULL, NULL, NULL),
(150, 'AMD Radeon HD 2600 Pro', NULL, NULL, NULL),
(151, 'AMD Radeon HD 2600 XT', NULL, NULL, NULL),
(152, 'AMD Radeon HD 2900 GT', NULL, NULL, NULL),
(153, 'AMD Radeon HD 2900 Pro', NULL, NULL, NULL),
(154, 'AMD Radeon HD 2900 XT', NULL, NULL, NULL),
(155, 'AMD Radeon HD 3430', NULL, NULL, NULL),
(156, 'AMD Radeon HD 3450', NULL, NULL, NULL),
(157, 'AMD Radeon HD 3470', NULL, NULL, NULL),
(158, 'AMD Radeon HD 3650', NULL, NULL, NULL),
(159, 'AMD Radeon HD 3690', NULL, NULL, NULL),
(160, 'AMD Radeon HD 3830', NULL, NULL, NULL),
(161, 'AMD Radeon HD 3850', NULL, NULL, NULL),
(162, 'AMD Radeon HD 3850 x2', NULL, NULL, NULL),
(163, 'AMD Radeon HD 3870', NULL, NULL, NULL),
(164, 'AMD Radeon HD 3870 x2', NULL, NULL, NULL),
(165, 'AMD Radeon HD 4350', NULL, NULL, NULL),
(166, 'AMD Radeon HD 4550', NULL, NULL, NULL),
(167, 'AMD Radeon HD 4650', NULL, NULL, NULL),
(198, 'AMD Radeon HD 4670', NULL, NULL, NULL),
(199, 'AMD Radeon HD 4670 x2', NULL, NULL, NULL),
(200, 'AMD Radeon HD 4730', NULL, NULL, NULL),
(201, 'AMD Radeon HD 4750', NULL, NULL, NULL),
(202, 'AMD Radeon HD 4770', NULL, NULL, NULL),
(203, 'AMD Radeon HD 4810', NULL, NULL, NULL),
(204, 'AMD Radeon HD 4830', NULL, NULL, NULL),
(205, 'AMD Radeon HD 4850', NULL, NULL, NULL),
(206, 'AMD Radeon HD 4850 x2', NULL, NULL, NULL),
(207, 'AMD Radeon HD 4860', NULL, NULL, NULL),
(208, 'AMD Radeon HD 4870', NULL, NULL, NULL),
(209, 'AMD Radeon HD 4870 x2', NULL, NULL, NULL),
(210, 'AMD Radeon HD 4890', NULL, NULL, NULL),
(211, 'AMD Radeon HD 5450', NULL, NULL, NULL),
(212, 'AMD Radeon HD 5530', NULL, NULL, NULL),
(213, 'AMD Radeon HD 5550', NULL, NULL, NULL),
(214, 'AMD Radeon HD 5570', NULL, NULL, NULL),
(215, 'AMD Radeon HD 5630', NULL, NULL, NULL),
(216, 'AMD Radeon HD 5670', NULL, NULL, NULL),
(217, 'AMD Radeon HD 5750', NULL, NULL, NULL),
(218, 'AMD Radeon HD 5770', NULL, NULL, NULL),
(219, 'AMD Radeon HD 5830', NULL, NULL, NULL),
(220, 'AMD Radeon HD 5850', NULL, NULL, NULL),
(221, 'AMD Radeon HD 5870', NULL, NULL, NULL),
(222, 'AMD Radeon HD 5970', NULL, NULL, NULL),
(223, 'AMD Radeon HD 6350', NULL, NULL, NULL),
(224, 'AMD Radeon HD 6390', NULL, NULL, NULL),
(225, 'AMD Radeon HD 6450', NULL, NULL, NULL),
(226, 'AMD Radeon HD 6490', NULL, NULL, NULL),
(227, 'AMD Radeon HD 6510', NULL, NULL, NULL),
(228, 'AMD Radeon HD 6570', NULL, NULL, NULL),
(229, 'AMD Radeon HD 6610', NULL, NULL, NULL),
(230, 'AMD Radeon HD 6670', NULL, NULL, NULL),
(231, 'AMD Radeon HD 6750', NULL, NULL, NULL),
(232, 'AMD Radeon HD 6770', NULL, NULL, NULL),
(233, 'AMD Radeon HD 6790', NULL, NULL, NULL),
(234, 'AMD Radeon HD 6850', NULL, NULL, NULL),
(235, 'AMD Radeon HD 6870', NULL, NULL, NULL),
(236, 'AMD Radeon HD 6870 x2', NULL, NULL, NULL),
(237, 'AMD Radeon HD 6930', NULL, NULL, NULL),
(238, 'AMD Radeon HD 6950', NULL, NULL, NULL),
(239, 'AMD Radeon HD 6970', NULL, NULL, NULL),
(240, 'AMD Radeon HD 6990', NULL, NULL, NULL),
(241, 'AMD Radeon HD 7350', NULL, NULL, NULL),
(242, 'AMD Radeon HD 7450', NULL, NULL, NULL),
(243, 'AMD Radeon HD 7470', NULL, NULL, NULL),
(244, 'AMD Radeon HD 7570', NULL, NULL, NULL),
(245, 'AMD Radeon HD 7670', NULL, NULL, NULL),
(246, 'AMD Radeon HD 7730', NULL, NULL, NULL),
(247, 'AMD Radeon HD 7750', NULL, NULL, NULL),
(248, 'AMD Radeon HD 7770', NULL, NULL, NULL),
(249, 'AMD Radeon HD 7790', NULL, NULL, NULL),
(250, 'AMD Radeon HD 7850', NULL, NULL, NULL),
(251, 'AMD Radeon HD 7870', NULL, NULL, NULL),
(252, 'AMD Radeon HD 7870 XT', NULL, NULL, NULL),
(253, 'AMD Radeon HD 7950', NULL, NULL, NULL),
(254, 'AMD Radeon HD 7970', NULL, NULL, NULL),
(255, 'AMD Radeon HD 7990', NULL, NULL, NULL),
(256, 'AMD Radeon R5 220', NULL, NULL, NULL),
(257, 'AMD Radeon R5 230', NULL, NULL, NULL),
(288, 'AMD Radeon R5 235', NULL, NULL, NULL),
(289, 'AMD Radeon R5 235X', NULL, NULL, NULL),
(290, 'AMD Radeon R7 240', NULL, NULL, NULL),
(291, 'AMD Radeon R7 250', NULL, NULL, NULL),
(292, 'AMD Radeon R7 250E', NULL, NULL, NULL),
(293, 'AMD Radeon R7 250X', NULL, NULL, NULL),
(294, 'AMD Radeon R7 260', NULL, NULL, NULL),
(295, 'AMD Radeon R7 260X', NULL, NULL, NULL),
(296, 'AMD Radeon R7 265', NULL, NULL, NULL),
(297, 'AMD Radeon R9 270', NULL, NULL, NULL),
(298, 'AMD Radeon R9 270X', NULL, NULL, NULL),
(299, 'AMD Radeon R9 280', NULL, NULL, NULL),
(300, 'AMD Radeon R9 280X', NULL, NULL, NULL),
(301, 'AMD Radeon R9 285', NULL, NULL, NULL),
(302, 'AMD Radeon R9 290', NULL, NULL, NULL),
(303, 'AMD Radeon R9 290X', NULL, NULL, NULL),
(304, 'AMD Radeon R9 295X2', NULL, NULL, NULL),
(305, 'AMD Radeon R5 330', NULL, NULL, NULL),
(306, 'AMD Radeon R5 340', NULL, NULL, NULL),
(307, 'AMD Radeon R7 340', NULL, NULL, NULL),
(308, 'AMD Radeon R7 350', NULL, NULL, NULL),
(309, 'AMD Radeon R7 360', NULL, NULL, NULL),
(310, 'AMD Radeon R9 360', NULL, NULL, NULL),
(311, 'AMD Radeon R7 370', NULL, NULL, NULL),
(312, 'AMD Radeon R9 370', NULL, NULL, NULL),
(313, 'AMD Radeon R9 370X', NULL, NULL, NULL),
(314, 'AMD Radeon R9 380', NULL, NULL, NULL),
(315, 'AMD Radeon R9 380X', NULL, NULL, NULL),
(316, 'AMD Radeon R9 390', NULL, NULL, NULL),
(317, 'AMD Radeon R9 390X', NULL, NULL, NULL),
(318, 'AMD Radeon R9 Fury', NULL, NULL, NULL),
(319, 'AMD Radeon R9 Nano', NULL, NULL, NULL),
(320, 'AMD Radeon R9 Fury X', NULL, NULL, NULL),
(321, 'AMD Radeon Pro Duo', NULL, NULL, NULL),
(322, 'AMD Radeon R5 430', NULL, NULL, NULL),
(323, 'AMD Radeon R7 435', NULL, NULL, NULL),
(324, 'AMD Radeon R7 450', NULL, NULL, NULL),
(325, 'AMD Radeon RX460', NULL, NULL, NULL),
(326, 'AMD Radeon RX470', NULL, NULL, NULL),
(327, 'AMD Radeon RX480', NULL, NULL, NULL),
(328, 'AMD Radeon RX550', NULL, NULL, NULL),
(329, 'AMD Radeon RX550X', NULL, NULL, NULL),
(330, 'AMD Radeon RX560', NULL, NULL, NULL),
(331, 'AMD Radeon RX570', NULL, NULL, NULL),
(332, 'AMD Radeon RX580', NULL, NULL, NULL),
(333, 'AMD Radeon RX590', NULL, NULL, NULL),
(334, 'AMD Radeon RX Vega 56', NULL, NULL, NULL),
(335, 'AMD Radeon RX Vega 64', NULL, NULL, NULL),
(336, 'AMD Radeon RX Vega FE Air', NULL, NULL, NULL),
(337, 'AMD Radeon RX Vega FE Liquid', NULL, NULL, NULL),
(338, 'AMD Radeon RX Vega 64 Liquid', NULL, NULL, NULL),
(339, 'AMD Radeon RX Vega VII', NULL, NULL, NULL),
(340, 'AMD Radeon RX5500', NULL, NULL, NULL),
(341, 'AMD Radeon RX5500XT', NULL, NULL, NULL),
(342, 'AMD Radeon RX5600XT', NULL, NULL, NULL),
(343, 'AMD Radeon RX5700', NULL, NULL, NULL),
(344, 'AMD Radeon RX5700XT', NULL, NULL, NULL),
(345, 'AMD Radeon RX6600XT', NULL, NULL, NULL),
(346, 'AMD Radeon RX6700XT', NULL, NULL, NULL),
(347, 'AMD Radeon RX6800', NULL, NULL, NULL),
(348, 'AMD Radeon RX6800XT', NULL, NULL, NULL),
(349, 'AMD Radeon RX6900XT', NULL, NULL, NULL),
(350, '2000MB Graphics Memory', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(34, '2014_10_12_000000_create_users_table', 1),
(35, '2014_10_12_100000_create_password_resets_table', 1),
(36, '2019_08_19_000000_create_failed_jobs_table', 1),
(37, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(38, '2021_10_25_194059_create_graphics_cards_table', 1),
(39, '2021_10_26_082313_create_processors_table', 1),
(40, '2021_10_26_082515_create_genres_table', 1),
(41, '2021_10_26_082754_create_games_table', 1),
(42, '2021_10_26_091311_create_game_genres_table', 1),
(43, '2021_10_26_092025_create_shops_table', 1),
(44, '2021_10_26_092128_create_prices_table', 1),
(45, '2021_10_26_095955_create_pc_specifications_table', 2),
(46, '2021_10_26_100433_create_favorites_table', 3),
(47, '2021_10_26_100747_create_questions_table', 4),
(48, '2021_10_26_100812_create_answers_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pc_specifications`
--

CREATE TABLE `pc_specifications` (
  `idUser` bigint(20) UNSIGNED NOT NULL,
  `idProcessor` bigint(20) UNSIGNED NOT NULL,
  `idGraphicsCard` bigint(20) UNSIGNED NOT NULL,
  `memory` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idGame` bigint(20) UNSIGNED NOT NULL,
  `idShop` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `idGame`, `idShop`, `price`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 799, 'https://store.steampowered.com/app/1262580/Need_for_Speed_Payback/', NULL, NULL),
(2, 2, 1, 1199, 'https://store.steampowered.com/app/1237950/STAR_WARS_Battlefront_II/', NULL, NULL),
(3, 3, 1, 1072, 'https://store.steampowered.com/app/393080/Call_of_Duty_Modern_Warfare_Remastered/', NULL, NULL),
(4, 4, 1, 1499, 'https://store.steampowered.com/app/1506830/FIFA_22/', NULL, NULL),
(5, 5, 1, 479, 'https://store.steampowered.com/app/1063730/New_World/', NULL, NULL),
(6, 6, 1, 967, 'https://store.steampowered.com/app/1696810/RAILROADS_Online/', NULL, NULL),
(7, 7, 1, 479, 'https://store.steampowered.com/app/699130/World_War_Z_Aftermath/', NULL, NULL),
(8, 8, 1, 1249, 'https://store.steampowered.com/app/1644960/NBA_2K22/', NULL, NULL),
(9, 9, 1, 699, 'https://store.steampowered.com/app/686810/Hell_Let_Loose/', NULL, NULL),
(10, 10, 1, 999, 'https://store.steampowered.com/app/1252330/DEATHLOOP/', NULL, NULL),
(11, 1, 2, 517, 'https://www.origin.com/rus/ru-ru/store/need-for-speed/need-for-speed-payback', NULL, NULL),
(12, 2, 2, 369, 'https://www.origin.com/rus/ru-ru/store/star-wars/star-wars-battlefront-2', NULL, NULL),
(13, 4, 2, 1292, 'https://www.origin.com/rus/ru-ru/store/fifa/fifa-22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `processors`
--

CREATE TABLE `processors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `processor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `processors`
--

INSERT INTO `processors` (`id`, `processor`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'Intel Core i3-6300 @ 3.8GHz', NULL, NULL, NULL),
(2, 'Intel Core i5-6600K @ 3.5GHz', NULL, NULL, NULL),
(3, 'Intel Core i3-3225 @ 3.3GHz', NULL, NULL, NULL),
(4, 'Intel Core i3-6100 @ 3.7GHz', NULL, NULL, NULL),
(5, 'Intel Core i5-2400 @ 3.1GHz', NULL, NULL, NULL),
(6, 'Intel Core i3', NULL, NULL, NULL),
(7, 'Intel Core i3-3220 @ 3.3GHz', NULL, NULL, NULL),
(8, 'Intel Core i3-2100 @ 3.1GHz', NULL, NULL, NULL),
(9, 'Intel Core i5-6600 @ 3.3GHz', NULL, NULL, NULL),
(10, 'Intel Core i5-8400 @ 2.8GHz', NULL, NULL, NULL),
(11, 'AMD FX-8150 @ 3.6GHz', NULL, NULL, NULL),
(12, 'Intel Core i5-4690K @ 3.5GHz', NULL, NULL, NULL),
(13, 'AMD FX-8350 @ 4.0GHz', NULL, NULL, NULL),
(14, 'AMD FX-6350 @ 3.9GHz', NULL, NULL, NULL),
(16, 'Intel Core i7-6700 @ 3.4GHz', NULL, NULL, NULL),
(17, 'AMD Athlon X4 880K @ 4.0GHz', NULL, NULL, NULL),
(18, 'Intel Core i5-3550 @ 3.4GHz', NULL, NULL, NULL),
(20, 'Intel Core i7-2600K @ 3.4GHz', NULL, NULL, NULL),
(21, 'AMD Ryzen 5 1400 @ 3.2GHz', NULL, NULL, NULL),
(22, 'AMD Ryzen 3', NULL, NULL, NULL),
(23, 'AMD Ryzen 5', NULL, NULL, NULL),
(24, 'Intel Core i5', NULL, NULL, NULL),
(25, 'AMD A10-5700 @ 3.4GHz', NULL, NULL, NULL),
(26, 'AMD Ryzen 5 2400G @ 3.6GHz', NULL, NULL, NULL),
(27, 'Intel Core i7-3970X @ 3.5GHz', NULL, NULL, NULL),
(28, 'AMD FX-4100 @ 3.6GHz', NULL, NULL, NULL),
(29, 'Intel Core i5-4430 @ 3.0GHz', NULL, NULL, NULL),
(30, 'AMD FX-8370 @ 4.0GHz', NULL, NULL, NULL),
(34, 'AMD Ryzen 3 1300X @ 3.5 GHz', NULL, NULL, NULL),
(35, 'AMD Ryzen 5 2600X @ 3.6GHz', NULL, NULL, NULL),
(36, 'AMD Ryzen 5 1600 @ 3.2GHz', NULL, NULL, NULL),
(37, 'Intel Core i7-9700K @ 3.6 GHz', NULL, NULL, NULL),
(38, 'AMD Ryzen 7 2700X @ 3.7GHz', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `isAnswered` tinyint(4) NOT NULL DEFAULT '0',
  `idUser` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `shop`, `created_at`, `updated_at`) VALUES
(1, 'Steam', NULL, NULL),
(2, 'Origin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_idquestion_foreign` (`idQuestion`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD KEY `favorites_iduser_foreign` (`idUser`),
  ADD KEY `favorites_idgame_foreign` (`idGame`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `games_idamdgraphicscard_foreign` (`idAmdGraphicsCard`),
  ADD KEY `games_idamdprocessor_foreign` (`idAmdProcessor`),
  ADD KEY `games_idnvidiagraphicscard_foreign` (`idNvidiaGraphicsCard`),
  ADD KEY `games_idintelprocessor_foreign` (`idIntelProcessor`);

--
-- Indexes for table `game_genres`
--
ALTER TABLE `game_genres`
  ADD KEY `game_genres_idgame_foreign` (`idGame`),
  ADD KEY `game_genres_idgenre_foreign` (`idGenre`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genre` (`genre`);

--
-- Indexes for table `graphics_cards`
--
ALTER TABLE `graphics_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `graphics_card` (`graphics_card`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pc_specifications`
--
ALTER TABLE `pc_specifications`
  ADD KEY `pc_specifications_iduser_foreign` (`idUser`),
  ADD KEY `pc_specifications_idprocessor_foreign` (`idProcessor`),
  ADD KEY `pc_specifications_idgraphicscard_foreign` (`idGraphicsCard`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prices_idgame_foreign` (`idGame`),
  ADD KEY `prices_idshop_foreign` (`idShop`);

--
-- Indexes for table `processors`
--
ALTER TABLE `processors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `processor` (`processor`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_iduser_foreign` (`idUser`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `graphics_cards`
--
ALTER TABLE `graphics_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `processors`
--
ALTER TABLE `processors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_idquestion_foreign` FOREIGN KEY (`idQuestion`) REFERENCES `questions` (`id`);

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_idgame_foreign` FOREIGN KEY (`idGame`) REFERENCES `games` (`id`),
  ADD CONSTRAINT `favorites_iduser_foreign` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_idamdgraphicscard_foreign` FOREIGN KEY (`idAmdGraphicsCard`) REFERENCES `graphics_cards` (`id`),
  ADD CONSTRAINT `games_idamdprocessor_foreign` FOREIGN KEY (`idAmdProcessor`) REFERENCES `processors` (`id`),
  ADD CONSTRAINT `games_idintelprocessor_foreign` FOREIGN KEY (`idIntelProcessor`) REFERENCES `processors` (`id`),
  ADD CONSTRAINT `games_idnvidiagraphicscard_foreign` FOREIGN KEY (`idNvidiaGraphicsCard`) REFERENCES `graphics_cards` (`id`);

--
-- Constraints for table `game_genres`
--
ALTER TABLE `game_genres`
  ADD CONSTRAINT `game_genres_idgame_foreign` FOREIGN KEY (`idGame`) REFERENCES `games` (`id`),
  ADD CONSTRAINT `game_genres_idgenre_foreign` FOREIGN KEY (`idGenre`) REFERENCES `genres` (`id`);

--
-- Constraints for table `pc_specifications`
--
ALTER TABLE `pc_specifications`
  ADD CONSTRAINT `pc_specifications_idgraphicscard_foreign` FOREIGN KEY (`idGraphicsCard`) REFERENCES `graphics_cards` (`id`),
  ADD CONSTRAINT `pc_specifications_idprocessor_foreign` FOREIGN KEY (`idProcessor`) REFERENCES `processors` (`id`),
  ADD CONSTRAINT `pc_specifications_iduser_foreign` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_idgame_foreign` FOREIGN KEY (`idGame`) REFERENCES `games` (`id`),
  ADD CONSTRAINT `prices_idshop_foreign` FOREIGN KEY (`idShop`) REFERENCES `shops` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_iduser_foreign` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

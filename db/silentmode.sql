-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2022 at 11:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `silentmode`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `comp_name` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `comp_name`) VALUES
(1, 'Silentmode '),
(2, 'Celebshare'),
(3, 'Terato');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dept_name`) VALUES
(1, 'Developer Dept'),
(3, 'Finance Dept '),
(4, 'Admin Dept');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(111) NOT NULL,
  `dept` int(11) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `accompany` varchar(111) DEFAULT NULL,
  `attend_status` varchar(111) DEFAULT 'No',
  `roles` varchar(255) NOT NULL,
  `picture` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `dept`, `company`, `accompany`, `attend_status`, `roles`, `picture`) VALUES
(1, 'Muhammad Rizal', 1, 1, 'spouse', 'Yes', '', 0xffd8ffe000104a46494600010100000100010000ffdb0084000a0708111111111111111111111111111111101112111111111218141919181418181c212e251e1f2b1f1a1c2746262b2f313535351a243b403b33402e343531010c0c0c100f101f12121e352b252b313831343431343d3434343f3a34343437313435343431343434313134343431313b34343434343134313134343434343134ffc000110800ae012203012200021101031101ffc4001b00000202030100000000000000000000000102000603040507ffc4003f10000201020404040305060503050000000102000311041221310506415113226171328191145282a1b107234262c1f07292a2b2d173e2f13343b3d2e1ffc4001a010101000301010000000000000000000000010203040506ffc4002c110002020103030205040300000000000000010211030412213141711351052281a1d1236191c114b1e1ffda000c03010002110311003f00f43b482486d3304b48046b496804b436921b48010da1024b4005a4023496800b430da1800b436921b4005a4b46b4968282d0b055567739517e649ec0779271f198a2ef96fe4a66d6e85cee7fa7d6086e51c5177b580520d86e74d779b569a2983aa323a80b6652736e52e330b772b7f9da6fc144b4044c844168218ed16d321114c01088a44c8629100422291321116d28311114899488a44031da022642229100c65629132911488062220b4c844168025a48648074808c0410c02492432025a19043009249240246b490c000864860124921804021b4969a3c51c9f0e8aef549ce7b535b66fa9207b130065c46737536a6ba96eae06e7d17f5f695dc06233562cdb2b1b0fe7dc9f95edf5962c4814e8543b008df98b7f594ac196dcdee753bdee756fcc99510bb8e23d2f11b141b506c7f2f63387409998b91144b2c086e01ee019089abc36b17a7e616cad9031d030b022ded7cbf87d66e112198862911c880880633018c603043191018e445220a2da0221908948211011321114c03191148990c52200844522391218063b491ad2414df924924206110430032492402461163402430430032492400c30084402136d4ec05ccd2c361ea54a8f55c0032a2535b8f805d89ff003311f87da6e3fc27d8fe930a6316d6b8baf948bec6d7fd083f39252a146a71e36c2551f782a7f99d44ad70cc3bd46f2a963724db617d6e4f49d8e238b5ab4ea2ab860b5d0311b0b647b5e4e1b8fa74f0c8a8466009a9b821af620fd3e824724a3636db36538690066645d36049fe934f1748d3b6a181bd88fd089a18be61b9210dc03bdf490d776405c65eaa3aeb6d4de6309b93329468dea78a7a6b602e0dbcba7989e9aff59ddc223ad34150a97b1cd933651a9b28275361617d2f6bd85ec2b186c40a95401e64a641723653d13dec6f6e82d7dc5edb7bea3507507b833633114c06132182886298c629820b018648063304630400180c321940a445223453005222c7316002d24924037649249006182180192492004430086012182180192490400886010c00caed7c223623114c974ccb4eaa946ca729050af6b5e9fe72c5383cc2eb42a50c531cb4fcf87aadad80619d18fa02ac3f188062c7d1a787c2654165475d49bb12ed94b31ebf14aebd2a75000e0b76b3d44234b68548ff0089b7cc5c730cf84aaa95039392c115dae43ab741e92ad4b98e82af99edeeac3dfa471dca932c146861e8f9952eff0079d9dd87b163a7cad18e20bdc16e876b0b5ffbde706971ba557ca8e0dc5c0b9da6d61f1376b74ef7db495503adcb0d59ea350a6bfbb501aa311a5104939893ab3b7637b9058ec6f7d000000d00161ec270391f0d4d3099e9ae55c455ab586acc596f915896d492a81b5eac6580c97656a9d0b2192083114c5318c5300532190c0600a6084c10012192432814c531a29802980c260300179209201ba0c316f0c8030c12401af2412401af088a21bc01a48b786f006862c3002218240600d35b8960d6bd17a4d6f3ae8585c2b820ab11d406034ea2e26c030de0147c4f06a9529a53c3261915b323d0af4d1969d456219331524ae607e9a1b116ade3383f10c355233e1a98203138744c89a5ad6c9bd803b75960e71e2cf42b564a4a8f4ea5154ae3f885420f9c1ef932023d0769e7e9cc788a79d69ad3c8e6e43d30f636b661736bdadf4983cb15d4eb868f34a2a4970cea0a5f06ece033d5a8e4b3d4a8f624b1eb6007d6d3062715948407ccfa58745d893fa4e31e255daf6216e49254798df7b937870ba30249249d4df53f39ae596d707769f40d3b99ee5caec0e070d6d8520bf35254fe6275252f91b8c28a5f67a84200c5a93b1b060c6e5493b6a6e2fbdc8ed7ba19b20d38a3cdd4e39432c93f7e00603098a66668018a61301802c06180c010c864820124324065008a612629800301909809804920bc900da8418b78c0c1037862420c147922de1bc00c3782f24806bc31210600f7862881dedd2e49b01dcc0324c58ac52525ceed9474eec7b01d763f43da73f8ef16fb151ce6cf59c95a496d335b536ec3ea7495aa74b155b13845c53166ad6c4b5322c129dc90a477ca874e970261295708e9c38372dd274b9f2e8bc614bd440f94229d573dd988e84a8b5beb35388311528d015583d6cc4940aa15003720ea41363637e866d52c6a1a8f441f3d354665fe5717561dc696f712b0b8f15b8bd94865a49512e36051595fdc87623ebef0fb231c51726dd5526ff057799b0ab87c4d4a6bf0108e97249b328bdc93727366d654b1b874b9205bf49e89fb43aab9282d973b3b90c40cc11545d41ec4b29f97bcf3ead4c9be84fa0dc9ec2734e2949a3e8b4191e4c2a52f1e6bb9a34b0ceed95159dbb28be92d1c2e953c002f5e92626bd75c89872aae96275b920e9702ec074b0bea677cf0ca780c2e6703f774c3542b6cd52a1b5d413d4b10a3d2d39bcab8235deae36b152c8d9541364a4a05faec003a5fd4ef79b630aa5dff00d1c59f55eaa6d2a8afe5b2d9cb1c0a825156ab66a8492117ca94c1fe151724dae05c92761dc9e9710c326169174af51082a002ea540bd880a4651f49a1c37168eb9e9b6640c555ec42b91bb293b8df5d8fca53f9eb8d354aa282139690cd52c77a8c3407d97fdf364928ab479f87d4cd96a4fc968c1733354a94e8d334eabb2f88ecd7a4a94ee3cb980376f30e9b9fa5b061d88041537171acf24e1d8261c1df128599ce2cbdd374445c8437a6e7e6b2c3ca5cc8d88a2b4cbfefa882ae3aba5fc95077dec7d40fbc263093ba66cd4e18ed72c6b84e9fe4b9b0b1b1d0f6efedde299aa9882c2cda89991fa5efd8f7f43ebfdf79b8f3ac6262932130190a4bc04c04c04ca084c04c04c5bc009314992f01304218098098a4c01a4897920a6d830de63061bc10c97841880c378035e1bc5bc978035e1bc5bc9051ef20316f083007131bd74a68f5ea1b222b6bd9177b7a93f5f2c2ed65247404fd04f37e72e653509c3d36b50a765e9fbc65fe227eee9a7a6a7d3094a91bf4f85e59576eece970b6a9c4b1871156cb87c39151f313929a2925517d491727d09ec277f06cd5b8956aa45bc2a0b4f2dbe02e432a9fe6cb9afd8dc7417d1c1d45c16128d25177c83135574ccf518af868dd8962a3da9b0eb36b92ab1a898966399ce20bb11d4b20d7db43314a9a4fc9ba79372938ae12a472b9f98257a2e8ce951e8b2bb53774bd30de41e520ee5bd341da6872230fb695b5af86a8134d059a99b0eda03f48ff00b427be3157eee1697e752a99c0e0dc406171542b13e54701cf6a6c0a31f92b13f2134b954ecf47161dda3e3ab4cb17ed1148ad87bfc3e1b85f7ce337eabf49cde50e17f69c5a5c5d28dabbf6f21f22fcdedee15a77b9ef1387a815596a3bd17b06a6e88a4b6857332b69b1d06e04cfc131b86e1f84af553333d402a52f10a9354db2a520caa3e1726e2da6663b4df934f38b5924b8670e9fe238de17a7c6ee6ad7dce5fed031f9eaae150f96959ea11d6ab2e8a7fc2a6feeff00cb2bfcb5c2d3158a54719a9a2355a83ef05202a9f7765f95e61c433316662599999d98eecec4b337b9249969e44c2e5a389c411ffa8eb493fc283331f99703f04d117ba767a1962b4fa46bbff6cb2002e00b281a000683b693c8717e235675a96f11ab3a3d8e619cb95201ea2fa4f45e65e2630d85760d6a953f774c7f1666ddbe42e6f2b1c97c3439a98ba9a8a1714af737ac56e58f72a0fd4fb4db93e6928a3834afd2c72cb2f08b5f2438a78538672a7c3ad88a4c45ecebe3be4a96e843160474050f694de66c1d4e1f8b4c461fc88ccc5372a1c019d08fba41dbb120682372f713295eb274f11dedbdc117616f55be9dd57b4ecf31aa62a98a4ee69b82aeaf6cc2ea1955986e548241235b8eb6b1ce50b8d23469f3edc972e8fa9dbe5fe3d4316832305a99417a47e25d35b5fe200df5f4bced236b6fa7b8da785e26857c25550d9a9d45b353a88da30be8c8c3713d1b9679b6957a60622a53a55d0856cecb4d6a0e8cb7b0be9a8e87d089232be25d4cb3e9947e6c6ed3fb1760d7008d8804452663a15032065219496b152082331b5888c4cd8719098a4c04c178206f1499098a4c01898a4c52629328189822de0bc01a4899a1806cc37881a1bc01ef083318308f9ebf490192f08331de4bc032de4bcc61a1060190184198c18c0c035f8b552986c438dd285661d3508c679f72cf0f5b9c65442fe76a784a2006351d6e0b5bb02186ba79189b05d7d1b114854a6f4cece8e87d9d4a9fd671b8470a2a94d6e464a54f0f4cdacca4aab55a96d406c8058f46661d663b6ddb37c333863718f56f9f072aad1a8f594bb07735e93e20a86f0e9aa93e12673b9cede97cc6c2cb73b9fb3c7f36296fd2837ff203fd27478f524a4b41540555c4512a836b9a8a4b1d7524ee4dc9eb2934b1f5b0988aa68bf86c956a23020323847650194ee3e875d0898647b5a66fd2e37961382ead2fb1dde7ee1959f149552954a88f8744bd3477b3233920e506da3afbebda512a92ac1800591c3588d2ea7623dc4f64e5be604c65322c12b20f3d3bdc11f794f55fcc1d3b135afda4e029a8a35d5155ddda9bb28b173973266ee6cadaff00c4d728a6b72676697552835826bf62afc796a5702b33d5a4b542576a6b403e76701b3527ce14a9bdc66d45edada73f1b8aaf57ecd4d90d3a14d4bd343949372cb9b36ed98e6d4e8483603513d7f806129b60b08080ea30d432e700ff00ed28f91ff89554c1262f8c540006a145817b28ca568aaae43ef549bf701ba4df972ce708c5b387498f162cd29a8a556feffd95ec3f03c5d740f470eee8745739511afd4172011ea25e30d84186c3d1c30218d34f3328d1ea312cec06f62c4fca75f8ff0017a784a45dc81a7956ff0017a7b7ff0093c778f73257c5330cc69d337f2212030fe63d7e735251c7e4ebfd7d6f14945336b9ef1e1f10b4d482b429d89163e77b336a3f972fe72dd470df65e1c94b40cb44b54b75a8fe663f9dbe53cdb8260fed189a346d757a80d4ff00a6be67ff00483f3227a6f1cc45e954bd813a7d4ccb172dc8d5af4b1c63863db93cbd2a9a78c047f1adc5f6cc86e25faaf0e66a34dc00f4d8065a6ff1d3d365716bdbb8ca7dccf3ce2ae131145fb38fa1d27b072fe5ad81502c4a0653f2dbf29b6f93cf6b84ca7e230a8e9f67af9fc272de1bb652f4aaa8f3006c35b6b6b6aba6ea48a462b0af86aed49f7522cc3e1753f0b29ec44f5dc3e1e9d457a7534476550e00bd3aca7c8c09ea7a5f4b820fc401d5c5f00a754aa3ad31507c2952987a6fdda931f30077ca0dd6faf427194533762cef1f83b1cbae7ec786befe153ff6033a04cd5e1d43c2a294ecab9015caa5d956cc405058936034d7b4ce4cc92e0d327726c24c04c42d14994c4626293149909804264bc52602600c4c178a5a293006bc912f240366f1834c779019494650d08698ef25e0a65cd0de62bc9790196f25e25e4bc12cc978c0cc578c0c514c85ec09e805fe933e0115555c8b592cb7f8b29398b1f563e63f86fa83359066217a3100df6b75fca4e318bf0e9b37a198b052f9f38e8f169a21b8a6e1cdba9437b7d445e3fc21996a63a9d446a6e12a3210c1d6e1109522e1812736b6dcef297c6b139ead46ec0cb172ef181538657a2e7cd4b0f5a9dfa1514ce43fed1f2984d2970cecd34a789a9c7de9f834b058c7a0eb569394743753b8f5561d41d88ffccbd716c653e27c399e88fdf512b54d11e67475073a8ef742d63d6e3ae93cb9b1075d45a65c0f17ab85a8b568b9571b9d72b0eaac3a89cd196de1f43ded4697d4ac91e1ae9ff4bbf01e704a1806a173e3d24c4786dba5d8e6a573db3381f875b6937f92f261309571754e515084a64dcb352a6081bf762faf65076d679457bbb6616f3b12db05049ec36f69d9e27c62ab64a0cc5a9514a694c7f2044201e9a7fe6f616cf735cbec70ff008f1c92708bab76ff0006cf3471b7c6552e4f90688bae83bff7fa937e6707c12e22ba5372ca84333952030001dae08dec36eb34dea0333709c62d2acacf9b2b0284ab6565bec474dc0dc5b59ad4b74959e8668ac381c71f65c17fe1bc3f078425e82b1a854a1a952a17214d89005801b76e934f8ef110c3229db563ebfd99cf7e24cc72a82a36ccd62f6f968273f16f736fa99dc925d0f989ca5277276cae71c6bb89e8dfb35e2b70f4d8e8eaac07a8d0cf39c553cf5177b5c93dec2d2d585a0dc37882d273a3252a80f4b3af9c0f40e1c0f451304fe666728a58d32fb862ab88a9458065707ca7660771fdf69bcf488b2381569b1f2b3e56653b857bfc5d836fb5ee6ed389c52a5992ba9d54826d7dae2f2c0ae2ad20cbd5432ff886a3f3b4ccd01650a4a8db71a93a1d7afade2131eb9f84fde5fd0ffdd309329085a4bc52629680393149885a2968258e5a296885a0260a12d2168a4c5265064cd24c59a4806ede35e620635e4221ef25e25e1bc146bc9782f240a1af0de28325e0943de10d31c7452c428dc9007ce0a6de0933127ee81f56b8fe865479db88e40c80ded2f781c305537d46ac7a5fa2e9ec279773ed1352a3785a81f15afa77331b2ae4a15772d98f5636966e5ec054187acd4c0d132b922e2d52e8a2dd75b9f94add2a45aa2a7622fe93d7f8370ef0f0251459ea536abf8ca834c1f60a9f3bcd71e5b676e7fd38c62bc9e40f7048b588245ba820ed118cf54c5f29e0b16de290e8f50073e1b850d702c6c4100fb6f38fcc7c9b4b0d4456a0b5aa647fde8760c129e524bd94036040bf606e74171a6785ae4f4b17c471cea2f86ff829dc269235541573f819d7c5296cd92fae5be979b7c7d697da2a361c37d9c9029e6f89540b007afd75b5afacc8a4580005bb01a7e530bd4b4d76eb69dd1c1153f5175aa394e66066971e5de5ff00183622bd31f670ac29862cbe2d4b8f842904a817b9dafdf69b54f846183dbece9bf5bb7fbc91f94d90c2dab38353ac8c24e3d7c159e0952a3961999ad9428dedbdf5fa4ece3e8e4a7dd8fc47fa0968c3e05156c94c201d02a28fa2003f29c9e33862c55146acd940ebbcea4a951e34a4a536e8e4f2ef0ef171f87a675540952a7a0506a58fa1ba2fe296afda270e352853c5a0f3e15aef6dcd172037f95b29f419a2726e117ed58eaa2c45365c3a11d81b35bd2d4d25aebd357574a8a192a2b23a9d99185987cc132455a66599d34bd922bfcb0e3158755dcdb299dac052a94b3d0208b5bc3736d15b73eb6fd6dd254ff67f51f098baf847d4a546a649fe2009caff003166f632f1cd5c56861551eb385255aca3576d2d655dcea7db4d4cbbb8e4d6e2dcb6c5593185529976395290cc4d89012d6b69f2db7204d34aaaeaae8c19580656520ab03b1046e279df1ee6eab8b75081a95043754cdabb7df7b697d36d6ddccb0f2ae29ea5324537348b1cce11bc35a97d486db53b81b1d7ab4c239137474e4d1b863dd27cfb1632d10b405a0266da38824c5bc04c04ca2824c52602d1498012d0168098a4c00e69225e4941be0c6bc40619881ef25e208c200f786f1042200f7922c300336f0096cf508b8a68cd6ee729d3e9facd49d0a26c695002ed557ed0cc740b49190903bb1baadb41624df4b18d836b8a56f0909fe2f0dee3d88b1f9136fc53cd38ed6f0f0eeedf1543a5fb4b8732626eeebae8e947d3e1151be47327f94cf3ae73af9ebd3a3a85000fcf59849d44df8217235b95f8478d5699717151eedff4c02cdfe9047b913d641d7e72adc9b86196ad4fb96a2a3b7952a31f9e641f84f7967bcb15489967ba66a7050a68a58df217a77df5462847bdc4ec224a3728f10618bc6e1cdca78b89aa074565af94dbdf30fa4bb2d602c2d09ee564cb8fd3957d57d4f34e71e04309543d350b87ac4e451b53702ed4edd17761e971fc3399cbfc1fed9895a66fe128352bb0d08a60db28f562428f727a4f4fe66c0ae2309591b4210d546df2ba0cc0ff004f62657f90e82d3c278c757c4b96bd8694e9b1a6a87f1666f9cd2f1fcffb1e9c35b25a66af95c1d4e228a142a008880222ae81540b051db49c1a146f52db751ef3b7c4314806b9fb6807fccae2f14a42a5ed53fcabff00da74763c956ceee2ab53a74cbd475a6aa2e598dbe9dcfa4f38e33c71b12f929064a5b5f6a8e3adedb03da273271c6c55671e65a54dcaa21dcdb666d77d3e57ebbce5e19fcc34bfa5edfd0ce79e5be11ebe974914b7cfa9e9fc87472616a696bd723e42953b7eb2c84ce572de10d1c3266209ac457f2dfca1d1405d77b01bface999be0aa28f3350d3c8daf72a98a434b8cd3745bfda2823d81b5dd332124f4002a6b13f695816ce955d816a9485f2ad8295246404ea45bf32c6c2f69b1c7ea14c770f61d46213d7e2a7f96b2cfcc9c1863a85201f230621490083746363d46db83d4e86613569a36e9f228648c9f4ee79772772efdb6a3b3b94a349945403e3a84dce453d341a9f516ee3d69eb52c3520025914044a54d46ba58222edf5d06a4900133cdf9071552962eae12eac87c524dac454a647987a11a5bfb374e36e6e83a04bffaac7f412e082663f16cf2849b7d1557d4d4c1e356ba78888f4817a8be1d4cb9d0a3b23039491ba9eb331331a580d05812cd6f56258fe64c6266eaa3962ed261bc526082428498a4c04c52601098a4c84c530097920bc928a3ffd9),
(2, 'Muhammad Farhan', 1, 1, 'spouse', 'Yes', 'Intern', 0xffd8ffe000104a46494600010100000100010000ffdb0084000a0708170807181615161919161a1c1d1c1c1a1c1c1a1a1f181e211a1f1a211e1f1f1c212e251c1e2b25181f273a262d2f313535361e263b403b343f2e343531010c0c0c100f101f12121e342b252b383437313b34363435343a363634343f31343435313634343434363434343d343e343436343434343f34343434343d343434ffc0001108011300b703012200021101031101ffc4001c0001000300030101000000000000000000000506070104080302ffc4004010000201020402070407070207000000000102000311040512210631072241516171811314329142627282a1b1c115235292b2c2f016d11733357393a2c3ffc4001a010100030101010000000000000000000000010203040506ffc40028110100020200050304030100000000000000010203110412213141226171133351813291a105ffda000c03010002110311003f00d9a22202222022220222202222022220222202222022220222202222022220222202222022220275f1788185c2b3b7251733b123b3b5d7963a8e6c081f2bfe9103b181c52e37069517e1750c3d45e76642f080d3c3187ffb6a7e7bfeb26a0275eae2168d64566019c90a0f36206a36f2027de649d216767f6deba6f7143d9e92a6e15b5866e5ccec01f2b4440d7227c30d884c5d10e8caea770ca4107b7989f7808888088880888808888088880888808888088881c48cccdf56229202376eb0edb696b79027f29272bf8bc313c43ed41d9299561f58ee848edb0d7bfd6931dd128fe8ef10cd82ad49d8b0a550aadfe8a102ca3c058fce5c267fd1f96fdb98a1be9b296fb573a7f0d52f588734b0ecc14b10090a2d76205ec2fb5cf289ee954f8ef3df74a270e9f1ba82c7b90b69d23bd9b7f21e626739ee18d4a359edb6a53e57932f51b88b89ab56404d33ecae7721142a91bdb6dc3f3ef32cb996588b95564b022a228461bdcdb6dfbc1ff7935f312accaadc27c54724cc823ffc864a6a476a32a8058790d45bc17c2c763985f1564edeeb56a5317a763af4824275b7171cadb8dfb099a8f06e7ffea0cab58560134a1626fa9c2297b6dd84dafcafe46567bacb24444044440444404444044440444404444044440480c475b17885e5b29bfdd1f87649e9038aff00abbf8a28f5ff002dfe095b4ea36984570585a39ae216e2eca8c37e614ba923c06a5f9897499bf0bb7bb718804ecf4ea20f16ba3faf551a68f15b7346c98d331c0e62bc2fc675a8534b51709a93e1d2ca83ac9e0435ede3e125f36c5a55c3b3229552c188e5b9bea22db293cfcee79933a9d29d15c252c3e282f5d6a0a6c40e6855dac4f702a6df6a4517a8f810cabad186a055d5411d9b1463d9d87e534ad7cab32faf1e712aa70c1a1457d9a38086f61a53b5540b8b585afdd796be8fb2c19670b521a34338f68c2da4dd800ba87f1685506fda267597aa669c7b86c33115150977b0eadd69b3907bd43a85df9facdb257511d93b7311101111011110111101111011110111101111038902f511b881935815342b853cca9ea923beda0f2e57f193d32ce92d4d1e25a4e2e35520011b1051d8ec7ef896c748bcf2c8fce6b51b2acdd2a0d8a5453f749b37fea48f596d7cfea5224e9a6e05eca2ea4db7e773d9e1322c771355eb255b5443b5dbe31ebf4bd45fc67df09c40ef59a9542352d8a5453f12f613dfe7fa4cef867174895b7bee9ae3ee2a7ccf245a26904bd40598313f08d41402399df7ee523b76a12632a2d10a951d546e155881bf3da5d30e1f16e6e013f4811b30efb7f96f2e5ca70bd3ad99ab72461d7a6a2d6b0b165607976db6dfbc6d35c196b3e9b22faac6d50e14cd9f20e215aea81c2ea56526dad5858f5ac486e441f09b350e2aad8a77015146fa762586db5eed626fdb6b784a5a70d7ecdc09b59dcb1058a8dadb694b9df7fa4763b102d69d8c063169503a890882ecd7b973e7da2fc8769f499e6bc4db554c446972c4e6b5d6ad221c595b53ae9035a2ad980f125d6c7c2593018d4cc30e1e99ba9dbc411cc11d844c57019ae2333cc9dd46d6d2b4f4eb08b60dbdb7d44ee77dec259f80f34a986e216a15b6f6aa6d652a0ba5dbe124e925355fec0f012635111d7aaf38af11cdae8d3e222191111011110111101111011110111101285d29e00d5c052ae06d49983782bdbac7c03228fbd2f93e75698ad4cab00c08208201041d8820f31e12d4b72da24798b3620e20d8dc4eae5586ad8ec701491dc28d24aa9603b773c87a99b87fc35c2b620b353a645ee05ab5bf94560b6f0b5a40e65c547220a94f0d4b405fa2ac021b916b16f0e734cb78bf54d6266751dd21c39803ee9608e1c0e7515536eeeab30b8f3f09dda1979c2d42c805c823727f220ca4e238f2b5761baa0f05e43b4ed2430f99d5186016aa30750ca4dd6e08d408b8f4b7a4e69888f55674b5a968e9684f55c03d44756770afbb0d4846ca12c3a971b28160642f11642f80c98d647f68a8433a328ba0fe316d8e93cee36173d9231b89ab61b0eceff08b1637e57200db9df78c371b8b598dd58692a77b83b72eede463c968b44da3713ec7274f4f87530bc515708bd54a5e881093dfd42379f3c7f15b6b154530b510860ea6e6e3717f0f5e523b2de1fc46738e7a78450ea83502ccab6527604b1b92397a5e5bf22e8bb1071f4df16f4852560cd4d0b333d8df41ba8001b58904ed7f39dd6b6298eca6db0236b407bc5e7ee2272844440444404444044440444404444044440e2657c4b977b0cfdd48b873ad7c558927d036a1e935494ee92f2a18ee1e6aa07ef2890eadc885b80c2fdd6eb79a896a77d1a67b9b70914c27b5a5f08f8d3f847f10f0ef1d9e5ca1b00cd96d401c17a24eebda97fa49dde5c8ef2fbc119f0c60f615ac5c8214b5ad505b756fad6f98f1e7d4e32e1ef717f6b4c7eec9eb2f3d04fe6a7f0f5917ace3b4f4e9e61dd86f5cd5fa5927af896798ea8f8fa8350d28bf020f96a3dedf9721e3dac0e4c0e1bdabfdc5fee3fa7ce4c655947beb9661fbb5363f58f3d23c3bfcfe5d7e2ecc860e87b2a7b3002f6db42db603b891f21e922b1369df8f08e22698abf4a93d7ccaf7d10608fbae2310793bad35f2a609247997b7dd9a4c86e13cb8655c3587a2000569a6ab76b91a9cfab163eb2664cb8888890111101111011110111101111011110111103f3ca42f1855147863117eda6cbeac340fc5849b32bdc60bef3958a3db5180f20bd6bfa10bf38ebe16a6b9a37db6c6e9a1a2c08241041046c4106e083d841135aca71633dc9c33804b028ebd84dacdb77106f6f199c2d22b7522cc0d88ee3c88fc24964b9a3652e7f81b98ee3de3fda75fddc713e57e229f4f24c47e961c5e0d327cb0800e8a68cc7bc800b127c4ef315cc99b14ceedf135c9f33fa4d178cf8afdea87b0a441d43f78e391077d0be7da7d3bed4229a9a4453969332a5626d6ebde65e98cbf1031380a6ebf0ba2b0f265047e73b32a7d1ae3fdfb84a9293d7a43d930eed3f0fcd0a996c9ca8b46a661cc4442088880888808888088880888808888088880956c4e217119db1660169f516e7b762c7cee6df744b44a5e57512ab3bbadd5ddd85c03b3312363e064d512a9f1169a79dd4d0c37606c08e6ca1bf32644e26ada9f8cf9714d4a6732a85000bed080576b5aff0047d245263085b16d4be33ab87eb5fdcbab8a8d5a3e21f1c4eee4cf8521779fbad5033c50176335cbfc27e254e1e3796bf2d2ba38a870399225fab5e8dedf5d7ac2df759fe426a1323c82afbbe3302ff5917f9d3d9ff7cd7279fe214c9fcedf32e622214222202222022220222202222022220222204667d88f74ca2a37695d2bf69baa3f137f495c0e32fc999db92adfcf6d87a9da49f141f6f5e8d21dac5cfdd1a47f51f94a771e66411570e8765b33f9f62fa733e9dd266796bb6bc3e29cb922be3cb3accea12c0df724927c7fc323fde02aee409d8cc5fafe9facb6f437938c7e7d5310ea1968280b7171ed18ec4765d555bcb50336c57e4c70d38c9de6952d1fda6e27770c3ad2c9d2760d705c62fa54287447b016049ba13b76928657a8dae26f6f5639f7865827972567de168a388d192d37eda6c0ff0023ea1f80136d1309c99c54a35291e446a1f2d27fb66bdc238bf7ee1ca2c4dd82e863dec84d363ea549f59c113bac2fc553972cc7beff00b4dc444960444404444044440444404444044440444e2053788f31184cd9df9b2aaa28fac6ef7f201813e4076ccd73b726b924dc9dc93cc93b932c9c4f58d4e2dac0f252a07fe343fe794aa672f7a866579dbdbe0f0fd3a737998daad9854fde9f29be746193fec7e10a5a859eadeb3f9bdb483dc420416ef06639c2991ffa8f8ba9d122f4fe3abe0886e41fb44aafde9e92b584db9b75887959fee4fcb2de99f03d5c36207205e937a8d6bf2d0ff3999d27eb09e86e2aca067b9055a1b6a65ba13d8ea7521f2d405fc2f3cef8707da004106f620ec411cc1ee22d3a315fd1313e14c71337888fca568627dd712afd8363e4763fefe935ae8d2bfb4ca2aaf6257603c8a23fe6c6635893b4d3fa19ae6a6558807e8d45fe803f2027163b787a1ff469dad1f0d2622268f30888808888088880888808888088881c444e8e718d19765952a9fa0acde640d87a9b0f584c44ccea193f1262054e27c438dd4369bf8aaaa1fc548f4950cd7157b9928f8934b06da892cc6e49ed3cc9320f2fc19cef882950ded51d14db985bf5dbd1751f49cfde5f439263162d7e235fe357e87b23f71c95b12cb67c41eadf98a6b70be57259bc4699a34f951a4b428aaa801540000d80005801e93eb378e8f9fb5b9ad324c238f32afd97c5f548165ab6aabf7efafd75ab1f5137799ef4b796fb6cae9e200de936963f55ec3fa820f5322d33159d36e16623346d93e24dd66a7d0aa5b21ae7beb91f2a687fba65ac352cd3ba18c40397622983f0d557b7da40bffccfca658fbbbf8f8dd36d322226ef20888808888088880888808888088881c1e733de9331ad6a7441b21b330fe2373a41f0056f6f11dd342997e79557305c5d563b2545087b2caeb47e46fabd6f2969e9a6dc34eb2d67dd9f6715b40b77097ae86f21a7528be35c5ea066a74fea80a3530fac7515f000f7999fd6c3fbe3bb16d2896d4799def6007693a4fca6e5c03978cb784e828046a5f6841e6359d601f100807cbb394ae3af976f1f9b73cb12b34444d5e63895fe38c2fbdf0b575d5a7aa0def61b303bf86d2c12bbc7973c2588b73d2bfd6b7fc21359d4ed805605410798daddd2dfd0cd564e2aa8a2fa1a936aeeb8652a7cfe2f999059ad20c03dbad70addc763bfe16968e897a9c4ba40b0f61559bc49ab4d56ff00746c3c4f7cca91d5e867cb17c5bfd3688889abce2222022220222202222022220222207caadfd99d3cec6de76da6575706cdc2b55105dfa840e44d9d5c8f3b5fe535898e65b983d5caea25f74aac8a7ea9b95bf9696dfbac3b0489aee39bf0b52d35b45a3c2ab8ba0d4f05a00eb5c96b6e4bb8b05007321401e64efbcf42e0687bae0512f7d0aab7efd200fd263dd1b5119ef1433851eef85eb0ed2eec4aa31fe5661e2ab36988ae8bde6f699973111255275b1b8618cc13d36e4eaca7c9811facecc40f3653c70ac191d46b5b8751c895362548e445a695d1265f6a15f12762ec29aadac15554136ef17603b3753321c6bfb1ccea30eca8f6f11ad85be5377e8b6995e09a2c79b9a8fe5aaab11f85a5ef48acee13cd3ad2e11112882222022220222202222022220222207e2a368427b8133cde99abe1b27aaa2daaa8176e5a0f5ae47890e4784f426755c61727ace4d825376bf759099e6dc4adb043cff49d182375b6c6b7d0ae0461f8519edbd4ace6fdeaa0201e40ab7cccd1a52ba2420f01d003986aa0f9fb673f9112eb309ee111120275b1b8a5c0e09ea39b25356763dcaa0b1fc04eccea665835cc72ea945fe1a88c8d6e76652a6de36303cb2cfef1736b1249dcdcefbf3ed9ae7459c63428e54982aedecdd0b04663d5a819cb01a8fc2c0b5b49d8ed6ee15ccdba2bc6e5ee4d1298841cac423dbc55fabf26dff094a34eec558598121948b1046c4107911dc674eab7857abd591310e01e33ab93e29285662f8666541a8dda8963a54a9e652e402bd83716b10db84c2d59acea562222542222022220222202222022220563a42c52e1383f1058fc49a078b39082df3bf85afd93cff88ac7d8d89da699d3266bed317470ca7651ed5bed1ba20f41a8fa8997d6eb2da75628e5a7ca265bb744d85f76e06a26d62e5dcf8eaa8c14ff002aacbacab746d596b70461749b809a4f83292ac3e60cb4ce69ee922224044440488ccf86f0b9abeaaf87a6ed6b6a2a355bed0eb7e325e2057701c1981cbf10af4f0c8196c558ea62a4722359363e3ce58a71398dec22220222202222022220222202222065dd29f0c54c5d75c55146a9650951545d80172ae00dc8dec6dcac0dad72328ad857c4384a48ef53b51159d878155179ea789ac6698af2e855ba3aca6a64bc234a9565d353aeccb7074ea76600dbb74917f196a8899044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440fffd9),
(3, 'Aqira', 3, 1, 'spouse', 'Yes', '', ''),
(4, 'Mimi', 4, 1, NULL, 'Yes', '', ''),
(5, 'Haiqal', 4, 1, 'spouse_child', 'Yes', '', ''),
(6, 'Jefni', NULL, 2, NULL, 'Yes', '', ''),
(7, 'Acap', NULL, 3, NULL, 'Yes', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_id` (`dept`),
  ADD KEY `comp_id` (`company`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `comp_id` FOREIGN KEY (`company`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dept_id` FOREIGN KEY (`dept`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

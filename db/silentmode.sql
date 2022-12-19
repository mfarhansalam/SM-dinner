-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 07:11 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `comp_name`) VALUES
(1, 'Silentmode'),
(2, 'VIP'),
(7, 'TERATO_SENTINEL');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dept_name`) VALUES
(7, 'Senior Management Office'),
(8, 'Project Management'),
(9, 'Business Development'),
(10, 'Corporate Communication'),
(11, 'System Development'),
(12, 'Product'),
(13, 'Customer Support'),
(14, 'Account & Finance'),
(15, 'Administrative & Human Resources'),
(16, 'Legal & Compliance'),
(17, 'Part Time'),
(18, 'Intern'),
(19, 'Slurp Retail Tech'),
(20, 'Celeb Star'),
(21, 'Indonesia (Expats)'),
(22, 'Avana'),
(23, 'NAZA World Group of Companies'),
(24, 'Smartfive');

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
  `tableNo` int(11) DEFAULT NULL,
  `picture` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `dept`, `company`, `accompany`, `attend_status`, `roles`, `tableNo`, `picture`) VALUES
(8, 'Reza Fahmi bin Razali', 7, 1, NULL, 'No', 'CEO', NULL, ''),
(9, 'Tam Wah Kit @ Calvin', 7, 1, NULL, 'No', 'CTO', NULL, ''),
(10, 'Adil Azhar bin Ibrahim', 7, 1, NULL, 'No', 'CFO', NULL, ''),
(11, 'Shariffudin bin Mohamed Raffi', 7, 1, NULL, 'No', 'CSO', NULL, ''),
(12, 'Muhammad Shukri bin Suhaimi', 7, 1, NULL, 'No', 'Head of Development & Support', NULL, ''),
(13, 'Mohd Izzat Shahmi bin Mohd Shuhaimi', 7, 1, NULL, 'No', 'Head of Business', NULL, 0xffd8ffe000104a46494600010101012c012c0000ffe100564578696600004d4d002a000000080004011a0005000000010000003e011b00050000000100000046012800030000000100020000021300030000000100010000000000000000012c000000010000012c00000001ffed002c50686f746f73686f7020332e30003842494d040400000000000f1c015a00031b25471c01000002000400ffe10d6e687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f003c3f787061636b657420626567696e3d27efbbbf272069643d2757354d304d7043656869487a7265537a4e54637a6b633964273f3e0a3c783a786d706d65746120786d6c6e733a783d2761646f62653a6e733a6d6574612f2720783a786d70746b3d27496d6167653a3a45786966546f6f6c2031312e3838273e0a3c7264663a52444620786d6c6e733a7264663d27687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323273e0a0a203c7264663a4465736372697074696f6e207264663a61626f75743d27270a2020786d6c6e733a746966663d27687474703a2f2f6e732e61646f62652e636f6d2f746966662f312e302f273e0a20203c746966663a5265736f6c7574696f6e556e69743e323c2f746966663a5265736f6c7574696f6e556e69743e0a20203c746966663a585265736f6c7574696f6e3e3330302f313c2f746966663a585265736f6c7574696f6e3e0a20203c746966663a595265736f6c7574696f6e3e3330302f313c2f746966663a595265736f6c7574696f6e3e0a203c2f7264663a4465736372697074696f6e3e0a0a203c7264663a4465736372697074696f6e207264663a61626f75743d27270a2020786d6c6e733a786d703d27687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f273e0a20203c786d703a43726561746f72546f6f6c3e41646f62652053746f636b20506c6174666f726d3c2f786d703a43726561746f72546f6f6c3e0a203c2f7264663a4465736372697074696f6e3e0a0a203c7264663a4465736372697074696f6e207264663a61626f75743d27270a2020786d6c6e733a786d704d4d3d27687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f273e0a20203c786d704d4d3a446f63756d656e7449443e786d702e6969643a36646564393736312d336239632d343765612d393138302d6563363739316364336461633c2f786d704d4d3a446f63756d656e7449443e0a20203c786d704d4d3a496e7374616e636549443e61646f62653a646f6369643a73746f636b3a30636166323037612d383238632d346431622d393939332d6133333739326333626134623c2f786d704d4d3a496e7374616e636549443e0a20203c786d704d4d3a4f726967696e616c446f63756d656e7449443e61646f62653a646f6369643a73746f636b3a3530393539373533323c2f786d704d4d3a4f726967696e616c446f63756d656e7449443e0a203c2f7264663a4465736372697074696f6e3e0a3c2f7264663a5244463e0a3c2f783a786d706d6574613e0a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200a3c3f787061636b657420656e643d2777273f3effdb0043000503040404030504040405050506070c08070707070f0b0b090c110f1212110f111113161c1713141a1511111821181a1d1d1f1f1f13172224221e241c1e1f1effdb0043010505050706070e08080e1e1411141e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1effc00011080168016803011100021101031101ffc4001d000100020301010101000000000000000000070805060902040103ffc40045100001030203050405070909010100000000010203040506071112132131410851539222526171811423324291a1b124333762727582a2b30915344383b2c2e1f01618ffc400160101010100000000000000000000000000000102ffc400161101010100000000000000000000000000000111ffda000c03010002110311003f00b960000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003503c6f63d74db6ebddaa01ef50000000000000000000000000000000000000000000000000000000000000000000001f1de6eb6db35b66b95debe9a828a06ed4b3d44a91b189ed72f002bbe63f6b6c2f6a7cb4782ed73e20a86ea895732ad3d2a2f7a6a9b6f4f8227b49a206c5bda3b363103de8cc42db340e5e10dae06c5a7f1aed3ff9808e6ed89f12dda474974c4578ae7bb9ad4574afd7ed7106337d36baefa5d7bf6d40c9da713e25b4c8925af115e285ede4b4f5f2b34fb1c048d847b4766c61f7b11f885b7981abc61ba40d975fe34d97ff003144f396fdadb0bdd5f1d1e34b5cf87ea1da22d5c2ab514aabdeba26db13e0e4f68d1622cb75b6deadb0dcad15f4d5f453b76a29e9e54918f4f63938147d8000000000000000000000000000000000000000000000000000000000000115e7be76e1ccb0a1f933f4b9e20999b54d6d89fa2a22f27caefa8cfbd7a273540a2f99b98d8b7312ecb5f89ee6f9d8d72ac1471eaca6a74ee6335d35fd65d5cbd54c8d480000000000036dcb2cc6c5b97776f97e18b9be063dc8b3d1c9abe9aa13b9ecd74d7f59347274502f4643e76e1cccfa1f93334b6620859b5516d95faaaa2737c4efaecfbd3aa7255d095000000000000000000000000000000000000000000000000000000000086fb4d674d2e59d89b6eb52c5538a2be355a589de936999c537f22776bf45bf5953b91482825dee35f77ba54dd2e959356d75548b2cf3cceda7c8e5e6aabffb4e49c083e50000000000000003eab45c6bed174a6ba5aeb26a2aea5912582785db2f8dc9c9517ff6bc978017efb32674d2e66589d6ebaac54d8a282345aa89be8b6a59cb7f1a776bf49bf5557b950d41320000000000000000000000000000000000000000000000000000006af9a78d2d9803035c7145d176a3a58f48a145d1d3caee0c8dbed72fd89aaf4039a98c711ddb16627afc457ca95a8b8574ab24aefaade8d6353a35a9a222772191890000000000000000000cb60dc4776c2589e831158ea569ee1432a4913beabba398e4ead726a8a9dca074af2af1a5b31fe06b7628b5aecc7551e92c2ababa095bc1f1bbdad5d7de9a2f5343680000000000000000000000000000000000000000000000000000520edcd8f9f7cc7b060ba29d56df626a3ea51abc1f56f6eabafec31513dee71057520000000000000000000000b15d8631f3ec78f6a305d6cea96fbeb76e991cbc1956c6ea9a7edb1153ded6960bbe5000000000000000000000000000000000000000000000000018fc4b75a7b161db8deaad74a7a0a592a65e3a7a2c6ab97f0039657bba55deef55d79af7ac9575f51254cee5eaf7b95cbf8991f180000000000000000000001f658ee95764bd515e681eacaba0a88ea6072747b1c8e4fc00ea6e19bad3df70edbaf548bad3d7d2c753171d7d17b51c9f89a190000000000000000000000000000000000000000000000000110f6c3bbadab202fed6395b2572c344d545e924ad477f2a380e7a190000000000000000000000009c00e85f63cbbadd7202c0d7b95d250acd44e555e91cae46ff002ab4b04bc5000000000000000000000000000000000000000000000000af7dbe257332668224e52df2045f724732fe2884a28d100000000000000000000000001797b034ae7e4cd7c4bca2be4e89f18e25fc554b05842800000000000000000000000000000000000000000000000401dbca99d3649d3ccd4d7e4f79a77bbd88ad919f8b9094515200000000000000000000000002f5760ca67439275133934f945e6a1edf6a236367e2d52c13f9400000000000000000000000000000000000000000000000233ed47637dfb21f14d2431ac9341489591a273d617248bf73540e7170e9c8c800000000000000000000000e1d797503a3bd972c6fb0e43e16a49a358e69e93e59222f3d6672c89f7390d41260000000000000000000000000000000000000000000000000fe5594f0d5d24d4b511a490ccc7472317939aa8a8a9f62a81cbacc5c335183b1d5e70c54a2ed5baadf0b1ca9a6dc7aeb1bbe2c56afc48300400000000000000000000019fcb9c33518c71d59b0c5322ed5c6ad90bdc89aec47aeb23be0c472fc00ea2d153c349490d2d3c691c30b1b1c6c4e4d6a26889f6221a1fd400000000000000000000000000000000000000000000000000a9bdbcb2edef651663db60d5236b68aebb29c9baaee655f72aab157dacee20a90400000000000000000000016dfb0665dbd8caecc7b941a248d7515ab6939b75f9e953dea88c45f63cb05b228000000000000000000000000000000000000000000000000001f15fad5417cb2d659eeb4ccaaa1ad85d04f0bd383d8e4d153fec0e6f678e5adcf2cb1bcf64abde4d6f97596db58a9c2a21d7aafaede4e4efd1792a1068840000000000000000006f791b96b73ccdc6f059293790dbe2d25b9562270a7875e8bebbb8a353bf55e48a51d21b0daa82c765a3b3daa9994b43470b608216270631a9a227fd947da000000000000000000000000000000000000000000000000000001a866d65ed87323094d60be44ad5d7794b551a26f6965d3447b3f054e4a9aa281cf2cd4cbcc47973895f65c414da23955d4b571a2ee6aa34facc5fb356af16f5e8ab06a44000000000000001b6e5565e623cc6c4acb2e1fa6d51aa8eaaab9117734b1afd67afe0d4e2ee9d5528e86e52e5ed872df094360b1c4ae5d77955552226f6aa5d3457bff00044e489a22146de0000000000000000000000000000000000000000000000000000c3e2ec5187f09d9e4bbe23bb525b28a3e0b2cefd9da5f55a9cdcef6222a80c1989ec78bf0ed35ff000f57c75d6fa96eac919aa2a2a7056b9178b5c8bc15178a019803058e70861ec6b87e6b1e25b6c55f452f146bb83a37747b1c9c5ae4e8a8052ece6eccb8b309493dcb09b66c49654d5db11b3f2c81bdce627e7113d6671ef6a13040af6b98f731ed56bd8bb2e6b93456af72a74520fc000000003f58d73ded631aae7bd765ad6a6aae5ee44eaa04f5931d9971662d921b962c6cd86ecaba3b62467e593b7b9ac5fcda2facfe3dcd52e0ba38170861ec1587e1b1e1ab6c5414517156b78ba47757bdcbc5ce5ef528ce8187c6589ec78430ed55ff0010d7c7436fa66eaf91daaaaaaf046b5138b9cabc11138a80c238a30fe2cb3c777c3976a4b9d149c12581fb5b2beab939b5dec54450330000000000000000000000000000000000000000000000010a7682cffb1e5c324b2da5915df13ab7fc36d7cd526a9c1d32a71d7aa3138af5d94e24147f1ce31c498daf8fbc627bacf70ab5d519b6ba470b7d58d89c18df627c750366c8dcdabfe56e205aaa1d6b2d352e4f97db9efd1932270db6afd4911393baf25d53905fecb6c7786b3030ec77bc355eda985746cd13bd1969dfea48ce6d77dcbcd15538946ce000d1331728b0063cda9710e1ea77d6b9344aea7d61a84fe36e8aef73b540207c5bd8e58af7cb84f18b98d55f460b9d36d69fea47a7fb498239baf657cd9a391cda5a3b35c9a9c9d4f7046ebf091ad18315ff00e6dce5dbd9ff00e45beffef1a6d3fde30656d3d95f366b2446d551d9adad5e6ea8b823b4f846d70c123611ec72c47b25c598c5cf6a2fa505b29b675ff524d7fda304f197594597f80f665c3d87a9d95a89a2d7546b3542ff00a8ed55bee6e8851bd800358cc8c7786b2ff0ec97bc4b5eda685356c3137d296a1fea46ce6e77dc9cd55138814073cb36aff9a38812aabf5a3b4d3397e416e63f56429cb6dcbf5e454e6ee9c9344e706b381718e24c137c6de30c5d67b7d52688fd85d6399beac8c5e0f6fb17e1a105e0ecf99ff63cc764765bb322b46276b7fc36d7cd55e89c5d0aaf1d7aab178a74da4e25826b28000000000000000000000000000000000000000000afddab33d1302d23f09e169d8ec4d531eb34e9a392df1b9383953ac8a9f4517927a4bd1160a355134d5351254544d24d34af57c9248e5739ee55d55caabc555579aa90780006770362fc45826fd1def0cdce6b7d635365cade2c95bafd0918bc1edf62fc345e205c9c9aed4185b13b21b6631dd61bbc3b46a4af7fe473bbf55ebf9b55f55fc3b9ca5d160619639a26cb13daf8de88e6b9abaa391792a2f5428f4000000000001e659638627cb2bdac8d88ae739cba235139aaaf4402bf67276a0c2d86193db3076e7125e1bab77ac7fe4703b8fd27a7e7153d5670ef72134536c738bf11635bf497bc4d749ae158f4d96abb83226ebf4236270637d89f1d57890608001ee9a69a9aa23a8a79a486689e8f8e48dcad731c8baa391538a2a2f5402f2f652cf44c7548dc278a67637135347ac33ae8d4b846d4e2e44e92227d244e69e927544b0581280000000000000000000000000000000000000023ced019934b96797d5379548e5b9d42fc9ed94ee5fce4ea8ba2aa7aad4d5cef769d500e715dae15d75ba555cee5552d5d6d5cae9aa279175748f72eaae5323e600000000377cb8cd8c7b805cd8f0e5fe78e891755a1a84df532ff0003be8fbdaad528b0d823b61d0c8d6418cf0b4f4efe4ea9b5c892317dbbb7aa393e0e70d12f61bcfdca5be35890632a0a495dfe557a3a95c9ecf9c444fb14ba379b7e25c3b706a3adf7eb5d5b5792c1591bd3ee50321f29a7d9dadfc5a77eda018fb8625c3b6f6abae17db5d23539acf591b13ef50346c499fb94b636bd27c6541572b7fcaa04755397d9f368a9f6a8d110e36ed87431b6483066159ea5fc9b53749123627b776c5572fc5cd268af398d9b18f71f39d1e23bfcf2512aea9434e9b9a64fe06fd2f7b95ca41a4000000001f4da6e15d69ba52dcedb552d256d24ad9a9e78d74746f6aea8e403a3bd9fb326973332fe9ef2891c573a754a7b9d3b57f373a271544f55c9a39befd3a29a82430000000000000000000000000000000000001d00e77f6aacc2763ccd4ac4a59f6ecf675750d0222fa2ed95f9d953f69e9cfd56b48226200000000000003a69d00f28c622ea8c622f7a3500f7b6fd34db769ddb4a0785631575563157bd5a807ae9a74000000000000000259eca9984ec079a9489553ec59ef0ada1af455f45bb4bf352afecbd79faae7147441391400000000000000000000000000000000000475da4718bb04e4edf2ef4f2eeeba58928e897aa4d2fa0d54f6b515cefe1039b489a269c7877991fa0000000000000000000000000000000000007e69aa68baf1ee03a4bd9bb18bb1b64ed8eef512ef2ba28be475abd5668bd072afb5c88d77f11a824500000000000000000000000000000000001527fb42310bb6b0be148dea8d5dedc676ebc174f9b8ff1909454c20000000000000000000000000000000000000002d9ff0067b62176de29c2923d55a9bab8c0dd7826bf3727e11960b6c50000000000000000000000000000000000e7ef6d2babae39fb74a7dbda8edd494d48df67a1bc77df21043040000000000000000000000000000000000000004cfd8b2eab6ecfdb653edecb2e3495348ef6fa1bc6fdf1a160e8114000000000000000000000000000000005e4a07347b43553aaf3cf1a4ce5d74bbcb1a7b99a33fe241a210000000000000000000000000000000000000001bdf678aa5a4cf3c1933574d6ef146bee7eacff0091474b9391400000000000000000000000000000000039879d0aaece1c64abcd6fb59fd67106a440000000000000000000000000000000000000006db92caadce1c1aa9cd2fb47fd669474f10a0000000000000000000000000000000001cc2ce6fd2fe32fdfb59fd67106a640000000000000000000000000000000000000006d9931fa5fc1dfbf68ff00acd28e9ea1400000000000000000000000000000000039859cdfa5fc65fbf6b3face20d4c8000000000000000000000000000000000000000db3263f4bf83bf7ed1ff59a51d3d428000000000000000000000000000000000731339a391737f18aa46f54fefcacfaabe3388353ddc9e1c9e45206ee4f0e4f2280ddc9e1c9e4501bb93c393c8a037727872791406ee4f0e4f2280ddc9e1c9e4501bb93c393c8a037727872791406ee4f0e4f2280ddc9e1c9e4501bb93c393c8a037727872791406ee4f0e4f2280ddc9e1c9e4501bb93c393c8a037727872791406ee4f0e4f2280ddc9e1c9e4501bb93c393c8a037727872791406ee4f0e4f2280ddc9e1c9e45036cc998e44cdfc1cab1bd13fbf28feaaf8cd28e9da140000000000000000000000000000000003c2c512aaaac6c555fd5401b98bc26795006e62f099e5401b98bc26795006e62f099e5401b98bc26795006e62f099e5401b98bc26795006e62f099e5401b98bc26795006e62f099e5401b98bc26795006e62f099e5401b98bc26795006e62f099e5401b98bc26795006e62f099e5401b98bc26795006e62f099e5401b98bc26795006e62f099e5401b98bc26795006e62f099e5401b98bc2679500245122ea91b1153f5500f600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffd9),
(14, 'Murnaeni binti Muhammad Nasir', 7, 1, NULL, 'No', 'Personal Assistant', NULL, ''),
(15, 'Andy Voon Wei Wun', 8, 1, NULL, 'No', 'Senior Project Manager', NULL, ''),
(16, 'Mohd Azmi bin Dahalan', 8, 1, NULL, 'No', 'Project Manager', NULL, ''),
(17, 'Ting Xingkun @ Shaun', 9, 1, NULL, 'No', 'Business Development Manager', NULL, ''),
(18, 'Sia Wan Ting @ Miko', 9, 1, NULL, 'No', 'Account Manager', NULL, ''),
(19, 'Benjamin bin Shamsuddin', 10, 1, NULL, 'No', 'Senior Partnership & Engagement Executive', NULL, ''),
(20, 'Amirul Syakirin bin Zaidun', 10, 1, NULL, 'No', 'Senior Marketing & Branding Executive', NULL, ''),
(21, 'Amir Hakimi bin Amir Hamzah', 10, 1, NULL, 'No', 'Content Creator', NULL, ''),
(22, 'Ainul Humaira binti Mohd Azman', 10, 1, NULL, 'No', 'Copywriter', NULL, ''),
(23, 'Fatin Suhana binti Mohd Khidzir', 11, 1, NULL, 'No', 'Scrum Master', NULL, ''),
(24, 'Muhamad Ridzuan bin Mohd Yazid Goi', 11, 1, NULL, 'No', 'R&D Developer', NULL, ''),
(25, 'Noorzaini Ilhami bin Mohd Noor', 11, 1, NULL, 'No', 'Lead Architecture Development', NULL, ''),
(26, 'Ahmad Zuhaili bin Hamdan', 11, 1, NULL, 'No', 'Senior Architecture Developer', NULL, ''),
(27, 'Muhammad Hakiim bin Muhammad Mislam', 11, 1, NULL, 'No', 'Senior Architecture Developer', NULL, ''),
(28, 'Muhammad Syamil bin Mazalan', 11, 1, NULL, 'No', 'Senior Architecture Developer', NULL, ''),
(29, 'Muhammad Asyraf Afif bin Ab Samad', 11, 1, NULL, 'No', 'Architecture Developer', NULL, ''),
(30, 'Nik Jefni Ariff bin Nik Shamsul Bahrim', 11, 1, NULL, 'No', 'Architecture Developer', NULL, ''),
(31, 'Ahmad Asnawi bin Saharuddin', 11, 1, NULL, 'No', 'Lead Hub Development', NULL, ''),
(32, 'Mohammad Khairunnaim bin Azman', 11, 1, NULL, 'No', 'Senior Hub Developer', NULL, ''),
(33, 'Muhammad Eizlan bin Edi Remi', 11, 1, NULL, 'No', 'Hub Developer', NULL, ''),
(34, 'Khairul Azmi bin Abdul Rashid', 11, 1, NULL, 'No', 'Lead POS Development', NULL, ''),
(35, 'Farah Syahirah binti Abdul Rahim', 11, 1, NULL, 'No', 'POS Developer', NULL, ''),
(38, 'Syafiq Aiman bin Sobri', 11, 1, NULL, 'No', 'POS Developer', NULL, ''),
(40, 'Muhammad Raffiq bin Mohd Khalil', 12, 1, NULL, 'No', 'Product Manager', NULL, ''),
(41, 'Nur Aina Arina binti Razali', 12, 1, NULL, 'No', 'Business Analyst', NULL, ''),
(42, 'Siti Nursyafiqah binti Mohd Rode', 12, 1, NULL, 'No', 'Business Analyst', NULL, ''),
(43, 'Nuraisyah binti Ibrahim', 12, 1, NULL, 'No', 'Web Tester', 1, ''),
(44, 'Muhamad Syafiee bin Anis', 13, 1, NULL, 'No', 'Customer Support Manager', NULL, ''),
(45, 'Putera Nur Aidil bin Kamarudin', 13, 1, NULL, 'No', 'Senior Support Executive', NULL, ''),
(46, 'Muhammad Hazim bin Ahmad', 13, 1, NULL, 'No', 'Senior Support Executive', NULL, ''),
(47, 'Muhammad Khairul Ikhwan bin Mazlan', 13, 1, NULL, 'No', 'Support Executive', NULL, ''),
(48, 'Nurul Farhana binti Azman', 13, 1, NULL, 'No', 'Support Executive', NULL, ''),
(49, 'Khairul Haiqal bin Suhaimi', 13, 1, NULL, 'No', 'Support Executive', NULL, ''),
(50, 'Nuqman Arif bin Norazmi', 13, 1, NULL, 'No', 'Support Executive', NULL, ''),
(51, 'Nur Aina Auni binti Ramlan', 13, 1, NULL, 'No', 'Support Executive', NULL, ''),
(52, 'Nur Syarafana binti Mohd Nazri', 13, 1, NULL, 'No', 'Support Executive', NULL, ''),
(53, 'Mohammad Nuzul Khalis bin Mohamad Wazir', 13, 1, NULL, 'No', 'Support Executive', NULL, ''),
(54, 'Mohd Lazim bin Mukhtar', 13, 1, NULL, 'No', 'Support Executive', NULL, ''),
(55, 'Khairul Syafiq bin Dzainuddin', 14, 1, NULL, 'No', 'Senior Account & Finance Executive', NULL, ''),
(56, 'Nursyafiqah binti Ishak', 14, 1, NULL, 'No', 'Account & Finance Executive', NULL, ''),
(57, 'Nur Diana binti Mohd Yusoff', 14, 1, NULL, 'No', 'Account & Finance Executive', NULL, ''),
(58, 'Mayzathul Khusny binti Shamsulakmal', 14, 1, NULL, 'No', 'Corporate Finance Executive', NULL, ''),
(59, 'Fatin Nabilah binti Nordin', 14, 1, NULL, 'No', 'Procurement Executive', NULL, ''),
(60, 'Hasnida Faratul binti Samsudin', 15, 1, NULL, 'No', 'HR Manager', NULL, ''),
(61, 'Noor Hamizah binti Jamaluddin', 15, 1, NULL, 'No', 'HR Executive (Payroll & Discipline)', NULL, ''),
(62, 'Muhammad Fariz Izzat bin Mohd Rode', 15, 1, NULL, 'No', 'HR Assistant', NULL, ''),
(63, 'Noor Ain Shahira binti Shaari', 15, 1, NULL, 'No', 'Administrative Executive', NULL, ''),
(64, 'Nor Nubailah binti Baharon', 15, 1, NULL, 'No', 'General Assistant (Cleaning)', NULL, ''),
(65, 'Norafiqah binti Ibrahim', 15, 1, NULL, 'No', 'General Assistant (Cleaning)', NULL, ''),
(66, 'Asimah binti Sulaiman', 16, 1, NULL, 'No', 'Senior Compliance Executive', NULL, ''),
(67, 'Ahmad AlfHajri bin Ahmad Japar', 17, 1, NULL, 'No', 'Part Time', NULL, ''),
(68, 'Shahidatul Aqira binti Sharien', 18, 1, NULL, 'No', 'Intern', NULL, ''),
(69, 'Muhammad Najmuddin', 18, 1, NULL, 'No', 'Intern', NULL, ''),
(70, 'Muhammad Rizal bin Abd Razak', 18, 1, NULL, 'No', 'Intern', NULL, ''),
(71, 'Muhammad Farhan bin Abdul Salam', 18, 1, NULL, 'No', 'Intern', NULL, ''),
(72, 'Nuraila Syamimi binti Zulkhairi', 18, 1, NULL, 'No', 'Intern', NULL, ''),
(73, 'Muhammad Haiqal Hakimi bin Mohd Rozman', 18, 1, NULL, 'No', 'Intern', NULL, ''),
(74, 'Sonia Lee', 19, 1, NULL, 'No', 'Sales Executive', NULL, ''),
(75, 'Fatimah binti Mohd Sapari', 19, 1, NULL, 'No', 'Renewal Executive', NULL, ''),
(76, 'Nur Fatihah binti Remali', 19, 1, NULL, 'No', 'Sales Admin Executive', NULL, ''),
(77, 'Muhammad Ihsan bin Zukepli', 19, 1, NULL, 'No', 'Installation Executive', NULL, ''),
(78, 'Nurul Asyikin binti Azmi', 19, 1, NULL, 'No', 'Support Executive', NULL, ''),
(79, 'Nurul Jannah binti Abdul Ghani', 19, 1, NULL, 'No', 'Support Executive', NULL, ''),
(80, 'Najihah binti Muhamad Shahrel', 20, 1, NULL, 'No', 'Co-Founder', NULL, ''),
(81, 'Nurul Hanna binti Mohamad Basri', 20, 1, NULL, 'No', 'Influencer Manager', NULL, ''),
(82, 'Mohd Tirmizi bin Kasim', 20, 1, NULL, 'No', 'Logistic and Support Representative', NULL, ''),
(83, 'Muhammad Shahrir bin Bahar', 20, 1, NULL, 'No', 'Merchant Onboarder', NULL, ''),
(84, 'Khairul Bariah binti Abdul Razak', 20, 1, NULL, 'No', 'Operation Executive', NULL, ''),
(85, 'Nur Anis binti Muhammad Azrul', 18, 1, NULL, 'No', 'Intern Celab Star', NULL, ''),
(86, 'Andrian Winata', 21, 1, NULL, 'No', 'Architecture Developer', NULL, ''),
(87, 'Fahmi Dzulqarnain', 21, 1, NULL, 'No', 'Architecture Developer', NULL, ''),
(88, 'Indah Wahyuandillah', 21, 1, NULL, 'No', 'Architecture Developer', NULL, ''),
(89, 'Muhammad Athaberyl Ramadhyli Adl', 21, 1, NULL, 'No', 'Architecture Developer', NULL, ''),
(90, 'Risma Ananda Harby', 21, 1, NULL, 'No', 'Architecture Developer', NULL, ''),
(91, 'Tilis Tiadi', 21, 1, NULL, 'No', 'Architecture Developer', NULL, ''),
(92, 'Shu ', NULL, 7, NULL, 'No', '', NULL, ''),
(93, 'Zharfan ', NULL, 7, NULL, 'No', '', NULL, ''),
(94, 'Samahah', NULL, 7, NULL, 'No', '', NULL, ''),
(95, 'Farid ', NULL, 7, NULL, 'No', '', NULL, ''),
(96, 'Rizal Zainuddin ', NULL, 2, NULL, 'No', '', NULL, ''),
(97, 'Tunku Omar Asraf Bin Tengku\r\nHasmuddin', 22, 2, NULL, 'No', '', NULL, ''),
(98, 'Reshma Binti Abdull Malik', 23, 7, NULL, 'No', '', NULL, ''),
(99, 'Chris Toh', 24, 2, NULL, 'No', '', NULL, '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

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

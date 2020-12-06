-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2020 at 12:17 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Technology', '2020-11-30 10:02:21', '2020-11-30 10:02:21'),
(2, 'Engineering', '2020-11-30 10:02:21', '2020-11-30 10:02:21'),
(3, 'Government', '2020-11-30 10:02:21', '2020-11-30 10:02:21'),
(4, 'Medical', '2020-11-30 10:02:21', '2020-11-30 10:02:21'),
(5, 'Construction', '2020-11-30 10:02:21', '2020-11-30 10:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `cname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `cname`, `slug`, `address`, `phone`, `website`, `logo`, `cover_photo`, `slogan`, `description`, `created_at`, `updated_at`) VALUES
(1, 4, 'Tremblay, Watsica and Feeney', 'tremblay-watsica-and-feeney', '8255 Schowalter Gateway Suite 847\nNew Joeymouth, ME 01584', '(646) 220-0568', 'sanford.net', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Saepe et et laudantium laboriosam minus. Est repellat expedita asperiores quod eligendi aut iste. Reprehenderit rerum debitis aliquam ipsum.', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(2, 11, 'Hahn-Gutkowski', 'hahn-gutkowski', '102 Sauer Junction Apt. 359\nPort Ninastad, NC 28459-2727', '1-629-907-0127 x978', 'kulas.com', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Dolores magnam vero sed sed voluptatem ut. Et nostrum sint cumque sequi nemo quasi sed. Nihil maiores quis corporis similique. Et assumenda aut nemo repellat. Exercitationem eum consequatur possimus eaque totam officia eveniet. Quo ex magni non incidunt e', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(3, 16, 'Konopelski, Hettinger and Toy', 'konopelski-hettinger-and-toy', '703 Moen Valleys\nSouth Tre, TN 31132', '1-931-699-4318 x6946', 'stracke.com', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Eum nam rerum itaque. Itaque ratione quasi dolores distinctio qui. Maxime corrupti dolores rerum enim ut non occaecati. Officiis voluptatum rerum illo inventore harum vitae.', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(4, 13, 'Rodriguez PLC', 'rodriguez-plc', '646 Luettgen Club\nWest Gonzalo, AL 38662', '(560) 601-7375 x31925', 'rau.com', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'In saepe optio unde labore. Debitis eveniet quia dicta alias ut quidem quis ipsa. Repellat autem quo soluta odio et. Iusto voluptas iste voluptas aliquam alias.', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(5, 8, 'Friesen LLC', 'friesen-llc', '5814 Maggio Forest\nPort Leathaton, OH 03821-9292', '(745) 221-0929 x725', 'howe.net', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Quo odit aspernatur eum necessitatibus rerum consequuntur. Facilis unde sint eos est repellendus quo ut. Ipsam sed commodi consequuntur voluptates. Nulla ut ut magnam molestiae aliquam quo. Odio optio est culpa blanditiis. Repellendus qui culpa facilis ma', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(6, 8, 'Price-Runolfsdottir', 'price-runolfsdottir', '9999 Jaskolski Streets Apt. 839\nWainoport, RI 93544-9008', '454-633-2923 x3154', 'ritchie.com', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Iste dolores provident molestiae doloribus iusto sequi dolorem. Et amet vel molestias vero sed voluptatem beatae aut. Eveniet ducimus non eos. Occaecati recusandae rerum assumenda itaque tempore doloribus eos. Consequatur quae vel esse. Nemo repudiandae q', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(7, 15, 'Osinski PLC', 'osinski-plc', '9121 Stone Mission\nWillfort, KY 56858', '1-256-275-5430 x66225', 'schowalter.biz', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Quaerat fuga repellendus sint aut aliquid molestias. Quod ut consequatur amet et architecto ut rerum. Ipsa laboriosam ea nam veniam. Dolorum aut quaerat impedit dignissimos quis eum odio. Rerum ipsum quia et nam. Aut non tempore et laborum. Dicta necessit', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(8, 16, 'Jakubowski-Bailey', 'jakubowski-bailey', '976 Dakota Corner Apt. 519\nEast Odellhaven, OK 04818', '1-814-502-9910 x23247', 'huel.com', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Vel velit tempora quia nam. Voluptas debitis velit incidunt et. Quia delectus est non ut asperiores magnam est. Porro veritatis atque magnam aut aut esse autem odio. Dolorem repellat quas asperiores commodi placeat alias. Ut natus iste iste fugit. Explica', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(9, 19, 'Rogahn Group', 'rogahn-group', '7049 Reid Manor Suite 127\nMarksville, NC 60125-3997', '338.667.8029 x4275', 'wisoky.biz', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Ut adipisci aspernatur qui. Nostrum molestiae alias voluptatibus magni ut. Maiores consectetur voluptatem eos vel. Error quia necessitatibus fugit ut eos quisquam. Inventore deserunt autem voluptatem et aspernatur ipsam. Reprehenderit accusamus aspernatur', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(10, 19, 'Doyle Ltd', 'doyle-ltd', '12517 Johnson Coves\nKearachester, NE 38983-1559', '(674) 641-7140 x805', 'breitenberg.org', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Facilis tenetur sunt ab fuga. Optio ut commodi atque dolorum ut. Et ut qui dolores a enim nobis. Inventore sunt magni voluptate. Inventore et deserunt vel similique ullam alias sit dolore. Quasi nihil sint quo impedit et.', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(11, 9, 'Wilkinson-Fritsch', 'wilkinson-fritsch', '968 Elissa Overpass Apt. 824\nSouth Violettefurt, VA 40732-1303', '998.368.7872', 'kovacek.com', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Animi odit non accusantium eligendi dolorem aut. Deleniti sed est architecto ut eaque iure enim. Eius facilis neque est.', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(12, 13, 'Gislason Inc', 'gislason-inc', '4194 Veum Dam\nWest Trenton, OH 93654-2860', '376-318-4090 x26265', 'kozey.com', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Pariatur et voluptas quo voluptatibus reprehenderit. Delectus in odit velit quo. Deleniti corporis id exercitationem iste non. Dolores ratione sit voluptas ut dolore quos ab. Ipsa in voluptatem voluptas fugit rem alias. Aut voluptas sapiente dolor ipsum. ', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(13, 19, 'Wolff-Beatty', 'wolff-beatty', '3597 Bartoletti Bypass\nWest Alda, ID 77556', '989.533.8066 x881', 'stanton.com', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Officiis officiis vel ad repudiandae ad nisi ipsam. Reprehenderit quidem voluptatem nihil consectetur est aut. Reiciendis et veniam rerum a itaque.', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(14, 16, 'Lubowitz-Schinner', 'lubowitz-schinner', '8386 Bosco Mount Apt. 527\nGaylordbury, NM 51423-2681', '(486) 274-4794', 'okuneva.biz', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Officiis ipsum sed temporibus. Itaque sed dolor est excepturi rerum aut ut. Est voluptatem magnam animi in dolor nostrum. Aut praesentium officiis voluptas nemo in sed. Neque animi ad nihil aut magnam qui. Minus inventore cum repellendus fugiat.', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(15, 11, 'Feil, Purdy and Balistreri', 'feil-purdy-and-balistreri', '7656 Brandon Path\nWilmerhaven, RI 60685', '+1-502-901-2793', 'white.com', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Repellat ut ut reiciendis corrupti dolorum. Dolorem nihil quibusdam sunt esse quisquam dignissimos.', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(16, 17, 'Smith-Deckow', 'smith-deckow', '13154 Ulices Squares Apt. 836\nSarinafort, RI 96028', '773-695-2826 x78448', 'schuppe.biz', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Fugit ullam dolores et quas ex in molestiae consequatur. Veniam similique omnis beatae earum est magni. Voluptas molestiae ipsum repellendus esse in expedita aliquam. Rem earum qui nihil. Dolore voluptates incidunt tempore. Quos autem molestiae sed minus.', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(17, 15, 'Feest and Sons', 'feest-and-sons', '429 Israel Underpass\nStantonview, HI 76385', '(736) 979-1407 x6947', 'mayer.com', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Qui ut dolor exercitationem rerum nobis ut sunt. Cumque numquam cumque aut fugiat ipsa ad et ad. A cumque unde cupiditate labore repudiandae. Modi excepturi molestiae corrupti ex sunt architecto. Aspernatur qui delectus exercitationem ut assumenda qui aut', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(18, 11, 'Ward, Skiles and Konopelski', 'ward-skiles-and-konopelski', '45935 Helene Lodge\nSouth Enochberg, AR 29653-7454', '+1.919.262.5143', 'nitzsche.com', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Quo quisquam explicabo aut libero. Impedit ullam enim dolorum. Asperiores dolorem culpa perspiciatis maiores aperiam. Id vero id quis laudantium non et sunt rerum. Iusto laudantium ex consequatur doloremque sed. Quod sit sapiente laboriosam hic nostrum ea', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(19, 18, 'Stanton-Steuber', 'stanton-steuber', '482 Brooklyn Lakes\nTyrellbury, RI 10055-5523', '480-956-0220 x8455', 'gerhold.com', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Ut aspernatur deleniti voluptatem aperiam nostrum ullam numquam. Quaerat nulla animi error. Error odio qui et nisi nihil.', '2020-11-30 10:02:20', '2020-11-30 10:02:20'),
(20, 11, 'Raynor Inc', 'raynor-inc', '7805 Benedict Burgs Apt. 921\nLake Catharine, OR 31803-7624', '(604) 498-9397', 'mclaughlin.com', 'upload/test.png', 'cover/test1.png', 'learn-earn and grow', 'Quam ut facilis et. Voluptates nobis repellat voluptatem omnis voluptas tempora. Modi eos illum quam praesentium. Maxime hic ut dolores sit ad. At et ut doloremque expedita eos esse ut. Dicta veniam nesciunt dicta qui iste quae. Expedita eum omnis et volu', '2020-11-30 10:02:20', '2020-11-30 10:02:20'),
(21, 23, 'ABC Technology', 'abc-technology', '', '', '', '', '', '', '', '2020-11-30 23:31:14', '2020-11-30 23:31:14'),
(22, 45, 'Aqua', 'aqua', '', '', '', '', '', '', '', '2020-12-02 02:16:48', '2020-12-02 02:16:48'),
(23, 46, 'Testing', 'testing', '', '', '', '', '', '', '', '2020-12-02 02:19:11', '2020-12-02 02:19:11'),
(24, 47, 'Qerty', 'qerty', '', '', '', '', '', '', '', '2020-12-02 02:21:27', '2020-12-02 02:21:27'),
(25, 48, 'DSa', 'dsa', '', '', '', '', '', '', '', '2020-12-02 02:26:16', '2020-12-02 02:26:16'),
(26, 49, 'rtew', 'rtew', '', '', '', '', '', '', '', '2020-12-02 02:29:35', '2020-12-02 02:29:35'),
(27, 50, 'eter', 'eter', '', '', '', '', '', '', '', '2020-12-02 02:31:05', '2020-12-02 02:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourates`
--

CREATE TABLE `favourates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourates`
--

INSERT INTO `favourates` (`id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 19, 22, '2020-12-02 03:29:20', '2020-12-02 03:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `last_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `number_of_vacancy` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `company_id`, `title`, `slug`, `description`, `roles`, `category_id`, `position`, `address`, `type`, `status`, `last_date`, `created_at`, `updated_at`, `number_of_vacancy`, `experience`, `gender`, `salary`) VALUES
(1, '11', '12', 'Fugit ut culpa sapiente esse. Sed ut voluptatibus tempora architecto qui doloribus similique. Sed magnam a sed distinctio quis necessitatibus ab. Delectus pariatur expedita et id.', 'fugit-ut-culpa-sapiente-esse-sed-ut-voluptatibus-tempora-architecto-qui-doloribus-similique-sed-magnam-a-sed-distinctio-quis-necessitatibus-ab-delectus-pariatur-expedita-et-id', 'Autem tenetur dignissimos id illum. Incidunt assumenda et beatae et provident distinctio molestias. Temporibus quibusdam veritatis et nesciunt. Voluptatum consequatur officia id magni tempore molestias quod. Consequatur sint iste beatae eligendi.', 'Eos accusantium vitae deleniti. Fuga voluptatum ipsam quaerat voluptatem doloribus. Qui non doloremque corrupti quas dolores. Non aut iste porro accusantium.', 1, 'Order Filler', '450 Bergstrom Manor Apt. 996\nFredtown, GA 65665', 'fulltime', 1, '2012-10-28', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 10, 8, 'male', '20407'),
(2, '15', '7', 'Tempore ut autem esse cumque voluptatem sit voluptatibus. Non magni cum et architecto. Sed quidem mollitia fugiat consequatur.', 'tempore-ut-autem-esse-cumque-voluptatem-sit-voluptatibus-non-magni-cum-et-architecto-sed-quidem-mollitia-fugiat-consequatur', 'Tempore est nulla voluptas eum quod beatae dolores doloremque. Ipsum optio dignissimos nobis enim eius. Minima quia error sed ea dolores praesentium. Non repudiandae occaecati quasi nulla error. Quo rerum porro et in eum facilis. Dicta quam nemo in doloribus a vel delectus. Sit dicta dolore quia delectus. Nihil impedit officia et explicabo commodi eum doloribus nisi. Est beatae ex in culpa dolore soluta. Soluta dolore ducimus distinctio dolores. Voluptas enim officia aspernatur nihil reprehenderit. Sed soluta et et sint nisi quisquam.', 'Ratione quia qui minus tenetur. In dolores doloribus vel fugiat et. Architecto voluptates sapiente voluptates enim veniam placeat quia. Dolorum ex ducimus quos cum quae aut nostrum.', 5, 'Director Of Talent Acquisition', '76453 Treutel Parkway\nSouth Damaris, OR 39545', 'fulltime', 0, '1993-07-11', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 10, 4, 'female', '36506'),
(3, '16', '14', 'Repudiandae quidem aut dolorum qui et. Velit hic sint commodi ullam harum provident. Tempore at animi illum voluptatum dolorem. Numquam sunt hic velit et et et voluptas.', 'repudiandae-quidem-aut-dolorum-qui-et-velit-hic-sint-commodi-ullam-harum-provident-tempore-at-animi-illum-voluptatum-dolorem-numquam-sunt-hic-velit-et-et-et-voluptas', 'Dolorem cum consequatur fuga illo temporibus. Dolores vel vero natus atque sed. Et et itaque corrupti itaque explicabo et. Quam qui facilis inventore saepe cum rerum quo. Culpa ut ullam placeat dolor qui eius. Accusantium dignissimos numquam cum quasi assumenda earum. Tempore dignissimos aut repudiandae labore temporibus ut aut. Eum vero vitae esse cum quod. Eaque consequatur amet aut velit.', 'Quis quidem sint et cum qui repellendus. Explicabo et nobis consequuntur qui. Asperiores ab ut adipisci. Ut distinctio reprehenderit impedit atque quasi non sunt.', 4, 'Receptionist and Information Clerk', '7357 Roob Vista Suite 138\nDexterberg, OH 99784-7831', 'fulltime', 1, '2013-07-30', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 6, 4, 'male', '21757'),
(4, '3', '3', 'Ut numquam debitis est ut. Dolorem eaque est consequuntur ullam vel ipsum est. Ea amet velit vel quia facere sit animi.', 'ut-numquam-debitis-est-ut-dolorem-eaque-est-consequuntur-ullam-vel-ipsum-est-ea-amet-velit-vel-quia-facere-sit-animi', 'Quisquam placeat dolorem excepturi dolorem consectetur voluptas magnam consectetur. Repellendus nobis id incidunt suscipit beatae. A nulla nemo quia aliquid enim. Id quia quis consequatur non et. Ipsam incidunt aut soluta aut. Ut molestiae beatae modi quo culpa ratione. Molestiae quae exercitationem et eum optio et et.', 'Ea rerum minima deserunt. Sequi velit est eum pariatur corporis in. Quos ab et reiciendis.', 3, 'Law Clerk', '69375 Zoie Spring\nDagmarshire, WY 05105', 'fulltime', 1, '1991-01-31', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 6, 5, 'male', '48789'),
(5, '9', '4', 'Exercitationem ut sequi in eveniet ipsam. Reiciendis soluta eaque ducimus.', 'exercitationem-ut-sequi-in-eveniet-ipsam-reiciendis-soluta-eaque-ducimus', 'Enim eum explicabo eligendi sed recusandae doloribus. Itaque quaerat tenetur fugit ut. Optio assumenda debitis voluptates mollitia nulla.', 'Totam qui nesciunt possimus nobis modi. Facere quaerat ut unde distinctio.', 5, 'Heating Equipment Operator', '7889 Haag Extensions\nEast Joyland, OK 33989-3950', 'fulltime', 1, '1980-09-13', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 7, 6, 'female', '23186'),
(6, '3', '7', 'Nihil rerum iste natus officia. Fugiat delectus et nemo maiores animi nobis vitae. Nostrum mollitia fuga ut quas.', 'nihil-rerum-iste-natus-officia-fugiat-delectus-et-nemo-maiores-animi-nobis-vitae-nostrum-mollitia-fuga-ut-quas', 'Possimus recusandae vel ullam eum velit in. Asperiores dolorem dolorem doloremque repellat ipsam odio. Nulla velit possimus alias. Tempora dolores cumque distinctio accusantium expedita nihil praesentium. Hic unde quae quas repellendus. Voluptatem velit animi animi voluptatum. Eligendi perspiciatis excepturi eaque enim sunt non minima cupiditate.', 'Consectetur ipsa est voluptates occaecati animi sint recusandae ut. Occaecati asperiores cupiditate ipsam. Non unde officiis non enim quo quibusdam laborum voluptates.', 1, 'Gaming Dealer', '778 Will Centers\nLake Makenzie, CO 97904', 'fulltime', 1, '2017-05-29', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 7, 9, 'female', '38717'),
(7, '18', '7', 'Dignissimos nemo ipsam maiores autem. Ut quae illum maxime ut. Necessitatibus illo assumenda quia.', 'dignissimos-nemo-ipsam-maiores-autem-ut-quae-illum-maxime-ut-necessitatibus-illo-assumenda-quia', 'Veritatis rerum neque exercitationem consequatur. Eligendi ea consequatur exercitationem repellat libero esse qui modi. Fuga eaque minus et perferendis repellat nihil ad. Dolores dolorum aut dolor id. Cum incidunt sed hic explicabo aperiam accusantium libero dignissimos. Sunt perferendis voluptatem sed ducimus.', 'Nihil iste deleniti est aut deleniti repellat. Cumque est doloremque quam neque aut ducimus quaerat sed. Sed accusamus voluptates in vitae doloribus et.', 4, 'Broadcast News Analyst', '8314 Hazel Fork\nAubreechester, WV 73699', 'fulltime', 1, '2008-08-07', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 5, 3, 'female', '23135'),
(8, '12', '9', 'Magnam rem sit praesentium accusantium aut eum quis. Dolorem quia delectus ullam eum doloremque doloribus.', 'magnam-rem-sit-praesentium-accusantium-aut-eum-quis-dolorem-quia-delectus-ullam-eum-doloremque-doloribus', 'Quibusdam architecto consequuntur perspiciatis eaque praesentium voluptatem. Fugit fugiat atque laudantium unde. In deserunt impedit ratione numquam. Vitae est quia quia adipisci vel. Tempora vel nihil quis nesciunt. Veritatis voluptatem veritatis aliquid tenetur. Eum aut beatae sit veniam facere modi. Totam magni eveniet animi illo laboriosam corrupti sed id.', 'A perferendis laudantium quasi dolorem sed ea rerum. Officiis aut sint assumenda. Tempora quia incidunt cum nam quia recusandae ducimus. Numquam molestiae molestias quam doloribus velit nulla omnis.', 2, 'Architectural Drafter OR Civil Drafter', '955 Wintheiser Port\nNew Krystina, MD 23765', 'fulltime', 0, '1987-03-18', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 7, 1, 'female', '44983'),
(9, '14', '16', 'Cum possimus provident qui nihil. Alias in ratione vitae. Officiis necessitatibus officia et hic veritatis consectetur. Fugit nulla voluptatem qui magni id similique.', 'cum-possimus-provident-qui-nihil-alias-in-ratione-vitae-officiis-necessitatibus-officia-et-hic-veritatis-consectetur-fugit-nulla-voluptatem-qui-magni-id-similique', 'Labore qui illo sed. Qui vel quaerat voluptas nemo. Delectus quo autem voluptas qui quis quam. Quod eveniet repellendus perferendis sint. Ipsa itaque odit corrupti sed voluptatem perspiciatis.', 'Est adipisci et quod hic et non quas neque. Quidem blanditiis assumenda ratione dolor deserunt sequi. Molestias alias hic omnis ut eaque molestiae aut. Quod quia est neque accusantium nam.', 3, 'Computer Software Engineer', '3499 Barrett Glen\nSauerview, WI 93800', 'fulltime', 1, '1976-03-13', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 8, 8, 'male', '25371'),
(10, '11', '16', 'Consectetur expedita praesentium fugiat. Velit a aut qui est molestiae dolorum eaque. Voluptatum enim quis error quia aperiam.', 'consectetur-expedita-praesentium-fugiat-velit-a-aut-qui-est-molestiae-dolorum-eaque-voluptatum-enim-quis-error-quia-aperiam', 'Officia omnis rem assumenda mollitia blanditiis. Totam et saepe labore aperiam tempora blanditiis tenetur. Et placeat voluptatum quaerat ea est. Ipsum nemo iusto deserunt vel sed non ipsum. Ducimus neque est saepe maxime similique accusantium ad soluta. Debitis aliquid laudantium aut ut voluptatem voluptatem delectus excepturi. Nostrum vel eum nihil possimus repellendus ab. Quia eius maxime nihil placeat. Est impedit facere voluptatem molestias quod neque voluptas sunt. Eaque soluta rem blanditiis.', 'Atque aliquid ut accusantium. Qui ullam aut aliquam et cumque rerum iusto fuga. Possimus et vitae pariatur porro dicta reiciendis.', 3, 'Electronic Drafter', '8920 Dominique Grove\nAndersonland, MA 34609-3217', 'fulltime', 0, '2010-09-05', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 4, 8, 'male', '18375'),
(11, '20', '19', 'A provident vel perferendis beatae ut dolorem libero. Ea dolorem modi quod molestiae illum unde. Consequatur repellendus quis culpa quasi.', 'a-provident-vel-perferendis-beatae-ut-dolorem-libero-ea-dolorem-modi-quod-molestiae-illum-unde-consequatur-repellendus-quis-culpa-quasi', 'Dolorem eum ipsam placeat velit. Est temporibus dolores laborum id. Doloribus et impedit velit voluptas qui nobis. Deserunt rerum maxime et atque et accusantium. Nobis et odit quis optio. Consectetur asperiores assumenda aut enim quasi assumenda dolor. Cupiditate quis quis quam consequatur voluptatum sunt veniam vitae. Ea ea tempora repudiandae debitis ut quasi beatae. Omnis vel nihil rerum quam et aliquam hic. Mollitia dolor qui omnis veritatis consequuntur.', 'Qui libero perspiciatis aliquid ratione numquam eligendi. Vel id quidem quasi sequi quaerat quia. Iusto odio ut quos qui iusto. Aperiam accusantium totam dolorum quos iste aut.', 3, 'Logging Tractor Operator', '878 Blick Underpass\nWest Kylieberg, NE 65318', 'fulltime', 0, '2014-07-04', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 6, 3, 'male', '36923'),
(12, '19', '4', 'Dicta perspiciatis expedita omnis quis. Et et repellat quaerat ex. Ab sit in veritatis minus. Unde adipisci aliquam voluptatem est.', 'dicta-perspiciatis-expedita-omnis-quis-et-et-repellat-quaerat-ex-ab-sit-in-veritatis-minus-unde-adipisci-aliquam-voluptatem-est', 'Quas facere ut nam provident ad. Facere cum expedita minima molestiae aut dolorem aut. Dolor maxime vel omnis quod animi ut. Non nam saepe corporis blanditiis ratione. Quia sed et facilis. Odio et repellendus aliquam eum voluptate.', 'Ipsum omnis consequatur voluptas et. Magnam ipsum molestias dolor. Quia aut harum facilis.', 3, 'Massage Therapist', '6435 Dickens Isle\nKuhicshire, NC 64231-6061', 'fulltime', 0, '2011-01-17', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 9, 1, 'female', '14332'),
(13, '12', '9', 'Dicta omnis totam totam ratione. Quam et error accusantium minima. Deserunt tempore aut quasi et aspernatur assumenda quod doloribus. Accusamus animi omnis ut est ipsa quisquam quisquam.', 'dicta-omnis-totam-totam-ratione-quam-et-error-accusantium-minima-deserunt-tempore-aut-quasi-et-aspernatur-assumenda-quod-doloribus-accusamus-animi-omnis-ut-est-ipsa-quisquam-quisquam', 'Et sed excepturi quas ea dolor impedit. Et voluptatem est blanditiis expedita cum fugiat quos sit. Qui deserunt laboriosam quos delectus tenetur.', 'Et sequi rerum similique error dolorum rerum iure delectus. Omnis eos optio reprehenderit dolores optio.', 4, 'Creative Writer', '8361 Kohler Pine Suite 902\nNew Evalynstad, MO 92758', 'fulltime', 1, '1992-11-11', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 5, 8, 'female', '43120'),
(14, '13', '9', 'Ut laborum sint et eos pariatur numquam labore. Quae nemo architecto laboriosam nobis.', 'ut-laborum-sint-et-eos-pariatur-numquam-labore-quae-nemo-architecto-laboriosam-nobis', 'Debitis architecto explicabo distinctio. Soluta earum quis qui fuga quia sunt. Est magni blanditiis repellat architecto vel et. Quas aliquid non soluta neque error aspernatur sint. Et autem qui sed voluptate accusantium nam velit.', 'Aut expedita pariatur provident numquam. Harum iste dicta ut ipsa. Quia recusandae et sit velit officia quis. Et dolor delectus pariatur alias.', 2, 'Elementary and Secondary School Administrators', '66864 Zemlak Trafficway Apt. 068\nChristview, TX 43631-6117', 'fulltime', 1, '1998-08-15', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 2, 4, 'female', '40827'),
(15, '14', '13', 'Voluptatem inventore inventore qui aperiam. Distinctio ad ut quod odit. Dolore dolorem rem ipsam nisi rerum iusto. Eos et non esse.', 'voluptatem-inventore-inventore-qui-aperiam-distinctio-ad-ut-quod-odit-dolore-dolorem-rem-ipsam-nisi-rerum-iusto-eos-et-non-esse', 'Aut tempore autem eos placeat totam repellat beatae. Unde culpa iste quia sit quia doloremque vero nisi. Et saepe quidem blanditiis ducimus assumenda rerum voluptas sed. Hic perspiciatis dolorem pariatur animi placeat cum. Aut nemo temporibus delectus vel. Asperiores necessitatibus aliquid aliquam porro fuga atque nam. Impedit deserunt quis qui.', 'Enim qui laborum qui culpa molestiae. Qui dolores illum culpa. Omnis eum debitis aut.', 3, 'Order Filler', '4659 Yost Route\nLake Krystal, NC 87671-9722', 'fulltime', 0, '1971-01-11', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 6, 10, 'male', '39315'),
(16, '2', '7', 'Velit animi repudiandae ex quisquam incidunt. Quia perferendis vero assumenda.', 'velit-animi-repudiandae-ex-quisquam-incidunt-quia-perferendis-vero-assumenda', 'In enim et quia perferendis occaecati. Harum dolore eveniet accusamus natus ad sed sed. Officiis quia officia non perferendis debitis sunt blanditiis. Et repellat fuga sapiente. Earum odit ut itaque natus odit voluptatem. Officiis sit exercitationem modi impedit sapiente officiis beatae aliquid. Rerum ipsam et esse consequatur tempora eveniet.', 'Nihil non eos qui ut vel officiis. Et et velit vel et molestias quos. Facere sint iusto pariatur provident. Ut deserunt esse consequatur dolorum tempora vel. Beatae suscipit culpa quae velit.', 2, 'Dredge Operator', '74282 Miracle Tunnel Apt. 545\nIkeborough, UT 34502-5803', 'fulltime', 0, '1999-01-13', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 3, 6, 'female', '36014'),
(17, '17', '2', 'Dolores voluptatem accusamus quia consequatur qui. Vero quae commodi eum eos. Assumenda et odit non quos dolore architecto tempora et.', 'dolores-voluptatem-accusamus-quia-consequatur-qui-vero-quae-commodi-eum-eos-assumenda-et-odit-non-quos-dolore-architecto-tempora-et', 'Eum ut possimus magnam sapiente voluptatem quo. Sint ut id expedita sint fugit. Ipsa dolorem quam consectetur quo. Voluptates expedita quia illo tempora. Neque in sequi quis unde asperiores impedit.', 'Quae excepturi nisi ea deserunt ab deleniti est. Aut possimus non recusandae similique. Praesentium qui ut quaerat et dolores et. Eaque eum praesentium earum recusandae quidem et architecto.', 4, 'Dietetic Technician', '529 Gladys Lane Suite 428\nWest Blanchehaven, SD 25807', 'fulltime', 1, '1988-08-12', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 8, 7, 'male', '28870'),
(18, '20', '4', 'Qui sed fuga unde quis voluptates cum. Sit qui distinctio voluptatem ad ipsum deserunt in. Eius beatae odit repellendus ut recusandae delectus velit qui.', 'qui-sed-fuga-unde-quis-voluptates-cum-sit-qui-distinctio-voluptatem-ad-ipsum-deserunt-in-eius-beatae-odit-repellendus-ut-recusandae-delectus-velit-qui', 'Illo temporibus nihil fugiat vel nostrum est. Tempore deleniti et repellat.', 'Quidem at cupiditate officia tenetur repudiandae itaque impedit. Quis voluptatibus quia est iste. Enim laudantium odio et laudantium sunt ratione nulla. Sit minima ducimus quibusdam aperiam illo.', 2, 'Boiler Operator', '54397 Mariela Stream\nPort Kathryn, ID 61561', 'fulltime', 1, '1986-08-29', '2020-11-30 10:02:20', '2020-11-30 10:02:20', 8, 9, 'female', '48709'),
(19, '8', '20', 'Consequatur voluptatem sint blanditiis consectetur. Eius dignissimos non occaecati. Vel adipisci natus aliquid illo nam. Aliquam quis reiciendis neque quo ipsa.', 'consequatur-voluptatem-sint-blanditiis-consectetur-eius-dignissimos-non-occaecati-vel-adipisci-natus-aliquid-illo-nam-aliquam-quis-reiciendis-neque-quo-ipsa', 'Minima at quod commodi maiores et quibusdam. Quis est unde sunt distinctio dignissimos consequuntur. Non voluptatem provident quos dolore nesciunt amet tenetur repudiandae. Qui est autem quia nihil.', 'Ad aperiam dolores non animi. Itaque voluptatibus officiis recusandae quisquam. Iusto quos dolores porro cum et doloribus.', 4, 'Respiratory Therapist', '42018 Denesik Path Apt. 844\nReedton, OR 71971', 'fulltime', 1, '1983-04-13', '2020-11-30 10:02:21', '2020-11-30 10:02:21', 10, 6, 'male', '11517'),
(20, '13', '11', 'Et asperiores eius distinctio. Aperiam consequatur labore quo voluptate excepturi consequuntur. Minus qui totam ex placeat. In magnam maxime occaecati veritatis occaecati est nihil possimus.', 'et-asperiores-eius-distinctio-aperiam-consequatur-labore-quo-voluptate-excepturi-consequuntur-minus-qui-totam-ex-placeat-in-magnam-maxime-occaecati-veritatis-occaecati-est-nihil-possimus', 'Molestiae et architecto doloribus velit culpa. Est dolores id corrupti ut.', 'Voluptatum aut neque ad laborum. Animi voluptatum in inventore tenetur numquam beatae voluptas. Corrupti minus consequatur culpa facere. Deserunt maxime cupiditate ut non officiis aliquid.', 1, 'Photographic Process Worker', '85261 Russel Parkways\nLake Albina, ME 09274', 'fulltime', 1, '2001-11-25', '2020-11-30 10:02:21', '2020-11-30 10:02:21', 1, 8, 'female', '29956'),
(21, '23', '21', 'Web Developer', 'web-developer', 'Test', 'Dynamic Sites', 2, 'Web Engineer', 'K.Bagh', 'fulltime', 1, '2020-12-11', '2020-12-01 00:00:30', '2020-12-01 00:00:30', 4, 2, 'male', '500000-600000');

-- --------------------------------------------------------

--
-- Table structure for table `job_user`
--

CREATE TABLE `job_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_user`
--

INSERT INTO `job_user` (`id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 21, 22, '2020-12-01 09:52:37', '2020-12-01 09:52:37'),
(2, 19, 22, '2020-12-02 03:18:00', '2020-12-02 03:18:00');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_29_061123_create_profiles_table', 1),
(5, '2020_08_29_061402_create_companies_table', 1),
(6, '2020_08_29_061441_create_categories_table', 1),
(7, '2020_08_29_061532_create_jobs_table', 1),
(8, '2020_08_29_061852_create_job_user_table', 1),
(9, '2020_08_29_062054_create_favourates_table', 1),
(10, '2020_08_31_040754_add_phone_number_to_profiles_table', 1),
(11, '2020_09_04_154646_add_columns_to_jobs_table', 1),
(12, '2020_09_07_054228_create_roles_table', 1),
(13, '2020_09_07_054431_create_role_user_table', 1),
(14, '2020_09_07_134828_create_posts_table', 1),
(15, '2020_09_08_035919_create_testimonials_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `image`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'title', 'title', 'Content', 'uploads/om6M6ouMvZC8EubiCDfwJweuEKemO6zTeXGSWxnr.png', 1, NULL, '2020-12-02 23:15:50', '2020-12-02 23:56:15'),
(2, 'test', 'test', 'ewqew', 'uploads/wOprQGIkFn03aicp73wMCSNe7lSR5bmR9Ek5Nlk6.png', 1, '2020-12-02 23:22:10', '2020-12-02 23:19:02', '2020-12-02 23:22:10'),
(3, 'test', 'test', 'wqe', 'uploads/nZDXVoKZAjLYz0iwzvHL76QUsLoFc1nROeNqNb2x.jpeg', 1, '2020-12-02 23:28:13', '2020-12-02 23:22:23', '2020-12-02 23:28:13'),
(4, 'eqwe', 'eqwe', 'saq', 'uploads/PY15OdqnMtT7wjUcPZNSrvUaWsAQasa7b3iRJh73.jpeg', 1, NULL, '2020-12-02 23:28:29', '2020-12-02 23:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_letter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `address`, `phone_number`, `gender`, `dob`, `experience`, `bio`, `cover_letter`, `resume`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 22, 'qweasd', '322132', 'male', '2020-11-25', 'wqadsceazcawsczxcxzcz', 'wadscsacsafferzdveazfsz', 'public/files/HsbyIH2U6HXCVpWH9geC9UmDyOWzPdXaOMOrmoLh.jpeg', '', '1606797629.jpg', '2020-11-30 11:49:39', '2020-11-30 23:10:29'),
(23, 51, '', '', 'male', '2020-11-30', '', '', '', '', '', '2020-12-02 02:50:58', '2020-12-02 02:50:58'),
(24, 52, '', '', 'male', '2020-12-30', '', '', '', '', '', '2020-12-02 03:03:42', '2020-12-02 03:03:42'),
(25, 53, '', '', 'male', '2020-12-23', '', '', '', '', '', '2020-12-02 03:07:59', '2020-12-02 03:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-11-30 10:02:21', '2020-11-30 10:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 21, 1, NULL, NULL),
(2, 23, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `content`, `name`, `profession`, `video_id`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'Video', 'ohk', 483378749, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dariana Cormier', 'seeker', 'valentin.kozey@example.net', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JrDH2QNfrb', '2020-11-30 10:02:18', '2020-11-30 10:02:18'),
(2, 'Chad Bode', 'seeker', 'louvenia.schulist@example.org', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KjQ4QVOM9q', '2020-11-30 10:02:18', '2020-11-30 10:02:18'),
(3, 'Janiya Fritsch', 'seeker', 'natalie.auer@example.org', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tRb85BMzIv', '2020-11-30 10:02:18', '2020-11-30 10:02:18'),
(4, 'Sienna Schneider', 'seeker', 'vida14@example.net', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pOZOOeTC7S', '2020-11-30 10:02:18', '2020-11-30 10:02:18'),
(5, 'Dr. Jayme Heller MD', 'seeker', 'gertrude.moore@example.com', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tvDx5PIJ3t', '2020-11-30 10:02:18', '2020-11-30 10:02:18'),
(6, 'Trystan Wehner', 'seeker', 'mckenna.mills@example.org', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Du29zAt7I8', '2020-11-30 10:02:18', '2020-11-30 10:02:18'),
(7, 'Prof. Damian Gutmann DDS', 'seeker', 'nritchie@example.net', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ct8VNUirUN', '2020-11-30 10:02:18', '2020-11-30 10:02:18'),
(8, 'Tiffany Beer', 'seeker', 'lester98@example.net', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TcGzB9PjQO', '2020-11-30 10:02:18', '2020-11-30 10:02:18'),
(9, 'Bo Mills', 'seeker', 'zaltenwerth@example.org', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z1KlnjArWG', '2020-11-30 10:02:18', '2020-11-30 10:02:18'),
(10, 'Mrs. Fay Schuppe', 'seeker', 'torrey.wiza@example.com', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S8Dd7ITzVi', '2020-11-30 10:02:18', '2020-11-30 10:02:18'),
(11, 'Darrion Dicki', 'seeker', 'cassin.randi@example.org', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'l2ankUUsRl', '2020-11-30 10:02:18', '2020-11-30 10:02:18'),
(12, 'Teagan Shields', 'seeker', 'ludie.herman@example.org', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DWTVEp6iIQ', '2020-11-30 10:02:18', '2020-11-30 10:02:18'),
(13, 'Mike Cruickshank Jr.', 'seeker', 'carmen.fadel@example.org', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4k36KhGMGB', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(14, 'Justine Gorczany', 'seeker', 'zechariah.nikolaus@example.com', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oLRzowk9u1', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(15, 'Maximo Smith', 'seeker', 'tgorczany@example.net', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iOgqUVmG4b', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(16, 'Sunny Cruickshank', 'seeker', 'nwillms@example.net', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bs5coHp8Se', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(17, 'Claudie Bashirian', 'seeker', 'nbode@example.org', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p4HbsRak71', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(18, 'Amira Parisian', 'seeker', 'ervin.rohan@example.com', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NKRw4RJs3Q', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(19, 'Mrs. Allie Wilderman Jr.', 'seeker', 'mcglynn.nicklaus@example.com', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jnegwUp01Y', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(20, 'Noemi Emard PhD', 'seeker', 'aaliyah.bayer@example.org', '2020-11-30 10:02:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v8aUCAgWYT', '2020-11-30 10:02:19', '2020-11-30 10:02:19'),
(21, 'admin', 'admin', 'adminstedas@gmail.com', '2020-11-30 10:02:21', '$2y$10$YoL.x/W67oZ4d0B/9g8lSOUtKN/4zqKipz/MCGLEbIYXSqnXblSyS', NULL, '2020-11-30 10:02:21', '2020-11-30 10:02:21'),
(22, 'test', 'seeker', 'test@gmail.com', '2020-12-02 03:17:40', '$2y$10$N7KwP59yeWl8JJMyGi51EOMevxEAVux4SotrkCcKvLgpgv9yn/gpm', NULL, '2020-11-30 11:49:39', '2020-12-02 03:17:40'),
(23, '', 'employer', 'abc@gmail.com', '2020-12-02 22:52:40', '$2y$10$mKAfJ7dIGuM5HZ.I81aUKuFcwOVDXPIblkIXB0yIEtv5qGLr8sJcS', NULL, '2020-11-30 23:31:14', '2020-12-02 22:52:40'),
(51, 'REW', 'seeker', 'ankit40611@gmail.com', '2020-12-02 02:52:01', '$2y$10$PQlcYPWt8P9YjU21b7Ohbe0YgkrmpgsWHveqxlJwupBeXQzYY8IBm', NULL, '2020-12-02 02:50:58', '2020-12-02 02:52:01'),
(53, 'fwwd', 'seeker', 'ankitsinha874@gmail.com', NULL, '$2y$10$3hH4JcruuKMmOtreWLTlSOtpFEcmQ6xbJaY/Ku6o8xxUBzTkFNnBi', NULL, '2020-12-02 03:07:59', '2020-12-02 03:07:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourates`
--
ALTER TABLE `favourates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_user`
--
ALTER TABLE `job_user`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourates`
--
ALTER TABLE `favourates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `job_user`
--
ALTER TABLE `job_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

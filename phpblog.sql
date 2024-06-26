-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 06:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postid` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `commentdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `postid`, `content`, `commentdate`, `author`) VALUES
(1, 2, 'Who are you?', '2024-04-29 21:12:44', 'Unknown User'),
(2, 3, 'id 3 hello world 1', '2024-04-29 23:13:23', 'Unknown User'),
(3, 1, 'id 1 hello world 1', '2024-04-29 23:14:00', 'Unknown User'),
(4, 2, 'id 2 hello world 2', '2024-04-29 23:14:24', 'Unknown User'),
(5, 4, 'id 4 hello world 4', '2024-04-29 23:15:04', 'Unknown User'),
(6, 4, 'id 4 hello world 5', '2024-04-29 23:22:12', 'Unknown User'),
(7, 4, 'id 4 hello world 5', '2024-04-29 23:22:15', 'Unknown User'),
(8, 4, 'id 4 hello world 5', '2024-04-29 23:22:18', 'Unknown User'),
(9, 4, 'id 4 hello world 5', '2024-04-29 23:22:30', 'Unknown User'),
(10, 4, 'id 4 hello world 5', '2024-04-29 23:22:36', 'Unknown User'),
(11, 2, 'something', '2024-04-29 23:25:00', 'Unknown User'),
(12, 3, 'something BY ID 3', '2024-04-29 23:28:24', 'Unknown User'),
(13, 3, 'hello nothing', '2024-04-29 23:29:13', 'Unknown User'),
(14, 3, 'this is a little bit long comment. I implemented the comment section from scratch in php. I am feeling excited!', '2024-04-29 23:37:10', 'Unknown User'),
(15, 3, 'I don\'t have much now. We can Add it in the feature list. Happy coding!', '2024-04-29 23:44:37', 'Unknown User'),
(16, 3, 'helooo', '2024-04-29 23:49:46', 'Unknown User'),
(17, 3, 'something', '2024-04-29 23:51:20', 'Unknown User'),
(18, 3, 'this is by author', '2024-04-29 23:52:35', 'Admin'),
(19, 4, 'now texst', '2024-04-30 00:27:57', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `postdate` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `summary`, `content`, `postdate`) VALUES
(1, 'ন্যূনতম সংখ্যাতত্ত্ব', 'প্রোগ্রামিং কন্টেস্টের জন্য নাম্বার থিওরী খুব গুরুত্বপূর্ণ একটা জিনিস। সাধারণত প্রতিটি বড় কন্টেস্টে অন্তত একটা প্রবলেম থাকে নাম্বার থিওরীর সাথে সম্পর্কিত। নাম্বার থিওরীর যেসব টপিক না জানলেই নয় সেরকম কিছু টপিক নিয়ে লিখেছেন ইকরাম মাহমুদ।', 'প্রোগ্রামিং কন্টেস্ট করার বেশ কিছু বড় সমস্যা আছে। তোমার কাছে ফুটবল খেলা বোরিং লাগবে আর টপকোডার বা কোডফোর্সেস এর স্কোরবোর্ড এক্সাইটিং লাগতে শুরু করবে। সবাই যখন ওয়ার্ল্ড কাপ নিয়ে মাতামাতি করা শুরু করবে তখন তুমি মাতামাতি করবে ওয়ার্ল্ড ফাইনালস নিয়ে। তোমার পাশ দিয়ে সানি, সিদকী বা সতেজ ভাই হেঁটে চলে গেলে তুমি বিষ্ফোরিত চোখে নিজেকে বিশ্বাস করানোর চেষ্টা করবে যে তোমার পাশ দিয়ে এই মাত্র আসলেই একটা রেড কোডার হেঁটে গেলো! কি ভয়াবহ ব্যাপার! প্রথমবার ডেট করতে গেলে তোমার মনে হবে এরচে’ টপকোডারে চ্যালেঞ্জ করতে গেলে তোমার বুক আরেকটু বেশি ধুবধুব করতো।\r\n\r\nতারপর প্রোগ্রামিং কন্টেস্টকে যখন কেও হেয় করতে চাবে তোমার মাথায় রক্ত চড়ে যাবে। যেভাবে শেকসপিয়ারকে নিয়ে অশিক্ষিতরা হাসাহাসি করলে সিরিয়াস সাহিত্যের ছাত্রের মেজাজ গরম হয়ে যায়, কিংবা কেও একটা ডাইহার্ড হেভি মেটাল ফ্যানকে ‘হেভি মেটাল তো শুধুই নয়েজ’ টাইপের মহান বাণী দিলে তার মেজাজ যেভাবে খিঁচড়ায় সেরকম। কিন্তু তারপরও আমরা খুব একটা প্রতিবাদ করি না আর ভালোবাসি যা কিছু আমরা ভালোবাসি।\r\n\r\nকারণ নিজে নিজে অনেক চিন্তাভাবনা করে একটা প্রবলেমের সমাধানে পৌছানোর একটা অন্য ধরণের সুখ আছে। অনেক সময় দিয়ে খেটেখুটে একটু একটু করে নিজেকে বুদ্ধিমান থেকে বুদ্ধিমানতর এবং চমৎকার থেকে চমৎকারতর প্রোগ্রামার হতে দেখার আনন্দ ঠিক বাদ্য বাজিয়ে দুনিয়াকে জানানোর মতো আনন্দ না। টপকোডারের চ্যালেঞ্জ ফেইজে পৃথিবীর সবচে’ সেরা প্রোগ্রামারের সলুশনে ভুল বের করে তুমি যদি একটা বিকট রণহুংকার ছাড়ো সেটার অ্যাপরেশিয়েটও হয়তো খুব বেশি মানুষ করবে না। তোমার বাবা হয়তো কানে ধরে তোমাকে বাসা থেকে বের করে দিবে। কিন্তু তাতে কি?\r\n\r\nতারপরও আমরা ভালোবাসি যা কিছু আমরা ভালোবাসি।\r\n\r\nপ্রোগ্রামিং কন্টেস্ট করার জন্য সবার কিছু ন্যূনতম সংখ্যাতত্ত্ব জানা প্রয়োজন। এই জ্ঞানগুলো খুব বেসিক। কিন্তু তারপরও খুব গুরুত্বপূর্ণ। এই লেখাটায় পুরোটাই সেরকম টপিকগুলো নিয়ে, যেটুকু একদম না জানলেই নয়।\r\n\r\n', '2024-04-21'),
(2, 'প্রারম্ভ খবরাখবর জ্ঞান লিংক লাইব্রেরি ফিচার স্টোরি র‍্যাংকলিস্ট ইনফরমেটিক্স অলিম্পিয়াডের প্রস্তুতি (জাতীয় পর্যায়)', 'ইনফরম্যাটিক্স অলিম্পিয়াডের বিভাগীয় পর্যায়ের বাঁধা উতরে যাবার পর সব প্রতিযোগীর মনেই থাকে এক ভাবনা - কিভাবে নেব জাতীয় পর্যায়ের প্রস্তুতি? যারা আগে কখনো এ প্রতিযোগীতার জাতীয় পর্যায়ে যোগ দেয়নি, স্বভাবতই তাদের মনে প্রশ্ন জাগে, কি ধরণের সমস্যা থাকবে জাতীয় অলিম্', 'ইনফরম্যাটিক্স অলিম্পিয়াডের বিভাগীয় পর্যায়ের বাঁধা উতরে যাবার পর সব প্রতিযোগীর মনেই থাকে এক ভাবনা - কিভাবে নেব জাতীয় পর্যায়ের প্রস্তুতি? যারা আগে কখনো এ প্রতিযোগীতার জাতীয় পর্যায়ে যোগ দেয়নি, স্বভাবতই তাদের মনে প্রশ্ন জাগে, কি ধরণের সমস্যা থাকবে জাতীয় অলিম্পিয়াডে? তোমাদের জন্যেই এই লেখা।\r\n\r\nআগেই বলে নেওয়া ভাল, বিভাগীয় পর্যায়ের থেকে জাতীয় পর্যায়ের প্রতিযোগীতা বেশ ভিন্ন। দুই প্রতিযোগীতার মধ্যে সবচে বড় পার্থক্য হল, বিভাগীয় প্রতিযোগীতা ছিল কাগজে কলমে, আর জাতীয় পর্যায়ের প্রতিযোগীতা হবে কম্পিউটারভিত্তিক। অর্থাৎ, কম্পিউটার প্রোগ্রামিং করে তোমাদের বিভিন্ন সমস্যার সমাধান করতে হবে। সেজন্যেই সবার আগে তোমার প্রোগ্রামিং এর দক্ষতা বাড়াতে হবে। এবার বলি, কিভাবে এই দক্ষতা বাড়ানো যায়।\r\n\r\nপ্রোগ্রামিং দক্ষতা বাড়ানোর সবচে ভালো উপায় নিয়মিত প্রোগ্রামিং করা। তুমি হয়তো ভাবছো প্রোগ্রামিং শেখা কঠিন কাজ তাই তুমি জাতীয় অলিম্পিয়াডে অংশ নিতে পারবেনা। কিন্তু এটা সত্যি না। তুমি যদি যুক্তি দিয়ে গুছিয়ে চিন্তা করতে পারো এবং গণিতে ভালো হও তাহলে প্রোগ্রামিং শেখা তোমার জন্য খুবই সহজ কাজ। তাই প্রথম কথা হলো কখনো হতাশ হওয়া যাবেনা। জাতীয় পর্যায়ে প্রোগ্রামিং করার জন্যে শুধু C অথবা C++ ভাষা ব্যবহার করা যাবে। তাই এদের যে কোন একটা শেখাই ভাল হবে। বাংলা ভাষায় সি প্রোগ্রামিং শেখার সুন্দর একটা বই তামিম শাহরিয়ার সুবিনের “কম্পিউটার প্রোগ্রামিং”। বইটার অনলাইন ভার্সন পাওয়া যাবে এখানে। ইংরেজী কিছু খুজলে Herbert Schildt এর “Teach Yourself C” বইটা পড়তে পারো। অন্য যেকোনো ভালো বই পড়তে পারো,তবে “১৫ দিনে প্রোগ্রামিং শিক্ষা” ধরণের চটুল বই না পড়াই ভালো।\r\n\r\nযারা প্রোগ্রামিং এর মূল বিষয়গুলো আয়ত্ত করে ফেলেছ, এবার আসি তাদের কাছে। আগেই উল্লেখ করেছি, জাতীয় অলিম্পিয়াডে প্রোগ্রামিং করে বিভিন্ন ধরণের সমস্যা সমাধান করতে হয়। তোমাদের উচিৎ হবে নিয়মিত এ ধরণের সমস্যা সমাধানের অনুশীলন করা। প্রশ্নের ধরন কেমন হতে পারে জানতে চাইলে দেখে নিতে পারো বিগত বছরের প্রশ্ন। বিগত কিছু বছরের প্রশ্ন পাওয়া যাবে এখানে। সাধারণত জাতীয়, আন্তর্জাতিক পর্যায়ে গ্রাফ থিওরি, নাম্বার থিওরি, ডাইনামিক প্রোগ্রামিং, ডাটা স্ট্রাকচার, কম্বিনেটরিক্স, কম্পিউটেশনাল জিওমেট্রি ইত্যাদি ধরণের সমস্যাই বেশী আসতে দেখা যায়। এসব সমস্যার সমাধান করার জন্যে কিছু অ্যালগোরিদম জানা থাকলে সুবিধা হয়। অ্যালগোরিদম শেখার জন্যে তোমরা বিভিন্ন ভাল ওয়েবসাইট আর ব্লগ এর সাহায্য নিতে পারো। এখানে এরকম কিছু সহায়ক সাইটের লিঙ্ক এখানে দেওয়া হলঃ\r\n\r\nস্টিভেন হালিম এবং ফেলিক্স হালিমের কম্পিটিটিভ প্রোগ্রামিং ইবুক\r\nটপকোডার অ্যালগরিদম টিউটোরিয়াল\r\nশাফায়েত আশরাফ এর ব্লগ\r\nইকরাম মাহমুদ(ফাহিম) এর ব্লগ\r\nProgক্রিয়া\r\nনিয়মিত অনুশীলনের জন্যে এসব প্রশ্নের পাশাপাশি বিভিন্ন অনলাইন জাজের সমস্যা সমাধান করা যেতে পারে। এর আগে কখনো অনলাইন জাজে সমস্যা সমাধান না করে থাকলে কিভাবে জাজ কাজ করে, সেটা নিয়ে তোমরা দ্বিধা-দ্বন্দ্বে পড়তে পার। সেক্ষেত্রে শাফায়েত আশরাফের লেখাএই নোটটা পড়লে তোমাদের অধিকাংশ জিজ্ঞাসার উত্তর পেয়ে যাবে। এছাড়াও রয়েছে কিছু প্রোগ্রামিং কন্টেস্ট এর ওয়েবসাইট। সেখানে নিয়মিত কন্টেস্ট এ অংশগ্রহণ করলেও তোমাদের উপকার হবে। এখানে কিছু অনলাইন জাজ আর কন্টেস্ট সাইট এর ঠিকানা দেওয়া হলঃ\r\n\r\nইউনিভার্সিটি অফ ভ্যালাদোলিদ অনলাইন জাজ ওরফে ইউভিএ:ইউভিএ বোধহয় বাংলাদেশের সবচেয়ে জনপ্রিয় জাজ। অনেক পুরোনো জাজ এই ইউভিএ। এই সাইটে হাজার হাজার প্রবলেম আছে। প্রাকটিসের জন্যে ইউভিএ-টুলকিট বা ইগর এর টুল ব্যবহার করা যায়। সহজে ইউভিএ-তে অনুশীলন করার জন্যে uHunt ব্যবহার করতে পার। মিগুয়েল রেভিয়ার বই ‘প্রোগ্রামিং চ্যালেঞ্জেস’ আর ফেলিক্স ও স্টিভেন হালিমের বই ‘কম্পিটিটিভ প্রোগ্রামিং’ এই সাইটের প্রবলেমের উপর ভিত্তি করে লেখা।\r\nকোডফোর্সেস: আরেকটি অসাধারণ সাইট। এখানে কনটেস্ট প্রতি সপ্তাহে একাধিক কনটেস্ট হয়। রেটিং সিস্টেম অনেকটা টপকোডারের মতো তবে নিয়মকানুনগুলো আইসিপিসি কনটেস্টের মতো।\r\nলাইট ওজে: বাংলাদেশি অনলাইন জাজ। নতুনদের জন্যে আদর্শ। বানিয়েছেন জানে আলম জান যিনি ২০০৯ সালের এসিএম ফাইনালিস্ট, বর্তমানে গুগলে কর্মরত। প্রবলেমগুলো ক্যাটাগরী অনুযায়ী ভাগ করা।\r\nইউসাকো(USACO): আমেরিকান ইনফরমেটিক্স ট্রেনিং সাইট। ইনফরমেটিক্স অলিম্পিয়াডের প্রস্তুতির জন্য অন্যতম সেরা সাইট।\r\nক্রোয়েশিয়ান অলিম্পিয়াড: এই সাইটটিও ইনফরমেটিক্স অলিম্পিয়াডের প্রস্তুতির জন্য অনেক ভাল।\r\nটপকোডার: সারাবিশ্বের প্রোগ্রামারদের মাঝে অত্যন্ত জনপ্রিয় একটা প্রোগ্রামিং কন্টেস্ট। অ্যালগোরিদম ট্র্যাকে মাসে গড়ে ৩ টার মতো কনটেস্ট হয়। ৭৫ মিনিট সময়ে ৩টা প্রবলেম সলভ করতে বলা হয়।\r\nকোডশেফ: ভারতীয় কোম্পানী Directi এর স্পন্সরশীপে আয়োজিত কনটেস্ট। প্রতি মাসে ১০ দিন ব্যাপী অত্যন্ত চ্যালেঞ্জিং কিছু প্রবলেম সলভ করতে দেওয়া হয়। আবার কুক-অফ ও লাঞ্চটাইম নামের কম সময়ের দুটি কনটেস্ট আয়োজন করে তারা। লাঞ্চটাইমে পুরষ্কৃত করা হয় স্কুল-কলেজের সেরা ১০ প্রতিযোগীকে!\r\nস্ফিয়ার অনলাইজ জাজ (স্পজ): পোলিশ অনলাইন জাজ। অনেক ভালো প্রবলেম আছে। তবে ইদানিং অনেককেই প্রবলেম যোগ করার সুযোগ করে দেওয়ার প্রবলেমের সংখ্যা মাত্রাতিরিক্ত হয়ে গেছে। প্র্যাকটিসের জন্যে উপযুক্ত প্রবলেম বাছাই করার জন্যে প্রতীক ট্যান্ডেল বা ভিএনওআই এর টুল ব্যবহার করা সুবিধাজনক।\r\nসারাতভ ইউনিভার্সিটি অনলাইন জাজ: এই রাশান জাজটিতে মাত্র ৫০০ এর মতো প্রবলেম আছে। কিন্তু প্রতিটা প্রবলেমই মানসম্মত। একেবারে নতুনদের জন্যে উপযোগী নয়।\r\nহুয়াজহং ইউনিভার্সিটি অফ সায়েন্স অ্যান্ড টেকনলজি ওরফে হাস্ট: এই সাইটের সবচে আকর্ষণীয় দিক হচ্ছে ভার্চুয়াল জাজ। এর বিশেষত্ব হচ্ছে বিভিন্ন জনপ্রিয় অনলাইন জাজের প্রবলেম নিয়ে ভার্চুয়াল কনটেস্ট করা যায়।\r\nটাইমাস অনলাইন জাজ: আরেকটি রাশান জাজ। মূলত রাশান কনটেস্টের প্রবলেম আছে।\r\nসাধারণত কিছু অনলাইন জাজে সমস্যাগুলো বিষয়ভিত্তিক কিছু ক্যাটাগরিতে ভাগ করা থাকে, যেমন USACO, LightOJ (দেখতে হলে রেজিস্ট্রেশন করতে হবে) ইত্যাদি। এ ধরণের কোন জাজ থেকে একটা বিষয় নির্বাচন করে সে বিষয়ের সমস্যাগুলো পরপর সমাধান করা যেতে পারে।\r\n\r\nআরো কিছু ভাল প্র্যাকটিস সাইট আর ব্লগ এর খোঁজ পাওয়া যাবে এখানে। এছাড়া প্রোগ্রামিং বিষয়ক ভাল কিছু বই এর সংগ্রহ আছে এখানে। যেকোন ধরেণের সমস্যার সম্মুখীন হলে সাহায্য চাইতে/ কোন প্রশ্ন থাকলে জিজ্ঞাসা করতে যোগ দাও ইনফরমেটিক্স অলিম্পিয়াডের অফিশিয়াল ফেসবুক গ্রুপে।\r\n\r\nশেষ কিছু কথা বলে লেখাটা শেষ করব। জাতীয় প্রতীযোগীতায় ভাল করতে হলে অনুশীলনের কোন বিকল্প নেই। তাই, নিয়মিত অনুশীলন করে যাও। তোমাদের মধ্যে যারা জাতীয় অলিম্পিয়াডে অংশ নিতে পারছ না, তারাও এই লেখাগুলো পড়ে পরবর্তী বছরের জন্যে প্রস্তুতি শুরু করে দিতে পারো।\r\n\r\nসবার জন্যে শুভকামনা রইল। জয় হোক প্রোগ্রামিং এর!', '2024-04-28'),
(3, 'অ্যাডজেসেন্সি লিস্ট ট্রিক', 'গ্রাফ থিওরীতে দুটো নোডের মধ্যে কানেকশন প্রকাশ করার জন্য সাধারণত অ্যাডজেসেন্সি লিস্ট অথবা ম্যাট্রিক্স ব্যবহার করা হয়। মীর ওয়াসি আহমেদ লিখেছেন অ্যাডজেসেন্সি লিস্টের একটা বিশেষ অপটিমাইজেশন নিয়ে যেটা একই সাথে টাইম এবং মেমরি এফিশিয়েন্ট।', 'গ্রাফ থিওরীতে দুটো নোডের মধ্যে কানেকশন প্রকাশ করার জন্য সাধারণত অ্যাডজেসেন্সি লিস্ট অথবা ম্যাট্রিক্স ব্যবহার করা হয়। মীর ওয়াসি আহমেদ লিখেছেন অ্যাডজেসেন্সি লিস্টের একটা বিশেষ অপটিমাইজেশন নিয়ে যেটা একই সাথে টাইম এবং মেমরি এফিশিয়েন্ট।\r\nপ্রিরিকুইজিট: গ্রাফ থিউরি, গ্রাফ ট্র্যাভার্সাল\r\n\r\nকম্পিউটারে গ্রাফ রিপ্রেজেন্ট করার জন্যে ইনপুট সাইজ খুবই গুরুত্বপূর্ণ। আর প্রোগ্রামিং কন্টেস্টে সাধারণত বিভিন্ন ইনপুট সাইজের উপর ভিত্তি করে দুই রকম রিপ্রেজেন্টেশন ব্যবহার করা হয় – অ্যাডজেসেন্সি মেট্রিক্স আর অ্যাডজেসেন্সি লিস্ট। ছোট গ্রাফের জন্যে মেট্রিক্স রিপ্রেজেন্টেশন সুবিধাজনক হলেও বড় গ্রাফের জন্যে এটা মেমরি এফিশিয়েন্ট না। C++ এ STL (বা অন্য ল্যাঙ্গুয়েজে এই ধরণের কন্টেইনার) ব্যবহার করে অ্যাডজেসেন্সি লিস্ট ইমপ্লিমেন্ট করা যায়, আর করাও খুব সহজ। তবে আজকে আমরা সেটা দেখব না, দেখব আরেকটা সহজ উপায়ে অ্যাডজেসেন্সি লিস্ট কিভাবে ইমপ্লিমেন্ট করা যায়।\r\n\r\nধরা যাক, গ্রাফের সবগুলো নোড আর এজের একটা লিস্ট (এজ এর অ্যারে) আছে । স্পেস কমপ্লেক্সিটি এখানে O(এজ সংখ্যা + নোড সংখ্যা)। গ্রাফটা ট্র্যাভার্স করতে গেলে কি করতে হবে?\r\n\r\nএকটা নোডে যেয়ে ওই নোড থেকে যে যে এজগুলো বের হয় সেগুলো পাওয়া লাগবে। এজ লিস্ট থেকে খুঁজে খুঁজে বের করতে গেলে (একটা একটা করে এজ দেখে) প্রতি নোডে পুরো এজ লিস্ট টাই দেখে ফেলা লাগবে। তাই খুব একটা টাইম এফিশিয়েন্ট না।\r\n\r\nএফিশিয়েন্ট করার জন্যে যেটা করা যায় সেটা হল – কোন নোড থেকে বের হওয়া কোন একটা এজ এর পরের এজটা যেটা, এজ লিস্টে সেটার ইন্ডেক্সটা যদি কোন ভাবে রেখে দেওয়া যায়। এটা কিন্তু করা যায় গ্রাফটা তৈরি করবার সময়ই। যখনই আমরা একটা এজ (a,b) যোগ করব ওই এজটা হবে a এর সবচেয়ে নতুন যোগ হওয়া এজ। আমরা যদি a নোড এর সবচেয়ে নতুন এজ (a, b) এর ইন্ডেক্সটা রেখে দিতে পারি,তাহলে এইমাত্র যোগ হওয়া এজ (a,b) এর মধ্যে a নোডে যোগ হওয়া ঠিক তার আগের এজটার ইন্ডেক্সটা রেখে দিতে পারবো। একই নোডের এজগুলোর মাঝে এই যোগসূত্র থাকায় এজগুলো ভিজিট করার সময় কখনই অন্য নোডের এজে যাবে না। কোড দেখলে পুরো ব্যাপারটা আরো পরিষ্কার হবে।\r\n\r\nএজ লিস্টের জন্যে একটা স্ট্রাকচার বানাই:\r\n\r\nstruct Edge {\r\n  int to; // বর্তমান এজটা যে নোডে যাচ্ছে\r\n  int prevEdge; // পূর্ববর্তী এজের ইন্ডেক্স, বলে রাখা ভালো ট্রাভার্সিংয়ের সময় এজগুলো উলটো অর্ডারে ভিজিট হবে\r\n  // এজ এর অন্যান্য তথ্য যেমন Weight, Capacity\r\n} edgeList[NO_OF_EDGES]; // NO_OF_EDGES = এজ সংখ্যা\r\n \r\nint lastEdge[NO_OF_NODES]; // lastEdge[v] = কোন একটা নোড v তে যোগ হওয়া সর্বশেষ এজের ইন্ডেক্স, শুরুতেই -1 দিয়ে ইনিশিয়ালাইজ করে নিতে হবে।  NO_OF_NODES = নোড সংখ্যা\r\nint numEdges; // গ্রাফে এ পর্যন্ত যে কটা এজ যোগ করা হয়েছে তার সংখ্যা, শুরুতে 0 দিয়ে ইনিশিয়ালাইজ হবে\r\nএকটা এজ যোগ করা যাবে এভাবে:\r\n\r\nvoid addEdge(int u, int v) {\r\n  edgeList[numEdges].to = v;\r\n  edgeList[numEdges].prevEdge = lastEdge[u];\r\n  lastEdge[u] = numEdges;\r\n  numEdges++;\r\n}\r\nআর এভাবে ট্রাভার্স করা যাবে:\r\n\r\nbool seen[NO_OF_NODES]; // ভিজিট ফ্ল্যাগ, শুরুতেই false দিয়ে ইনিশিয়ালাইজ করা\r\nvoid dfs(int u) {\r\n  seen[u] = true;\r\n  for (int e = lastEdge[u]; e != -1; e = edgeList[e].prevEdge) {\r\n    int v = edgeList[e].to;\r\n    if (!seen[v]) {\r\n      dfs(v);\r\n    }\r\n  }\r\n}\r\nফ্লো-নেটওয়ার্কের ক্ষেত্রেও এই টেকনিকটা কাজে লাগানো যায়। আমরা যদি প্রতিটা আর্ক আর তার রিভার্স আর্কটা লিস্টে পরপর রাখি তাহলে আর্কের এজ ইন্ডেক্স হবে \r\n আর রিভার্সটার হবে \r\n (\r\n-বেইসড ইন্ডেক্সিং)। \r\n কে \r\n দিয়ে XOR করলে \r\n পাওয়া যায়। আবার \r\n কে একইভাবে \r\n দিয়ে XOR করলে \r\n পাওয়া যায়। এভাবে খুব সহজেই কোন আর্কের রিভার্স আর্ক পাওয়া যাবে।\r\n\r\n(এই ট্রিকটা আমি প্রথম শিখি টপকোডারের anastasov.bg এর কাছে, Anastasov কে ধন্যবাদ!)', '2024-04-28'),
(4, 'Easy way to calculate time periods in PHP', 'A date period allows iteration over a set of dates and times, recurring at regular intervals, over a given period.', '$interval_spec is defined as below,\r\n\r\nPeriod Designator (Description)\r\nP (Period)\r\nY (years)\r\nM (months)\r\nD (days)\r\nW (weeks. These get converted into days, so can not be combined with D.)\r\nT (Time)\r\nH (hours)\r\nM (minutes)\r\nS (seconds)\r\n\r\nBelow is some samples for interval specifications\r\n\r\nString\r\nP1Y — 1 Year\r\nP2M — 2 Months\r\nP7D — 7 Days\r\nP3W — 3 Weeks\r\nPT5H — 5 Hours\r\nPT2H30M — 2 Hour and 30 minutes\r\nPT5M45S — 5 Minutes 45 seconds\r\nP3WT8H — 3 weeks 8 hours\r\nP1Y2M3DT4H5M6S — 1 year 2 months 3 days 4 hours 5 minutes and 6 seconds\r\n\r\nNow you must have basic understanding about DateTime and DateInterval objects. Let’s create a DatePeriod.', '2024-04-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postid` (`postid`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `posts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

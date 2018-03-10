-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 10, 2018 at 09:12 PM
-- Server version: 5.6.38
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cooperStuff`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_film`
--

CREATE TABLE `tbl_film` (
  `film_id` int(10) NOT NULL,
  `film_name` text NOT NULL,
  `film_pic` text NOT NULL,
  `film_desc` text NOT NULL,
  `film_traller` text NOT NULL,
  `film_kind` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_film`
--

INSERT INTO `tbl_film` (`film_id`, `film_name`, `film_pic`, `film_desc`, `film_traller`, `film_kind`) VALUES
(1, 'The Extraordinary Adventures of Adèle Blanc-Sec', 'Adventure.jpg', 'he Extraordinary Adventures of Adèle Blanc-Sec (French: Les Aventures extraordinaires d\'Adèle Blanc-Sec), released as Adèle: Rise of the Mummy in Malaysia and Singapore,[8] is a 2010 French fantasy adventure feature film written and directed by Luc Besson. It is loosely based on the comic book series The Extraordinary Adventures of Adèle Blanc-Sec by Jacques Tardi and, as in the comic, follows the eponymous writer and a number of recurring side characters in a succession of far-fetched incidents in 1910s Paris and beyond, in this episode revolving around parapsychology and ultra-advanced Ancient Egyptian technology, which both pastiche and subvert adventure and speculative fiction of the period. The primarily live-action film, shot in Super 35, incorporates much use of computer animation to portray its fanciful elements and contemporary action film special and visual effects within the form of the older-style adventure films they have largely superseded.', 'Adventure.mp4', '1'),
(2, 'Raiders of the Lost Ark', 'Adventure1.jpg', 'Raiders of the Lost Ark (also known as Indiana Jones and the Raiders of the Lost Ark) is a 1981 American action adventure film directed by Steven Spielberg, with a screenplay written by Lawrence Kasdan, from a story by George Lucas and Philip Kaufman. It was produced by Frank Marshall for Lucasfilm Ltd., with Lucas and Howard Kazanjian as executive producers. Starring Harrison Ford, it was the first installment in the Indiana Jones film franchise to be released, though it is the second in internal chronological order. It pits Indiana Jones (Ford) against a group of Nazis who are searching for the Ark of the Covenant, which Adolf Hitler believes will make his army invincible. The film co-stars Karen Allen as Indiana\'s former lover, Marion Ravenwood; Paul Freeman as Indiana\'s rival, French archaeologist René Belloq; John Rhys-Davies as Indiana\'s sidekick, Sallah; Ronald Lacey as Gestapo agent Arnold Toht; and Denholm Elliott as Indiana\'s colleague, Marcus Brody.', 'Adventure1.mp4', '1'),
(3, 'The Avengers', 'Avengers.jpg', 'Marvel\'s The Avengers (classified under the name Marvel Avengers Assemble in the United Kingdom and Ireland), or simply The Avengers, is a 2012 American superhero film based on the Marvel Comics superhero team of the same name, produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures.1 It is the sixth film in the Marvel Cinematic Universe (MCU). The film was written and directed by Joss Whedon and features an ensemble cast that includes Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, and Jeremy Renner as the titular Avengers team, alongside Tom Hiddleston, Clark Gregg, Cobie Smulders, Stellan Skarsgård, and Samuel L. Jackson. In the film, Nick Fury, director of the peacekeeping organization S.H.I.E.L.D., recruits Iron Man, Captain America, the Hulk, and Thor to form a team that must stop Thor\'s brother Loki from subjugating Earth.', 'Avengers.mp4', '2'),
(4, 'The Fast and the Furious', 'Fast.jpg', 'The Fast and the Furious (also known as Fast & Furious) is an American franchise based on a series of action films that is largely concerned with illegal street racing, heists and espionage, and includes material in various other media that depicts characters and situations from the films. Distributed by Universal Pictures, the series was established with the 2001 film titled The Fast and the Furious; this was followed by seven sequels, two short films that tie into the series, and as of May 2017, it has become Universal\'s biggest franchise of all time, currently the sixth-highest-grossing film series of all time with a combined gross of over $5 billion. The ninth installment of the franchise is set to be released on April 10, 2020.', 'Fast.mp4', '2'),
(5, 'The Lion King', 'Lion.jpg', 'The Lion King is a 1994 American animated epic musical film produced by Walt Disney Feature Animation and released by Walt Disney Pictures. It is the 32nd Disney animated feature film, and the fifth animated film produced during a period known as the Disney Renaissance. The Lion King was directed by Roger Allers and Rob Minkoff, produced by Don Hahn, and has a screenplay credited to Irene Mecchi, Jonathan Roberts, and Linda Woolverton. Its original songs were written by composer Elton John and lyricist Tim Rice, with a score by Hans Zimmer. The film features an ensemble voice cast that includes Matthew Broderick, James Earl Jones, Jeremy Irons, Jonathan Taylor Thomas, Moira Kelly, Nathan Lane, Ernie Sabella, Rowan Atkinson, Robert Guillaume, Madge Sinclair, Whoopi Goldberg, Cheech Marin, and Jim Cummings. The story takes place in a kingdom of lions in Africa and was influenced by William Shakespeare\'s Hamlet.', 'Lion.mp4', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kind`
--

CREATE TABLE `tbl_kind` (
  `kind_id` int(10) NOT NULL,
  `kind_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kind`
--

INSERT INTO `tbl_kind` (`kind_id`, `kind_name`) VALUES
(1, 'action'),
(2, 'adventure'),
(3, 'children');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_film`
--
ALTER TABLE `tbl_film`
  ADD PRIMARY KEY (`film_id`);

--
-- Indexes for table `tbl_kind`
--
ALTER TABLE `tbl_kind`
  ADD PRIMARY KEY (`kind_id`,`kind_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_film`
--
ALTER TABLE `tbl_film`
  MODIFY `film_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_kind`
--
ALTER TABLE `tbl_kind`
  MODIFY `kind_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

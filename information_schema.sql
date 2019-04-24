-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.40-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for codedriver
CREATE DATABASE IF NOT EXISTS `codedriver` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `codedriver`;

-- Dumping structure for table codedriver.problempool
CREATE TABLE IF NOT EXISTS `problempool` (
  `ID` varchar(30) NOT NULL,
  `pblmName` varchar(50) NOT NULL,
  `question` text NOT NULL,
  `description` text NOT NULL,
  `complexity` varchar(50) NOT NULL,
  `pblmType` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `pblmName` (`pblmName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table codedriver.problempool: ~12 rows (approximately)
/*!40000 ALTER TABLE `problempool` DISABLE KEYS */;
INSERT INTO `problempool` (`ID`, `pblmName`, `question`, `description`, `complexity`, `pblmType`) VALUES
	('birdFreq', 'birdFreq', 'Write a program to find frequency of occurrence', 'testingggggggggggggg', 'MEDIUM', 'SELF'),
	('pattern01', 'starPatternNormal', 'Write a program to print star pattern ', '    *\n  ***\n*****', 'EASY', 'SELF'),
	('ps-array-01', 'missingNumber', 'Find the Missing Number', 'You are given a list of n-1 integers and these integers are in the range of 1 to n. There are no duplicates in list. One of the integers is missing in the list. Write an efficient code to find the missing integer. If no number is missing print -1.\n\nFile / Class name should be "missingNumber".\n\nInput Format :\nN - size of the array\n\'N\' integer values\n\nOutput Format : \nSingle integer which is missing in the array\n\nSample IO : \nInput :  \n7\n1 2 4 6 3 7 8\n\nOutput :\n5', 'EASY', 'SELF'),
	('ps-array-02', 'nonRepeatNum', 'Print the unique element which is not repeated.', 'There is an integer array with duplicate elements. Print the unique element which is not repeated. If more than one elements are found unique print the one with the least value.\n\nFile / Class name should be "nonRepeatNum".\n\nInput Format :\nN - size of the array\n\'N\' integer values\n\nOutput Format : \nSingle integer from the array which is the unique number\n\nSample IO : \nInput : \n9\n1 1 2 2 3 4 4 5 5 \n\nOutput : \n3 ', 'MEDIUM', 'SELF'),
	('ps-array-03', 'kthSmallest', 'Find the k-th smallest element', 'How to find kth smallest element in an unsorted array?\nYou are given an unsorted array of numbers and k, you need to find the kth smallest number in the array.\n\nOne way to solve this problem is to sort the array in ascending order then pick the k-1th element, that would be your\nkth smallest number in array because array index starts at zero, but can you do better?\n\nFile / Class name should be "kthSmallest".\n\nInput Format :\nN - size of the array\n\'N\' integer values\nk - smallest number corresponding to the index in ascending order.\n\nOutput Format : \nSingle integer from the array which is the unique number\n\nSample IO : \nInput : \n6\n10 2 5 3 9 4\n2 \n\nOutput : \n3', 'MEDIUM', 'SELF'),
	('ps-array-04', 'commonElements', 'How to find common elements in three sorted array?', 'Given three arrays sorted in non-decreasing order, print all common elements in these arrays.\n\nFile / Class name should be "commonElements".\n\nInput Format :\nN1 - size of the array1\n\'N1\' integer values\n\nN2 - size of the array2\n\'N2\' integer values\n\nN3 - size of the array3\n\'N3\' integer values\n\nOutput Format : \nSet of integers common to the above arrays.\n\nInput : \n6\n1 5 10 20 40 80\n5\n6 7 20 80 100\n8\n3 4 15 20 30 70 80 120\n\nOutput : \n20 80', 'MEDIUM', 'SELF'),
	('ps-array-05', 'firstRepeating', 'Find the first repeating element in an array of integers.', 'Given an array of integers, find the first repeating element in it. We need to find the element that occurs more than once and whose index of the first occurrence is smallest.\n\nFile / Class name should be "firstRepeating".\n\nInput Format :\nN - size of the array\n\'N\' integer values\n\nOutput Format : \nSingle integer from the array which is the first-repeating\n\nInput:  \n7\n10 5 3 4 3 5 6\n\nOutput: \n5', 'MEDIUM', 'SELF'),
	('ps-array-06', 'subArrayZero', 'How to find if there is a sub array with sum equal to zero?', 'Here you are given an array of positive and negative numbers, find if there is a sub-array of continuous elements with 0 sum.\n\nFile / Class name should be "subArrayZero".\n\nInput Format :\nN - size of the array\n\'N\' integer values\n\nOutput Format : \ntrue - if sum of any sub-array of continuous elements is zero\nfalse - otherwise\n\nInput :\n5 \n4 2 -3 1 6\n\nOutput: \ntrue ', 'MEDIUM', 'SELF'),
	('ps-array-07', 'arrayRevInPlace', 'How to reverse an array in place?', 'You need to write a program which accepts an integer array and your program needs to reverse that array in place, which means you cannot use additional buffer or array, but one or two variables will be fine. \n\nOf course you cannot use any open source library or method to directly solve this problem and you should not print the array in reverse directly. You need to create your own logic\n\nFile / Class name should be "arrayRevInPlace".\n\nInput Format :\nN - size of the array\n\'N\' integer values\n\nOutput Format : \nInput array in reverse order\n\nInput : \n7\n10 5 3 4 3 5 6\n\nOutput :\n6\n5\n3\n4\n3\n5\n10', 'EASY', 'SELF'),
	('ps-array-08', 'valueInIndex', 'Rearrange an array such that arr[i] = i', 'Given an array of elements of length N, ranging from 1 to N. All elements may not be present in the array. If element is not present then there will be -1 present in the array. Rearrange the array such that A[i] = i and if i is not present, display -1 at that place.\nFile / Class name should be "valueInIndex".\n\nInput Format :\nN - size of the array\n\'N\' integer values\n\nOutput Format : \nInput array in proper arrangement\n\nInput : \n6\n6 1 9 3 2 4\n\nOutput : \n-1 \n1 \n2 \n3 \n4 \n-1 \n6 \n-1 \n-1 \n9', 'MEDIUM', 'SELF'),
	('ps-array-09', 'arrangeOneZero', 'Segregate 0s and 1s in an array', 'You are given an array of 0s and 1s in random order. Segregate 0s on left side and 1s on right side of the array. Traverse array only once.\nFile / Class name should be "arrangeOneZero".\n\nInput Format :\nN - size of the array\n\'N\' integers(0 or 1)\n\nOutput Format : \nInput array in left-right arrangement\n\nInput :\n10\n0 1 0 1 0 0 1 1 1 0\n \nOutput :\n0 0 0 0 0 1 1 1 1 1 ', 'EASY', 'SELF'),
	('TP01', 'TestProgram', 'Sum of two numbers', 'Write a program to find the sum of two numbers', 'EASY', 'SELF');
/*!40000 ALTER TABLE `problempool` ENABLE KEYS */;

-- Dumping structure for table codedriver.testcasepool
CREATE TABLE IF NOT EXISTS `testcasepool` (
  `TCID` varchar(30) NOT NULL,
  `tcName` varchar(50) NOT NULL,
  `tcCount` int(11) NOT NULL DEFAULT '1',
  `pblmIDs` varchar(350) NOT NULL,
  `input1` text NOT NULL,
  `output1` text NOT NULL,
  `sample1` bit(1) NOT NULL DEFAULT b'1',
  `input2` text,
  `output2` text,
  `sample2` bit(1) DEFAULT b'0',
  `input3` text,
  `output3` text,
  `sample3` bit(1) DEFAULT b'0',
  `input4` text,
  `output4` text,
  `sample4` bit(1) DEFAULT b'0',
  `input5` text,
  `output5` text,
  `sample5` bit(1) DEFAULT b'0',
  PRIMARY KEY (`TCID`),
  UNIQUE KEY `tcName` (`tcName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table codedriver.testcasepool: ~12 rows (approximately)
/*!40000 ALTER TABLE `testcasepool` DISABLE KEYS */;
INSERT INTO `testcasepool` (`TCID`, `tcName`, `tcCount`, `pblmIDs`, `input1`, `output1`, `sample1`, `input2`, `output2`, `sample2`, `input3`, `output3`, `sample3`, `input4`, `output4`, `sample4`, `input5`, `output5`, `sample5`) VALUES
	('ARR-ARRANGE-1-0', 'ArrayArrangeOneZero', 2, 'ps-array-09', '[10,0,1,0,1,0,0,1,1,1,0]', '["0 0 0 0 0 1 1 1 1 1 "]', b'1', '[15,0,1,1,0,1,1,1,0,0,0,0,1,1,1,0]', '["0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 "]', b'0', NULL, NULL, b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARR-COM-ELMNTS', 'ArrayCommonElements', 2, 'ps-array-04', '[6,1,5,10,20,40,80,5,6,7,20,80,100,8,3,4,15,20,30,70,80,120]', '[20,80]', b'1', '[8,11,15,21,35,44,78,89,110,5,6,7,11,15,100,7,3,4,15,20,30,70,100]', '[15]', b'0', NULL, NULL, b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARR-FIRST-REPEAT', 'ArrayFirstRepeating', 4, 'ps-array-05', '[7,10,5,3,4,3,5,6]', '[5]', b'1', '[9,1,1,2,2,3,4,4,5,5]', '[1]', b'1', '[11,5,6,11,3,4,1,2,2,3,12,9]', '[3]', b'0', '[18,15,7,11,17,3,13,9,2,5,16,12,1,8,14,6,4,10,4]', '[4]', b'0', NULL, NULL, b'0'),
	('ARR-KTH-SMALL', 'ArrayKthSmallest', 3, 'ps-array-03', '[6,10,2,5,3,9,4,2]', '[3]', b'1', '[11,25,81,11,3,7,43,2,4,37,12,9,7]', '[12]', b'0', '[18,15,7,11,17,3,13,9,2,5,16,12,1,8,14,6,4,10,18,17]', '[17]', b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARR-MISS-NO', 'ArrayMissingNo', 3, 'ps-array-01', '[7,1,2,4,6,3,7,8]', '[5]', b'1', '[11,7,11,3,9,2,5,6,12,1,8,4]', '[10]', b'0', '[18,15,7,11,17,3,13,9,2,5,16,12,1,8,14,6,4,10,18]', '[-1]', b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARR-NO-REPEAT', 'ArrayNonRepeat', 3, 'ps-array-02', '[9,1,1,2,2,3,4,4,5,5]', '[3]', b'1', '[11,5,1,11,3,5,1,2,2,3,12,9]', '[9]', b'0', '[18,15,7,11,17,3,13,9,2,5,16,12,1,8,14,6,4,10,18]', '[1]', b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARR-REV-PLACE', 'ArrayReverseInPlace', 3, 'ps-array-07', '[7,10,5,3,4,3,5,6]', '[6,5,3,4,3,5,10]', b'1', '[9,1,1,2,2,3,4,4,5,5]', '[5,5,4,4,3,2,2,1,1]', b'0', '[9,5,6,11,3,4,1,2,12,9]', '[9,12,2,1,4,3,11,6,5]', b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARR-VAL-INDEX', 'ValueInIndex', 2, 'ps-array-08', '[6,6,1,9,3,2,4]', '[-1,1,2,3,4,-1,6,-1,-1,9]', b'1', '[9, 7,3,15,1,10,9,13,2,4]', '[-1,1,2,3,4,-1,-1,7,-1,9,10,-1,-1,13,-1,15]', b'0', NULL, NULL, b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('ARRFREQ01', 'NumFreqInArray', 2, 'birdFreq', '[6,1,2,5,2,4,2]', '["Bird with highest frequency is 2"]', b'1', '[11,1,2,3,4,5,4,3,2,1,3,4]', '["Bird with highest frequency is 3"]', b'0', NULL, NULL, b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('PAT01', 'SimpleStarPattern', 2, 'pattern01', '[3]', '["  *"," ***","*****"]', b'1', '[6]', '["     *","    ***","   *****","  *******"," *********","***********"]', b'0', NULL, NULL, b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('SUB-ARR-ZERO', 'SubArraySumZero', 3, 'ps-array-06', '[5,4,2,-3,1,6]', '["true"]', b'1', '[7,1,2,3,-1,5,4,3]', '["false"]', b'0', '[12,1,2,3,-1,5,4,3,8,1,-12,4,11]', '["true"]', b'0', NULL, NULL, b'0', NULL, NULL, b'0'),
	('TC01', 'SimpleAdd', 2, 'TP01', '[1,2]', '[3]', b'1', '[3,4]', '[7]', b'0', '', '', b'0', '', '', b'0', '', '', b'0');
/*!40000 ALTER TABLE `testcasepool` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

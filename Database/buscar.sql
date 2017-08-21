-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 21, 2017 at 05:33 PM
-- Server version: 5.6.33-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `buscar`
--

-- --------------------------------------------------------

--
-- Table structure for table `lins`
--

CREATE TABLE IF NOT EXISTS `lins` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `link` varchar(250) NOT NULL,
  `w1` varchar(200) NOT NULL,
  `w2` varchar(200) NOT NULL,
  `kw` varchar(200) NOT NULL,
  `description` varchar(250) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `num` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `lins`
--

INSERT INTO `lins` (`id`, `link`, `w1`, `w2`, `kw`, `description`, `time`, `num`) VALUES
(1, 'https://www.google.co.in/', 'googleindia', 'searchfindvethukudhevulaadu', 'google', 'This is largest search engine in the world. Indian google site.', '2017-04-18 10:58:10.721794', 0),
(2, 'https://www.google.com', 'googleworld', 'searchfindvethukudhevulaadu', 'google', 'This is largest search engine in the world. It is global website of google', '2017-04-18 10:58:22.937673', 0),
(3, 'http://www.eenadu.net/', 'eenadupapertelangana', 'newspapereenaduramojirao', 'eenadu', 'Largest telugu news paper which is daily supplied in Telangana and Andhrapradesh.', '0000-00-00 00:00:00.000000', 0),
(4, 'http://www.indiaeducation.net', 'indiaeducation', 'chaduvueducationjobscareerlifestudystreamsbusinessvidya', 'education', 'Indian education career website which can be accessed anywhere in India. You can search career oppurtunities here.', '0000-00-00 00:00:00.000000', 0),
(5, 'http://stackoverflow.com/', 'programmingcodeerrorknowanswer', 'codingperfectcodeanswerssuccessfullcoding', 'stackoverflow', 'This website comes under category of programming. You can any of the programming answers by this website.', '0000-00-00 00:00:00.000000', 0),
(6, 'http://timesofindia.indiatimes.com/defaultinterstitial.cms', 'englishnewpaperlatestnews', 'falshnewsonlinenewchaduvu', 'thetimesofindia', 'English news paper website.', '0000-00-00 00:00:00.000000', 0),
(7, 'http://www.thehindu.com/', 'perfectenglishnewpaperlatestnews', 'onlinenewsgoodcomplexenglishlearningpaper', 'thehindu', 'Largest circulated english news paper site.', '0000-00-00 00:00:00.000000', 0),
(8, 'http://www.andhrajyothy.com/', 'andhrajyothitelugunewspaperchaduvu', 'epaperonlinenewsupdates', 'andhrajyothy', 'Telugu news paper', '0000-00-00 00:00:00.000000', 0),
(9, 'http://epaper.sakshi.com/', 'onlineepapersakshirajashekarjagan', 'newspaperchaduvuknowupdates', 'sakshiepaper', 'Telugu news paper', '0000-00-00 00:00:00.000000', 0),
(10, 'http://www.tutorialspoint.com/', 'educationallsubjectslearnereasily', 'videocodingcompetitivetutorialslibrary', 'tutorialspoint', 'All type of tutorials available in this site', '0000-00-00 00:00:00.000000', 0),
(11, 'http://www.indiabix.com/', 'aptitudequestionsandanswersverbalonlinetests', 'interviewaptitudegeneralknowledgepuzzles', 'indiabix', 'This website contains all type questions and answers(lot of skills) .', '0000-00-00 00:00:00.000000', 0),
(12, 'http://www.onestopgate.com/', 'gatematerialallbranchescscomputerscience', 'studyeducationgoodrankentranceexams', 'onestopgateresults', 'Gate materials available in this site for all types of branches.', '2017-04-18 12:34:25.358143', 0),
(13, 'https://www.examrace.com/', 'competitivealltypeonlineexams', 'entranceeduaction Copyright © www.www.examrace.com ACTAIIMSAPBank ClericalBank POBITSATCATCACBSE BoardCBSE UGC-NETCDSCISFCLATCMATCMSCSIRCTETGATEGMATGPATGREIASICSEBoardIEcoSIELTSIESIFSIGSISSJEEKVPYLSAT', 'examrace', '\r\nNumber 1 Competitive and Scholastic Exam Preparation Resource Website\r\n', '0000-00-00 00:00:00.000000', 0),
(14, 'http://www.educationobserver.com/', 'educationworldcompetitiveexamcontentmaterial', 'questionpapermodelpapers', 'educationobserver', 'The Education Channel of India since 2001', '0000-00-00 00:00:00.000000', 0),
(15, 'https://en.oxforddictionaries.com', 'englishgrammerverbsnoun', 'learnenglishvocubularyFinddefinitionssynonymsaudio pronunciationusagetips', 'oxforddictionaries', 'English grammer site', '0000-00-00 00:00:00.000000', 0),
(16, 'http://www.ecenglish.com/', 'englishgrammerverbsnoun', 'grammerdailyenglishlearningknow', 'ecenglishlanguage', 'English learning ', '0000-00-00 00:00:00.000000', 0),
(17, 'http://grammar.ccc.commnet.edu/grammar/', 'englishgrammerverbsnoun', 'learningwritingskills', 'grammar.ccc.commnet.edu', 'Guide to grammer and writing', '0000-00-00 00:00:00.000000', 0),
(18, 'https://duckduckgo.com/', 'searchfindvethuku', 'searchenginedhevulaadu', 'duckduckgo', 'Search engine', '0000-00-00 00:00:00.000000', 0),
(19, 'http://www.mathopolis.com/', 'memorypowermathematics', 'aptitudemathstricks', 'mathpoils', 'Mathematical skills', '0000-00-00 00:00:00.000000', 0),
(20, 'http://www.surveycompare.co.in', 'largestsurveyingbusinessmoneymatters', 'earninglovepaisacurrency', 'surveycompare', 'online survey', '0000-00-00 00:00:00.000000', 0),
(21, 'http://kwerdo.com/', 'famousmoneybusinesspaisa', 'earndabbuluaccountdifferentwaysofearningmoney', 'kwerdo', 'Money earning website', '0000-00-00 00:00:00.000000', 0),
(22, 'https://community.xcel-onlinesurveys.com', 'surveymoneyearnbusiness', 'youcansurveypaisadabbulu', 'community.xcel-onlinesurveys', 'Online surveying', '0000-00-00 00:00:00.000000', 0),
(23, 'http://in.viewfruit.com/', 'surveymoneyearnbusiness', 'earndabbuluaccountpaisa', 'viewfruit', 'Online surveying . It gives you money for every survey.', '0000-00-00 00:00:00.000000', 0),
(24, 'https://in.m.aipsurveys.com/', 'surveymoneyearnbusinessearn', 'youcansurveypaisadabbulumonycurrency', 'aipsurveys', 'Online survey. It gives you money fo each survey.', '0000-00-00 00:00:00.000000', 0),
(25, 'http://startup-india.org/', 'businesstechnicalstartupenterprenuer', 'foundationorganizationinvestpaisaownidea', 'startupindia', 'About startups. This is the first step to change society.', '0000-00-00 00:00:00.000000', 0),
(26, 'http://10000startups.com/', 'businesstechnicalstartupenterprenuership', 'studyinnovativeideasinvestingcompanyorganisation', '10000startupsindia', 'Startup in India, Pitch Your Business Ideas, Startup Funding website.', '0000-00-00 00:00:00.000000', 0),
(27, 'http://www.startupindia.gov.in/', 'businesstechnicalstartupenterprenuershipnarendramodi', 'foundationorganizationinvestpaisaownideascompany', 'startupindia', 'Startup India launched by Narendra Modi', '0000-00-00 00:00:00.000000', 0),
(28, 'http://knowstartup.com/', 'businesstechnicalstartupenterprenuershipn', 'foundationorganisationinvestpaisaownideascompany', 'knowstartup', 'Startup business company website. It gives information about startup companies', '0000-00-00 00:00:00.000000', 0),
(29, 'http://www.startupsuccessstories.com/', 'businesstechnicalstartupenterprenuership', 'foundationorganisationinvestpaisaownideascompany', 'startupsuccessstories', 'Startup related website.', '0000-00-00 00:00:00.000000', 0),
(30, 'https://blog.udemy.com/', 'videotutorialsstudychaduvu', 'onlinecourseswithmoneypaymentdeveloper', 'blog.udemy.com', 'Online courses tutorials', '0000-00-00 00:00:00.000000', 0),
(31, 'http://tech.firstpost.com/', 'techinicalthingslatesttechnologies', 'newspaperchaduvuknowtechicalupdatestycoon', 'techfirstspot', 'know Technical updates by this site', '0000-00-00 00:00:00.000000', 0),
(32, 'http://www.ubuntuupdates.org', 'osoperatingsystempackageslinuxdebiani386', 'virussoftwaresapplication', 'ubuntuupdates', 'Here you can find all ubuntu operating system packages', '0000-00-00 00:00:00.000000', 0),
(33, 'http://www.english-test.net/', 'englishgrammerfreequizlanguage', 'grammerdailyenglishlearningknowmuch', 'englishtest', 'English quizes site', '0000-00-00 00:00:00.000000', 0),
(34, 'https://addons.mozilla.org', 'browserfirefoxversions', 'installaddonsperformance', 'addonsmozilla', 'Here you can find add-ons of mozilla firefox', '0000-00-00 00:00:00.000000', 0),
(35, 'http://mathworld.wolfram.com/', 'memorypowermathematicssimple', 'calculusanalysisprobabilitystatisticsmathgames', 'mathworldwolfram', 'All type of mathematical analysis website.', '0000-00-00 00:00:00.000000', 0),
(36, 'https://www.quora.com', 'questionsanswersaskfind', 'answerforeverything', 'quora', 'Largest questions and answers website.', '0000-00-00 00:00:00.000000', 0),
(37, 'http://www.techworld.com/', 'techinicalthingslatesttechnologiesbusiness', 'updatestycoonstudentknowlatest', 'techworld', 'Latest technologies.', '0000-00-00 00:00:00.000000', 0),
(38, 'http://economictimes.indiatimes.com', 'businesstechnicalstartupenterprenuership', 'techincaltycoonwordsfindhereinflationstockmarket', 'economictimesindiatimes', 'All type of economical news website', '0000-00-00 00:00:00.000000', 0),
(39, 'http://www.gadgetsnow.com/', 'techinicalthingslatesttechnologiesbusinessmanagement', 'knownewsstudentdisplay', 'gadgetsnow', 'Site about technical gadgets.', '0000-00-00 00:00:00.000000', 0),
(40, 'www.upsc.gov.in', 'indiangovernmentsiteexamspublicservicecommission', 'recruitmentjobsonlineupdatenews', 'upscgov', 'Government jobs site.', '0000-00-00 00:00:00.000000', 0),
(41, 'http://www.androidhive.info/', 'osoperatingsystempsmartphone', 'mobileworlstechnologyupdatefirebasecloud', 'androidhive', 'It update us about android technologies.', '0000-00-00 00:00:00.000000', 0),
(42, 'http://www.gizmodo.in/', 'gadgetstechnicalbusinessupdateyourselfnewspaper', 'softwaresciencedesignapplicationdevelopment', 'gizmodo', 'Gadget guide,Technology updating website', '0000-00-00 00:00:00.000000', 0),
(43, 'http://www.in.techspot.com/', 'techinicalthingslatesttechnologiesbusinessmanagement', 'smartphonemobilefeaturesupdatereviewsratingssoftwareapplication', 'techspot', 'Technology News, Reviews, App', '0000-00-00 00:00:00.000000', 0),
(44, 'http://www.epfindia.com/site_en/KYEPFB.php', 'moneybeediworkersonline', 'scholoshipgettingmoney', 'epfindia', 'epf indian website.', '0000-00-00 00:00:00.000000', 0),
(45, 'http://www.businessinsider.in/', 'businesstechnicalstartupenterprenuershipnewspaper', 'techincaltycoonwordsfindhereinflationstockmarketingechanges', 'businessinsider', 'you can find all type of business news here.', '0000-00-00 00:00:00.000000', 0),
(46, 'http://dictionary.cambridge.org/', 'englishgrammeronlinewordssoundbritish', 'learnenglishvocubularyFinddefinitionssynonymsaudiopronunciationusagetips', 'dictionarycambridge', 'Number one online dictionary', '0000-00-00 00:00:00.000000', 0),
(47, 'http://quiz.geeksforgeeks.org/', 'cscomputersciencequizes', 'onlinecompetitivegatematerialslastminutenotes', 'geeksforgeeks', 'Geeks quizzes for computer science people.', '0000-00-00 00:00:00.000000', 0),
(48, 'https://www.google.co.in/search?safe=active&q=telugu+translation&cad=h', 'translationgooglelanguages', 'wordsfindlearnsomething', 'telugutranslation', 'Google translation', '0000-00-00 00:00:00.000000', 0),
(49, 'https://en.softonic.com', 'softwaredownloadapplicationoslaptopsmartphonemobile', 'MacAndroidiPhoneWebappsJavaSymbianWindowsPhoneBlackberryWindowsMobilePalmpocketPC', 'softonic', 'Free sotfware downloads', '0000-00-00 00:00:00.000000', 0),
(50, 'http://startupweekend.org/wp-signup.php?new=500', 'businesstechnicalstartupenterprenuership', 'weeknewsdaily', 'startupweekend', 'About startups', '0000-00-00 00:00:00.000000', 0),
(51, 'https://developer.android.com/index.html', 'designosdistribute', 'serviceandroidstudioversions', 'developerandroid', 'Site for android developers', '0000-00-00 00:00:00.000000', 0),
(52, 'http://timesofindia.indiatimes.com/sports', 'cricketfootballsportslivescore', 'commentarytennisbadminton', 'timesofindiasports', 'Times of india sports news.', '0000-00-00 00:00:00.000000', 0),
(53, 'https://www.hackerrank.com', 'programmingcodeanswers', 'goodcoderbadgeswebsiteeverycompany follows', 'hackerrank', 'Programming website.', '0000-00-00 00:00:00.000000', 0),
(54, 'https://www.smashingmagazine.com/2016/11/playlists-fuel-coding-design-sessions/?utm_content=buffera85ef&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer', 'programmingcodeanswersmusicloverspluginsthemes', 'designuxmobilegraphicsuxwordpresstechniques', 'smashingmagazine', 'Programming and designing skills website.', '0000-00-00 00:00:00.000000', 0),
(55, 'https://www.indeed.co.in', 'internshipsjobsrecruitmentlifetelangana', 'engineerbranchesapply', 'indeed', 'Provide internship and jobs in hyderabad.', '0000-00-00 00:00:00.000000', 0),
(56, 'www.twenty19.com/internships', 'internshipsjobsrecruitmentlifetelangana', 'engineeringbranchesapply', 'twenty19', 'Internships and job recruitment.', '0000-00-00 00:00:00.000000', 0),
(57, 'http://www.letsintern.com/internships/', 'internshipsjobsrecruitmentlifeindia', 'recruitmentjobsonlineupdatenews', 'letsintern', 'Internships and job recruitment website.', '0000-00-00 00:00:00.000000', 0),
(58, 'https://www.digitalocean.com/', 'techinicalthingslatesttechnologiesbusiness', 'webdesigningdevelopmetdigitalworld', 'digitalocean', 'Digital world', '0000-00-00 00:00:00.000000', 0),
(59, 'http://ekalavya.it.iitb.ac.in/summerinternship2017/', 'iitbombaymumbaiinternship', 'jobsrecruitmentsummerintership2017', 'ekalavyaiitb', 'IIIT Bombay summer internships website.', '0000-00-00 00:00:00.000000', 0),
(60, 'http://play.typeracer.com/', 'typingtestonlinecertification', 'fingerfastplaygames', 'typeracer', 'Typing racer website.', '0000-00-00 00:00:00.000000', 0),
(61, 'http://www.ratatype.com', 'typingtestonlinecertificationgroups', 'fingerfastplaygamescourselearningtutorials', 'ratatype', 'About Typing', '0000-00-00 00:00:00.000000', 0),
(62, 'http://indiatyping.com/index.php/', 'typingtestonlinecertificationgroupsexamspractice', 'fingerfastplaygamescourselearningtutorials', 'indiatyping', 'Indian typing certification courses and practice.', '0000-00-00 00:00:00.000000', 0),
(63, 'https://www.speedtypingonline.com/games/type-the-alphabet.php', 'typingtestonlinecertificationgroupspractice', 'typergames', 'speedtypingonline', 'It test speed of your typing and gives online certifcation.', '0000-00-00 00:00:00.000000', 0),
(64, 'http://www.xwebtools.com', 'ipaddressnetworksweb', 'specialtoolsforeverything', 'xwebtools', 'It is about web tools', '2017-04-18 14:01:35.324506', 0),
(65, 'https://andwecode.com', 'codingwebsitedesigningdevelopment', 'functionsfeaturesdesign', 'andwecode', 'Coding and web designing website.', '0000-00-00 00:00:00.000000', 0),
(66, 'https://learn.saylor.org', 'onlinecoursescertifcation', 'webdesigningspecial', 'learnsaylor', 'Online certifcation cources website.', '0000-00-00 00:00:00.000000', 0),
(67, 'https://sourceforge.net', 'softwaredownloadapplicationoslaptopsmartphonemobile', 'typingonlinecourcefasterspeed', 'sourceforge', 'Software solution downloads.', '0000-00-00 00:00:00.000000', 0),
(68, 'http://www.latestone.com', 'smartphonemobilespareparts', 'camerabatterypinsdisplay', 'latestone', 'You can buy mobile spare parts', '0000-00-00 00:00:00.000000', 0),
(69, 'www.practo.com/&#8206; ', 'doctorrogamvydyamtabletsconsult', 'healthmedicinemedicalcare', 'practo', 'Doctors consultaion online booking website', '0000-00-00 00:00:00.000000', 0),
(70, 'http://www.greensole.in', 'chappalpaadalushoesboothelpingnature', 'oldnewgivechappalsfindsearch', 'greensole', 'You can sell your old chappals and to help others.', '0000-00-00 00:00:00.000000', 0),
(71, 'http://www.fundmydream.in ', 'tourismtouristsmoneyfunding', 'helpworldtourineterstenjoyentertainment', 'fundmydream', 'Through this website you can give funds for other tourists to roam around the world.', '0000-00-00 00:00:00.000000', 0),
(72, 'http://www.overcart.com', 'shoppingsecondhandoldgadgetsspecial', 'technologymobiletechnicalnewone', 'overcart', 'You can buy all second hand gadgets.', '0000-00-00 00:00:00.000000', 0),
(73, 'http://www.internshala.com', 'internshipsjobsrecruitmentlife', 'moneybusinesse3engineeringstudent', 'internshala', 'You can find internships here .', '0000-00-00 00:00:00.000000', 0),
(74, 'http://5nance.com/', 'financebusinessmoneyeconomicalmanagement', 'planningfamilygetmoneyfindsearchfuture', '5nance', 'Finance plans for your future', '0000-00-00 00:00:00.000000', 0),
(75, 'http://srikanthmargam7.blog.com', 'facebookemployee', 'googlepreviousemployee', 'srikanth', 'Rgukt Student', '0000-00-00 00:00:00.000000', 0),
(76, 'http://drriteshmalik.com', 'startupsearch', 'companybusinesstycoonstudent', 'riteshmalik', 'Ritesh malik 26 startup company website', '0000-00-00 00:00:00.000000', 0),
(77, 'http://www.mygov.in ', 'cricketfootballsportshelpingnaturespecial', 'governmenthelpstudnet', 'mygov', 'If you want to give any sports help, This website is useful', '0000-00-00 00:00:00.000000', 0),
(78, 'http://telecomtalk.info/', 'telecomindustrybusinesscompanysocialknowledge', 'simairtelideavodafonejioinformationmessage', 'telecomtalk', 'Telcom information', '0000-00-00 00:00:00.000000', 0),
(79, 'http://www.sparenparts.com', 'sparepartsindustryanybusiness', 'techincaltycoonwordsfindhereinflationstockmarket', 'sparenparts', 'You can find spare parts of all industries', '0000-00-00 00:00:00.000000', 0),
(80, 'http://www.earlysalary.com ', 'studentjobssalarymoney', 'businessworkingloansendmonths', 'earlysalary', 'It gives loans at the end of the month', '0000-00-00 00:00:00.000000', 0),
(81, 'http://www.grabon.in', 'offerscompanybusinessmoney', 'dealallshoppingwebsites', 'grabon', 'You can find all deals in all shopping websites here.', '0000-00-00 00:00:00.000000', 0),
(82, 'https://www.coupondunia.in', 'couponoffersbusinesscashback', 'dealsshipping', 'coupondunia', 'It tells all cashback offers of all websites', '0000-00-00 00:00:00.000000', 0),
(83, 'http://www.cashkaro.com', 'cashbackmoneydealoffer', 'shoppingbusinessdabbu', 'cashkaro', 'It tells about cash back offers.', '0000-00-00 00:00:00.000000', 0),
(84, 'http://shoppirate.in', 'shoppingoffersflashsales', 'onlinecashmoney', 'shoppirate', 'It tells about all flash sells', '0000-00-00 00:00:00.000000', 0),
(85, 'http://www.dealsintech.com ', 'tehnologymoneybusiness', 'gadjetdealsonanyonlineshoppingsite', 'dealsintech', 'Here you can find gadget deals of any shopping website.', '0000-00-00 00:00:00.000000', 0),
(86, 'http://ibgroup.io', 'compnaiesbusinessgroups', 'alliancemanagement', 'ibgroup', 'Some company groups', '0000-00-00 00:00:00.000000', 0),
(87, 'http://www.leadcampus.org', 'studentleadteamleader', 'technicalbusinessoraganisation', 'leadcampus', 'Leadership site', '0000-00-00 00:00:00.000000', 0),
(88, 'http://www.Live-Market-Tips.Com', 'marketingtipsbusinessmoney', 'technicalbusinessoraganisation', 'livemarkettips', 'You will get all marketing tips here.', '0000-00-00 00:00:00.000000', 0),
(89, 'https://www.inovies.com', 'innovationcreationideasthought', 'companybusinesstycoonstudent', 'innovies', 'It is all about innovator ideas.', '0000-00-00 00:00:00.000000', 0),
(90, 'http://technovert.com', 'techinicalthingslatesttechnologiesbusinessmanagement', 'knownewsstudent', 'technovert', 'Technical things websites', '0000-00-00 00:00:00.000000', 0),
(91, 'http://digikyc.angelbroking.com', 'stockmarketingbusiness', 'investorbrokeragecompanytycoon', 'angelbroking', 'Investing...online stock exchange.', '0000-00-00 00:00:00.000000', 0),
(92, 'http://www.lic24.in', 'pricemoneycashkarolicence', 'loans', 'lic24', 'About money', '0000-00-00 00:00:00.000000', 0),
(93, 'www.goldsilverrates.com', 'girlsdiamondmoneypricebusiness', 'loveironrating', 'goldsilverrates', 'It tell daily gold and silver rates', '0000-00-00 00:00:00.000000', 0),
(94, 'http:/www.glassdoor.ca', 'specialcareerstudentrecruitment', 'jobofferssocialmedia', 'glassdoor', 'This website is all about careers.', '0000-00-00 00:00:00.000000', 0),
(95, 'www.careercup.com', 'internshipsjobsrecruitmentlife', 'careercahduvustudenteduaction', 'careercup', 'Career after btech', '0000-00-00 00:00:00.000000', 0),
(96, 'https:/www.leetcode.com', 'programmingcodeanswers', 'errorbugcompetitivecoding', 'leetcode', 'Programming website', '0000-00-00 00:00:00.000000', 0),
(97, 'http://www.topcoder.com', 'programmingcodeanswers', 'competitvecodingquestionsstudent', 'topcoder', 'Top programming website', '0000-00-00 00:00:00.000000', 0),
(98, 'http://fueladream.com', 'dreamhelpingnatureworshipgod', 'studentspecial', 'fueladream', 'Helping nature website', '0000-00-00 00:00:00.000000', 0),
(99, 'http://accountkiller.com', 'socialmediaaccountsfacebooktwitterinstagram', 'crashblockhelpspecial', 'accountkiller', 'You can kill any social media accounts from this website', '0000-00-00 00:00:00.000000', 0),
(100, 'http://pdfunlock.com ', 'documentunlockblock', 'passworduploads', 'pdfunlock', 'It will crash pdf password if you upload any pdf file into this website.', '0000-00-00 00:00:00.000000', 0),
(101, 'http://twofoods.com', 'moneyspecialdetailscooking', 'vantakampassion', 'twofoods', 'You can know any food details here', '0000-00-00 00:00:00.000000', 0),
(102, 'http://privnote.com', 'notesprivatesecuritysecureencrypt', 'chedipovadammessage', 'privnote', 'You can send note to somebody when you see that will be erase', '0000-00-00 00:00:00.000000', 0),
(103, 'http://disposablewebpage.com', 'domainsitewebsitegone', 'special90daysmonthssometime', 'disposablewebpage', '90 days domain', '0000-00-00 00:00:00.000000', 0),
(104, 'http://printfriendly.com', 'withoutimagesvideos', 'special', 'printfriendly', 'This is to print the content without images and videos.', '0000-00-00 00:00:00.000000', 0),
(105, 'http://www.wiise.in', 'learningshiftonlinetvvideosspecial', 'interactivecoursesuniversitystv', 'wiise', 'Online training courses', '0000-00-00 00:00:00.000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE IF NOT EXISTS `search` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `search` varchar(250) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=115 ;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`id`, `search`, `time`) VALUES
(1, 'hi', '2017-04-16 11:13:33.000000'),
(2, 'hi', '2017-04-16 11:17:24.000000'),
(3, 'hi', '2017-04-16 11:23:26.000000'),
(4, 'hi', '2017-04-16 11:23:39.000000'),
(5, '', '2017-04-16 11:32:28.000000'),
(6, 'hello', '2017-04-16 11:32:32.000000'),
(7, '', '2017-04-16 11:34:58.000000'),
(8, 'hi', '2017-04-16 11:35:14.000000'),
(9, 'hi', '2017-04-16 11:36:12.000000'),
(10, 'hi', '2017-04-16 11:39:15.000000'),
(11, '', '2017-04-16 11:39:17.000000'),
(12, 'hi', '2017-04-16 11:39:20.000000'),
(13, '', '2017-04-16 11:39:21.000000'),
(14, 'hi', '2017-04-16 11:39:26.000000'),
(15, 'hi', '2017-04-16 11:40:17.000000'),
(16, 'hi', '2017-04-16 11:47:40.000000'),
(17, '', '2017-04-16 11:49:16.000000'),
(18, 'itsmenafi', '2017-04-18 11:29:50.000000'),
(19, 'itsmenafi', '2017-04-18 11:31:31.000000'),
(20, 'hi', '2017-04-18 11:32:20.000000'),
(21, 'itsmenafi', '2017-04-18 11:32:24.000000'),
(22, 'itsmenafi', '2017-04-18 11:32:46.000000'),
(23, 'itsmenafi', '2017-04-18 11:33:08.000000'),
(24, 'hi', '2017-04-18 11:33:27.000000'),
(25, 'itsmenafi', '2017-04-18 11:33:30.000000'),
(26, 'g', '2017-04-18 11:34:13.000000'),
(27, 'itsmenafi', '2017-04-18 11:34:19.000000'),
(28, 'g', '2017-04-18 11:34:50.000000'),
(29, 'itsmenafi', '2017-04-18 11:34:55.000000'),
(30, 'itsmenafi', '2017-04-18 11:35:28.000000'),
(31, 'g', '2017-04-18 11:35:55.000000'),
(32, 'itsmenafi', '2017-04-18 11:36:02.000000'),
(33, 'itsmenafi', '2017-04-18 11:36:30.000000'),
(34, 'itsmenafi', '2017-04-18 11:36:54.000000'),
(35, 'itsmenafi', '2017-04-18 11:37:32.000000'),
(36, 'itsmenafi', '2017-04-18 11:37:54.000000'),
(37, 'itsmenafi', '2017-04-18 11:44:44.000000'),
(38, 'itsmenafi', '2017-04-18 11:44:50.000000'),
(39, 'itsmenafi', '2017-04-18 11:45:10.000000'),
(40, 'itsmenafi', '2017-04-18 11:48:59.000000'),
(41, 'itsmenafi', '2017-04-18 11:49:43.000000'),
(42, 'itsmenafi', '2017-04-18 11:50:23.000000'),
(43, 'itsmenafi', '2017-04-18 11:50:33.000000'),
(44, 'itsmenafi', '2017-04-18 11:51:08.000000'),
(45, 'itsmenafi', '2017-04-18 11:58:07.000000'),
(46, 'itsmenafi', '2017-04-18 11:59:52.000000'),
(47, 'itsmenafi', '2017-04-18 12:00:20.000000'),
(48, 'itsmenafi', '2017-04-18 12:02:22.000000'),
(49, 'itsmenafi', '2017-04-18 12:03:13.000000'),
(50, 'itsmenafi', '2017-04-18 12:03:43.000000'),
(51, 'itsmenafi', '2017-04-18 12:13:48.000000'),
(52, 'itsmenafi', '2017-04-18 12:16:35.000000'),
(53, 'hi', '2017-04-18 12:17:22.000000'),
(54, 'hai', '2017-04-18 12:19:52.000000'),
(55, 'coding', '2017-04-18 12:19:57.000000'),
(56, 'itsmenafi', '2017-04-18 12:20:21.000000'),
(57, 'gate', '2017-04-18 12:36:57.000000'),
(58, 'GATE', '2017-04-18 12:37:01.000000'),
(59, 'english', '2017-04-18 13:30:36.000000'),
(60, 'business', '2017-04-18 13:30:47.000000'),
(61, 'search', '2017-04-18 14:00:37.000000'),
(62, 'find', '2017-04-18 14:00:43.000000'),
(63, 'business', '2017-04-18 14:00:52.000000'),
(64, 'special', '2017-04-18 14:01:13.000000'),
(65, 'sonam kapoor', '2017-04-18 14:02:06.000000'),
(66, 'itsmenafi', '2017-04-18 15:21:49.000000'),
(67, 'srikanth', '2017-04-18 15:58:17.000000'),
(68, 'sriknath', '2017-04-18 15:58:37.000000'),
(69, 'sri', '2017-04-18 15:58:44.000000'),
(70, 'sri', '2017-04-18 15:59:13.000000'),
(71, 'sriknath', '2017-04-18 15:59:28.000000'),
(72, 'srik', '2017-04-18 15:59:34.000000'),
(73, 'srik', '2017-04-18 15:59:58.000000'),
(74, 'nafi', '2017-04-18 16:00:03.000000'),
(75, 'itsmenafi', '2017-04-18 16:15:48.000000'),
(76, 'itsmenafi', '2017-04-18 16:26:50.000000'),
(77, 'nafi', '2017-04-18 16:26:57.000000'),
(78, 'nafi', '2017-04-18 16:27:15.000000'),
(79, 'hai', '2017-04-18 16:27:24.000000'),
(80, 'hai', '2017-04-18 16:27:39.000000'),
(81, 'hi', '2017-04-19 11:16:56.000000'),
(82, 'hindu', '2017-04-19 11:17:11.000000'),
(83, 'nafi', '2017-04-19 11:17:22.000000'),
(84, 'hello', '2017-04-19 11:17:43.000000'),
(85, 'ee', '2017-04-19 11:17:48.000000'),
(86, 'special', '2017-04-19 11:18:05.000000'),
(87, 'itsmenafi', '2017-04-19 16:13:24.000000'),
(88, 'itsmenafi', '2017-04-21 11:53:57.000000'),
(89, 'a', '2017-07-28 09:07:33.000000'),
(90, 'itsmenafi', '2017-07-28 09:08:12.000000'),
(91, 'hello', '2017-07-28 09:09:16.000000'),
(92, 'hell', '2017-07-28 09:09:22.000000'),
(93, 'a', '2017-07-28 09:09:24.000000'),
(94, 'hi', '2017-08-07 05:22:01.000000'),
(95, 'vijay', '2017-08-07 05:22:16.000000'),
(96, 'nafi', '2017-08-07 05:22:25.000000'),
(97, 'vijay', '2017-08-07 05:22:37.000000'),
(98, 'hi', '2017-08-07 05:22:40.000000'),
(99, 'itsmenafi', '2017-08-07 05:23:16.000000'),
(100, 'vijay', '2017-08-07 05:23:34.000000'),
(101, 'prem', '2017-08-07 05:24:02.000000'),
(102, 'eenadu', '2017-08-07 05:24:23.000000'),
(103, 'vijay ', '2017-08-07 05:24:55.000000'),
(104, 'nafi', '2017-08-07 05:25:11.000000'),
(105, 'nazeemoddeen mohammad', '2017-08-07 05:25:40.000000'),
(106, 'prem mama', '2017-08-07 05:28:00.000000'),
(107, 'nafics365', '2017-08-07 05:28:23.000000'),
(108, 'itsmenafi', '2017-08-07 05:28:59.000000'),
(109, 'vijay', '2017-08-07 05:29:23.000000'),
(110, 'love', '2017-08-07 05:29:40.000000'),
(111, 'g', '2017-08-07 08:47:24.000000'),
(112, 'g', '2017-08-07 08:50:14.000000'),
(113, 'hero', '2017-08-07 09:03:53.000000'),
(114, 'hi', '2017-08-21 08:23:05.000000');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : rbt

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-12-08 17:34:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for rbt_announcement
-- ----------------------------
DROP TABLE IF EXISTS `rbt_announcement`;
CREATE TABLE `rbt_announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` mediumtext NOT NULL,
  `adddate` datetime DEFAULT NULL,
  `state` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_announcement
-- ----------------------------
INSERT INTO `rbt_announcement` VALUES ('1', '热烈庆祝本公司网站构建成立！', '<p>热烈庆祝本公司网站构建成立！</p>', '2010-07-07 07:07:07', '1');

-- ----------------------------
-- Table structure for rbt_archive
-- ----------------------------
DROP TABLE IF EXISTS `rbt_archive`;
CREATE TABLE `rbt_archive` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(6) NOT NULL,
  `typeid` int(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT '',
  `tag` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `color` char(20) DEFAULT NULL,
  `strong` tinyint(1) DEFAULT '0',
  `toppost` tinyint(1) DEFAULT '0',
  `font` char(6) DEFAULT NULL,
  `spid` int(11) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `mtitle` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `description` text,
  `listorder` int(11) DEFAULT NULL,
  `adddate` datetime DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `state` tinyint(2) DEFAULT '1',
  `checked` tinyint(2) DEFAULT '0',
  `introduce` text,
  `introduce_len` int(5) NOT NULL,
  `content` mediumtext,
  `template` varchar(50) DEFAULT NULL,
  `templatewap` varchar(50) DEFAULT NULL,
  `showform` varchar(50) DEFAULT NULL,
  `htmlrule` varchar(100) DEFAULT NULL,
  `ishtml` tinyint(2) DEFAULT '0',
  `iswaphtml` tinyint(2) DEFAULT '0',
  `linkto` varchar(100) DEFAULT NULL,
  `attr1` varchar(20) DEFAULT NULL,
  `attr2` varchar(20) DEFAULT NULL,
  `attr3` varchar(20) DEFAULT NULL,
  `comment_num` int(11) DEFAULT '0',
  `attachment_id` varchar(50) DEFAULT NULL,
  `attachment_path` varchar(150) DEFAULT NULL,
  `grade` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pics` text,
  `type` char(10) NOT NULL,
  `province_id` int(3) NOT NULL,
  `city_id` int(3) DEFAULT NULL,
  `section_id` int(3) DEFAULT NULL,
  `outtime` date NOT NULL,
  `my_size` varchar(100) DEFAULT NULL,
  `my_zhaopinbumen` varchar(100) DEFAULT NULL,
  `my_jobtype` varchar(10) DEFAULT NULL,
  `my_jobtitle` varchar(100) DEFAULT NULL,
  `my_jobnumber` varchar(100) DEFAULT NULL,
  `my_jobgender` varchar(10) DEFAULT NULL,
  `my_jobwork` text,
  `my_jobacademic` varchar(10) DEFAULT NULL,
  `my_jobage` varchar(100) DEFAULT NULL,
  `my_jobworkareas` varchar(100) DEFAULT NULL,
  `my_jobrequirements` text,
  `my_contactname` varchar(100) DEFAULT NULL,
  `isecoding` tinyint(1) unsigned DEFAULT '0',
  `ecoding` varchar(255) DEFAULT NULL,
  `iscomment` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `aid` (`aid`),
  KEY `keyword` (`keyword`),
  KEY `title` (`title`),
  KEY `type` (`type`),
  KEY `catid` (`typeid`),
  KEY `typeid` (`catid`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_archive
-- ----------------------------
INSERT INTO `rbt_archive` VALUES ('1', '13', '0', '一步步教你分析网站数据', '', '', 'admin', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 23:53:18', '', '', '/upload/images/201507/14360852024867.jpg', '1', '1', '如果网站改版时设计师和甲方的意见相左该怎么办？别吵，让数据说话。今天这篇作者手把手教你如何通过分析数据找到改善网站的正确方法，文中结合了不少网站实例（电商、博客），通俗易懂，实用性强，对数据的利用绝对让你大开眼界。', '200', '<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">导语：你是否曾经面对着一大堆网站数据毫无头绪？你是否曾为选择哪些页面进行测试感到举棋不定？让Luke来告诉你，如何有效地利用&ldquo;谷歌分析&rdquo;指导设计和研究吧！</p>\r\n<h3 style=\"margin: 0px 0px 15px 20px; padding: 0px 0px 0px 10px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; font-size: 16px; border-left-color: rgb(238, 238, 238); border-left-style: solid; border-left-width: 8px; color: rgb(51, 51, 51); line-height: 26px; background-color: rgb(253, 253, 253);\"><strong style=\"color: rgb(102, 102, 102);\">用户体验，分析至上（一）</strong></h3>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">索菲亚【译者注：为了更接地气，以下称为&ldquo;小红&rdquo;】正在和她的客户讨论可用性测试的项目，她已经迫不及待地要开始了。然而唯一尚未解决的问题是，他们对于测试什么内容和着眼于网站的哪个部分持有不同的观点。小红的客户对他们的顾客很了解，但是小红拥有多年用户体验的研究经验，没有任何迹象表明小红和她的客户可以达成一致的意见。于是小红把注意力转向了<span class=\"wp_keywordlink_affiliate\" style=\"margin: 0px; padding: 0px;\">数据分析</span>，希望能深层次地洞悉人们到底是如何使用网站的。</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">可用性测试和<span class=\"wp_keywordlink_affiliate\" style=\"margin: 0px; padding: 0px;\">数据分析</span>是一对无敌好搭档，它们让我们更多地了解用户，跟踪我们的目标，解决意外的问题。说到解决问题，<span class=\"wp_keywordlink_affiliate\" style=\"margin: 0px; padding: 0px;\">数据分析</span>告诉我们哪些页面或者流程正在给用户造成麻烦，哪些领域需要我们在可用性测试中重点关注。接下来，可用性测试会告诉我们为什么用户会表现出某些特定的行为。在这两者之上，我们可以为网站拥有者提供重点明确、针对用户的建议。</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">在小红（和许许多多与之相似的用户体验从业人员）的例子中，数据分析能揭露用户到底是怎么访问网站的。虽然小红和客户在用户体验或顾客方面的经验可能让他们对于测试什么有了不错的假设，但对于人们是如何访问网站，数据分析展示给他们的是更为清晰、无偏见的方式。</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">对于任何希望通过学习一些简单的工具来读懂数据的人，数据分析可以帮助你：</p>\r\n<ul style=\"margin: 0px; padding: 5px 10px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; list-style: none outside none; color: rgb(51, 51, 51); font-size: 14px; line-height: 26px; background-color: rgb(253, 253, 253);\">\r\n    <li style=\"margin: 0px 0px 0px 56px; padding: 5px; list-style: circle; font-size: 15px; line-height: 22px;\">识别网站上出问题的地方</li>\r\n    <li style=\"margin: 0px 0px 0px 56px; padding: 5px; list-style: circle; font-size: 15px; line-height: 22px;\">显示网站对于用户的吸引力</li>\r\n    <li style=\"margin: 0px 0px 0px 56px; padding: 5px; list-style: circle; font-size: 15px; line-height: 22px;\">测量设计上的改善带来的结果</li>\r\n</ul>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">在这两篇系列文章中，我将会解释如何利用数据分析来识别用户有问题的地方，以及网站的哪些地方会从可用性测试中受益最多。</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">本篇文章的重点为&mdash;&mdash;三个识别网站问题的参数：跳出和退出率（bounce and exit rate），页面平均时间（average time on page）和目标价值（page value）。</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">在第二部分，我们会进一步利用这些参数来识别drop off points，然后我们会深入到数据分段（segmentation）来获取额外的细节信息。</p>\r\n<h3 style=\"margin: 0px 0px 15px 20px; padding: 0px 0px 0px 10px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; font-size: 16px; border-left-color: rgb(238, 238, 238); border-left-style: solid; border-left-width: 8px; color: rgb(51, 51, 51); line-height: 26px; background-color: rgb(253, 253, 253);\"><strong style=\"color: rgb(102, 102, 102);\">辨认问题网页（组）</strong></h3>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">作为一名自由职业者和用户体验咨询师，我与各种各样不同领域的网站合作过，其过程非常一致，总是以数据分析为开端。最开始我会去辨认每天有多少用户访问这个网站，哪个页面最常用。这会给我一个大概的感觉，知道人们是如何访问这个网站的。然后我会进行下一步：辨认潜在的出问题的领域，继而知道我的用户体验建议将会着重在哪一块。</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">总体来说，我会观察三种类型的参数来辨认问题所在：</p>\r\n<ul style=\"margin: 0px; padding: 5px 10px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; list-style: none outside none; color: rgb(51, 51, 51); font-size: 14px; line-height: 26px; background-color: rgb(253, 253, 253);\">\r\n    <li style=\"margin: 0px 0px 0px 56px; padding: 5px; list-style: circle; font-size: 15px; line-height: 22px;\">跳出和退出率（Bounce and exit rate）</li>\r\n    <li style=\"margin: 0px 0px 0px 56px; padding: 5px; list-style: circle; font-size: 15px; line-height: 22px;\">页面平均时间（Average time on page）</li>\r\n    <li style=\"margin: 0px 0px 0px 56px; padding: 5px; list-style: circle; font-size: 15px; line-height: 22px;\">目标价值（Page value）</li>\r\n</ul>\r\n<h3 style=\"margin: 0px 0px 15px 20px; padding: 0px 0px 0px 10px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; font-size: 16px; border-left-color: rgb(238, 238, 238); border-left-style: solid; border-left-width: 8px; color: rgb(51, 51, 51); line-height: 26px; background-color: rgb(253, 253, 253);\"><strong style=\"color: rgb(102, 102, 102);\">跳出和退出率（Bounce and Exit Rate）</strong></h3>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">跳出率和退出率是两个可能造成混淆的参数。跳出率是只访问了网站的一个页面的用户的比例：在一个页面登陆，但是没有去访问任何其他页面就离开了网站。【译者注：谷歌官方解释为&ldquo;跳出率指单页访问次数（即访问者从入口页离开网站而未与网页互动的访问次数）所占的百分比&rdquo;。】退出率是从一个页面离开了网站的用户的比例（它包括了那些之前在该网站浏览了其他页面的人）。【译者注：谷歌官方解释为&ldquo;退出百分比指从某个或某组特定网页退出网站的次数所占的百分比&rdquo;。】</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">编者注：术语可能有所不同，意思相近即可。给译者的细心点赞！</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\"><a href=\"http://image.woshipm.com/wp-files/2015/08/adad3f689ab1ce110bfb776a1395fb0c.jpg\" class=\"highslide-image\" style=\"color: rgb(41, 86, 152); text-decoration: none; cursor: url(http://www.woshipm.com/wp-content/themes/woshipm-2015/images/highslide/zoomin.cur), pointer; outline: none;\"><img class=\" aligncenter\" data-original=\"http://image.woshipm.com/wp-files/2015/08/adad3f689ab1ce110bfb776a1395fb0c.jpg\" src=\"http://image.woshipm.com/wp-files/2015/08/adad3f689ab1ce110bfb776a1395fb0c.jpg\" alt=\"\" width=\"690\" style=\"margin: 5px auto; padding: 5px; border: 1px solid rgb(238, 238, 238); vertical-align: middle; max-width: 96%; height: auto; border-radius: 3px; display: block; text-align: center; background: rgb(252, 252, 252);\" /></a></p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">如果我发现了网站的一部分出现了一个很高的跳出或者退出率，我会做上笔记，以防某些页面的什么东西造成了用户的离开。一个有着高跳出率的页面可能说明这个页面上的内容不是用户来到这个页面所期望看到的东西。一个高退出率的页面可能说明这个网页导致了用户在他们想要的流程中半途而废&mdash;&mdash;从另一方面看，如果一个高退出率的页面是流程的最后一页，那么这个高退出率就不再是个问题了。</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">用谷歌分析（Google Analytics）中的&ldquo;加权排序（weighted sort）&rdquo;会让跳出率更加有用。根据谷歌分析，&ldquo;加权排序把百分比数据根据重要程度排列，而不是序号排列&rdquo;。举个例子，一个页面虽然有着100%的跳出率，但在过去的一个月中，只有一个用户访问，然后离开了该页面（另外一个更大的问题可能是没有任何人访问过这个页面！）。如果一个页面有80%的跳出率，但是是一个在流程中非常关键的起始页面，那么这个网站可能因此流失了大量的生意。为了更好地为页面可用性测试做准备，我们必须辨认出问题出现的原因：是因为没有人访问这个页面，还是每个访问的人都马上离开了网站？</p>\r\n<h3 style=\"margin: 0px 0px 15px 20px; padding: 0px 0px 0px 10px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; font-size: 16px; border-left-color: rgb(238, 238, 238); border-left-style: solid; border-left-width: 8px; color: rgb(51, 51, 51); line-height: 26px; background-color: rgb(253, 253, 253);\"><strong style=\"color: rgb(102, 102, 102);\">页面平均时间（Average Time on Page）</strong></h3>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">&ldquo;页面平均时间&rdquo;是指用户浏览某个页面所花费的平均时间。如果我发现有一个页面的&ldquo;页面平均时间&rdquo;很低，这可能意味着该页面没有引起用户足够的注意。从另一反面来看，如果用户在一个结账页面停留很久，那么可能是因为该页面过于复杂了。当然，所有的参数都必须放在具体的情境下分析；如果一个博客文章有一个很高的&ldquo;页面平均时间&rdquo;，那么总体来说是一个好的现象，因为这可能意味着用户真的在阅读整篇文章。</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">另外一个衡量页面表现的非常好的方式是利用&ldquo;与网站平均数比较&rdquo;的选项。这个图会显示某些页面在某个参数上是不是在很大程度上高于或者低于平均值。虽然这些页面仍然需要一页一页地分析，因为不同的页面有用不同的目标，但是低于平均浏览时间的页面总体来说可能会有问题，假设目标是为了让用户继续阅读的话。下面的例子清晰地表现出&ldquo;联系（contact）&rdquo;页面相对来说有比平均值更低的浏览时间，然而&ldquo;博客（blog）&rdquo;页面有高于平均值80%的时间。</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\"><a href=\"http://image.woshipm.com/wp-files/2015/08/f92c4e23b714dc817b9d8485f32924b7.jpg\" class=\"highslide-image\" style=\"color: rgb(41, 86, 152); text-decoration: none; cursor: url(http://www.woshipm.com/wp-content/themes/woshipm-2015/images/highslide/zoomin.cur), pointer; outline: none;\"><img class=\" aligncenter\" data-original=\"http://image.woshipm.com/wp-files/2015/08/f92c4e23b714dc817b9d8485f32924b7.jpg\" src=\"http://image.woshipm.com/wp-files/2015/08/f92c4e23b714dc817b9d8485f32924b7.jpg\" alt=\"\" width=\"690\" style=\"margin: 5px auto; padding: 5px; border: 1px solid rgb(238, 238, 238); vertical-align: middle; max-width: 96%; height: auto; border-radius: 3px; display: block; text-align: center; background: rgb(252, 252, 252);\" /></a></p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">再次强调下，情境是关键。用户可能来到联系页面来寻找一个公司的地址，或者联系电话。如果他们成功地找到了，那么他们就会离开该网站，因此较低的页面浏览时间在这里是一个好的现象，说明页面很有用。一个&ldquo;博客&rdquo;页面是用来吸引用户的注意的，因此一个高于平均值的时间可以被看做是一件好事。</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\"><strong style=\"color: rgb(102, 102, 102);\">页面价值（Page value）</strong></p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">&ldquo;页面价值&rdquo;是一个非常重要，但是很少被用到的参数，它可以用来发现表现欠佳的页面。目标价值，就如它的名字所示，是一种赋予页面直接的货币价值的方式。对于电子商务网站来说，它纳入了各种各样的交易收入总数和所有类型的网页的目标价值&mdash;&mdash;这些参数都需要在谷歌分析中人工设置，才能计算出页面价值。一个高价值的页面往往显示出它是一个重要的页面，意味着该页面值得被纳入可用性测试中。</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">一个高价值但是展示出高退出率的页面是值得重视和改进的。意味着这些页面让用户在回话流程的关键位置离开了。在下面的的例子中（一个电子商务网站），我突出显示了三个有着类似的页面价值的品类。可以清楚地看到，&ldquo;个性化玩具（personalised-toys）&rdquo;的产品页面有一个相当高的退出率。这说明这个高价值的页面正在让用户&ldquo;流失&rdquo;，并且应该在未来的用户体验设计工作中引起重视。</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\"><a href=\"http://image.woshipm.com/wp-files/2015/08/5e9ad50a88a8bf9b4b8788c4650655bf.jpg\" class=\"highslide-image\" style=\"color: rgb(41, 86, 152); text-decoration: none; cursor: url(http://www.woshipm.com/wp-content/themes/woshipm-2015/images/highslide/zoomin.cur), pointer; outline: none;\"><img class=\" aligncenter\" data-original=\"http://image.woshipm.com/wp-files/2015/08/5e9ad50a88a8bf9b4b8788c4650655bf.jpg\" src=\"http://image.woshipm.com/wp-files/2015/08/5e9ad50a88a8bf9b4b8788c4650655bf.jpg\" alt=\"\" width=\"690\" style=\"margin: 5px auto; padding: 5px; border: 1px solid rgb(238, 238, 238); vertical-align: middle; max-width: 96%; height: auto; border-radius: 3px; display: block; text-align: center; background: rgb(252, 252, 252);\" /></a></p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">然而，单独的某个页面只能展示部分真相。&ldquo;内容分组（content grouping）&rdquo;这个功能很重要，我们可以利用它来观察网站的某个部分表现如何。内容分组可以把数据根据用户访问的页面种类来进行分类，因此十分必要。我们可以用各种各样的方式来分组。比如对于一个买衣服的网站来说，可以根据不同种类的服饰来分组，看看裤子是不是比衬衫的页面价值要高。</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">一旦发现某个页面或者某个组的页面价值很低，下一步我们要做的就是：找出背后的原因。在上面的例子中，衬衫相对来说有比较低的价值。我采取的第一步行动是，根据我的经验和判断力，看看在衬衫的页面上有没有任何明显的用户体验或者技术方面的问题。做完这个之后，我会和真实的用户一起来测试这些个页面，来看看为什么会有这些问题&mdash;&mdash;并且寻找那些暗含了修复方式的线索。</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\"><a href=\"http://image.woshipm.com/wp-files/2015/08/10879cff84fc69bd24be6d634ad2730c.jpg\" class=\"highslide-image\" style=\"color: rgb(41, 86, 152); text-decoration: none; cursor: url(http://www.woshipm.com/wp-content/themes/woshipm-2015/images/highslide/zoomin.cur), pointer; outline: none;\"><img class=\" aligncenter\" data-original=\"http://image.woshipm.com/wp-files/2015/08/10879cff84fc69bd24be6d634ad2730c.jpg\" src=\"http://image.woshipm.com/wp-files/2015/08/10879cff84fc69bd24be6d634ad2730c.jpg\" alt=\"\" width=\"690\" style=\"margin: 5px auto; padding: 5px; border: 1px solid rgb(238, 238, 238); vertical-align: middle; max-width: 96%; height: auto; border-radius: 3px; display: block; text-align: center; background: rgb(252, 252, 252);\" /></a></p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">内容分组是一个非常强大的工具，可以让你看到网站的不同部分的真实表现。</p>\r\n<h3 style=\"margin: 0px 0px 15px 20px; padding: 0px 0px 0px 10px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; font-size: 16px; border-left-color: rgb(238, 238, 238); border-left-style: solid; border-left-width: 8px; color: rgb(51, 51, 51); line-height: 26px; background-color: rgb(253, 253, 253);\"><strong style=\"color: rgb(102, 102, 102);\">在实践中利用参数</strong></h3>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">这只是利用数据分析来发现网站问题的第一步。在本系列的第二部分中，我们会着眼于如何发现用户流程中的流失点，以及如何把用户分类来看到更多的细节信息。</p>\r\n<p style=\"margin: 5px 15px 10px; padding: 0px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; color: rgb(85, 85, 85); text-indent: 2em; font-size: 16px; line-height: 28.7999992370605px; background-color: rgb(253, 253, 253);\">与此同时，你尝试着利用在本篇文章中学到的方法来发现可能存在的问题：</p>\r\n<ul style=\"margin: 0px; padding: 5px 10px; font-family: &#039;Microsoft YaHei&#039;, &#039;WenQuanYi Micro Hei&#039;, &#039;Open Sans&#039;, &#039;Hiragino Sans GB&#039;, Arial, Verdana, Tahoma, sans-serif; list-style: none outside none; color: rgb(51, 51, 51); font-size: 14px; line-height: 26px; background-color: rgb(253, 253, 253);\">\r\n    <li style=\"margin: 0px 0px 0px 56px; padding: 5px; list-style: circle; font-size: 15px; line-height: 22px;\">调出跳出率，找出那些用户访问并且马上离开了的页面。</li>\r\n    <li style=\"margin: 0px 0px 0px 56px; padding: 5px; list-style: circle; font-size: 15px; line-height: 22px;\">浏览所有页面的退出率，找出在流程的哪些地方用户离开了网站。</li>\r\n    <li style=\"margin: 0px 0px 0px 56px; padding: 5px; list-style: circle; font-size: 15px; line-height: 22px;\">考虑到用户在页面平均停留时间的重要性&mdash;&mdash;一个拥有着高跳出率的博客页面，同时拥有着很长的平均页面时间，这是一件好事！</li>\r\n    <li style=\"margin: 0px 0px 0px 56px; padding: 5px; list-style: circle; font-size: 15px; line-height: 22px;\">根据页面价值排序，观察页面。页面价值越高，那么就越值得被纳入可用性测试，从而最终修复用户在该页面遇到的问题。</li>\r\n</ul>', '0', '', '0', '', '0', '0', '', '1', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('2', '13', '0', '医院网络营销', '', '', 'admin', '127', '1', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 23:53:59', 'admin', '', '/upload/images/201507/14360893760234.jpg', '1', '1', '付费推广，很好理解，就是花钱买上门量，其实做营销的医院都知道，最终盈利的是百度、搜狗等平台，而医院不过是消化了很小一部分的利益，男妇科和一些竞争小的科室会稍微好一点', '200', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;身处在医疗行业几年，对这个行业虽不深知，但是无论是做付费推广还是免推或者内容营销，其实这个行业已经大体上已经陷入了一个固定的框架，以及再往下走，不擅变化的话，&ldquo;营销&rdquo;本身就会是一个死胡同，下面我就分析一下这些年我眼里的医疗网络营销。</p>\r\n<p>&nbsp;</p>\r\n<p>　　付费推广，很好理解，就是花钱买上门量，其实做营销的医院都知道，最终盈利的是百度、搜狗等平台，而医院不过是消化了很小一部分的利益，男妇科和一些竞争小的科室会稍微好一点，整形行业的到院成本高的吓人，而且被取代的可能性太大，只要出价低于别人立马刷下去，说是营销，不如说是各家医院在拼谁更有钱，当然，这是在没有恶意点击的情况下，你们去网上搜索一下恶意点击，虽然百度有策略，但是对手有战略，对于高质量的恶点任然不绝如缕，并且近年来竞价成本呈直线上升的趋势，虽然医院营销人员对这一点也能认识，但是相对于漫长的优化周期来说，你是愿意花一周的时间吃药还是一针见效?就是这么简单!这样说来百度不赚钱谁赚?</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><img src=\"/upload/images/201507/14360477746412.jpg\" alt=\"undefined\" /></p>\r\n<p>&nbsp;</p>\r\n<p>　　再者就竞价这一块而言，现在大多数的竞价做到最后都是调价!调价!很少再去优化账户，或者仔细的做数据分析，即使做了分析，大多数人应该都是拿给上面看的，而不是自己仔细的去揣摩账户，毕竟竞价是影响咨询量的主要因素，一旦这一块上薄弱了，咨询意见也会很大，甚至之前我有遇到过一旦咨询抱怨，就做一些质量度很低的词，反正竞价这一块只需要给足那么多咨询量就好了，到院转化是咨询的事，如此简直是恶性循环，甚至是资源的极大浪费。</p>\r\n<p>&nbsp;</p>\r\n<p>　　再者现在各家医院比较喜欢做的新闻源，这个不用多说，还是争排名，谁的排名好，谁的展现就多，现在好点的平台一般一块钱一篇，但是新闻源这两年来已经做烂，加上文章质量低的不能再低，你抄我的我抄你的，极大部分的从业人员都是一篇文章改个关键词，改个图片，尾部JS一加，发出去完事儿，这样低质量的文章在遇见好的平台后，通常情况下收录了后你去查会在首页第一条，然后第二天立马排名掉了，不过没事儿，再发呗!推广人员的工作不就是每天发文章嘛!但是我想问，新闻源给大家带来的流量、有效的咨询量、到院真的多吗?所以其实这里我想强调的是质量，也许会有点从我以往经验的片面，但是&ldquo;内容为王&rdquo;的时代还没彻底过去，别太快的拼钱!</p>\r\n<p>&nbsp;</p>\r\n<p>　　新媒体是这两年兴起的，其实说白了就是微博微信，以前听说有家医院就靠这微信一个月都会有很高的到院(相对而言)，然后微博和微信作为两种介质的东西，一个是开放营销平台，一个是完全的闭环，虽说是两家产品，但是完全是可以做到微博引流，微信成交，这样相辅相成大大的缩减了整个营销环节的预算，也一定程度上巩固了医院的品牌，营销的根本不就是做品牌吗?但是就现在看来大部分的医院在这一块上已经做的千篇一律，甚至靠心灵鸡汤来试图触动消费者，我想说消费者不是傻瓜，没人会主动把钱送上门，需求是需要我们自己去激发的，一定要让自己的帐号变得有粘度，也许你是看到没人取消关注，但是去问问消费者，在她们的手机上，你们的公众账号已经积累了多少未读消息了，多研究患者心理，去开启他们心底的欲望，别再做一些让人看都不想看的内容了。</p>\r\n<p>&nbsp;</p>\r\n<p>　　再者免推，其实很多医院已经摒弃了这种方式，见效太慢，同时耗费人力和时间，算时间成本的话，对医院来说很不划算，作为医院经营者来说，他给从业人员支付了工资，但是也许一个月都还没见到效果，这样一来你会乐意吗?我们来看下以下的几种方式你都还在做吗?</p>\r\n<p>&nbsp;</p>\r\n<p>　　博客。说到这个，我只能说还是第一份工作的时候做过博客，后来就在没做过了，比较那会儿新闻源刚出现不久，很多人跃跃欲试但是又不知其效果，所以任然匍匐在免费的渠道上面，就说做的最多的新浪，其实新浪博客是一个收录周期稍微算长点儿的平台，所以见效慢这事儿就很能理解了，这个东西是一个积累的过程，所谓积累也就是通过一个为期不短的时间去养用户，让大家觉得你发的东西都有用，愿意来看，那么这种时候你可以名正言顺的打广告了，当然不是硬广，硬广一直以来在内容这一块儿上都比较让人反感，反正我觉得不大好用，消费者的抵触情绪会很高，也可以建立一些博客做外链，其实效果还不错，但是得适可而止!但是慢慢的博客这种方式用的人越来越少了，至少在医疗行业是这样的!</p>\r\n<p>&nbsp;</p>\r\n<p>　　分类信息。这也是现在大家都不怎么做的了，大部分原因还是平台限制越来越大，收录也不如以前好，还有就是很多人根本不知道如何挑选好的平台，蛰伏在这一块上的，以男妇科较为显著，就整形这样娇贵的科室一般不会再去采用，但是就分类信息本身而言，还是可以去寻找一些权重比较高的网站，又能推广又能做外链，更能以一种精确的分类将你的信息呈现在用户面前，何乐而不为?而且还更适合做小地区词，顺便在文末给自己网站加个外链，效果真的没有你们想象中那么差!寻找一些质量度高的分类信息平台真不是医院应该放弃的一块&ldquo;腊肉&rdquo;!</p>\r\n<p>&nbsp;</p>\r\n<p>　　QQ群。我不知道有多少医院会真正的把QQ群很好的利用起来，其实这是一个很好的资源整合平台，在这个前提下，你得学会如何把自己群里的托儿清理出去，即使会有一定风险，就是你不能防止有的患者在术后不满意会在群里抱怨，但是学会妥善处理这些负面信息，QQ群真的能带来很大的发展空间，毕竟QQ本身也是一个内容营销的好场所，关于具体怎么做这一块，下次再来分析。</p>\r\n<p>&nbsp;</p>\r\n<p>　　然后SEO，现在大多数医院的SEO真的可以用打酱油来形容，拿着不高不低的工资，每天发发外链交换一下友链就好了，很少有人回去涉及到网站架构和关键词的优化，让我曾经一度对这个岗位抱着极大的怀疑，难道不是这些事儿编辑或者推广都可以完成的，何必再专设岗位，并且医疗行业对SEO其实并不大亲睐，毕竟这也是一个见效慢的东西，老板十天半个月都还看不到成效!而且大多数人在这一块上走入了一个误区，包括你去看一些牛逼轰轰的外包公司，他给你承诺一个星期把网站做到第一名，确实做到了，但是往往好景不长，SEO是个耐心活儿，至少我是不大赞同黑帽的做法!</p>\r\n<p>&nbsp;</p>\r\n<p>　　最后我想说下网站本身的内容，我不知道现在有多少医疗编辑还会去刻意的学点优化，但是我建议大家最好是让他们变成懂优化的编辑，网站内容看似是一个堆砌过程，或者说就是拿给患者看的东西，但是如果做好文章本身的优化，包括段落、关键词布局、开头怎么写会让人继续看下去、结尾怎么写才能更加引导咨询，这都是一个技巧，对于整个网站的排名和权重而言是非常有利的，别再一个劲儿的告诉新入门的编辑什么要原创度50%，一定要改头改尾，长尾关键词一定要牛逼&hellip;&hellip;这都是捷径，不适合新人，只会让他们以后越来越擅长抄而已，说浮夸点儿，我们得让自己的编辑有着一颗门户网编辑的心!</p>\r\n<p>&nbsp;</p>\r\n<p>　　最后其实我想跳题的说，医院何必话太大的价钱去砸广告，广告是一剂短效药，我们整体的营销真的需要改革了，别再养百度，养养患者吧，别再患者的病历上夸大病情，别再恐吓患者，多去思考一下为什么患者始终喜欢选择公立医院，为什么对私立医院的信任度永远都在医院门口徘徊，为什么患者在治疗后出门都是抱怨，凡是以患者为本，营销只是方式，品牌才是根本，固根而养其叶。</p>', '0', '', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('3', '13', '0', '企业网站运营职位新要求：自媒体', '', '', 'admin', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 23:58:30', 'admin', '', '', '1', '1', '自媒体帮公司卖产品，最重要是内容撰写，拥有很好的文字撰写能力非常重要，尽量原创，因为原创百度收录的效果最好、排名也最好，像企业不可能聘请编辑，没有编辑所以自媒体人在企业的每天要计划好写多少篇文章最好，像笔者每天早晨写两篇文章，然后把昨天写好的两篇文章投向各大平台，下午就是处理一些业务琐事，有计划的工作非常重要，亲自去感受一下就知道了。', '200', '<p>导读：前几天笔者去应聘一个传统企业网站的SEO工作，面试官的第一句问的就是&ldquo;你懂自媒体吗?我们公司对SEO主管第一个要求就是精通自媒体&rdquo;。</p>\r\n<p>&nbsp;</p>\r\n<p>　　自媒体的发展有目共睹，过去的风靡站长圈的SEO博客纷纷改成自媒体博客，自媒体的第一批人是运营站长博客的站长们。</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><img src=\"/upload/images/201507/14360690166868.jpg\" alt=\"undefined\" /></p>\r\n<p>&nbsp;</p>\r\n<p>　　自媒体有多重要呢?一个网站的核心是内容，现在互联网上内容第一提供者就是自媒体人，谁的网站能拉拢住自媒体人，谁的网站内容就会非常丰富，各大门户网站就是看清了这一点，纷纷开通自媒体平台、搜狐自媒体、凤凰自媒体、百度百家、今日头条、还有各位草根运营的自媒体博客，自媒体的发展四处开花、漫山遍野都是自媒体的影子，尤其可见自媒体的重要性。</p>\r\n<p>&nbsp;</p>\r\n<p>　　传统企业利用自媒体人的自身优势大力发展网络营销是非常有利了，所以很多企业在聘请SEO的时候都会要求应聘者懂自媒体，企业聘请自媒体人的目的是为卖产品，怎么卖产品是我们重点。</p>\r\n<p>&nbsp;</p>\r\n<p>　　自媒体人怎么帮助企业卖产品?</p>\r\n<p>&nbsp;</p>\r\n<p>　　1：自媒体人卖产品的第一步就是在各大平台注册账户，越多越好。</p>\r\n<p>&nbsp;</p>\r\n<p>　　2：每天写作软文，然后在各大自媒体平台投稿，吸引粉丝，当然注意软文的硬度，不能太硬，免得自媒体平台审核不通过。</p>\r\n<p>&nbsp;</p>\r\n<p>　　3：在每一篇的文章底部留下企业的官网或者其他联系方式。</p>\r\n<p>&nbsp;</p>\r\n<p>　　4：在自媒体平台投稿的文章标题一定要包涵产品的关键词，想百度百家、搜狐自媒体都能进百度新闻源，你写的标题包涵产品关键词，投稿成功后，搜索关键词，能在第一页百度新闻相关信息看到你投的稿子。</p>\r\n<p>&nbsp;</p>\r\n<p>　　5：铺天盖地海量的投稿，内容越多越好、可读性越强越好，当你的文章积累到一定数量的时候，有可能你在百度搜索产品关键词的时候显示的结果一个整页都是你们公司的信息。</p>\r\n<p>&nbsp;</p>\r\n<p>　　总结：自媒体帮公司卖产品，最重要是内容撰写，拥有很好的文字撰写能力非常重要，尽量原创，因为原创百度收录的效果最好、排名也最好，像企业不可能聘请编辑，没有编辑所以自媒体人在企业的每天要计划好写多少篇文章最好，像笔者每天早晨写两篇文章，然后把昨天写好的两篇文章投向各大平台，下午就是处理一些业务琐事，有计划的工作非常重要，亲自去感受一下就知道了。</p>', '0', '', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('4', '13', '0', '酒店行业真正的互联网思维', '', '', 'admin', '127', '1', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 23:59:22', 'admin', '', '/upload/images/201507/14360857154349.jpg', '1', '1', '酒店行业作为我国第三产业的支柱产业之一，一直为社会的发展和人民生活发挥着重要作用，被视为一枝独秀。过去十年，中国酒店业的蓬勃发展累积了诸多问题，包括 在“大干快上”的理念下的过度投资、偏离市场的设施定位、缺乏创新的产品、酒店模式的同质化等。分析2014年酒店行业现状了解到，2014年中国酒店业基本延续了之前的态势，收入、利润持续走低，2015年中国酒店业发展，“转型”“调整”“创新”是关键词。', '200', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 酒店行业作为我国第三产业的支柱产业之一，一直为社会的发展和人民生活发挥着重要作用，被视为一枝独秀。过去十年，中国酒店业的蓬勃发展累积了诸多问题，包括 在&ldquo;大干快上&rdquo;的理念下的过度投资、偏离市场的设施定位、缺乏创新的产品、酒店模式的同质化等。分析2014年酒店行业现状了解到，2014年中国酒店业基本延续了之前的态势，收入、利润持续走低，2015年中国酒店业发展，&ldquo;转型&rdquo;&ldquo;调整&rdquo;&ldquo;创新&rdquo;是关键词。</p>\r\n<p style=\"text-align: center;\"><img src=\"/upload/images/201507/14470823760819.jpg\" alt=\"undefined\" /></p>\r\n<div>&nbsp;</div>\r\n<div>　　供求过剩，酒店行业现状堪忧</div>\r\n<div>&nbsp;</div>\r\n<div>　　据最新数据显示，2011年后，星级酒店的营业增长速度已跑不赢GDP，经营每况愈下，面临全行业亏损。2013年，从一星级到五星级酒店，平均每间客房收入统统同比下降：五星级385.33元下降9.45%;四星级207.53元下降6.25%;三星级120.42元下降5.82%;二星级82.20元下降5.57%;一星级66.34元下降3.37%。就在这样的环境下，未来高端酒店的数量仍在增长，回报率低，巨额投资将无法收回。STR统计，未来5年中高端酒店将新增客房23万间，据预计，未来酒店出租率仍会持续下滑，到2016年出现波谷。</div>\r\n<div>&nbsp;</div>\r\n<div>　　供求过剩，导致行业的收益率大幅下降，市场的变现需求开始，出售、并购、兼并等行为愈加激烈。井喷的酒店大多诞生于房地产华丽的泡沫下，并非客源市场驱动。因供给过剩导致的经营业绩下降，是迟早的事。</div>\r\n<div>&nbsp;</div>\r\n<div>　　一时间，过度庞大的酒店资产供应将导致酒店资产价格迅速下跌，直到无人问津，特别是搭配房地产的那些酒店资产将更加难以被市场消化。一时间，众多酒店都开始改革之路，从创新酒店服务与经营模式下手。</div>\r\n<div>&nbsp;</div>\r\n<div>　　智能化酒店提上议程</div>\r\n<div>&nbsp;</div>\r\n<div>　　2014年，国家旅游局将旅游业发展主题定为&ldquo;智慧旅游&rdquo;，要求各地旅游局以智慧旅游为主题，引导智慧旅游城市、景区等旅游目的地建设，促进以信息化带动旅游业向现代服务业转变。为此酒店行业迫切需要能满足数字时代全新要求的智慧解决方案，通过创新管理来增强对消费者的吸引力。</div>\r\n<div>&nbsp;</div>\r\n<div>　　如今2015年刚刚来临，但几乎所有的酒店品牌都面临着改革创新。革除掉不适应市场需求和消费者需要的桎梏元素，同时不断创新服务和产品，以追寻最先进的酒店生产力。一时，酒店信息智能化引起了众多酒店经营者的注意。酒店信息智能化是指酒店拥有一套完善的智能化体系，通过数字化与网络化实现酒店数字信息化服务技术。利用物联网、云计算、移动互联网等新一代信息技术，通过酒店内各类旅游信息的自动感知、及时传送和数据挖掘分析实现旅游六要素的电子化、信息化和智能化，满足客人个性化需求，并帮助酒店达成开源、节流、增效的目的。</div>\r\n<div>&nbsp;</div>\r\n<div>　　酒店若实现智能化，顾客将享受从预定、入住到结帐都能一步到位，实现全电脑系统化管理与服务，省去了一些不必要而且烦琐的程序与步骤;同时，还能根据顾客的个性要求提供专属服务，用数据说话，让顾客体验到最舒适的服务。据悉，目前日本长崎市将在今年七月份开设全球首家由机器人担任全部员工的酒店，该酒店的宣传口号为&ldquo;进化的承诺&rdquo;而配备的机器人员工可以清理房间，还可搬运行李以及在酒店接待处迎宾。</div>\r\n<div>&nbsp;</div>\r\n<div>　　新型的智能化酒店将带领新的行业浪潮，目前国内已有不少开发商针对酒店智能化推出了新型产品。其中，长沙佳驰软件开发的酒店开房自助机引起了业内的众多关注，该机器与酒店管理软件直连，顾客可通过它自行办理入住与退房，全程由顾客自行操作。新型的智能方式，不仅给顾客带来更好的体验，也减少了酒店的人力成本，建议转型酒店可进行尝试使用。</div>\r\n<div>&nbsp;</div>\r\n<div>　　</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>　　2015年的中国酒店业，激流涌动、如履薄冰，转型的过程就是优胜劣汰。转型的首要任务就是要改变中国酒店业重投资轻管理、重硬件轻软件的情况，从智能化入手，与国际接轨，形成具有中国特色的智能化酒店。酒店信息智能化，迫在眉睫!</div>', '0', '', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('5', '2', '0', '行业网站的设计心得', '', '', 'admin', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 22:14:31', 'admin', '', '/upload/images/201507/14360857154349.jpg', '1', '1', '创意，所谓创意就是不拘一格？某些设计师在做创意的时候大费周章，做出来确实不可否认很有创意、很别致，但往往对于行业网站的客户为什么不能接受呢？', '200', '<p>&nbsp;</p><p>　　很多设计师认为做好了企业网站就一定能够做好行业网站的设计，其实对设计来说行业网站和企业网站的设计截然不同，对整个网站的创意、风格、整体框架布局、文字编排、图片的合理利用，空间的合理安排上面等&hellip;有着许多诸多的要求，需要考虑的面更广，面对的问题也会更多。对于一名优秀的网站设计师来说不能绝不能放过任何一点小细节，本篇文章简述的是设计师在做行业网站时所需考虑的一些问题。 <br/>一、网站风格/创意</p><p>　　风格(style)是抽象的。是指站点的整体形象给浏览者的综合感受。整体形象包括站点的版面布局，色彩，字体，浏览方式等&hellip;。如：我们觉得迪斯尼是生动活泼的而IBM则是专业严肃的。每一个网站都会给人们留下的不同感受。这里我们需要做到的是根据网站的定位做出网站特有的风格。除此我们还需要在风格同一上需要把握一下，其实这个风格的统一和传统的印刷出版物没什么区别。你网页上所有的图像、文字，包括像背景颜色、区分线、字体、标题、注脚什么的，都要统一风格，贯穿全站。这样子用户看起来舒服、顺畅，会对你的网站留下一个&ldquo;很专业&rdquo;的印象。而企业网站设计师往往就缺乏这一点，没有全局意思。</p><p>　　创意，所谓创意就是不拘一格？某些设计师在做创意的时候大费周章，做出来确实不可否认很有创意、很别致，但往往对于行业网站的客户为什么不能接受呢？此时不要太责怪客户的不识货，应该反思，抓住客户的需求。其实做行业网站不需要很多大的创意，也不要浪费过多的时间去追求如何个性、如何好看，我们只需要一点小小的创意贯穿全站，也许会使网站更生动更具有吸引力、更有思想，比如企业网站管理程序(<a href=\"http://www.cmseasy.cn/\">http://www.cmseasy.cn/</a>)就是一个很好的案例，它把领先的SEO融入到网站中，使它脱颖而出。</p><p>二、网站LOGO</p><p>　　Logo顾名思义就是站点的标志图案，logo最重要的就是用图形化的方式传递网站的定位和经营理念、同时便于人们识别。网站logo的设计过程中一般有以下三种思路：1.直接以网站网址作为logo。2.根据网站提供的产品/服务特点展开logo设计。3.以传递网站运营商的经营理念为特色。如：企业网站建设网logo(<a href=\"http://www.cmseasy.cn\">www.cmseasy.cn</a>)</p><p>三、视觉流程</p><p>　　人们在阅读某种信息时，视觉总有一种自然的流动习惯，先看什么，后看什么，再看什么。在心理学的研究表明，一般的浏览习惯是从上到下、从左到右，在一个平面上，上松下稳而压抑。同样，平面的左松右稳。所以平面的视觉影响力上方强于下方，左侧强于右侧。这样平面的上部和中上部被称为&ldquo;最佳视域&rdquo;，也就是最优选的地方。在网页设计中一些突出或推荐的信息通常都放在这个位置。当然这种视觉流程只是一种感觉并非一种固定的公式，只要符合人们的心理顺序和逻辑顺序，就可以更为灵活地运用，在网页设计中，灵活而合理地运用直接影响到传达信息的准确与有效性。</p><p>四、网页框架与布局</p><p>　　网页布局大致可分为&ldquo;国&rdquo;字型、拐角型、&ldquo;T&rdquo;字型、&ldquo;L&rdquo;字型、综合框架型、Flash型、变化型，在这里就不做一一论述了。其实在我们在做设计的时候并没有过多的去考虑什么形式，比如我们在一张纸看到一个圆形的东西，很容易可以联想到它像太阳，而有些人则联想到月亮等等&hellip;这都是一种形式比喻，最重要的是抓住客户的需求，把握网站的定位做处合理的框架布局。</p><p>1． 分辨率</p><p>　　网页的整体宽度可分为三种设置形式：百分比、象素、象素+百分比。通常在网站建设中以象素形式最为常用，行业网站也不列外。我们在设计网页的时候必定会考虑到分辨率的问题，科技发展到现在我们通常用的是1024*768和800*600的分辨率，现在网络上很多都是用到778个象素的宽度，在800的分辨率下面往往使整个网页很压抑，有种不透气的感觉，其实这个宽度是指在800*600的分辨率上网页的最宽宽度，不代表最佳视觉，不妨试试760~770的象素，不管在1024还是800的分辨率下都可以达到较佳的视觉效果。</p><p>2． 合理广告</p><p>　　在目前一些网站的广告（弹出广告、浮动广告、大广告、banner广告、通栏广告等等&hellip;）让人觉得很烦琐，更本就不愿意来看，有时连你这个网站都不上了，这样一来网站受到了严重的影响、广告也没达到广告的目的。这些问题都是我们在设计网站之前需要考虑、需要规划的内容之一。</p><p>　　浮动广告有两种，第一种是在网页两边空余的地方可以上下浮动的广告，第二种是满屏幕到处随机移动的广告。建议能使用第一种的情况下尽量使用第一种，不可避免第二种情况时尽量在数量上控制最多一个就好。如果数量过多会直接影响到用户的心理、防挨到用户浏览信息,适得其反。首页广告不宜过多适中即可。如在注册或者某个购买步骤的页面上最好不要出现过多的其他无关的内容让用户分心，避免客户流失等&hellip;</p><p>3．空间的合理利用</p><p>　　很多的网页都具有一个特点，用一个字来形容，那就是&ldquo;塞&rdquo;，它将各种各样的信息如文字、图片、动画等不加考虑的塞到页面上，有多少挤多少，不加以规范，导致浏览时会遇到很多的不方便，主要就是页面主次不分，喧宾夺主，要不就是没有重点，没有很好的归类，整体就像各大杂烩。让人难以找到需要的东西。有的则是一片空白失去平衡，也可以用个&ldquo;散&rdquo;字来形容。</p><p>　　并非要把整个页面塞满了才不觉得空，也并非让整个页面空旷才不觉得满，只要合理的安排、有机的组合，使页面达到平衡，既使在一边的部分大面积留空，同样不会让人感到空，相反这样会给人留下广阔的思考空间，给人回味又达到了视觉效果。</p><p>4．文字编排</p><p>　　在网页设计中，字体的处理与颜色、版式、图形化等其他设计元素的处理一样非常关键。</p><p>4.1文字图形化</p><p>　　文字图形化就是将文字用图片的形式来表现，这种形式在页面的子栏目里面最为常用，因为它具有突出，同时又美化了页面，使页面更加人性化加强了视觉效果。是文字无法达到的。对于通用性的网站弊端就是扩展性不强。</p><p>4.2强调文字</p><p>　　如果将个别文字作为页面的诉求重点，则可以通过加粗、加下划线、加大号字体、加指示性符号、倾斜字体、改变字体颜色等手段有意识地强化文字的视觉效果，使其在页面整体中显得出众而夺目。这些方法实际上都是运用了对比的法则。如果在更新频率低的情况下也可以使用文字图形化。</p><p>&nbsp;</p>', '0', '0', '0', '', '0', '0', '', '1', '', '', '0', '', '', '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('6', '2', '0', '网站文化与网页设计', '', '', 'admin', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 22:21:57', 'admin', '', '', '1', '1', '网站的良好运营靠的是什么？靠技术，肯定不是，因为技术的发展是一个相对的概念，不具有耐久性，缺乏凝聚力，如果仅仅靠这个，是不能维系整个网站发展的。', '200', '<p>&nbsp;</p>\r\n<p>　　网站的良好运营靠的是什么？靠技术，肯定不是，因为技术的发展是一个相对的概念，不具有耐久性，缺乏凝聚力，如果仅仅靠这个，是不能维系整个网站发展的。网站其实就是企业，只不过它是提供给自己的客户以不同的产品，即以网页的形式展现给他们浏览、以交互的方式让他们参与等等，既然网站是一个企业就不能回避一个问题，就是盈利的问题，如果只顾向网站投钱，作亏本生意，是那个网站都不愿意做的事情。所以网络如果要给自己带来回报，就必须以高标准来要求，这样就不得不提升到网站文化的高度。还是先来看一下企业文化的定义吧！ <br />\r\n只要问一问任何一家一流的高科技企业，什么使这些企业引以自豪，十家有八家或许会告诉你，它们引以自豪的是自己的产品或服务。剩下的两家则会举出一系列的东西，如它们的业务流程、它们的业务伙伴关系、它们的员工等等。总之，概括起来就是：企业文化。 什么是企业文化呢？Terence E. Deal（特伦斯）和Allan A. Kennedy（阿伦）合著了一部颇具影响的专著，《企业文化》（Corporate Culture）。书中给企业文化的定义是，&quot;用以规范企业人多数情况下行为的一个强有力的不成文规则体系。&quot;</p>\r\n<p>　　其实企业文化指的是一个企业中所有员工共有的一套观念、信念、价值和行为准则，以及由此导致的行为模式。企业文化是以人为本的管理哲学，是把精神文明建设同企业特点和市场对企业发展的要求结合起来的一个重要形式，是借助文化力量的管理方式，良好的企业文化能为企业保持数十年的竞争优势。</p>\r\n<p>　　可以说企业文化是企业的灵魂。一个没有自己企业文化的企业其经营往往是随波逐流的，其员工也没有主人翁意识，这样的企业是长不了的。纵观国内外现代化企业管理已经从以物为中心的管理转向以人为中心的管理，从而越来越突出人在企业生存和发展中的作用和力量。企业最重要的资源是知识，而知识是人的资源，所以重视人就是重视企业最重要的资源。IBM这样一个老牌的大公司为什么经历如此多的风风雨雨至今仍然是蓝色巨人？HP公司为什么能保持20多年持续稳定的发展？其答案都很简单：重视人的建设是他们立于不败之地的保证。</p>\r\n<p>　　虽然现在的网站赖以竞争的本钱并不是靠的自己的文化，而是一些比如机遇、技术、条件等，但是现在并不能代表以后，随着社会经济和网络技术的发展，外部条件都不是问题，如果仅靠这些，网站之间的差别将变得很小，这样网站生存的价值就会变小。所以要能够在竞争中立于不败之地，就应该坚持以人为本，挖掘网站人的潜力，让他们发挥自己的才能，使他们能够不断的超越自我，更好的凸现自己的价值。从而形成一种合力，使网站的发展形成一种良好的机制。</p>\r\n<p>　　 在这样的情况下，网页设计就被赋予了新的内容，要求也随之提高，主要表现在几个方面：</p>\r\n<p>　　首先就是网站的整体形象，一个网站给人的第一印象就是主页，但是绝不是说，只要主页做好了，网站的整体形象就好，因为在用户对整个网站的浏览的过程中，会自然而然的形成一种对网站的看法，这种看法是附带有感情色彩的，比如喜欢、不喜欢、没有什么感觉等，这就是整体形象的体现，这是靠主页和其它的页面相配合来完成的，所以在制作网页的时候要考虑怎么将自己网站好的一面体现给自己的用户，又要考虑体现的方式，侧重点，不能一锅端，都放在主页上，造成杂乱的形象。而要给人以好的可以信赖的形象就必须从许多细节上入手，同时规范整个网站的外在表现，具体在于标志的设计、标准色彩的表达以及标准字体的设计。这些都是很重要的，有一个统一的、标准的形象是赢得自己用户信赖的条件。</p>\r\n<p>　　其次是如何在网页设计中将整个网站的员工的精神风貌体现出来，每个企业的员工其实是一分宝贵的财富，所以能够充分的将员工的精神风貌体现出来一方面可以激励他们努力的工作，热爱自己的工作，也是加强企业凝聚力的一个手段；同时也可以通过这样的方法来赢得自己的客户的支持，在网站林立的今天，赢得自己的用户就是赢得了市场，就是获得了生存的基本条件。</p>\r\n<p>　　再次，在网页设计的时候，需要结合网站本身的特点，提炼出自己的经营理念，摆脱低层次的网站运行模式，网站作为一个企业就必须在不断的发展壮大的时候，结合自身的文化特色，提炼出一些深层次的东西，而这些东西就是企业的灵魂，很多世界知名品牌都有自己的独特的经营理念，比如微软是&quot;成功诀窍 = 人才 + 创新，管理 = 合适的时间 + 应做的事&quot;，惠普是&quot;财富= 人才 = 资本 + 知识&quot;，飞利普是&quot;新产品 = 技术内涵 + 观念创新&quot;，东芝是&quot;企业活力 = 智力&times;（毅力 + 体力 + 速度）&quot;，麦当劳是&quot;企业的活力 = 原材料&times;设备&times;人力资源人力资源 = 人数&times;能力&times;态度&quot;。这样就给网页设计师提出了更高的要求，要求他们能够深入的了解网站，同时将自己融入的到网站中，不断的发掘具有闪光性的东西，同时找到合适的表达方式来加以强化。这样才能够使网站靠自身的优势获得用户的好感。从而奠定良性运行的基础。</p>\r\n<p>　　既然网站文化给网页设计师提出了更高的要求，那么具体到网页设计师身上该如何应对呢？提高自身的文化素质是必不可少的，假如自身素质不高的话，就无法领会到很多其中的内涵，这样在自己的设计表达的时候就不可能到位，其实作品就是一面镜子，在其中可以折射出设计者自身的素质，这是掩盖不了的，所以提高自身的文化修养是很重要的，形成一种习惯，这样在无形中就可以在设计的作品表现出来，所以这里没有任何捷径可以走，只有在平时的生活中点点滴滴的积累。同时要有一颗积极向上的心，对生活充满热情！这样才可能在自己的网页设计中挖掘出好的东西来，也给自己的用户留下好的印象。<br />\r\n&nbsp;</p>', '0', '', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('7', '2', '0', '一个成功的网站设计', '', '', 'admin', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 22:22:19', 'admin', '', '/upload/images/201507/14360852759105.jpg', '1', '1', '随着网络技术的不断发展，网络应用已经渗透到人类社会的各个角落,作为网络世界的支撑点的网站，更是人们关注的热点：政府利用网站宣传自己的施政纲领。', '200', '<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 随着网络技术的不断发展，网络应用已经渗透到人类社会的各个角落。作为网络世界的支撑点的网站，更是人们关注的热点：政府利用网站宣传自己的施政纲领，日益成为与百姓交流的直通车；企业利用网站宣传自己的形象，挖掘无限商机；个人利用网站展示个性风采，创建彼此沟通的桥梁。越来越多的人希望拥有网站，开辟网络世界里的一片天地。如何设计一个出色的网站呢？关于这个问题，人们讨论的很多，可以讨论的内容也很多，加之网络技术的飞速发展，很难提出一个绝对权威和正确的设计思路，任何网站都基于以下设计思路： <br />\r\n中国站长第一门户</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 一、定位网站的主题和名称 <br />\r\n网站的主题也就是网站的题材，<a class=\"ljwz\" target=\"_blank\" href=\"http://www.webb.com.cn/\">网站设计</a>开始首先遇到的问题。网站题材千奇百怪,琳琅满目，只要想的到，就可以把它制作出来。</p>\r\n<p>如果题材已经确定以后，就可以围绕题材给网站起一个名字。网站名称，也是网站设计的一部分，而且是很关键的一个要素。</p>\r\n<p>中国站长第一门户建议：</p>\r\n<p>1、名称要正。其实就是要合法，和理，和情。不能用反动的，色情的，迷信的，危害社会安全的名词语句。</p>\r\n<p>2、名称要易记。最好用中文名称，不要使用英文或者中英文混合型名称。另外，网站名称的字数应该控制在六个字(最好四个字)以内，四个字的也可以用成语。字数少还有个好处，适合于其他站点的链接排版。</p>\r\n<p>3、名称要有特色。名称平实就可以接受，如果能体现一定的内涵，给浏览者更多的视觉冲击和空间想象力，则为上品。例如：音乐前卫，网页陶吧，e书时空等。在体现出网站主题的同时，能点出特色之处。</p>\r\n<p>二、定位网站的CI形象</p>\r\n<p>所谓CI(corporate identity)，意思是通过视觉来统一企业的形象。一个杰出的网站，和实体公司一样，需要整体的形象包装和设计。准确的，有创意的CI设计，对网站的宣传推广有事半功倍的效果。中国站长第一门户</p>\r\n<p>三、确定网站的栏目</p>\r\n<p>建立一个网站好比写一篇文章，首先要拟好提纲，文章才能主题明确，层次清晰。如果网站结构不清晰，目录庞杂，内容东一块西一块。结果不但浏览者看得糊涂，自己扩充和维护网站也相当困难。网站的题材确定后，并且收集和组织了许多相关的资料内容，但如何组织内容才能吸引网友们来浏览网站呢？栏目的实质是一个网站的大纲索引，索引应该将网 站的主体明确显示出来。</p>\r\n<p>四、确定网站的目录结构</p>\r\n<p>网站的目录是指你建立网站时创建的目录。例如：在用frontpage98建立网站时都默认建立了根目录和images(存放图片)子目录。目录结构的好坏，对浏览者来说并没有什么太大的感觉，但是对于站点本身的上传维护，内容未来的扩充和移植有着重要的影响。</p>\r\n<p>五、确定网站的链接结构中国站长第一门户</p>\r\n<p>网站的链接结构是指页面之间相互链接的拓扑结构。它建立在目录结构基础之上，但可以跨越目录。建立网站的链接结构有两种基本方式：</p>\r\n<p>1、树状链接结构</p>\r\n<p>类似DOS的目录结构，首页链接指向一级页面，一级页面链接指向二级页面。这样的链接结构浏览时，一级级进入，一级级退出。优点是条理清晰，访问者明确知道自己在什么位置，不会&quot;迷&quot;路。缺点是浏览效率低，一个栏目下的子页面到另一个栏目下的子页面，必须绕经首页。</p>\r\n<p>2、星状链接结构</p>\r\n<p>类似网络服务器的链接，每个页面相互之间都建立有链接。这种链接结构的优点是浏览方便，随时可以到达自己喜欢的页面。缺点是链接太多，容易使浏览者迷路，搞不清自己在什么位置，看了多少内容。中国站长第一门户<br />\r\n&nbsp;</p>', '0', '', '0', '', '0', '0', '', '1', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('8', '2', '0', '网站建设项目合同撰写注意点', '', '', 'admin', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2010-07-18 22:22:46', 'admin', '', '', '1', '1', '网站建设合同是在网站建设项目中，企业之间共同确立的双方在项目中的权利，义务和合作内容的契约文件。', '200', '<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 网站建设合同是在网站建设项目中，企业（需要建网站方）和承建方（专业网站制作公司）之间共同确立的双方在项目中的权利，义务和合作内容的契约文件。本文就网站建设合同应该包含哪些主要内容，应该注意一些什么逐个做说明：<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 网站建设合同是在网站建设项目中，企业（需要建网站方）和承建方（专业网站制作公司）之间共同确立的双方在项目中的权利，义务和合作内容的契约文件。网站建设合同必须包含以下主要内容：<br />\r\n1）网站建设工作范围<br />\r\n2）网站建设工作流程与时间进度<br />\r\n3）网站建设质量要求<br />\r\n4）网站承建费用支付，支付标准与支付方式<br />\r\n下面就每一部分应该写明一些什么内容和注意一些什么点逐个做说明（合同其他部分如，违约形式与责任，合同附件里的《网站建设方案书》本文不作讨论）。<br />\r\n一、网站建设工作范围<br />\r\n网站建设项目涉及到的工作一般包括，需求调研与《网站建设方案书》制作，网站建设素材准备，网站页面设计与制作，网站功能性部分程序开发与页面融合，数据库设计与数据输入，服务器购买（软件和硬件）或服务器空间租用、服务器存放，域名注册与解析。<br />\r\n所先，在这些网站建设工作中，合同需要确定哪些是承建方的工作，哪些不是，哪些是企业或者第三方的工作，以及各方工作之间的合作方式和要求。<br />\r\n这里需要注意的是，如果企业在工作中需要和建设方或者第三方进行合作，那么必须清晰说明这种合作的流程，方式和要求。譬如，如果网站建设素材由企业提供，合同必须对企业提供的素材内容，时间，要求作出清晰的说明。<br />\r\n其次，对于承建方工作部分，必须细致地说明。<br />\r\n例如，网站需要建设哪些栏目，每个栏目需要制作哪些内容，网站需要开发哪些功能性的程序（如BBS）等，对这些合同必须相当明确地作出说明。合同可以用建设方确认通过的《网站建设方案书》作为合同附录，来更详细阐明承建方的工作。<br />\r\n二、项目建设工作流程与时间进度</p>\r\n<p>网站建设流程一般流程为：需求调研，完成网站《网站建设方案书》，《方案书》确认，素材（文字，图片，数据）收集与整理，页面风格设计，风格设计确认，页面制作，程序开发，整合（页面，程序），建设方评估与测试，网站改进与建设方确认，服务器与域名准备，网站上传发布，网站维护。<br />\r\n所先，合同必须说明项目开展的工作流程。<br />\r\n其次，对于每个工作流程，需要概要说明承建方的工作内容，尤其对于需要企业参与的部分，需要说明企业的工作内容和要求。例如，需求调研时企业的配合和资源提供；设计制作确认时的确认方式和确认范围。<br />\r\n最后，是对每个流程环节的完成时间要求说明。合同需要给出每个流程环节的工作估计以及项目最终完工的日期估计，双方可以根据需要，协商在进度限制上的严格度。<br />\r\n三、网站建设质量要求<br />\r\n网站建设质量主要指网站页面设计，制作与网站程序的质量。合同需要对这些工作的质量作出周到的，尽量可度量的要求，譬如为保证浏览速度，建设方也可以对每个网页的大小作出一般性限制。<br />\r\n对于页面设计与制作，由于对设计风格的认识差异会导致建设方和承建方的质量评判结果不同，同时设计质量也难以度量，容易出现建设方多次否定设计的情况。在这个时候需要用变通的办法来弥合双方的质量评判差异。<br />\r\n例如，可以由承建方设计出5种建设方要求风格的设计页面，然后由建设方选择，或者重复修正设计不能超过5次，而承建方可以以半价收取落选设计页面费用的代价来限制设计要求的变化。<br />\r\n还有一种办法，就是采取第三方来度量页面设计与制作质量。例如，找一些普通的上网用户，测试他们成功搜索网站中某个特定内容所需要的时间，用这个时间来衡量网站连接设计质量和合理性。例如，可以通过在门户网站做网上调查，由网民来评判网站设计与制作质量，这样做同时也很好地宣传了网站。<br />\r\n而对于网站功能性程序来说，合同应该对功能作出详细的说明。如会员注册登陆系统，那么除了会员的注册，登陆，退出外，系统还应该提供给会员什么功能，譬如新闻定制等。这部分可以在《网站建设方案书》里作出更详细的说明。<br />\r\n如果，网站承建方同时提供虚拟主机空间，那么企业还可以对网站访问速度，宕机时间，网站带宽等方面作出要求（空间租用双方一般也可以另签《网站空间租用合同》）。</p>\r\n<p>四、网站承建费用支付，支付标准与支付方式<br />\r\n网站建设业内一般采用按制作量记费的方式，譬如按页面数量记费。<br />\r\n但网站制作量，如页面数量等，在制作过程中是变化的，所以在签合同的时候无法给出整个网站建设完成后的确切费用。但是合同却可以给出网站建设的收费项和收费标准，等网站建设完成后，统计整个网站的每项工作量，再结合记费标准来算出项目实际标的。<br />\r\n所先，确定网站建设收费项。网站建设收费项一般可以包括以下一些：<br />\r\n1）素材整理阶段的文字录入费，图片处理费，翻译费<br />\r\n2）《网站建设方案书》制作费用<br />\r\n3）普通页面制作费用<br />\r\n4）页面风格设计费用（一般指主页和栏目首页）<br />\r\n5）页面特效制作费用（譬如JavaScript，Flash等）<br />\r\n6）功能性程序开发费用（如调查系统，会员注册系统等）<br />\r\n7）数据库数据录入费用<br />\r\n8）空间租用费用等。<br />\r\n其次，确定每个收费项的单位价格。例如，文字翻译每千字50元等。<br />\r\n这一条款关系到日后合同标的的计算，所以务必非常清晰，双方不妨多花一点时间来协商这里的细节，以达到彼此在这一条款上的一致认可，以妨日后引起不必要的争执。为了做到这一点，我认为原则就?quot;细&quot;。譬如，必须定义怎么算作一个页面，是1024下的800*600，还是800*800？如果是800*600，那么一个800*1200的页面就算做两页；这是一个协商的过程，这样计算是否合理，我觉得只要双方都同意这样计算就没有问题，关键是必须使得日后统计制作量和计算合同标的时双方没有歧义。<br />\r\n费用支付一般可以分成三次进行。一般合同签署一周内支付一定数量，作为项目启动费用；项目中期支付一定数量；项目结束后，计算项目实际标的，再支付余额。<br />\r\n如前面所说，作为网站建设项目的建设合同还需要其他很多条款和辅助合同，如：《空间租用合同》等，但是以上谈到四点却是合同里最重要，也是最需要&quot;细扣&quot;的内容，希望大家以后在撰写网站建设合同时能从中获得一点帮助。<br />\r\n&nbsp;</p>', '0', '', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('9', '2', '0', '优秀网站的五大要素', '', '', 'admin', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 02:50:29', 'admin', '', '/upload/images/201507/14360854145721.jpg', '1', '1', '网站作为一种媒体，提供给用户的最主要还是网站的内容，没有人会在一个没内容的网站上留连往返，就象没人会两次看同一份毫无新意的报纸一样！', '200', '<p>&nbsp;</p>\r\n<p>1、网站内容非富</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 网站作为一种媒体，提供给用户的最主要还是网站的内容，没有人会在一个没内容的网站上留连往返，就象没人会两次看同一份毫无新意的报纸一样！</p>\r\n<p>2、页面下载速度快</p>\r\n<p>　　 据研究发现，页面下载速度是网站留住访问者的关键因素，如果20&mdash;30秒还不能打开一个网页，一般人就会没有耐心。如果不能让每个页面都保持较快的下载速度，至少应该确保主页速度尽可能快。</p>\r\n<p>　　 在目前的情况下，保持页面下载速度的主要方法是让网页简单，仅将最重要的信息安排在首页，尽量避免使用大量的图片。</p>\r\n<p>　　 虽然大量使用文字降低了网页的视觉效果，显得有些呆板，不过根据加拿大最近一项&ldquo;网民网上看什么&rdquo;的调查显示，互联网用户92%的上网时间用来看文字资讯。</p>\r\n<p>3、功能多样、使用方便</p>\r\n<p>　　 网站吸引用户访问的基本目的无非是出于几个方面：扩大网站知名度和吸引力；将潜在顾客转化为实际顾客；将现有顾客发展为忠诚顾客等。为用户提供一个多功能的人性化界面，并保持这种功能的使用方便，就显得十分重要，说到底用户使用一种服务----不管在网上网下------最主要的是方便。包括方便的导航系统、必要的帮助信息、常见问题解答、尽量简单的用户注册程序等等。</p>\r\n<p>4、网站品质优秀</p>\r\n<p>　　 网页上的错误链接常常是人们对网站抱怨的主要因素之一。我们时常可以看到&ldquo;该网页已被删除或不能显示&rdquo;、&ldquo;Filenotfound&rdquo;等由于无效链接而产生的反馈信息，这种情况往往让人觉得难以忍受，同时也严重影响了用户对网站的信心。如果网站同时可以提供800免费服务电话和callcenter等联系方式，相信不仅可以体现公司的实力，而且更能充分体现出良好的顾客服务。</p>\r\n<p>5、保护个人信息</p>\r\n<p>　　 在个性化服务十分普及的今天，许多网站要求用户首先注册为会员，网站收集用户资料有何目的？如何利用用户的个人信息？是否将用户资料出售给其它机构？是否会利用个人信息向用户发送大量的广告邮件？用户是否对此拥有选择的权利？填写的个人信息是否安全？是否能获得必要的回报？这些都是用户十分关心的问题，如果网站对此没有明确的说明和承诺，这样的网站显然缺乏必要的商业道德，或者至少可以被认为对用户不够尊重。<br />\r\n&nbsp;</p>', '0', '', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('10', '3', '2', '瑞必拓产品演示3', null, null, 'admin', '127', '15', null, '0', '0', '', '0', '', null, null, null, '0', '2017-12-08 17:07:11', 'admin', '', '/CmsEasy/upload/images/201712/15126293329494.jpg', '1', '1', '但是这种对于产品的展示基本上还停留在二维的静止的形式上，无法充分的表现产品的外观和特点。瑞必拓产品演示内容简介，在这里输入产品简介', '200', '<p>产品展示是指对客户的产品进行详细展示，包括规格，产品的款式颜色等所有产品详细的信息。做到让网站的产品展示能让顾客更直观的去了解网站上所展示的产品，让顾客在看到产品的同时对产品的每一个信息都有一定的了解。产品展示也指在展厅或展位中进行详细展示，直观地把产品摆在客户面前。</p><p>产品展示包括实物展示和虚拟展示两种，实物展示，指通过产品新闻发布会、展览展会及零售端的展示等形式，其中参与展会展览的产品，大多属于创新产品，符合时尚的发展趋势的最新产品；产品虚拟展示，指通过媒介宣传形式展示，包括电视宣传、报刊杂志、网络媒介等进行的产品图文宣传。</p><p>产品展示的最直接和最直观的方式就是将产品实体展现在客户的面前。但是随着时代的发展，信息量的爆发，这种方式就不能满足客户对于信息收集的要求。利用平面图片和文字介绍做成类似目录形式的方式，来展示产品，是主流展示方式。</p><p>但是这种对于产品的展示基本上还停留在二维的静止的形式上，无法充分的表现产品的外观和特点。</p><p>采用三维产品展示的方法，我们一来可以让对产品的外观和特点有个直观全面的了解，二来可以让客户自己来决定如何观察产品，这个互动的过程是二维方式难以企及的。</p><table><tbody><tr class=\"firstRow\"><td width=\"164\" valign=\"top\" style=\"word-break: break-all;\">产品民</td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\" style=\"word-break: break-all;\">下载</td></tr><tr><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><p style=\"line-height: 16px;\"><img style=\"vertical-align: middle; margin-right: 2px;\" src=\"http://10.200.2.43/CmsEasy/ueditor/dialogs/attachment/fileTypeImages/icon_jpg.gif\"/><a href=\"/CmsEasy/upload/files/201712/15126368927037.jpg\" target=\"_self\" title=\"下载\" textvalue=\"下载\">下载</a></p></td></tr><tr><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><p style=\"line-height: 16px;\"><img style=\"vertical-align: middle; margin-right: 2px;\" src=\"http://10.200.2.43/CmsEasy/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/CmsEasy/upload/files/201712/15126369569760.docx\" title=\"机构决策宝APP拉新设计方案(1).docx\">机构决策宝APP拉新设计方案(1).docx</a></p></td></tr><tr><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td></tr><tr><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td></tr><tr><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td></tr><tr><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td><td width=\"164\" valign=\"top\"><br/></td></tr></tbody></table><p><br/></p>', 'archive/show_products.html', '0', '0', null, '0', '0', null, null, '360', null, '0', null, null, '0', 'a:5:{i:1;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823761108.jpg\";s:3:\"alt\";s:0:\"\";}i:2;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360803742226.jpg\";s:3:\"alt\";s:0:\"\";}i:3;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823760819.jpg\";s:3:\"alt\";s:0:\"\";}i:4;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360826511736.jpg\";s:3:\"alt\";s:0:\"\";}i:5;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360845974729.jpg\";s:3:\"alt\";s:0:\"\";}}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('11', '10', '2', '产品展示四', '', '', 'admin', '127', '4', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:31:19', 'admin', '', '/upload/images/201507/14360850166123.jpg', '-1', '1', '利用平面图片和文字介绍做成类似目录形式的方式，来展示产品，是主流展示方式。', '200', '<p>产品展示是指对客户的产品进行详细展示，包括规格，产品的款式颜色等所有产品详细的信息。做到让网站的产品展示能让顾客更直观的去了解网站上所展示的产品，让顾客在看到产品的同时对产品的每一个信息都有一定的了解。产品展示也指在展厅或展位中进行详细展示，直观地把产品摆在客户面前。</p>\r\n<p>产品展示包括实物展示和虚拟展示两种，实物展示，指通过产品新闻发布会、展览展会及零售端的展示等形式，其中参与展会展览的产品，大多属于创新产品，符合时尚的发展趋势的最新产品；产品虚拟展示，指通过媒介宣传形式展示，包括电视宣传、报刊杂志、网络媒介等进行的产品图文宣传。</p>\r\n<p>产品展示的最直接和最直观的方式就是将产品实体展现在客户的面前。但是随着时代的发展，信息量的爆发，这种方式就不能满足客户对于信息收集的要求。利用平面图片和文字介绍做成类似目录形式的方式，来展示产品，是主流展示方式。</p>\r\n<p>但是这种对于产品的展示基本上还停留在二维的静止的形式上，无法充分的表现产品的外观和特点。</p>\r\n<p>采用三维产品展示的方法，我们一来可以让对产品的外观和特点有个直观全面的了解，二来可以让客户自己来决定如何观察产品，这个互动的过程是二维方式难以企及的。</p>', 'archive/show_products.html', '', '0', '', '0', '0', '', '', '520', '', '0', '', '', '0', 'a:4:{i:0;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823759667.jpg\";s:3:\"alt\";s:0:\"\";}i:1;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823760083.jpg\";s:3:\"alt\";s:0:\"\";}i:2;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823760819.jpg\";s:3:\"alt\";s:0:\"\";}i:3;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823761108.jpg\";s:3:\"alt\";s:0:\"\";}}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('12', '10', '2', '产品展示五', '', '', 'admin', '127', '1', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:31:11', 'admin', '', '/upload/images/201507/14360848007276.jpg', '-1', '1', '产品展示包括实物展示和虚拟展示两种，实物展示，指通过产品新闻发布会、展览展会及零售端的展示等形式', '200', '<p>产品展示是指对客户的产品进行详细展示，包括规格，产品的款式颜色等所有产品详细的信息。做到让网站的产品展示能让顾客更直观的去了解网站上所展示的产品，让顾客在看到产品的同时对产品的每一个信息都有一定的了解。产品展示也指在展厅或展位中进行详细展示，直观地把产品摆在客户面前。</p>\r\n<p>产品展示包括实物展示和虚拟展示两种，实物展示，指通过产品新闻发布会、展览展会及零售端的展示等形式，其中参与展会展览的产品，大多属于创新产品，符合时尚的发展趋势的最新产品；产品虚拟展示，指通过媒介宣传形式展示，包括电视宣传、报刊杂志、网络媒介等进行的产品图文宣传。</p>\r\n<p>产品展示的最直接和最直观的方式就是将产品实体展现在客户的面前。但是随着时代的发展，信息量的爆发，这种方式就不能满足客户对于信息收集的要求。利用平面图片和文字介绍做成类似目录形式的方式，来展示产品，是主流展示方式。</p>\r\n<p>但是这种对于产品的展示基本上还停留在二维的静止的形式上，无法充分的表现产品的外观和特点。</p>\r\n<p>采用三维产品展示的方法，我们一来可以让对产品的外观和特点有个直观全面的了解，二来可以让客户自己来决定如何观察产品，这个互动的过程是二维方式难以企及的。</p>', 'archive/show_products.html', '', '0', '', '0', '0', '', '', '650', '', '0', '', '', '0', 'a:4:{i:0;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823761108.jpg\";s:3:\"alt\";s:0:\"\";}i:1;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360818154349.jpg\";s:3:\"alt\";s:0:\"\";}i:2;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360803742226.jpg\";s:3:\"alt\";s:0:\"\";}i:3;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360850166868.jpg\";s:3:\"alt\";s:0:\"\";}}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('25', '6', '0', '下载演示一', '', '', 'admin', '1', '12', '', '0', '0', '', '0', '', '', '', '', '0', '2012-08-04 10:06:09', 'admin', '', '/upload/images/201507/14360850166878.jpg', '1', '1', '广义上说，凡是在屏幕上看到的不属于本地计算机上的内容，皆是通过“下载”得来。狭义上人们只认为那些自定义了下载文件的本地磁盘存储位置的操作才是“下载”。“下载”的简称是DL，反义词是“上传”。', '0', '<p>游戏客户端下载形式分类：HTTP下载方式、BT下载方式、迅雷下载方式、cdn专用下载器、媒体下载。</p>\r\n<p>HTTP下载方式</p>\r\n<p>HTTP和FTP是两种网络传输协议的缩写，FTP是File Transportation Protocol（文件传输协议）的缩写，而HTTP则是Hyper Text Transportation Protocol（超文本传输协议）的缩写，它们是计算机之间交换数据的方式，也是两种最经典的文件下载方式。FTP专门用来下载，而HTTP的主要工作是用来浏览网页，不过也能用来下载。这两种下载方式的原理并不复杂，就是用户按照一定的规则（协议）和提供文件的服务器取得联系并将文件搬到自己的计算机中来。FTP下载方式最古老，在没有WWW的日子里，FTP就已经广为使用了。HTTP出现的较晚，但如今也应用的相当广泛。其实，如果你仅仅是为了下载而下载，那么你完全没必要把他们分的那么清，这两种使用的下载方式、下载工具几乎是一模一样的。 在进行FTP或者HTTP下载之前你必须获得有效的资源链接或者服务器地址。</p>\r\n<p>迅雷下载</p>\r\n<p>迅雷使用的多资源超线程技术基于网格原理，能够将网络上存在的服务器和计算机资源进行有效的整合，构成独特的迅雷网络，通过迅雷网络各种数据文件能够以最快的速度进行传递。 多资源超线程技术还具有互联网下载负载均衡功能，在不降低用户体验的前提下，迅雷网络可以对服务器资源进行均衡，有效降低了服务器负载。</p>\r\n<p>缺点就是比较占内存，一般你只要将迅雷配置中的&ldquo;磁盘缓存&rdquo;设置得越大（自然也就更好的保护了磁盘），那么内存就会占的更大；还有就是广告太多了，我想只要迅雷肯改进这两项，那么迅雷就会变得非常的成功了。</p>\r\n<p>CDN下载</p>\r\n<p>CDN空间意指利用CDN技术嵌入传统虚拟主机，让传统虚拟主机功能倍增的一种空间系统。</p>\r\n<p>它是通过在现有的Internet中增加一层新的网络架构,是CDN，智能域名解析，负载均衡系统等多种网络新技术结合体的产物。给传统虚拟主机带来概念性的变革,是如今虚拟主机的一种新技术应用。为用户提供高性能、高价格比的虚拟主机技术，帮助用户用小的投资使自己经营的网站拥有大型网站才能享受的运行技术，二代概念的虚拟主机系统，是将系统上运行的空间都采用大站的运行标准，让所有的中小网站都能享有大网站的待遇，不管在何时何地访问都是正常快速的，真正实现小网站有大作为。</p>\r\n<p>媒体下载</p>\r\n<p>通过与媒体合作，进行客户端下载分流的下载方式，该方式优点在于可以选择用户比较熟悉的下载点进行下载，其下载方式一般包含以上几种方式。</p>', '0', '', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:4:{i:0;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360807979603.jpg\";s:3:\"alt\";s:0:\"\";}i:1;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360803647919.jpg\";s:3:\"alt\";s:0:\"\";}i:2;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360817267565.jpg\";s:3:\"alt\";s:0:\"\";}i:3;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823274115.jpg\";s:3:\"alt\";s:0:\"\";}}', '', '0', '0', '0', '0000-00-00', '10 KB', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('13', '10', '2', '产品展示六', '', '', 'admin', '127', '1', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:31:02', 'admin', '', '/upload/images/201507/14360817267565.jpg', '-1', '1', '产品展示能让顾客更直观的去了解网站上所展示的产品', '200', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;二十年来,瑞士外设厂商罗技凭着出色的设计和优秀的品质受无数用户的喜爱，从MX300到大革命、G19，罗技旗下很多外设产品都为用户留下了深刻的印象。2011年8月30日，罗技召开了新品发布会，推出了多款外设新品，其中型号为G105背光游戏键盘，是罗技目前价格最低的背光游戏键盘。</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 作为一款面入入门级游戏玩家推出的产品，罗技G105背光游戏键盘的官方零售价格只有299元。市场定位低于G110的G105键盘，是否会是一款严重缩水的产品，定位于入门级的它是否依旧可以为游戏玩家带来丰富的使用体验，下面就让我们一起来看。</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 罗技G105背光游戏键盘采用极富罗技特色的黑绿两色包装外观，键盘包装采用瓦楞纸板制作。包装采用瓦楞纸板制作，可以对内部的键盘起到一定的保护作用。包装正面印有罗技G105背光游戏键盘产品展示图和产品名称，背面印有键盘的6大设计特点。</p>\r\n<p>&nbsp;</p>', 'archive/show_products.html', '', '0', '', '0', '0', '', '', '320', '', '0', '', '', '0', 'a:3:{i:0;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360817267565.jpg\";s:3:\"alt\";s:0:\"\";}i:1;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360818253526.jpg\";s:3:\"alt\";s:0:\"\";}i:2;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823759507.jpg\";s:3:\"alt\";s:0:\"\";}}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('14', '10', '2', '产品展示七', '', '', 'admin', '127', '1', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:30:32', 'admin', '', '/upload/images/201507/14360825374872.jpg', '-1', '1', '创新的方便手指调整的外形让佩戴更轻松、更舒适', '200', '<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; <strong>森海塞尔CX200概述</strong></p>\r\n<p>　　用CX 200 Street II提升你的街头风格指数吧。 此款时尚的耳机以创新的外壳形状为特点，方便用手指调整，使佩戴更舒适。得益于很高的被动式环境噪声阻抑和强力的低音，CX Street II 是你在小巷里或人行道上的绝佳伙伴。</p>\r\n<p>　　<strong>特点</strong></p>\r\n<p>　　创新的方便手指调整的外形让佩戴更轻松、更舒适（附带不同尺码的耳垫） 强力、低音驱动的立体声 很高的被动式环境噪声阻抑 为MP3播放器、iPod、iPhone、CD播放器和便携游戏机优化设计（iPod和iPhone是Apple公司在美国和其它国家注册了的商标） 对称（等长）的耳机线 2年质保</p>\r\n<p>　　<strong>包装内含</strong></p>\r\n<p>　　CX 200 Street II 耳塞 耳垫套装（小/中/大） 其它颜色</p>\r\n<p>　　CX 200 Street II 白色</p>\r\n<p>　　<strong>技术参数</strong></p>\r\n<p>　　型号 CX 200 STREET II</p>\r\n<p>　　佩戴方式 入耳式</p>\r\n<p>　　主要用途 随身听</p>\r\n<p>　　换能原理 动圈式</p>\r\n<p>　　频率响应 20Hz-20KHz</p>\r\n<p>　　阻抗 16欧</p>\r\n<p>　　灵敏度 110dB(1kHz/1Vrms)</p>\r\n<p>　　颜色：灰色、白色</p>\r\n<p>　　支持：CD、DVD、iPod、iPhone</p>\r\n<p>　　总谐波失真：&lt;0.2%</p>\r\n<p>　　声压（SPL）：110 dB (1kHz/1Vrms)</p>\r\n<p>　　插头 3.5mm (弯插)</p>\r\n<p>　　电缆 1.2m</p>\r\n<p>　　重量 5g</p>\r\n<p>　　<strong>主要参数</strong></p>\r\n<p>　　方便手指调整的创新外形让佩戴更轻松,更舒适(附带不同尺码的耳垫)/强力,低音驱动的立体声/很高的被动式环境噪声阻抑/为MP3播放器,iPod,iPhone,CD播放器和便携游戏机优化设计(iPod和iPhone是Apple公司在美国和其它国家注册了的商标)/对称(等长)的耳机线/2年质保[1]</p>\r\n<div>&nbsp;</div>\r\n<p>&nbsp;</p>', 'archive/show_products.html', '', '0', '', '0', '0', '', '', '200', '', '0', '', '', '0', 'a:3:{i:0;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823761108.jpg\";s:3:\"alt\";s:0:\"\";}i:1;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823759658.jpg\";s:3:\"alt\";s:0:\"\";}i:2;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360850166868.jpg\";s:3:\"alt\";s:0:\"\";}}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('15', '10', '0', '瑞必拓产品1', null, null, 'admin', '127', '2', null, '0', '0', '', '0', '', null, null, null, '0', '2017-12-07 14:46:31', 'admin', '', '/CmsEasy/upload/images/201712/15126291548158.jpg', '1', '1', '瑞必拓产品演示内容简介，在这里输入产品简介', '200', '<div>产品展示是指对客户的产品进行详细展示，包括规格，产品的款式颜色等所有产品详细的信息。做到让网站的产品展示能让顾客更直观的去了解网站上所展示的产品，让顾客在看到产品的同时对产品的每一个信息都有一定的了解。产品展示也指在展厅或展位中进行详细展示，直观地把产品摆在客户面前。</div><div>产品展示包括实物展示和虚拟展示两种，实物展示，指通过产品新闻发布会、展览展会及零售端的展示等形式，其中参与展会展览的产品，大多属于创新产品，符合时尚的发展趋势的最新产品；产品虚拟展示，指通过媒介宣传形式展示，包括电视宣传、报刊杂志、网络媒介等进行的产品图文宣传。</div><div>产品展示的最直接和最直观的方式就是将产品实体展现在客户的面前。但是随着时代的发展，信息量的爆发，这种方式就不能满足客户对于信息收集的要求。利用平面图片和文字介绍做成类似目录形式的方式，来展示产品，是主流展示方式。</div><div>但是这种对于产品的展示基本上还停留在二维的静止的形式上，无法充分的表现产品的外观和特点。</div><div>采用三维产品展示的方法，我们一来可以让对产品的外观和特点有个直观全面的了解，二来可以让客户自己来决定如何观察产品，这个互动的过程是二维方式难以企及的。</div>', 'archive/show_products.html', '0', '0', null, '0', '0', null, null, '6298', null, '0', null, null, '0', 'a:5:{i:1;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360803647919.jpg\";s:3:\"alt\";s:0:\"\";}i:2;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823274115.jpg\";s:3:\"alt\";s:0:\"\";}i:3;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823759667.jpg\";s:3:\"alt\";s:0:\"\";}i:4;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360817746412.jpg\";s:3:\"alt\";s:0:\"\";}i:5;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360845974729.jpg\";s:3:\"alt\";s:0:\"\";}}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('16', '10', '1', '产品展示八', '', '', 'admin', '127', '4', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:30:22', 'admin', '', '/upload/images/201507/14360803647919.jpg', '-1', '1', '让顾客在看到产品的同时对产品的每一个信息都有一定的了解。', '200', '<p>&nbsp;</p>\r\n<p>&nbsp; 苹果MacBook Air(MC968CH/A)笔记本配备了最新的酷睿i5处理器以及高速度的SSD固态硬盘，对于有移动办公需求并且注重外观设计的朋友来说是个不错的选择。目前，这款笔记本售价稳定仅为6298元，喜欢的朋友可以考虑一下。</p>\r\n<p>&nbsp; &nbsp; 外观方面，苹果MacBook Air(MC968CH/A)依然是经典的白色外观，1280&times;800 的分辨率搭配13.3英寸的显示器，使其能够满足大多数用户的视觉需求，而其拥有耐用的无缝一体成型机身，圆润的轮廓让你可以轻松将它取出或放入包袋。坚固的聚碳酸酯外壳足以应对在学校、工作或旅途等日常生活中的碰撞和颠簸，电源线通过磁性固定到位，万一有人绊到线缆，它能够干净利落地断开，从而让您的MacBook安然无恙。</p>\r\n<p>苹果 MacBook Air（MC968CH/A）</p>\r\n<p>&nbsp; &nbsp; 配置方面，苹果MacBook Air(MC968CH/A)笔记本拥有一颗英特尔酷睿i5-2467M处理器，2GB DDR3内存，64GB固态硬盘，吸入式DVD刻录光驱，英特尔HD 3000核芯显卡，AirPort Extreme Wi-Fi无线网卡，机身拥有2个USB 2.0接口，RJ45以及DVI视频输出等接口，预装Mac OS X 10.7 Lion操作系统。</p>\r\n<p>&nbsp;</p>\r\n<p>苹果 MacBook Air（MC968CH/A）</p>\r\n<p>处理器型号<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Intel 酷睿i5 2467M</p>\r\n<p>硬盘容量<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>64GB SSD固态硬盘</p>\r\n<p>显卡芯片<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Intel HD 3000</p>\r\n<p>屏幕尺寸<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>11.6英寸</p>\r\n<p>笔记本重量<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>1080g</p>\r\n<p>电池类型<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>锂电池</p>\r\n<p>操作系统<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>Mac OS X 10.7 Lion</p>\r\n<p>&gt;&gt;点击查看详细配置&lt;&lt;</p>\r\n<p>&nbsp; &nbsp; 编辑点评： &nbsp;</p>\r\n<p>&nbsp; &nbsp; 这款苹果 MacBook Air（MC968CH/A）笔记本可谓内外兼备，时尚的设计，良好的处理能力以及极致轻薄便携的性能。对于经常需要移动办公的商务人士，追赶时尚潮流的时尚达人和希望体验全新电脑操作理念的朋友来说，都是不错的选择。目前的报价仅为6298元。感兴趣的朋友多多关注。</p>\r\n<p>&nbsp;</p>', 'archive/show_products.html', '', '0', '', '0', '0', '', '', '6298', '', '0', '', '', '0', 'a:5:{i:0;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360803647919.jpg\";s:3:\"alt\";s:0:\"\";}i:1;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823274115.jpg\";s:3:\"alt\";s:0:\"\";}i:2;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823759667.jpg\";s:3:\"alt\";s:0:\"\";}i:3;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360817746412.jpg\";s:3:\"alt\";s:0:\"\";}i:4;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360845974729.jpg\";s:3:\"alt\";s:0:\"\";}}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('17', '10', '1', '产品展示九', '', '', 'admin', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:30:14', 'admin', '', '/upload/images/201507/14360850166868.jpg', '-1', '1', '产品展示的最直接和最直观的方式就是将产品实体展现在客户的面前。', '200', '<p>&nbsp;</p>\r\n<p>　　近日笔者的一位好友拿着前不久刚买的单反相机找到我诉苦，说是自己新买的相机出现了问题，明明插入了一张能装下800张照片的8G卡，结果只拍了160多张照片，就提示存储空间已满！并且在电脑上查看存储卡时还发现，存储卡里面出现了好多没用的&ldquo;垃圾文件&rdquo;。相机也能产生垃圾文件？这个说法笔者还是第一次听说。笔者在帮这位朋友详细检查了相机的设置后发现，原来他在无意中开启了RAW+JEPG的记录方式，难怪卡里会出现好多打不开的文件。鉴于有很多新手玩家RAW格式的文件都不太熟悉，笔者借此机会详细的给大家讲解下RAW格式的使用方法。</p>\r\n<p>&middot;RAW到底是什么格式？</p>\r\n<p>　　在目前所有的单反相机中都有选择照片格式的这么一个选项，很多新手玩家在购买相机后都将其常年设置在JEPG选项上，对RAW格式并不是很了解。RAW单从字面上解释为&ldquo;未经加工的&rdquo;，我们可以将其理解为在数码相机内部没有进行任何处理的图像数据，它反映的是从影像传感器中得到的最原始的信息，可以说是真正意义上的数字底片。</p>\r\n<p>RAW格式图像没有进过相机的任何处理</p>\r\n<p>　　需要注意的是，我们将照片设置为RAW格式后所拍摄图像文件的后缀名并不一定是xxx.RAW，RAW只是这类未经加工图像的统称。各家相机厂商会采用不同的编码方式来记录RAW数据，所以相应的后缀名也不同。</p>\r\n<p>各家厂商都有自己的RAW格式后缀名</p>\r\n<p>　　通过上面的阅读，我们已经大致的了解了RAW格式图像是什么。那么它和JEPG格式的照片有哪些区别呢？它又有哪些优点和缺点？我们应该怎样处理和使用RAW格式的照片？在使用RAW格式拍照时又需要有哪些需要注意的地方？别着急，下面我会为大家详细讲述。</p>\r\n<p>&nbsp;</p>', 'archive/show_products.html', '', '0', '', '0', '0', '', '', '2890', '', '0', '', '', '0', 'a:5:{i:0;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360850166868.jpg\";s:3:\"alt\";s:0:\"\";}i:1;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360823759658.jpg\";s:3:\"alt\";s:0:\"\";}i:2;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360818253526.jpg\";s:3:\"alt\";s:0:\"\";}i:3;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360826511736.jpg\";s:3:\"alt\";s:0:\"\";}i:4;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360817746412.jpg\";s:3:\"alt\";s:0:\"\";}}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('18', '10', '2', '瑞必拓产品演示二', null, null, 'admin', '127', '40', null, '0', '0', '', '1', '', null, null, null, '0', '2017-12-07 14:47:41', 'admin', '', '/CmsEasy/upload/images/201712/15126292821358.jpg', '1', '1', '产品展示是指对客户的产品进行详细展示，包括规格，产品的款式颜色等所有产品详细的信息。', '200', '<p>产品展示是指对客户的产品进行详细展示，包括规格，产品的款式颜色等所有产品详细的信息。做到让网站的产品展示能让顾客更直观的去了解网站上所展示的产品，让顾客在看到产品的同时对产品的每一个信息都有一定的了解。产品展示也指在展厅或展位中进行详细展示，直观地把产品摆在客户面前。</p><p>产品展示包括实物展示和虚拟展示两种，实物展示，指通过产品新闻发布会、展览展会及零售端的展示等形式，其中参与展会展览的产品，大多属于创新产品，符合时尚的发展趋势的最新产品；产品虚拟展示，指通过媒介宣传形式展示，包括电视宣传、报刊杂志、网络媒介等进行的产品图文宣传。</p><p>产品展示的最直接和最直观的方式就是将产品实体展现在客户的面前。但是随着时代的发展，信息量的爆发，这种方式就不能满足客户对于信息收集的要求。利用平面图片和文字介绍做成类似目录形式的方式，来展示产品，是主流展示方式。</p><p>但是这种对于产品的展示基本上还停留在二维的静止的形式上，无法充分的表现产品的外观和特点。</p><p>采用三维产品展示的方法，我们一来可以让对产品的外观和特点有个直观全面的了解，二来可以让客户自己来决定如何观察产品，这个互动的过程是二维方式难以企及的。</p>', 'archive/show_products.html', '0', '0', null, '0', '0', null, null, '500', null, '0', null, null, '0', 'a:6:{i:1;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360803647919.jpg\";s:3:\"alt\";s:0:\"\";}i:2;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360807979603.jpg\";s:3:\"alt\";s:0:\"\";}i:3;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360852024867.jpg\";s:3:\"alt\";s:0:\"\";}i:4;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360850166868.jpg\";s:3:\"alt\";s:0:\"\";}i:5;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360848007276.jpg\";s:3:\"alt\";s:0:\"\";}i:6;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360847171025.jpg\";s:3:\"alt\";s:0:\"\";}}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('19', '10', '0', '产品展示十', '', '', 'admin', '127', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 02:19:39', 'admin', '', '/upload/images/201507/14360823759658.jpg', '-1', '1', '产品虚拟展示，指通过媒介宣传形式展示，包括电视宣传、报刊杂志、网络媒介等进行的产品图文宣传。', '200', '<p>&nbsp;</p>\r\n<p>推荐理由：就是一个字&ldquo;贵&rdquo;，这个岁数开始享受生活，玩也要玩点特殊东西，徕卡M9顶级做工绝对奢华。</p>\r\n<p>　　徕卡M9采用了全新的1800万像素全画幅，面积为24mmX36mm的感光元件。同时，M9能够支持徕卡所有M系列的镜头，可以说是目前世界上最小的全幅数码相机。徕卡M9机身尺寸为139&times;37&times;80mm(宽x深x 高)，重量为560克，机身采用了坚固的铝镁合金的金属支撑，机顶与底盖用整块的使用了实心铜锌合金制造，想必会带来不错的手感。 徕卡M9的快门速度为32秒到1／4000秒，也可以半级调整有B门曝光模式。而拍摄模式则设计了手动模式和光圈优先、以及快门优先三种，完全符合传统徕卡传统用家的习惯。</p>\r\n<p>&nbsp;</p>', 'archive/show_pic.html', '', '0', '', '0', '0', '', '', '40500', '', '0', '', '', '0', 'a:4:{i:0;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360852024867.jpg\";s:3:\"alt\";s:0:\"\";}i:1;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360852759105.jpg\";s:3:\"alt\";s:0:\"\";}i:2;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360854145721.jpg\";s:3:\"alt\";s:0:\"\";}i:3;a:2:{s:3:\"url\";s:40:\"/upload/images/201507/14360852759105.jpg\";s:3:\"alt\";s:0:\"\";}}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('24', '8', '1', '创业公司中好的市场人员是如何获取流量的？', '', '', 'admin', '1', '1', '', '0', '0', '', '0', '', '', '', '', '0', '2011-11-27 03:31:31', 'admin', '', '/upload/images/201507/14360826511736.jpg', '1', '1', 'a...', '0', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 你对一些创业公司动不动融了几千万，烧钱推广这件事感到诧异吗?</p>\r\n<p>　　你相信好产品自己会说话，不战而屈人之兵打败竞争对手这件事吗?</p>\r\n<p>　　我们见过一些相似的竞品，他们有相似产品的模型，相似的的内容玩法，但总有一家会脱引而出，击败其对手，这背后仅仅是靠产品好这一件事这么简单吗?</p>\r\n<p>　　笔者前东家是一个专门做App推广和运营的自媒体，因为工作需求，一年来接触过上百家的创业公司，上千人的互联网从业者，在与小伙伴们交流后发现，如何做推广，在流量上甩开同行竞品，是摆在很多创业公司面前最大的难题。如果一款产品流量关无法冲破，那么即使趋势再好，产品再美，变现能力再强，产品也很难【被发现，被下载】，最终在产品生命周期过后终沦为失败的命运。</p>\r\n<p>　　那么如何找到好的市场人员帮助创业公司冲破流量关呢?在讨论这个问题之前，我们先说不好的市场人员会带来什么问题...</p>\r\n<p>　　未经过用户画像，需求分析等工作，就开始盲目推广。&mdash;&mdash;无效流量。</p>\r\n<p>　　以高额的成本弄来用户。&mdash;&mdash;资本消耗过快。</p>\r\n<p>　　脱离运营、产品的推广。&mdash;&mdash;留存、使用频次低。</p>\r\n<p>　　私卖产品资源，私拿流量主回扣...(人间正道是沧桑)&mdash;&mdash;破坏团队平衡。</p>\r\n<p>　　另一方面，我调查一些不从事或刚从事不久的APP推广的朋友，他们对APP推广从业者的印象是这样的</p>\r\n<p>　　每天闲着没事做，聊QQ。</p>\r\n<p>　　有的吃、有的喝，公司还报销。</p>\r\n<p>　　产品量级起不来，却说自己很努力了。</p>\r\n<p>　　无趣、没前途的工作。</p>\r\n<p>　　印象来自于APP推广行业内能力程度的参差不齐，那么究竟好的APP推广人员衡量标准是什么?以及APP推广人员工作到底有你认为的那么简单吗?</p>\r\n<p>　　好了，我累了。APP推广基本点能说的都已经说的差不多，再深入说下去得根据每款产品的运营策略、节奏来细化方案，APP的推广已然不同从前是一件很简单的工作，但很多人的看法依然没有改变，甚至认为雇几个小孩，花钱买买广告位，会吃、会喝、会混、有钱就能把所有问题解决更有甚者，认为APP推广岗位是人傻、会混、钱多没前途的行业。诶，怎么说呢，你的自信，源于你的无知，我才不和你计较。</p>', '0', '', '0', '', '0', '0', '', '', '5620', '', '0', '', '', '0', 'a:6:{i:0;a:2:{s:3:\"url\";s:40:\"/upload/images/201111/13223310325929.jpg\";s:3:\"alt\";s:0:\"\";}i:1;a:2:{s:3:\"url\";s:40:\"/upload/images/201111/13223310431244.jpg\";s:3:\"alt\";s:0:\"\";}i:2;a:2:{s:3:\"url\";s:39:\"/upload/images/201111/1322331246723.jpg\";s:3:\"alt\";s:0:\"\";}i:3;a:2:{s:3:\"url\";s:40:\"/upload/images/201111/13223312412788.jpg\";s:3:\"alt\";s:0:\"\";}i:4;a:2:{s:3:\"url\";s:40:\"/upload/images/201111/13223310486736.jpg\";s:3:\"alt\";s:0:\"\";}i:5;a:2:{s:3:\"url\";s:40:\"/upload/images/201111/13223312538947.jpg\";s:3:\"alt\";s:0:\"\";}}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('26', '7', '0', '部门主管', '', '', 'admin', '1', '0', '#000000', '0', '0', '', '0', '', '', '', '', '0', '2012-08-04 10:06:32', 'admin', '', '', '1', '1', '职位详细说明', '0', '<p>&nbsp;职位详细说明</p>', '0', '', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '销售部', '1', '热爱本职工作', '2', '1', '至少2年销售经验', '4', '20-40', '不限', '5000-8000', '董先生', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('27', '9', '0', '怎样做好学校网站建设？', '', '', 'admin', '1', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2015-08-04 12:37:34', 'admin', '', '/upload/images/201507/14363453760256.jpg', '1', '1', '学校网站建设主要为学校的老师和学生和学生家长服务，与其他商业性质的网站有着本质的区别，因此学校网站建设需要考虑的内容和普通网站有很大不同。主要的设计风格应该体现出浓厚的教育氛围，要注重师生情感以及校园文化。这类网站目前开始呈现同质化风险', '0', '<p>学校网站建设主要为学校的老师和学生和学生家长服务，与其他商业性质的网站有着本质的区别，因此学校网站建设需要考虑的内容和普通网站有很大不同。主要的设计风格应该体现出浓厚的教育氛围，要注重师生情感以及校园文化。这类网站目前开始呈现同质化风险，在这个背景下， 这些网站就很难具有自己个性，无法体现自己学校网站的风格。</p>\r\n<div>&nbsp;</div>\r\n<div>因此校园网站建设的同时，同样也需要认真思考未来的运营，促进校园网站的知名度，增强校园网站对师生的粘性，进而增强校园网站的人气，对此需要从下面几个方面来进行认真思考。</div>\r\n<div>&nbsp;</div>\r\n<div>一，需要满足校园文化的审美风格</div>\r\n<div>&nbsp;</div>\r\n<div>首先因为校园网站的特性，网页设计不要使用过多酷炫的效果。但是校园网站作为师生共同活动的场所，如果网页设计整体美观度极差，也会对学校的形象产生严重 的损害。对此建站公司要对网页设计进行综合考量，让学校网站看起来更加平易近人，让师生能够享受到美的愉悦感。另外作为学校的高层领导，应该更多从个人的 体验上来进行评判，需要借助更多人的想法来进行改善，而不能一言堂，否则难以让校园网站体现出校园的整体风格。</div>\r\n<div>&nbsp;</div>\r\n<div>二，增加互动功能。</div>\r\n<div>&nbsp;</div>\r\n<div>因为校园网站所服务的对象是师生，那么交流就成为校园网站重要的主题，对此校园网站应 该是论坛和垂直门户网站的结合体，其中首页要有相关学校的新闻界面，一些使用表格资料的下载板块，学习成绩查询板块，同时还要包括各种学科的相互交流版 块，而且还需要引入各种分享功能，比如分享到微博、微信公共账号中，这样能够让信息分享变得更加快捷，进而提升师生的互动性，而这才能有效激发学校网站的 人气。</div>\r\n<div>&nbsp;</div>\r\n<div>三，速度</div>\r\n<div>&nbsp;</div>\r\n<div>现在很多校园网站还引入了视频教学资料下载和在线观看功能，那么这就对校园网站的速度有着更高的要求。由于很多学校对于网站建设的预算不够多，往往贪图便 宜，选择一些相对便宜的虚拟空间，甚至直接使用教育网络专线构建网站，这样就难以提升网站的打开速度，要知道用户的耐心经不起考 验，就算是本校的师生也会感到痛苦，想要上学校网站的欲望也会大打折扣。所以对于校园网站而言，必须要选择双线接入的服务器，而且尽可能选择更大的硬盘空间，因为校园网站还需要不定期的上传有关的教学资料供给相应的用户下载使用。</div>\r\n<div>&nbsp;</div>\r\n<div>四、功能和安全</div>\r\n<div>&nbsp;</div>\r\n<div>网站在发展过程中会根据实情情况对网站进行修改或功能的增加，这个就要求网站后台有强大的扩展功能。另一方面网站空间的安全性要极为关注，尤其是隐私数据，需要做好数据库的安全保密建设，所以选择网站系统时候一个要谨慎，一定要选择比较知名的系统，这里推荐PageAdmin网站管理系统，这个目前是国内学校网站制作领域最好的网站管理系统，无论在功能，扩展性和安全性方面都为学校网站提供了完美的保障。</div>\r\n<div>&nbsp;</div>', '0', '', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'CMSEASYFwsbGa5WCUYh2yB382', '1');
INSERT INTO `rbt_archive` VALUES ('28', '9', '0', '企业在网站建设前应该理清网站建设需求', '', '', 'admin', '1', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2015-08-04 12:38:30', 'admin', '', '/upload/images/201507/14360457171025.jpg', '1', '1', '一些公司也许本来不需要网站，但是周围的公司或者同行都纷纷做网站了，于是自己在网站建设公司销售人员的死磨烂打下，终究也开始做网站了。', '0', '<p>&nbsp;　 &nbsp; 是不是有这样的情况呢?一些公司也许本来不需要网站，但是周围的公司或者同行都纷纷做网站了，于是自己在网站建设公司销售人员的死磨烂打下，终究也开始做网站了。还有一部分公司，对于网站建设和网络营销并没有充分的认识。只是感觉传统的销售方式竞争过于激烈，于是开始了网络营销的尝试。既然是网络营销，自然需要从网站建设开始。以上凡此种种就是企业网站建设的现状，这样的现象就导致了，很多原本没有网站建设需求的企业，花费了很多冤枉钱。昆明网站建设十佳品牌昆明狼烟认为，企业在网站建设前应该理清需求，让在网站建设上投入的每一分钱都物有所值。</p>\r\n<div>&nbsp;</div>\r\n<div>　　思考一：是不是一定要做网站</div>\r\n<div>&nbsp;</div>\r\n<div>　　不要因为竞争对手纷纷开始网站建设，开始涉足网络营销，就按捺不住自己的冲动;也不要因为网站建设公司的业务人员三番五次的推销催促，就一定要着急上面网站建设项目。昆明网站建设十佳品牌昆明狼烟建议，每一个企业在网站建设前都一定要慎重对待。因为中小公司多半是私营或者民营企业，每一分投入都是来自于自己的血汗努力。与其花费几千上万做网站，然后又长年累月的不予更新而束之高阁，不如将这些费用投入在更有价值和更需要的地方。如果现在业务开展的还不错，而且实际营销宣传并用不到网站，那么网站建设事宜暂时搁浅也未尝不可。</div>\r\n<div>&nbsp;</div>\r\n<div>　　思考二：究竟为什么要做网站</div>\r\n<div>&nbsp;</div>\r\n<div>　　随着互联网应用的深入人心，我们相信其实绝大多数公司是需要网站建设的。或为宣传展示自己企业的形象，或为通过网络销售自己的产品和服务，网络营销的确开始了一种全新的销售方式，给很多企业带来全新的机遇。昆明狼烟是一家专业的网站建设公司，历经七年的努力已经成长为昆明网站建设十强品牌。在昆明狼烟多年的网站建设实践中，就亲眼目睹了很多公司在短短两三年中通过网络而飞速成长发展。尽管如此，昆明狼烟依旧认为企业在做网站前要认真思考，知道为什么做网站后，才能让网站的效益发挥到最大化。</div>\r\n<div>&nbsp;</div>\r\n<div>　　思考三：网站主要做给谁看的</div>\r\n<div>&nbsp;</div>\r\n<div>　　网站主要是做给谁看的，其实这根本不是一个问题，因为几乎所有的企业都可以回答的上来，网站当然是做给用户看的。但问题的关键在于在实际的操作中，很多公司就变了味道。首先，不少人不知道网站的用户在哪里。让昆明狼烟印象最为深刻的答复是&ldquo;我们企业网站每天有那么多的浏览者，我怎么知道谁才是主要的客户呢?&rdquo;;其次，还有一个现象是，网站为企业负责人而做，网站好看不好看不重要，只要领导满意就行，成为了很多公司做网站的知道原则。如此这般，即便是做了网站，在网站建设项目上投入再多，又有什么作用呢?</div>', '0', '', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'CMSEASYLbDpnmthhqHLP6a871', '1');
INSERT INTO `rbt_archive` VALUES ('29', '7', '0', '业务经理', '', '', 'admin', '1', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2015-08-04 12:40:28', 'admin', '', '', '1', '1', '业务经理业务经理 AE的职责是：对外，与客户进行谈判、联络、提案、收款等；对内，制定策略、协调资源、分派工作、监督进程等。由此可知，一个真正的 AE，并不象拉业务的业务员那么简单，他要熟悉销售、市调、企划、设计、制作、媒体等方面的专业知识，也要有一定的人际关系处理能力。', '0', '<p>业务经理业务经理 &ldquo;AE&rdquo;的职责是：对外，与客户进行谈判、联络、提案、收款等；对内，制定策略、协调资源、分派工作、监督进程等。由此可知，一个真正的 &ldquo;AE&rdquo;，并不象&ldquo;拉业务&rdquo;的业务员那么简单，他要熟悉销售、市调、企划、设计、制作、媒体等方面的专业知识，也要有一定的人际关系处理能力。</p>', '0', '', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '营销部', '1', '高级经理', '5', '2', '熟悉网络营销，熟练操作word', '4', '21-30', '北京', '我们为您提供： \r\n1、底薪+奖金，部分职位还提供相应提成； \r\n2、公平广阔的晋升空间； \r\n3、成熟完善的培训体系，全方位的培训内容（没有任何培训费用）； \r\n4、丰富多彩的员工文体活动； \r\n5、公司不收取任何费用； \r\n6、每年至少两次公费旅游；', '董先生', '0', 'CMSEASYhv9KCLaTOgi89mc157', '1');
INSERT INTO `rbt_archive` VALUES ('30', '8', '0', '为什么越来越多的社群会死掉?', '', '', 'admin', '1', '7', '', '0', '0', '', '0', '', '', '', '', '0', '2015-08-04 12:58:46', 'admin', '', '/upload/images/201507/14360847171025.jpg', '1', '1', '你屏蔽过多少微信群和QQ群了?那些社群多数已经死了。今年被誉为社群元年，社群已经成了连接消费者与品牌的最短路径，那么，如何才能不让你自己的社群死得那么快?', '0', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;你屏蔽过多少微信群和QQ群了?那些社群多数已经死了。今年被誉为社群元年，社群已经成了连接消费者与品牌的最短路径，那么，如何才能不让你自己的社群死得那么快?</p>\r\n<div>&nbsp;</div>\r\n<div>　　下面这篇文章选自秋叶的新书《社群营销：方法、技巧与实践》，包含了他多年来做学习型社群的心得与经验，文章很长，干货满满，读来必有收获。</div>\r\n<div>&nbsp;</div>\r\n<div>　　一、怎样让社群长寿</div>\r\n<div>&nbsp;</div>\r\n<div>　　在中国网络上长期泡着的人，恐怕都有过加入某些群的经历。一开始是激动和兴奋的心情，但当怀着良好愿望加入一段时间后，却发现群里充满灌水、刷屏、广告，甚至两个群友一言不合，变成争执，愤而退群。</div>\r\n<div>&nbsp;</div>\r\n<div>　　而群主也会因各种琐事纠结，人数还不能太少，少于30人不成群，超过80人就开始热闹，超过500人又乱糟糟的不好管，不出半年，大家慢慢不再发言，最终成了一个死群。</div>\r\n<div>&nbsp;</div>\r\n<div>　　任何事物都是有生命周期的，大部分群都经历了如上图所示的生命周期模型，一个群走完整个生命周期模型长则6个月，短的甚至只需要1周。</div>\r\n<div>&nbsp;</div>\r\n<div>　　我们必须认识到，即便是出于商业目的而去主动管理一个社群，在运营非常好的情况下，群也是有生命周期的。</div>\r\n<div>&nbsp;</div>\r\n<div>　　这个生命周期大概在两年左右。为什么是两年?</div>\r\n<div>&nbsp;</div>\r\n<div>　　第一，来自我们自己对过去论坛坛主活跃度的观察，一个论坛的热心坛主往往坚持时间很难超过两年，同样，一个群的热心群管也很难超过两年，即便是专职团队管理，两年内群的运营给社群群友带来的新鲜红利也会消失殆尽。</div>\r\n<div>&nbsp;</div>\r\n<div>　　第二，是因为一个群在两年的生命周期内一般而言已经完成商业价值的转换。即便是死忠品牌粉，你的产品又不断升级换代，那么在两年内，从商业上讲，该挖掘的商业价值也挖掘得差不多了，继续维护成本会超过回报。</div>\r\n<div>&nbsp;</div>\r\n<div>　　说出这种真相是很残忍的，但是怎么办呢?</div>\r\n<div>&nbsp;</div>\r\n<div>　　这时候群可以尊重大家意见不解散，但也不需要刻意维护。如果群里面还有个别积极热心的粉丝，可以把群转移给他运营和管理。如果群里面发现个别值得长期交往的粉丝，可以邀请他加入核心群。</div>\r\n<div>&nbsp;</div>\r\n<div>　　那么如果想尽可能延长社群的生命周期，应该从哪些方面下手呢?</div>\r\n<div>&nbsp;</div>\r\n<div>　　显然得从社群的两个主要角色入手：一个是群主，一个是成员。</div>\r\n<div>&nbsp;</div>\r\n<div>　　导致社群走向沉寂的，要么是群主的目的未达成而不再维护，要么是群员的需求未满足而不再活跃。</div>\r\n<div>&nbsp;</div>\r\n<div>　　群是为了满足人的某种需求而建立的，我们调查发现，所有的群无非是基于这六种理由建立的。</div>\r\n<div>&nbsp;</div>\r\n<div>　　在这六种群中，基于组织关系或同学、老乡关系的群也许是维系时间最长的，但这种群未必能保持活跃度。能够长期保持活跃度的群要么是有共同兴趣的交友群，要么是有共同成长的学习群。</div>\r\n<div>&nbsp;</div>\r\n<div>　　比如华科的点团队，每一个曾经加入团队的正式队员，包括团队的顾问都会加入一个QQ群，继续保留自己在团队的编号，老队员可以通过群寻找合适的新队员一起创业，新队员也可以继续向老队员和顾问请教各种问题。由于团队有共同的文化和价值观，QQ群内部一直充满了积极的沟通能量。</div>\r\n<div>&nbsp;</div>\r\n<div>　　如果根据群对个人的价值，我们还可以把群分为这四个类别。</div>\r\n<div>&nbsp;</div>\r\n<div>　　后三类群都是已经死亡或者濒临死亡的群，他们很可能在某一天，群主将群转让或者直接解散。</div>\r\n<div>&nbsp;</div>\r\n<div>　　所以，假如我们做商业化运营，就一定要认识清楚，我们能为别人提供的价值是什么?</div>\r\n<div>&nbsp;</div>\r\n<div>　　比方说微信群，你什么都不用做，只要坚持发红包，就有人打死也不走。但是只出不进讨好用户的做法未必合适。</div>\r\n<div>&nbsp;</div>\r\n<div>　　那么建立一个群，你的定位到底是学习群还是交友群?为什么你的定位能吸引目标人群加入?</div>\r\n<div>&nbsp;</div>\r\n<div>　　这其实是个大问题。</div>\r\n<div>&nbsp;</div>\r\n<div>　　很多人建立一个群，开始想法很多，比如交友交换资源，一起共同成长进步等。但是如果一个群想法太多，其实运营就会变味。</div>\r\n<div>&nbsp;</div>\r\n<div>　　所以，在建群初期，就要深入思考一个问题：对于群员而言，加入一个群会得到怎样的回报?因为人类是趋利的，他要计算自己的付出(比如时间成本)与回报是否平衡。</div>\r\n<div>&nbsp;</div>\r\n<div>　　有的群大家会觉得收获很少，既不能收获人脉，也不能学到干货，干脆退出。有的群大家会觉得收获一半一半，能学到一些东西，但是也要忍受很多刷屏骚扰，分散工作注意力。</div>\r\n<div>&nbsp;</div>\r\n<div>　　有的群大家会觉得收获很大，这种收获有的是一次性点破思维的局限，有的是认识了一个好朋友，有的是通过持续分享获得了成长，特别是收获成长的人会觉得自己找到了归属感。</div>\r\n<div>&nbsp;</div>\r\n<div>　　显然能够长期做到让大家感到收获很大并不容易，要耗费大量的人力、财力、脑力，所以才有了社群大多短命的结果。这也给了我们两个启发：</div>\r\n<div>&nbsp;</div>\r\n<div>　　1.不要过度投入，群走到生命周期尾声了，不骚扰别人就是美德。</div>\r\n<div>&nbsp;</div>\r\n<div>　　2.要设计一个在群生命周期结束前就能完成营销的产品。</div>\r\n<div>&nbsp;</div>\r\n<div>　　以上我们分析了普通人加入群的动机，但是为什么一个群主要维护一个群呢?</div>\r\n<div>&nbsp;</div>\r\n<div>　　卖货</div>\r\n<div>&nbsp;</div>\r\n<div>　　比如我一个朋友搞十字绣，也建个群，分享绣花经验，分享完了就可以推销淘宝小店。这种基于经济目标维护的群反而有更大的可能生存下去，因为做好群员的服务，就可以源源不断获得老用户的满意度和追加购买。特别要指出的是，在线教育培训会组织大量的学员群进行答疑，分享开货，本质上也是销售产品和提供客户服务。</div>\r\n<div>&nbsp;</div>\r\n<div>　　人脉</div>\r\n<div>&nbsp;</div>\r\n<div>　　不管是基于兴趣还是为了交友，社交的本质就是为了构建自己的人脉圈。这是任何一个职场人士都会去努力维护的关系。群主不是一个正式组织的负责人，但是他维护一个群就是希望在线下可以成为一个非正式关系里面的联结人，获得联结人的影响力。如果他通过群成功组织群员进行一些活动的话，就能逐步在一定的圈子里面形成自己的网络影响力。</div>\r\n<div>&nbsp;</div>\r\n<div>　　成长</div>\r\n<div>&nbsp;</div>\r\n<div>　　这种群主是想吸引一批人一起共同学习和分享，构建一个网络学习的小圈子。学习是需要同伴效应的，没有这个同伴圈，很多人就难以坚持学习，他们需要在一起相互打气、相互激励，比如考研群很多就是这样的。</div>\r\n<div>&nbsp;</div>\r\n<div>　　品牌</div>\r\n<div>&nbsp;</div>\r\n<div>　　利用群的模式如果能快速裂变复制的话，有的群主是希望借助这种方式更快构建自己的个人品牌影响力。这种影响力因为网络缺乏一定的真实接触往往能让新入群的成员夸大群主的能量，形成对群主的某种崇拜，然后群主通过激励、分享干货、组织一些有新意的挑战活动鼓励大家认同某种群体身份，最终借助群员的规模和影响力去获得商业回报。</div>\r\n<div>&nbsp;</div>\r\n<div>　　以上我们可以看出，如果一个社群的存在，既能够满足成员的某种价值需求，并在满足需求的过程中，又能够给运营人带来一定的回报，就会形成一个良好的循环，甚至可以形成自运行的生态。</div>\r\n<div>&nbsp;</div>\r\n<div>　　从以上的讲解可以得出一个结论：想要得到长期的回报，那么就得设置长期的需求。这也是为什么大多高频重复使用类产品的社群存活时间要比兴趣社群的长，米粉群比罗辑思维的得分要高。</div>\r\n<div>&nbsp;</div>\r\n<div>　　二、社群短命的七宗罪</div>\r\n<div>&nbsp;</div>\r\n<div>　　失焦是导致群消亡的第一个原因，也就是缺乏一个明确而长久的定位。</div>\r\n<div>&nbsp;</div>\r\n<div>　　很多群成立后往往快速拉入很多人，结果偏离了群主最初建群的目的，整个群因为缺乏共同的话题和活动连接，就变成了一个灌水群。</div>\r\n<div>&nbsp;</div>\r\n<div>　　没有人经常分享有价值的话题，时间长了群员就失望了，既然成为了工作的骚扰，不如退群，等待下一次冲动再入新群，如是循环。</div>\r\n<div>&nbsp;</div>\r\n<div>　　如果在入群前群员能够告诉别人加入这个群的价值和交流机制，对群的生命力反而更好，但是现状是大量的人花费大量的时间把自己认识的人纳入一个群，但对于群的主题、定位、分享机制都没有通盘考虑，还真的以为有去中心化自组织奇迹呢?</div>\r\n<div>&nbsp;</div>\r\n<div>　　没有定位的一个表现就是什么人都可以入群，结果一个群里既有大牛又有新手，把不同层次的人混在一起，认为这是所谓去中心化自组织，殊不知这恰恰是把牛人给骚扰走的最佳方法。</div>\r\n<div>&nbsp;</div>\r\n<div>　　事先通盘考虑过群的主题、定位、分享机制的群寿命更长，灌水群必死。</div>\r\n<div>&nbsp;</div>\r\n<div>　　无首是导致群消亡的第二个原因，也就是缺乏有影响力或热心的群主或群管。</div>\r\n<div>&nbsp;</div>\r\n<div>　　在这里要特别区分一下&ldquo;去中心化&rdquo;的概念，很多人觉得一个社群有领袖、有管理、有规矩就是违背&ldquo;去中心化&rdquo;的宗旨，这是一个误解。</div>\r\n<div>&nbsp;</div>\r\n<div>　　所谓去中心化，更重要的理解是指内容、信息不再是由专人或特定人群所产生，而是由全体成员共同参与、共同创造的结果，与为了让参与更积极、沟通更畅通、结果更多元进行的管理和有人维护并不冲突。</div>\r\n<div>&nbsp;</div>\r\n<div>　　定位再准的群，没有人主动管理和维护，也是无法持续运营的，不可能完全自组织，只能解释为中心碎片化，组织网络化。</div>\r\n<div>&nbsp;</div>\r\n<div>　　为了便于管理，群主或群管理员都是最佳的选择。</div>\r\n<div>&nbsp;</div>\r\n<div>　　第三个原因是群主个性过于强势。</div>\r\n<div>&nbsp;</div>\r\n<div>　　有一种群是因为群的规模扩大了以后，群主为了管理群，往往制定了严格的群规，但是越是严格的群规越容易带来争议，因为很多人不喜欢一个网络组织有太多的约束。</div>\r\n<div>&nbsp;</div>\r\n<div>　　比如很多群主希望群里少一些闲聊，多一些干货，不要发和主题无关的话题，那么有的群员会认为一个只聊专业话题的群没有趣味，不认同这样的规矩，他们认为应该有一些轻松活泼的内容活跃气氛。</div>\r\n<div>&nbsp;</div>\r\n<div>　　大部分群主是认可群可以轻松活泼一些的，但也有一个度的问题，群的规模越大，这个度就越难把握，直到群不得不建立严格的约束。</div>\r\n<div>&nbsp;</div>\r\n<div>　　一个群的群规形成，最好是经过群员的讨论，并达成一致后，才容易得到遵守，如果群主要推出强势群规，那么群主就必须比群员影响力等级高一个数量级，这样才能获得遵守群规的心理优势。</div>\r\n<div>&nbsp;</div>\r\n<div>　　所以，强调民意的组织纪律比强调个人权力的群寿命更长。</div>\r\n<div>&nbsp;</div>\r\n<div>　　第四个原因是骚扰。</div>\r\n<div>&nbsp;</div>\r\n<div>　　骚扰有两种。</div>\r\n<div>&nbsp;</div>\r\n<div>　　一种是垃圾广告。所以群规要提前声明，管理员要及时治理。这就要求管理员有一项非常重要的工作就是要及时上网，关心每一个群员，要特别留意混进群发垃圾消息的人，并及时清除。如果一个群经常有人发垃圾消息，群管没有及时处理，马上这个群就会沦为死亡群。</div>\r\n<div>&nbsp;</div>\r\n<div>　　另一种是过多的闲扯灌水。一个超过200人的群，一人说一句你也得看半天，如果正在工作或是学习，群消息在不断闪烁，经常打断一个人正常的生活和学习节奏，时间久了也会让很多人选择屏蔽。所以如果一个群的人数过多，要选择一定的禁言措施，比如工作时间群内不聊天，晚上和节假日随意，这样就会改善很多。</div>\r\n<div>&nbsp;</div>\r\n<div>　　第五个原因是群缺乏固定的活动形式。</div>\r\n<div>&nbsp;</div>\r\n<div>　　一个群想做得有声有色，不让成员感到无聊乏味，必须有定期的活动。</div>\r\n<div>&nbsp;</div>\r\n<div>　　最受群欢迎的活动形式应该是定期分享模式。一种常见的组织方式就是由群主提前协调群员，规划每周1～2个主题，邀请不同群员或者外来顾问分享，每次用1～2个小时，在约定的时间邀请群员一起交流讨论，聚焦特定主题，这样就有了&ldquo;集体创作&rdquo;的感觉。</div>\r\n<div>&nbsp;</div>\r\n<div>　　如果一个群规模超过40人，又没有一个固定的形式组织大家在一起，大家没有定期的互动、协作、讨论，没有熟知度，没有凝聚力，没有归属感，那么这个群的生命力很快就会衰退。固定的分享会让群员产生一种身份认同感。我在这个群，我是一个怎样的人。这种身份认同感也是群员愿意留下的重要理由。这种身份认同感消失的时候，群员很可能会选择退群。</div>\r\n<div>&nbsp;</div>\r\n<div>　　不过如果一个群的规模不超过40人，大家在一起的理由可能是因为兴趣相投，认同度高，愿意一块聊，因此就不需要刻意限定分享形式。</div>\r\n<div>&nbsp;</div>\r\n<div>　　第六个原因是&ldquo;蒸发&rdquo;。</div>\r\n<div>&nbsp;</div>\r\n<div>　　当新成员不断涌入一个开放聊天群时，群中最有价值的成员会发现，群成员平均价值水平的降低让自己继续待在这里已经没有意义了，于是他们就会选择离开。这批成员的离开进一步降低了群的价值，于是恶性循环开始了：越来越多高价值的成员选择离开，直到有一天这个群彻底沦陷成了一个平庸的聊天群。</div>\r\n<div>&nbsp;</div>\r\n<div>　　用一个专业的科技词汇来表述这一现象叫&ldquo;蒸发冷却效应&rdquo;。蒸发冷却是指液体在蒸发成气体的过程中会吸热，从而降低周围的温度起到冷却的效果。</div>\r\n<div>&nbsp;</div>\r\n<div>　　群的开放意味着它对成员的加入没有选择性，如此一来，最想加入群的成员会是那些水平在群目前平均水平之下的人，因为他们可以从群中学到更多东西。他们的加入从长远来说必然会对团体造成不利影响。而那些相对封闭的群能更好地应对这种问题。这种封闭群对成员的加入有着极高的要求，一般都是采用邀请制。由于小众而又封闭，大部分此类群都只是低调地活在大众的视野之外。</div>\r\n<div>&nbsp;</div>\r\n<div>　　第七个原因是陈旧，也就是成员总是那么几个人，失去了新鲜感。</div>\r\n<div>&nbsp;</div>\r\n<div>　　上一个&ldquo;蒸发&rdquo;让我们知道了新成员带来的副作用，但是如果一个群的成员长期没有更新，那么这也可能是群走向死亡的开始，任何组织都需要经常换血，没有新血注入，群往往会沉寂。</div>\r\n<div>&nbsp;</div>\r\n<div>　　因为新人的进入会给群带来新的冲击力，也会带来新的活力。那怎么兼顾这两者之间的平衡呢?根据我们的经验，一个群在入群阶段设置的筛选和挑战门槛越高，这个群加入后流失率反而越低。比如，有的群要求必须付费才能进入学习，反而群员更愿意遵守规则，维护学习秩序。</div>\r\n<div>&nbsp;</div>\r\n<div>　　另外，还有一个秘密就是，经常加入一些美女和萌妹子的群，一般活跃度都低不了，而且会吸引很多人慕名而来。如果你有美女资源，可以让她们帮你把社群更好地带动起来。</div>\r\n<div>&nbsp;</div>\r\n<div>　　三、社群活跃的结构模型</div>\r\n<div>&nbsp;</div>\r\n<div>　　前面，我们讲述了导致群消亡的七宗罪。</div>\r\n<div>&nbsp;</div>\r\n<div>　　那么，什么样的社群可以长存呢?</div>\r\n<div>&nbsp;</div>\r\n<div>　　只要是能长期生存一段时间的群，都有内在的生态模式。</div>\r\n<div>&nbsp;</div>\r\n<div>　　我们重点分析基于兴趣或者学习成立的群组，在这样的群组里都存在如下几种角色，这种角色的不同组合，就构成了不同群的生态模式。</div>\r\n<div>&nbsp;</div>\r\n<div>　　围绕这些群角色，基本上只有两种群管理模式：</div>\r\n<div>&nbsp;</div>\r\n<div>　　一种是基于社交群的环形结构，一种是基于学习群的金字塔结构。</div>\r\n<div>&nbsp;</div>\r\n<div>　　在环形结构中，每一次群交流，每个人的身份可以互相变化和影响，但是一个群里面必须至少存在一个活跃的灵魂人物，他可能身兼思考者、组织者等多个身份，如果一个群拥有2～3个活跃的思考者，那么这个群不但生命力很强，而且会碰撞出很多火花。</div>\r\n<div>&nbsp;</div>\r\n<div>　　在社交群里，必须有一类活跃分子，清谈者虽然很难奉献出结构化有深度的内容，但是他们往往有比较多的信息来源，可以给群提供一些有趣的话题，诱发思考者奉献出有质量的内容，一些围观者也可能被激活，带来有深度的内容。另外清谈者往往有比较开放和包容的心态，能够接受调侃，这样会让一个社交群不至于像工作群一样单调乏味。</div>\r\n<div>&nbsp;</div>\r\n<div>　　在社交群里比较尴尬的身份是求教者，虽然有时求教者可以给思考者带来好的话题去展开，但如果提出的问题非常初级，加上缺乏良好的沟通技巧，对有影响力的思考者反而形成了一种负担。如果思考者回答方式过于粗暴，或者组织者缺乏疏导技巧，求教者认为群缺乏分享精神，个人尊严受到歧视，瞬间就会变成挑战者，最后的结局往往是被踢出局。当然好的一面是如果求教者的问题得到好的回答，他会变成群中积极的组织者。</div>\r\n<div>&nbsp;</div>\r\n<div>　　正因为环形结构可以进行身份互换，群规的设置往往很难严格，留下很多弹性空间。</div>\r\n<div>&nbsp;</div>\r\n<div>　　而与之相反的是，在金字塔结构中，一定有一个高影响力人物，然后发展一些组织者帮助管理群，群员基本上都是追随影响力人物进来学习的，所以在群里必须制定严格的群规，否则如果每个学员都直接和影响力人物沟通的话，影响力人物就无法进行任何有效的通讯。</div>\r\n<div>&nbsp;</div>\r\n<div>　　所以在这种学习群里，最可能的模式是影响力人物进行定期分享模式，由组织者进行日常的群管理。</div>\r\n<div>&nbsp;</div>\r\n<div>　　两种类型都少不了群规，因为无规矩不成方圆，比如一些围观者有时候因为种种动机想在群里发各种软性广告，也会因为触犯群规变成挑战者，如果群组织者缺乏疏导技巧，一些同情围观者的群员会以退群的方式表示用脚投票，这会给群的生命力带来损害。</div>\r\n<div>&nbsp;</div>\r\n<div>　　四、群越大越好吗?</div>\r\n<div>&nbsp;</div>\r\n<div>　　有一个&ldquo;150定律&rdquo;(即著名的&ldquo;邓巴数字&rdquo;)指出：人类智力将允许人类拥有稳定社交网络的人数大约是150人。</div>\r\n<div>&nbsp;</div>\r\n<div>　　这个数字由于地域不同、文化不同、网络和现实的区别等可能会有区别，但毋庸置疑的是，社交网络人数肯定是一个有限的数量。</div>\r\n<div>&nbsp;</div>\r\n<div>　　你可以回想一下你的朋友圈，差不多加了二三百人之后，遭遇的刷屏体验比微博更甚。</div>\r\n<div>&nbsp;</div>\r\n<div>　　在群内的表现就更突出了。</div>\r\n<div>&nbsp;</div>\r\n<div>　　比如一个群的人数可能不多，正是因为成员不多，所以依靠每个人的自我规范就可管理，氛围融洽，凝聚力强，群内的总信息量不一定很大，但是参与度很高，质量也不低;但是人数一旦猛地增长，每个人说一句你也不一定看得过来，并且由于大量刷屏，体验下降、信息过载、价值鸡肋，参与的人越来越少，屏蔽群的人越来越多，这个时候信息量是大了，但人均参与量其实大大降低了，凝聚力也会下降，活跃度当然也就会下滑。</div>\r\n<div>&nbsp;</div>\r\n<div>　　那么应该如何看待金字塔和环形两种结构社群的规模呢?</div>\r\n<div>&nbsp;</div>\r\n<div>　　如果定位是学习分享群，在有能力管理的情况下，群的规模越大越好。</div>\r\n<div>&nbsp;</div>\r\n<div>　　这样高影响力的人一次分享可以辐射更多的人，但是这种群在线分享如何解决学员参与就会变成一个大挑战。</div>\r\n<div>&nbsp;</div>\r\n<div>　　比如QQ群支持2000人的上限，如果一个人分享，让2000人互动，会瞬间形成刷屏潮，导致分享无法继续。如果采取全员禁言，核心人员分享的模式，大家又会因为缺乏参与感，不愿意参加分享。</div>\r\n<div>&nbsp;</div>\r\n<div>　　学习群的规模上限其实是不受2000人限制的，完全取决于高影响力人的群管理水平。在金字塔层次结构中，只要形成大家都遵守的发言纪律，群的规模和分享水平都可以稳定在某个大家可以接受的水平线上。</div>\r\n<div>&nbsp;</div>\r\n<div>　　金字塔群还有一个变形，就是成立一个核心管理群，规模不大，但是这个管理群每个人都去维护一个小群，形成一个群的递归金字塔管理模式。</div>\r\n<div>&nbsp;</div>\r\n<div>　　但是环形结构的社交群不可能具有太大的规模。</div>\r\n<div>&nbsp;</div>\r\n<div>　　以微信为例，现在有500人群、200人群和40人群。但微信最早的群上限是40人，为什么设计成40个人?</div>\r\n<div>&nbsp;</div>\r\n<div>　　第一，微信群的产品逻辑就决定了群员进入关系是相对平等的，在一个平等的社区里面，形成一个金字塔结构的难度是非常大的，如果群主时刻表现出高人一等的存在感，群员会选择变成挑战者或者直接退出。</div>\r\n<div>&nbsp;</div>\r\n<div>　　第二，管理学也告诉我们对于一个松散型组织，26～36是一个小型自组织形态最佳的规模。传统管理理论上建议一个人可以直接管理人数最好是7个，不要超过9个，作为一个小团队也不要超过36人，所以我认为40人的微信群设置应该是微信有意为之，不是一个随意的数值，应该是观察了大量QQ群活跃度后的综合设置。</div>\r\n<div>&nbsp;</div>\r\n<div>　　如果遇到一个好的群组织者，同时他也是一个有能量的人，那么环形群关系是可以做成大规模的，但是这个规模超过100人就会遇到种种问题。我个人的观察是，一个群如果超过40个人，再找到活跃度足够且情趣相投的人是一个非常的挑战。</div>\r\n<div>&nbsp;</div>\r\n<div>　　但是在实际使用过程中，大量的人会认为40人不够用，甚至500人都不够用，最大一个原因就是大部分人有一个本能冲动&mdash;&mdash;把这个圈子里最好的人都装在一起。</div>\r\n<div>&nbsp;</div>\r\n<div>　　把人都装在一起和让这些人愉快相处是一对矛盾的关系。邀约牛人进群可以为群增加活力，但是如何让牛人在群里得到好的服务，又不被过度骚扰，就成了运营的难题。</div>\r\n<div>&nbsp;</div>\r\n<div>　　所以为了将群规模在扩大的过程中，将损失降到最低，有这样几个建议：第一，加人要有节奏，不要一股脑引入太多。第二，加人要有门槛，得来不易才懂得珍惜。第三，加入要守群规，正是无规矩不成社群。第四，老人要带新人，将社群文化进行传承。</div>', '0', '', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'a:0:{}', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'CMSEASYkhdFfxu8nVHQQUe840', '1');
INSERT INTO `rbt_archive` VALUES ('31', '14', '0', '案例展示', '', '', 'admin', '1', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2016-07-21 19:20:09', 'admin', '', '/upload/images/201607/links_01.jpg', '-1', '1', '行业解决方案', '0', '<p style=\"white-space: normal;\"><strong>执行编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">从传统的观点来说，解决方案只包含方案的生成阶段，具体的执行阶段是另外划分的。</p><p style=\"white-space: normal;\">但是从统一的流程来看，解决方案直接为执行层面服务，它们不是简单的线性关系和单一接口。所以，从某种程度来说，解决方案和执行是相互交互影响的，执行的效果应该及时反馈，并且对原方案做出修正性的参考和建议。</p><p style=\"white-space: normal;\">这种交互是多重性的，重复性的。一个可以不断自我完善的解决方案，才能真正改善状况，使得它以更高的效率执行。</p><p style=\"white-space: normal;\">相反，就一些复杂的现实情况来说，问题涉及到更多的要素，问题之间也有复杂的联系。如果期望以一个完美的解决方案，一次性解决所有问题。提出方案就可以高枕无忧，旁观执行层的实际进展。这在实际看来是不太现实的，也可能产生不适应的效果。</p><p style=\"white-space: normal;\">在市场经济领域，尤其是面向客户的案例中，能够提供执行参考，甚至能够亲自参与到具体执行中的解决方案，是更容易被客户认可和青睐的。简而言之，与拿到一个完整的建议书或者计划书相比，客户更希望获得解决问题的全套服务。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><img src=\"http://127.0.0.1/upload/images/201507/14360854145721.jpg\" alt=\"14360854145721.jpg\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>客观性编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">解决方案必须是客观的，理性的分析，尽可能掌握问题的实质，把握到每个细节要素。不应该把遭遇问题的迫切情绪，或者感性因素导入到解决方案中，这样可能适得其反。</p><p style=\"white-space: normal;\">事实上，在实际操作中，解决方案涉及到创意的要素不多，更多的是从已经存在的成功案例中寻找。</p><p style=\"white-space: normal;\">另一方面，如果有很好的分析问题，对成功案例进行客观分析，本身也是产生更好解决方案的基础。</p><p style=\"white-space: normal;\">没有完美的，一定能解决问题的永久解决方案。设计者和决策者必需清醒认识到解决方案的局限性，优势和劣势以及在变化条件下的不确定性。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>总结编辑</strong></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">传统的概念来说，解决方案的目的是解决问题，它的任务到此为止。</p><p style=\"white-space: normal;\">但是，优秀的解决方案必须包含总结的要素：问题为什么会发生，是否还会再次产生，这种问题是否会导致其它的问题，这个问题是否侧面反映了其他的潜在问题，怎样避免这些问题，本次的解决方案有哪些经验积累等等类似的思考。</p><p style=\"white-space: normal;\">解决方案不局限于解决本次问题，它应该避免相关问题的出现，警示相关的人员，并且能够做到经验的传承积累。</p><p><br/></p>', '0', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('32', '14', '0', '案例展示', '', '', 'admin', '1', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2016-07-21 19:20:09', 'admin', '', '/upload/images/201607/links_02.jpg', '-1', '1', '行业解决方案', '0', '<p style=\"white-space: normal;\"><strong>执行编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">从传统的观点来说，解决方案只包含方案的生成阶段，具体的执行阶段是另外划分的。</p><p style=\"white-space: normal;\">但是从统一的流程来看，解决方案直接为执行层面服务，它们不是简单的线性关系和单一接口。所以，从某种程度来说，解决方案和执行是相互交互影响的，执行的效果应该及时反馈，并且对原方案做出修正性的参考和建议。</p><p style=\"white-space: normal;\">这种交互是多重性的，重复性的。一个可以不断自我完善的解决方案，才能真正改善状况，使得它以更高的效率执行。</p><p style=\"white-space: normal;\">相反，就一些复杂的现实情况来说，问题涉及到更多的要素，问题之间也有复杂的联系。如果期望以一个完美的解决方案，一次性解决所有问题。提出方案就可以高枕无忧，旁观执行层的实际进展。这在实际看来是不太现实的，也可能产生不适应的效果。</p><p style=\"white-space: normal;\">在市场经济领域，尤其是面向客户的案例中，能够提供执行参考，甚至能够亲自参与到具体执行中的解决方案，是更容易被客户认可和青睐的。简而言之，与拿到一个完整的建议书或者计划书相比，客户更希望获得解决问题的全套服务。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><img src=\"http://127.0.0.1/upload/images/201507/14360854145721.jpg\" alt=\"14360854145721.jpg\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>客观性编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">解决方案必须是客观的，理性的分析，尽可能掌握问题的实质，把握到每个细节要素。不应该把遭遇问题的迫切情绪，或者感性因素导入到解决方案中，这样可能适得其反。</p><p style=\"white-space: normal;\">事实上，在实际操作中，解决方案涉及到创意的要素不多，更多的是从已经存在的成功案例中寻找。</p><p style=\"white-space: normal;\">另一方面，如果有很好的分析问题，对成功案例进行客观分析，本身也是产生更好解决方案的基础。</p><p style=\"white-space: normal;\">没有完美的，一定能解决问题的永久解决方案。设计者和决策者必需清醒认识到解决方案的局限性，优势和劣势以及在变化条件下的不确定性。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>总结编辑</strong></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">传统的概念来说，解决方案的目的是解决问题，它的任务到此为止。</p><p style=\"white-space: normal;\">但是，优秀的解决方案必须包含总结的要素：问题为什么会发生，是否还会再次产生，这种问题是否会导致其它的问题，这个问题是否侧面反映了其他的潜在问题，怎样避免这些问题，本次的解决方案有哪些经验积累等等类似的思考。</p><p style=\"white-space: normal;\">解决方案不局限于解决本次问题，它应该避免相关问题的出现，警示相关的人员，并且能够做到经验的传承积累。</p><p><br/></p>', '0', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('33', '14', '0', '案例展示', '', '', 'admin', '1', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2016-07-21 19:20:09', 'admin', '', '/upload/images/201607/links_03.jpg', '-1', '1', '行业解决方案', '0', '<p style=\"white-space: normal;\"><strong>执行编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">从传统的观点来说，解决方案只包含方案的生成阶段，具体的执行阶段是另外划分的。</p><p style=\"white-space: normal;\">但是从统一的流程来看，解决方案直接为执行层面服务，它们不是简单的线性关系和单一接口。所以，从某种程度来说，解决方案和执行是相互交互影响的，执行的效果应该及时反馈，并且对原方案做出修正性的参考和建议。</p><p style=\"white-space: normal;\">这种交互是多重性的，重复性的。一个可以不断自我完善的解决方案，才能真正改善状况，使得它以更高的效率执行。</p><p style=\"white-space: normal;\">相反，就一些复杂的现实情况来说，问题涉及到更多的要素，问题之间也有复杂的联系。如果期望以一个完美的解决方案，一次性解决所有问题。提出方案就可以高枕无忧，旁观执行层的实际进展。这在实际看来是不太现实的，也可能产生不适应的效果。</p><p style=\"white-space: normal;\">在市场经济领域，尤其是面向客户的案例中，能够提供执行参考，甚至能够亲自参与到具体执行中的解决方案，是更容易被客户认可和青睐的。简而言之，与拿到一个完整的建议书或者计划书相比，客户更希望获得解决问题的全套服务。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><img src=\"http://127.0.0.1/upload/images/201507/14360854145721.jpg\" alt=\"14360854145721.jpg\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>客观性编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">解决方案必须是客观的，理性的分析，尽可能掌握问题的实质，把握到每个细节要素。不应该把遭遇问题的迫切情绪，或者感性因素导入到解决方案中，这样可能适得其反。</p><p style=\"white-space: normal;\">事实上，在实际操作中，解决方案涉及到创意的要素不多，更多的是从已经存在的成功案例中寻找。</p><p style=\"white-space: normal;\">另一方面，如果有很好的分析问题，对成功案例进行客观分析，本身也是产生更好解决方案的基础。</p><p style=\"white-space: normal;\">没有完美的，一定能解决问题的永久解决方案。设计者和决策者必需清醒认识到解决方案的局限性，优势和劣势以及在变化条件下的不确定性。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>总结编辑</strong></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">传统的概念来说，解决方案的目的是解决问题，它的任务到此为止。</p><p style=\"white-space: normal;\">但是，优秀的解决方案必须包含总结的要素：问题为什么会发生，是否还会再次产生，这种问题是否会导致其它的问题，这个问题是否侧面反映了其他的潜在问题，怎样避免这些问题，本次的解决方案有哪些经验积累等等类似的思考。</p><p style=\"white-space: normal;\">解决方案不局限于解决本次问题，它应该避免相关问题的出现，警示相关的人员，并且能够做到经验的传承积累。</p><p><br/></p>', '0', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('34', '14', '0', '案例展示', '', '', 'admin', '1', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2016-07-21 19:20:09', 'admin', '', '/upload/images/201607/links_04.jpg', '-1', '1', '行业解决方案', '0', '<p style=\"white-space: normal;\"><strong>执行编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">从传统的观点来说，解决方案只包含方案的生成阶段，具体的执行阶段是另外划分的。</p><p style=\"white-space: normal;\">但是从统一的流程来看，解决方案直接为执行层面服务，它们不是简单的线性关系和单一接口。所以，从某种程度来说，解决方案和执行是相互交互影响的，执行的效果应该及时反馈，并且对原方案做出修正性的参考和建议。</p><p style=\"white-space: normal;\">这种交互是多重性的，重复性的。一个可以不断自我完善的解决方案，才能真正改善状况，使得它以更高的效率执行。</p><p style=\"white-space: normal;\">相反，就一些复杂的现实情况来说，问题涉及到更多的要素，问题之间也有复杂的联系。如果期望以一个完美的解决方案，一次性解决所有问题。提出方案就可以高枕无忧，旁观执行层的实际进展。这在实际看来是不太现实的，也可能产生不适应的效果。</p><p style=\"white-space: normal;\">在市场经济领域，尤其是面向客户的案例中，能够提供执行参考，甚至能够亲自参与到具体执行中的解决方案，是更容易被客户认可和青睐的。简而言之，与拿到一个完整的建议书或者计划书相比，客户更希望获得解决问题的全套服务。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><img src=\"http://127.0.0.1/upload/images/201507/14360854145721.jpg\" alt=\"14360854145721.jpg\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>客观性编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">解决方案必须是客观的，理性的分析，尽可能掌握问题的实质，把握到每个细节要素。不应该把遭遇问题的迫切情绪，或者感性因素导入到解决方案中，这样可能适得其反。</p><p style=\"white-space: normal;\">事实上，在实际操作中，解决方案涉及到创意的要素不多，更多的是从已经存在的成功案例中寻找。</p><p style=\"white-space: normal;\">另一方面，如果有很好的分析问题，对成功案例进行客观分析，本身也是产生更好解决方案的基础。</p><p style=\"white-space: normal;\">没有完美的，一定能解决问题的永久解决方案。设计者和决策者必需清醒认识到解决方案的局限性，优势和劣势以及在变化条件下的不确定性。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>总结编辑</strong></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">传统的概念来说，解决方案的目的是解决问题，它的任务到此为止。</p><p style=\"white-space: normal;\">但是，优秀的解决方案必须包含总结的要素：问题为什么会发生，是否还会再次产生，这种问题是否会导致其它的问题，这个问题是否侧面反映了其他的潜在问题，怎样避免这些问题，本次的解决方案有哪些经验积累等等类似的思考。</p><p style=\"white-space: normal;\">解决方案不局限于解决本次问题，它应该避免相关问题的出现，警示相关的人员，并且能够做到经验的传承积累。</p><p><br/></p>', '0', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('35', '14', '0', '案例展示', '', '', 'admin', '1', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2016-07-21 19:20:09', 'admin', '', '/upload/images/201607/links_05.jpg', '-1', '1', '行业解决方案', '0', '<p style=\"white-space: normal;\"><strong>执行编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">从传统的观点来说，解决方案只包含方案的生成阶段，具体的执行阶段是另外划分的。</p><p style=\"white-space: normal;\">但是从统一的流程来看，解决方案直接为执行层面服务，它们不是简单的线性关系和单一接口。所以，从某种程度来说，解决方案和执行是相互交互影响的，执行的效果应该及时反馈，并且对原方案做出修正性的参考和建议。</p><p style=\"white-space: normal;\">这种交互是多重性的，重复性的。一个可以不断自我完善的解决方案，才能真正改善状况，使得它以更高的效率执行。</p><p style=\"white-space: normal;\">相反，就一些复杂的现实情况来说，问题涉及到更多的要素，问题之间也有复杂的联系。如果期望以一个完美的解决方案，一次性解决所有问题。提出方案就可以高枕无忧，旁观执行层的实际进展。这在实际看来是不太现实的，也可能产生不适应的效果。</p><p style=\"white-space: normal;\">在市场经济领域，尤其是面向客户的案例中，能够提供执行参考，甚至能够亲自参与到具体执行中的解决方案，是更容易被客户认可和青睐的。简而言之，与拿到一个完整的建议书或者计划书相比，客户更希望获得解决问题的全套服务。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><img src=\"http://127.0.0.1/upload/images/201507/14360854145721.jpg\" alt=\"14360854145721.jpg\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>客观性编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">解决方案必须是客观的，理性的分析，尽可能掌握问题的实质，把握到每个细节要素。不应该把遭遇问题的迫切情绪，或者感性因素导入到解决方案中，这样可能适得其反。</p><p style=\"white-space: normal;\">事实上，在实际操作中，解决方案涉及到创意的要素不多，更多的是从已经存在的成功案例中寻找。</p><p style=\"white-space: normal;\">另一方面，如果有很好的分析问题，对成功案例进行客观分析，本身也是产生更好解决方案的基础。</p><p style=\"white-space: normal;\">没有完美的，一定能解决问题的永久解决方案。设计者和决策者必需清醒认识到解决方案的局限性，优势和劣势以及在变化条件下的不确定性。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>总结编辑</strong></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">传统的概念来说，解决方案的目的是解决问题，它的任务到此为止。</p><p style=\"white-space: normal;\">但是，优秀的解决方案必须包含总结的要素：问题为什么会发生，是否还会再次产生，这种问题是否会导致其它的问题，这个问题是否侧面反映了其他的潜在问题，怎样避免这些问题，本次的解决方案有哪些经验积累等等类似的思考。</p><p style=\"white-space: normal;\">解决方案不局限于解决本次问题，它应该避免相关问题的出现，警示相关的人员，并且能够做到经验的传承积累。</p><p><br/></p>', '0', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('36', '14', '0', '案例展示', '', '', 'admin', '1', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2016-07-21 19:20:09', 'admin', '', '/upload/images/201607/links_06.jpg', '-1', '1', '行业解决方案', '0', '<p style=\"white-space: normal;\"><strong>执行编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">从传统的观点来说，解决方案只包含方案的生成阶段，具体的执行阶段是另外划分的。</p><p style=\"white-space: normal;\">但是从统一的流程来看，解决方案直接为执行层面服务，它们不是简单的线性关系和单一接口。所以，从某种程度来说，解决方案和执行是相互交互影响的，执行的效果应该及时反馈，并且对原方案做出修正性的参考和建议。</p><p style=\"white-space: normal;\">这种交互是多重性的，重复性的。一个可以不断自我完善的解决方案，才能真正改善状况，使得它以更高的效率执行。</p><p style=\"white-space: normal;\">相反，就一些复杂的现实情况来说，问题涉及到更多的要素，问题之间也有复杂的联系。如果期望以一个完美的解决方案，一次性解决所有问题。提出方案就可以高枕无忧，旁观执行层的实际进展。这在实际看来是不太现实的，也可能产生不适应的效果。</p><p style=\"white-space: normal;\">在市场经济领域，尤其是面向客户的案例中，能够提供执行参考，甚至能够亲自参与到具体执行中的解决方案，是更容易被客户认可和青睐的。简而言之，与拿到一个完整的建议书或者计划书相比，客户更希望获得解决问题的全套服务。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><img src=\"http://127.0.0.1/upload/images/201507/14360854145721.jpg\" alt=\"14360854145721.jpg\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>客观性编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">解决方案必须是客观的，理性的分析，尽可能掌握问题的实质，把握到每个细节要素。不应该把遭遇问题的迫切情绪，或者感性因素导入到解决方案中，这样可能适得其反。</p><p style=\"white-space: normal;\">事实上，在实际操作中，解决方案涉及到创意的要素不多，更多的是从已经存在的成功案例中寻找。</p><p style=\"white-space: normal;\">另一方面，如果有很好的分析问题，对成功案例进行客观分析，本身也是产生更好解决方案的基础。</p><p style=\"white-space: normal;\">没有完美的，一定能解决问题的永久解决方案。设计者和决策者必需清醒认识到解决方案的局限性，优势和劣势以及在变化条件下的不确定性。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>总结编辑</strong></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">传统的概念来说，解决方案的目的是解决问题，它的任务到此为止。</p><p style=\"white-space: normal;\">但是，优秀的解决方案必须包含总结的要素：问题为什么会发生，是否还会再次产生，这种问题是否会导致其它的问题，这个问题是否侧面反映了其他的潜在问题，怎样避免这些问题，本次的解决方案有哪些经验积累等等类似的思考。</p><p style=\"white-space: normal;\">解决方案不局限于解决本次问题，它应该避免相关问题的出现，警示相关的人员，并且能够做到经验的传承积累。</p><p><br/></p>', '0', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('37', '14', '0', '案例展示', '', '', 'admin', '1', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2016-07-21 19:20:09', 'admin', '', '/upload/images/201607/links_07.jpg', '-1', '1', '行业解决方案', '0', '<p style=\"white-space: normal;\"><strong>执行编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">从传统的观点来说，解决方案只包含方案的生成阶段，具体的执行阶段是另外划分的。</p><p style=\"white-space: normal;\">但是从统一的流程来看，解决方案直接为执行层面服务，它们不是简单的线性关系和单一接口。所以，从某种程度来说，解决方案和执行是相互交互影响的，执行的效果应该及时反馈，并且对原方案做出修正性的参考和建议。</p><p style=\"white-space: normal;\">这种交互是多重性的，重复性的。一个可以不断自我完善的解决方案，才能真正改善状况，使得它以更高的效率执行。</p><p style=\"white-space: normal;\">相反，就一些复杂的现实情况来说，问题涉及到更多的要素，问题之间也有复杂的联系。如果期望以一个完美的解决方案，一次性解决所有问题。提出方案就可以高枕无忧，旁观执行层的实际进展。这在实际看来是不太现实的，也可能产生不适应的效果。</p><p style=\"white-space: normal;\">在市场经济领域，尤其是面向客户的案例中，能够提供执行参考，甚至能够亲自参与到具体执行中的解决方案，是更容易被客户认可和青睐的。简而言之，与拿到一个完整的建议书或者计划书相比，客户更希望获得解决问题的全套服务。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><img src=\"http://127.0.0.1/upload/images/201507/14360854145721.jpg\" alt=\"14360854145721.jpg\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>客观性编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">解决方案必须是客观的，理性的分析，尽可能掌握问题的实质，把握到每个细节要素。不应该把遭遇问题的迫切情绪，或者感性因素导入到解决方案中，这样可能适得其反。</p><p style=\"white-space: normal;\">事实上，在实际操作中，解决方案涉及到创意的要素不多，更多的是从已经存在的成功案例中寻找。</p><p style=\"white-space: normal;\">另一方面，如果有很好的分析问题，对成功案例进行客观分析，本身也是产生更好解决方案的基础。</p><p style=\"white-space: normal;\">没有完美的，一定能解决问题的永久解决方案。设计者和决策者必需清醒认识到解决方案的局限性，优势和劣势以及在变化条件下的不确定性。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>总结编辑</strong></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">传统的概念来说，解决方案的目的是解决问题，它的任务到此为止。</p><p style=\"white-space: normal;\">但是，优秀的解决方案必须包含总结的要素：问题为什么会发生，是否还会再次产生，这种问题是否会导致其它的问题，这个问题是否侧面反映了其他的潜在问题，怎样避免这些问题，本次的解决方案有哪些经验积累等等类似的思考。</p><p style=\"white-space: normal;\">解决方案不局限于解决本次问题，它应该避免相关问题的出现，警示相关的人员，并且能够做到经验的传承积累。</p><p><br/></p>', '0', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('38', '14', '0', '案例展示', '', '', 'admin', '1', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2016-07-21 19:20:09', 'admin', '', '/upload/images/201607/links_08.jpg', '-1', '1', '行业解决方案', '0', '<p style=\"white-space: normal;\"><strong>执行编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">从传统的观点来说，解决方案只包含方案的生成阶段，具体的执行阶段是另外划分的。</p><p style=\"white-space: normal;\">但是从统一的流程来看，解决方案直接为执行层面服务，它们不是简单的线性关系和单一接口。所以，从某种程度来说，解决方案和执行是相互交互影响的，执行的效果应该及时反馈，并且对原方案做出修正性的参考和建议。</p><p style=\"white-space: normal;\">这种交互是多重性的，重复性的。一个可以不断自我完善的解决方案，才能真正改善状况，使得它以更高的效率执行。</p><p style=\"white-space: normal;\">相反，就一些复杂的现实情况来说，问题涉及到更多的要素，问题之间也有复杂的联系。如果期望以一个完美的解决方案，一次性解决所有问题。提出方案就可以高枕无忧，旁观执行层的实际进展。这在实际看来是不太现实的，也可能产生不适应的效果。</p><p style=\"white-space: normal;\">在市场经济领域，尤其是面向客户的案例中，能够提供执行参考，甚至能够亲自参与到具体执行中的解决方案，是更容易被客户认可和青睐的。简而言之，与拿到一个完整的建议书或者计划书相比，客户更希望获得解决问题的全套服务。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><img src=\"http://127.0.0.1/upload/images/201507/14360854145721.jpg\" alt=\"14360854145721.jpg\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>客观性编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">解决方案必须是客观的，理性的分析，尽可能掌握问题的实质，把握到每个细节要素。不应该把遭遇问题的迫切情绪，或者感性因素导入到解决方案中，这样可能适得其反。</p><p style=\"white-space: normal;\">事实上，在实际操作中，解决方案涉及到创意的要素不多，更多的是从已经存在的成功案例中寻找。</p><p style=\"white-space: normal;\">另一方面，如果有很好的分析问题，对成功案例进行客观分析，本身也是产生更好解决方案的基础。</p><p style=\"white-space: normal;\">没有完美的，一定能解决问题的永久解决方案。设计者和决策者必需清醒认识到解决方案的局限性，优势和劣势以及在变化条件下的不确定性。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>总结编辑</strong></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">传统的概念来说，解决方案的目的是解决问题，它的任务到此为止。</p><p style=\"white-space: normal;\">但是，优秀的解决方案必须包含总结的要素：问题为什么会发生，是否还会再次产生，这种问题是否会导致其它的问题，这个问题是否侧面反映了其他的潜在问题，怎样避免这些问题，本次的解决方案有哪些经验积累等等类似的思考。</p><p style=\"white-space: normal;\">解决方案不局限于解决本次问题，它应该避免相关问题的出现，警示相关的人员，并且能够做到经验的传承积累。</p><p><br/></p>', '0', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('39', '14', '0', '案例展示', '', '', 'admin', '1', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2016-07-21 19:20:09', 'admin', '', '/upload/images/201607/links_09.jpg', '-1', '1', '行业解决方案', '0', '<p style=\"white-space: normal;\"><strong>执行编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">从传统的观点来说，解决方案只包含方案的生成阶段，具体的执行阶段是另外划分的。</p><p style=\"white-space: normal;\">但是从统一的流程来看，解决方案直接为执行层面服务，它们不是简单的线性关系和单一接口。所以，从某种程度来说，解决方案和执行是相互交互影响的，执行的效果应该及时反馈，并且对原方案做出修正性的参考和建议。</p><p style=\"white-space: normal;\">这种交互是多重性的，重复性的。一个可以不断自我完善的解决方案，才能真正改善状况，使得它以更高的效率执行。</p><p style=\"white-space: normal;\">相反，就一些复杂的现实情况来说，问题涉及到更多的要素，问题之间也有复杂的联系。如果期望以一个完美的解决方案，一次性解决所有问题。提出方案就可以高枕无忧，旁观执行层的实际进展。这在实际看来是不太现实的，也可能产生不适应的效果。</p><p style=\"white-space: normal;\">在市场经济领域，尤其是面向客户的案例中，能够提供执行参考，甚至能够亲自参与到具体执行中的解决方案，是更容易被客户认可和青睐的。简而言之，与拿到一个完整的建议书或者计划书相比，客户更希望获得解决问题的全套服务。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><img src=\"http://127.0.0.1/upload/images/201507/14360854145721.jpg\" alt=\"14360854145721.jpg\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>客观性编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">解决方案必须是客观的，理性的分析，尽可能掌握问题的实质，把握到每个细节要素。不应该把遭遇问题的迫切情绪，或者感性因素导入到解决方案中，这样可能适得其反。</p><p style=\"white-space: normal;\">事实上，在实际操作中，解决方案涉及到创意的要素不多，更多的是从已经存在的成功案例中寻找。</p><p style=\"white-space: normal;\">另一方面，如果有很好的分析问题，对成功案例进行客观分析，本身也是产生更好解决方案的基础。</p><p style=\"white-space: normal;\">没有完美的，一定能解决问题的永久解决方案。设计者和决策者必需清醒认识到解决方案的局限性，优势和劣势以及在变化条件下的不确定性。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>总结编辑</strong></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">传统的概念来说，解决方案的目的是解决问题，它的任务到此为止。</p><p style=\"white-space: normal;\">但是，优秀的解决方案必须包含总结的要素：问题为什么会发生，是否还会再次产生，这种问题是否会导致其它的问题，这个问题是否侧面反映了其他的潜在问题，怎样避免这些问题，本次的解决方案有哪些经验积累等等类似的思考。</p><p style=\"white-space: normal;\">解决方案不局限于解决本次问题，它应该避免相关问题的出现，警示相关的人员，并且能够做到经验的传承积累。</p><p><br/></p>', '0', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('40', '14', '0', '解决方案一', null, null, 'admin', '1', '0', null, '0', '0', '', '0', '', null, null, null, '0', '2017-12-08 10:12:31', 'admin', '', '/cmseasy/upload/images/201712/15126990041181.jpg', '1', '1', '行业解决方案这里是间接啊啊啊了发话说考法十六大', '0', '<p style=\"white-space: normal;\"><strong>执行编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">从传统的观点来说，解决方案只包含方案的生成阶段，具体的执行阶段是另外划分的。</p><p style=\"white-space: normal;\">但是从统一的流程来看，解决方案直接为执行层面服务，它们不是简单的线性关系和单一接口。所以，从某种程度来说，解决方案和执行是相互交互影响的，执行的效果应该及时反馈，并且对原方案做出修正性的参考和建议。</p><p style=\"white-space: normal;\">这种交互是多重性的，重复性的。一个可以不断自我完善的解决方案，才能真正改善状况，使得它以更高的效率执行。</p><p style=\"white-space: normal;\">相反，就一些复杂的现实情况来说，问题涉及到更多的要素，问题之间也有复杂的联系。如果期望以一个完美的解决方案，一次性解决所有问题。提出方案就可以高枕无忧，旁观执行层的实际进展。这在实际看来是不太现实的，也可能产生不适应的效果。</p><p style=\"white-space: normal;\">在市场经济领域，尤其是面向客户的案例中，能够提供执行参考，甚至能够亲自参与到具体执行中的解决方案，是更容易被客户认可和青睐的。简而言之，与拿到一个完整的建议书或者计划书相比，客户更希望获得解决问题的全套服务。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><img src=\"http://127.0.0.1/upload/images/201507/14360854145721.jpg\" alt=\"14360854145721.jpg\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>客观性编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">解决方案必须是客观的，理性的分析，尽可能掌握问题的实质，把握到每个细节要素。不应该把遭遇问题的迫切情绪，或者感性因素导入到解决方案中，这样可能适得其反。</p><p style=\"white-space: normal;\">事实上，在实际操作中，解决方案涉及到创意的要素不多，更多的是从已经存在的成功案例中寻找。</p><p style=\"white-space: normal;\">另一方面，如果有很好的分析问题，对成功案例进行客观分析，本身也是产生更好解决方案的基础。</p><p style=\"white-space: normal;\">没有完美的，一定能解决问题的永久解决方案。设计者和决策者必需清醒认识到解决方案的局限性，优势和劣势以及在变化条件下的不确定性。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>总结编辑</strong></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">传统的概念来说，解决方案的目的是解决问题，它的任务到此为止。</p><p style=\"white-space: normal;\">但是，优秀的解决方案必须包含总结的要素：问题为什么会发生，是否还会再次产生，这种问题是否会导致其它的问题，这个问题是否侧面反映了其他的潜在问题，怎样避免这些问题，本次的解决方案有哪些经验积累等等类似的思考。</p><p style=\"white-space: normal;\">解决方案不局限于解决本次问题，它应该避免相关问题的出现，警示相关的人员，并且能够做到经验的传承积累。</p><p><br/></p>', '0', '0', '0', null, '0', '0', null, null, null, null, '0', null, null, '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('41', '14', '0', '解决方案二', null, null, 'admin', '1', '0', null, '0', '0', '', '0', '', null, null, null, '0', '2017-12-08 10:12:45', 'admin', '', '/cmseasy/upload/images/201712/15126991951910.jpg', '1', '1', '行业解决方案介绍的哈夫节卡士大夫还是开朗返回斯洛伐克几十就是啦', '0', '<p style=\"white-space: normal;\"><strong>执行编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">从传统的观点来说，解决方案只包含方案的生成阶段，具体的执行阶段是另外划分的。</p><p style=\"white-space: normal;\">但是从统一的流程来看，解决方案直接为执行层面服务，它们不是简单的线性关系和单一接口。所以，从某种程度来说，解决方案和执行是相互交互影响的，执行的效果应该及时反馈，并且对原方案做出修正性的参考和建议。</p><p style=\"white-space: normal;\">这种交互是多重性的，重复性的。一个可以不断自我完善的解决方案，才能真正改善状况，使得它以更高的效率执行。</p><p style=\"white-space: normal;\">相反，就一些复杂的现实情况来说，问题涉及到更多的要素，问题之间也有复杂的联系。如果期望以一个完美的解决方案，一次性解决所有问题。提出方案就可以高枕无忧，旁观执行层的实际进展。这在实际看来是不太现实的，也可能产生不适应的效果。</p><p style=\"white-space: normal;\">在市场经济领域，尤其是面向客户的案例中，能够提供执行参考，甚至能够亲自参与到具体执行中的解决方案，是更容易被客户认可和青睐的。简而言之，与拿到一个完整的建议书或者计划书相比，客户更希望获得解决问题的全套服务。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><img src=\"http://127.0.0.1/upload/images/201507/14360854145721.jpg\" alt=\"14360854145721.jpg\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>客观性编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">解决方案必须是客观的，理性的分析，尽可能掌握问题的实质，把握到每个细节要素。不应该把遭遇问题的迫切情绪，或者感性因素导入到解决方案中，这样可能适得其反。</p><p style=\"white-space: normal;\">事实上，在实际操作中，解决方案涉及到创意的要素不多，更多的是从已经存在的成功案例中寻找。</p><p style=\"white-space: normal;\">另一方面，如果有很好的分析问题，对成功案例进行客观分析，本身也是产生更好解决方案的基础。</p><p style=\"white-space: normal;\">没有完美的，一定能解决问题的永久解决方案。设计者和决策者必需清醒认识到解决方案的局限性，优势和劣势以及在变化条件下的不确定性。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>总结编辑</strong></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">传统的概念来说，解决方案的目的是解决问题，它的任务到此为止。</p><p style=\"white-space: normal;\">但是，优秀的解决方案必须包含总结的要素：问题为什么会发生，是否还会再次产生，这种问题是否会导致其它的问题，这个问题是否侧面反映了其他的潜在问题，怎样避免这些问题，本次的解决方案有哪些经验积累等等类似的思考。</p><p style=\"white-space: normal;\">解决方案不局限于解决本次问题，它应该避免相关问题的出现，警示相关的人员，并且能够做到经验的传承积累。</p><p><br/></p>', '0', '0', '0', null, '0', '0', null, null, null, null, '0', null, null, '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('42', '14', '0', '解决方案三', null, null, 'admin', '1', '0', null, '0', '0', '', '0', '', null, null, null, '0', '2017-12-08 10:13:21', 'admin', '', '/cmseasy/upload/images/201712/15126992255331.jpg', '1', '1', '行业解决方案分公司给个3', '0', '<p style=\"white-space: normal;\"><strong>执行编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">从传统的观点来说，解决方案只包含方案的生成阶段，具体的执行阶段是另外划分的。</p><p style=\"white-space: normal;\">但是从统一的流程来看，解决方案直接为执行层面服务，它们不是简单的线性关系和单一接口。所以，从某种程度来说，解决方案和执行是相互交互影响的，执行的效果应该及时反馈，并且对原方案做出修正性的参考和建议。</p><p style=\"white-space: normal;\">这种交互是多重性的，重复性的。一个可以不断自我完善的解决方案，才能真正改善状况，使得它以更高的效率执行。</p><p style=\"white-space: normal;\">相反，就一些复杂的现实情况来说，问题涉及到更多的要素，问题之间也有复杂的联系。如果期望以一个完美的解决方案，一次性解决所有问题。提出方案就可以高枕无忧，旁观执行层的实际进展。这在实际看来是不太现实的，也可能产生不适应的效果。</p><p style=\"white-space: normal;\">在市场经济领域，尤其是面向客户的案例中，能够提供执行参考，甚至能够亲自参与到具体执行中的解决方案，是更容易被客户认可和青睐的。简而言之，与拿到一个完整的建议书或者计划书相比，客户更希望获得解决问题的全套服务。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><img src=\"http://127.0.0.1/upload/images/201507/14360854145721.jpg\" alt=\"14360854145721.jpg\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>客观性编辑</strong></p><p style=\"white-space: normal;\"><strong><br/></strong></p><p style=\"white-space: normal;\">解决方案必须是客观的，理性的分析，尽可能掌握问题的实质，把握到每个细节要素。不应该把遭遇问题的迫切情绪，或者感性因素导入到解决方案中，这样可能适得其反。</p><p style=\"white-space: normal;\">事实上，在实际操作中，解决方案涉及到创意的要素不多，更多的是从已经存在的成功案例中寻找。</p><p style=\"white-space: normal;\">另一方面，如果有很好的分析问题，对成功案例进行客观分析，本身也是产生更好解决方案的基础。</p><p style=\"white-space: normal;\">没有完美的，一定能解决问题的永久解决方案。设计者和决策者必需清醒认识到解决方案的局限性，优势和劣势以及在变化条件下的不确定性。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>总结编辑</strong></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">传统的概念来说，解决方案的目的是解决问题，它的任务到此为止。</p><p style=\"white-space: normal;\">但是，优秀的解决方案必须包含总结的要素：问题为什么会发生，是否还会再次产生，这种问题是否会导致其它的问题，这个问题是否侧面反映了其他的潜在问题，怎样避免这些问题，本次的解决方案有哪些经验积累等等类似的思考。</p><p style=\"white-space: normal;\">解决方案不局限于解决本次问题，它应该避免相关问题的出现，警示相关的人员，并且能够做到经验的传承积累。</p><p><br/></p>', '0', '0', '0', null, '0', '0', null, null, null, null, '0', null, null, '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('43', '12', '0', '2009年 公司成立', '', '', 'admin', '1', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2017-03-09 21:18:40', 'admin', '', '/upload/images/201506/rongyu.jpg', '1', '1', '2009年九州易通科技有限公司成立，执照注册号220300000011899。', '0', '<p>2009年九州易通科技有限公司成立，执照注册号220300000011899。</p><p><br/></p>', '0', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('44', '12', '0', '2010年CeLive Web在线客服开发完成', '', '', 'admin', '1', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2017-03-09 21:20:51', 'admin', '', '/upload/images/201506/zhaopin.jpg', '1', '1', 'CeLive Web在线客服开发完，并在中国国家版权局登记注册，著作权登记号 2010SR013341。', '0', '<p>CeLive Web在线客服开发完，并在中国国家版权局登记注册，著作权登记号 2010SR013341。</p>', '0', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('45', '12', '0', '2012年CmsEasy 与 360旗下子公司 360网站安全检测 建立战略合作伙伴关系。', '', '', 'admin', '1', '0', '', '0', '0', '', '0', '', '', '', '', '0', '2017-03-09 21:20:51', 'admin', '', '/upload/images/201506/gushi.jpg', '1', '1', 'CeLive Web在线客服开发完，并在中国国家版权局登记注册，著作权登记号 2010SR013341。', '0', '<p>CeLive Web在线客服开发完，并在中国国家版权局登记注册，著作权登记号 2010SR013341。</p>', '0', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'N;', '', '0', '0', '0', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1');
INSERT INTO `rbt_archive` VALUES ('46', '16', '0', '王老五', 'XXX工程师', null, 'admin', '1', '0', null, '0', '0', null, '0', null, null, null, null, null, '2017-12-08 15:17:57', 'admin', null, '/cmseasy/upload/images/201712/15127174839571.png', '1', '1', '人物简介，不能写太多太多字介绍不过有高度限制，超过了就不在这里显示了写就不在这里显示了写就不在这里显示了写一堆关于我们的介绍不过有高度限制，超过了就不在这里显示了写一堆关于我们的vjkhfjdhfjd介绍不过有高度限制，超过了就不在这里显过了就不在这里显示了写就不在这里显示了写就不在这里显示了写一堆关于我们的介绍不过有高度限制，超过了就不在这里显示了写一堆关于我们的vjkhfjdhfjd介绍不过有高度限制，超过了就不在这里显示了写一堆关于我们的介绍不过有高度限制，超过了就不在这里', '0', null, '0', '0', '0', null, '0', '0', null, null, null, null, '0', null, null, '0', 'N;', '', '0', null, null, '0000-00-00', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '1');
INSERT INTO `rbt_archive` VALUES ('47', '16', '0', '王老五', 'XXX工程师', '', 'admin', '1', '0', '', '0', '0', null, '0', null, '', '', '', null, '2017-12-08 15:16:38', 'admin', null, '/cmseasy/upload/images/201712/15127174674438.png', '1', '1', '人物简介，不能写太多太多字介绍不过有高度限制，超过了就不在这里显示了写就不在这里显示了写就不在这里显示了写一堆关于我们的介绍不过有高度限制，超过了就不在这里显示了写一堆关于我们的', '0', '', '0', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'N;', '', '0', null, null, '0000-00-00', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '1');
INSERT INTO `rbt_archive` VALUES ('48', '16', '0', '王老五', 'XXX工程师', '', 'admin', '1', '0', '', '0', '0', null, '0', null, '', '', '', null, '2017-12-08 15:18:10', 'admin', null, '/cmseasy/upload/images/201712/15127175121261.png', '1', '1', '人物简介，不能写太多太多字介绍不过有高度限制，超过了就不在这里显示了写就不在这里显示了写就不在这里显示了写一堆关于我们的介绍不过有高度限制，超过了就不在这里显示了写一堆关于我们的8787', '0', '', '0', '0', '0', '', '0', '0', '', '', '', '', '0', '', '', '0', 'N;', '', '0', null, null, '0000-00-00', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '1');

-- ----------------------------
-- Table structure for rbt_a_attachment
-- ----------------------------
DROP TABLE IF EXISTS `rbt_a_attachment`;
CREATE TABLE `rbt_a_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `path` varchar(150) NOT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `intro` varchar(100) DEFAULT NULL,
  `adddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_a_attachment
-- ----------------------------
INSERT INTO `rbt_a_attachment` VALUES ('1', '20', 'http://www.baidu.com/logo.gif', '', '下载', '2011-11-11 11:25:45');

-- ----------------------------
-- Table structure for rbt_a_comment
-- ----------------------------
DROP TABLE IF EXISTS `rbt_a_comment`;
CREATE TABLE `rbt_a_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `content` text NOT NULL,
  `telphone` varchar(50) DEFAULT '',
  `zannum` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `userid` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `adddate` datetime DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `state` tinyint(2) DEFAULT '1',
  `checked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_a_comment
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_a_rank
-- ----------------------------
DROP TABLE IF EXISTS `rbt_a_rank`;
CREATE TABLE `rbt_a_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `catid` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `ranks` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_a_rank
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_a_vote
-- ----------------------------
DROP TABLE IF EXISTS `rbt_a_vote`;
CREATE TABLE `rbt_a_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `titles` text,
  `votes` text,
  `users` text,
  `images` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_a_vote
-- ----------------------------
INSERT INTO `rbt_a_vote` VALUES ('30', '15', 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}', '', '', 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `rbt_a_vote` VALUES ('31', '18', 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}', null, null, 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `rbt_a_vote` VALUES ('32', '10', 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}', '', '', 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `rbt_a_vote` VALUES ('33', '40', 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}', '', '', 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `rbt_a_vote` VALUES ('34', '41', 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}', null, null, 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `rbt_a_vote` VALUES ('35', '42', 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}', null, null, 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `rbt_a_vote` VALUES ('36', '46', 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}', '', '', 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `rbt_a_vote` VALUES ('37', '47', 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}', null, null, 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `rbt_a_vote` VALUES ('38', '48', 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}', null, null, 'a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');

-- ----------------------------
-- Table structure for rbt_ballot
-- ----------------------------
DROP TABLE IF EXISTS `rbt_ballot`;
CREATE TABLE `rbt_ballot` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `type` set('radio','checkbox') NOT NULL DEFAULT 'radio',
  `num` int(11) unsigned NOT NULL DEFAULT '0',
  `order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_ballot
-- ----------------------------
INSERT INTO `rbt_ballot` VALUES ('1', '网站为什么要改版？', 'checkbox', '3', '0');

-- ----------------------------
-- Table structure for rbt_b_arctag
-- ----------------------------
DROP TABLE IF EXISTS `rbt_b_arctag`;
CREATE TABLE `rbt_b_arctag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT '0',
  `tagid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `arctag` (`aid`,`tagid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_b_arctag
-- ----------------------------
INSERT INTO `rbt_b_arctag` VALUES ('9', '20', '0');
INSERT INTO `rbt_b_arctag` VALUES ('3', '21', '0');
INSERT INTO `rbt_b_arctag` VALUES ('4', '22', '0');
INSERT INTO `rbt_b_arctag` VALUES ('105', '19', '0');
INSERT INTO `rbt_b_arctag` VALUES ('7', '23', '0');
INSERT INTO `rbt_b_arctag` VALUES ('97', '24', '0');
INSERT INTO `rbt_b_arctag` VALUES ('125', '10', '0');
INSERT INTO `rbt_b_arctag` VALUES ('103', '11', '0');
INSERT INTO `rbt_b_arctag` VALUES ('86', '9', '0');
INSERT INTO `rbt_b_arctag` VALUES ('83', '12', '0');
INSERT INTO `rbt_b_arctag` VALUES ('98', '13', '0');
INSERT INTO `rbt_b_arctag` VALUES ('99', '14', '0');
INSERT INTO `rbt_b_arctag` VALUES ('113', '15', '0');
INSERT INTO `rbt_b_arctag` VALUES ('100', '16', '0');
INSERT INTO `rbt_b_arctag` VALUES ('101', '17', '0');
INSERT INTO `rbt_b_arctag` VALUES ('114', '18', '0');
INSERT INTO `rbt_b_arctag` VALUES ('89', '1', '0');
INSERT INTO `rbt_b_arctag` VALUES ('107', '3', '0');
INSERT INTO `rbt_b_arctag` VALUES ('111', '2', '0');
INSERT INTO `rbt_b_arctag` VALUES ('106', '4', '0');
INSERT INTO `rbt_b_arctag` VALUES ('110', '27', '0');
INSERT INTO `rbt_b_arctag` VALUES ('109', '28', '0');
INSERT INTO `rbt_b_arctag` VALUES ('104', '25', '0');
INSERT INTO `rbt_b_arctag` VALUES ('58', '29', '0');
INSERT INTO `rbt_b_arctag` VALUES ('96', '30', '0');
INSERT INTO `rbt_b_arctag` VALUES ('90', '7', '0');
INSERT INTO `rbt_b_arctag` VALUES ('91', '8', '0');
INSERT INTO `rbt_b_arctag` VALUES ('92', '6', '0');
INSERT INTO `rbt_b_arctag` VALUES ('93', '5', '0');
INSERT INTO `rbt_b_arctag` VALUES ('118', '40', '0');
INSERT INTO `rbt_b_arctag` VALUES ('119', '41', '0');
INSERT INTO `rbt_b_arctag` VALUES ('120', '42', '0');
INSERT INTO `rbt_b_arctag` VALUES ('123', '46', '0');
INSERT INTO `rbt_b_arctag` VALUES ('122', '47', '0');
INSERT INTO `rbt_b_arctag` VALUES ('124', '48', '0');

-- ----------------------------
-- Table structure for rbt_b_category
-- ----------------------------
DROP TABLE IF EXISTS `rbt_b_category`;
CREATE TABLE `rbt_b_category` (
  `catid` int(6) NOT NULL AUTO_INCREMENT,
  `parentid` int(6) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT '',
  `scategory` varchar(50) DEFAULT NULL,
  `listorder` int(11) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `keyword` varchar(150) DEFAULT NULL,
  `description` text,
  `categorycontent` mediumtext,
  `htmldir` varchar(50) NOT NULL,
  `template` varchar(50) DEFAULT NULL,
  `listtemplate` varchar(50) DEFAULT NULL,
  `showtemplate` varchar(50) DEFAULT NULL,
  `showform` varchar(50) DEFAULT NULL,
  `templatewap` varchar(50) DEFAULT NULL,
  `listtemplatewap` varchar(50) DEFAULT NULL,
  `showtemplatewap` varchar(50) DEFAULT NULL,
  `htmlrule` varchar(100) DEFAULT NULL,
  `listhtmlrule` varchar(100) DEFAULT NULL,
  `showhtmlrule` varchar(100) DEFAULT NULL,
  `module` varchar(16) NOT NULL DEFAULT 'article',
  `isshow` tinyint(2) DEFAULT '1',
  `ishtml` tinyint(2) DEFAULT '0',
  `iswaphtml` tinyint(2) DEFAULT '0',
  `ispages` tinyint(2) DEFAULT NULL,
  `includecatarchives` tinyint(2) DEFAULT '0',
  `addarcenable` tinyint(2) DEFAULT NULL,
  `linkto` varchar(150) DEFAULT NULL,
  `attr1` varchar(20) DEFAULT NULL,
  `attr2` varchar(20) DEFAULT NULL,
  `attr3` varchar(20) DEFAULT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `thumb_width` int(3) DEFAULT NULL,
  `thumb_height` int(3) DEFAULT NULL,
  `isnav` tinyint(1) DEFAULT NULL,
  `ismobilenav` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isecoding` tinyint(1) unsigned DEFAULT '0',
  `ecoding` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`),
  UNIQUE KEY `category` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_b_category
-- ----------------------------
INSERT INTO `rbt_b_category` VALUES ('1', '0', '关于我们', 'THE STRENGTH OF BRAND INNOVATION SCIENCE AND TECHNOLOGY WILL NEVER STOP', '', '4', '/CmsEasy/upload/images/201712/1512634615613.jpg', null, null, '实力品牌 专业技能 技术人才 创新科技 永不止步', '<p>企业一般是指以盈利为目的，运用各种生产要素（土地、劳动力、资本、技术和企业家才能等），向市场提供商品或服务，实行自主经营、自负盈亏、独立核算的法人或其他社会经济组织。</p><p>在商品经济范畴内，作为组织单元的多种模式之一，按照一定的组织规律，有机构成的经济实体，一般以营利为目的，以实现投资人、客户、员工、社会大众的利益最大化为使命，通过提供产品或服务换取收入。它是社会发展的产物，因社会分工的发展而成长壮大。企业是市场经济活动的主要参与者；在社会主义经济体制下，各种企业并存共同构成社会主义市场经济的微观基础。企业存在三类基本组织形式：独资企业、合伙企业和公司，公司制企业是现代企业中最主要的最典型的组织形式。</p>', 'about', 'archive/list_page.html', 'archive/list_page.html', '0', '0', 'archive/list_page.html', 'archive/list_page.html', '0', null, null, null, 'article', '1', '0', '0', '1', '1', '0', null, '', '', null, '', '0', '0', '1', '1', '0', null);
INSERT INTO `rbt_b_category` VALUES ('16', '1', '我们团队', 'our team', null, null, '', '', '', '', '', 'team', '0', '0', '0', '0', '0', '0', '0', '', '', '', 'article', '1', '0', '0', '1', '1', null, '', null, null, '', null, '0', '0', '0', '1', '0', '');
INSERT INTO `rbt_b_category` VALUES ('2', '0', '新闻中心', 'LET SHARE VALUE RECORD ENTERPRISE DEVELOPMENT STEPS', '', '5', '/upload/images/201506/xinwen.jpg', null, null, '让价值共享 记录企业发展脚步', '<p>新闻，是指报纸、电台、电视台、互联网经常使用的记录社会、传播信息、反映时代的一种文体。新闻概念有广义与狭义之分。就其广义而言，除了发表于报刊、广播、电视上的评论与专文外的常用文本都属于新闻之列，包括消息、通讯、特写、速写有的将速写纳入特写之列等等；狭义的新闻则专指消息，消息是用概括的叙述方式，比较简明扼要的文字，迅速及时地报道国内外新近发生的、有价值的的事实。陆定一提出的，&amp;ldquo;新闻的定义，就是新近发生事实的报道。&amp;rdquo;范长江也对新闻下了一个定义，&amp;ldquo;新闻就是广大群众欲知应知而未知的重要事实&amp;rdquo;。</p>', 'news', 'archive/list_text.html', 'archive/list_text.html', '0', '0', 'archive/list_text.html', 'archive/list_text.html', '0', null, null, null, 'article', '1', '0', '0', '1', '1', '0', null, '', '', null, '', '0', '0', '1', '1', '0', null);
INSERT INTO `rbt_b_category` VALUES ('3', '0', '产品中心', 'FOCUS ON WEB DESIGN BRAND POSITIONING HELP YOU REALIZE THE VALUE OF INTERNET BRAND', '', '1', '/upload/images/201506/chanpin.jpg', null, null, '专注高端 精准定位 用心服务 帮您实现品牌价值', '<p>产品是指能够提供给市场，被人们使用和消费，并能满足人们某种需求的任何东西，包括有形的物品、无形的服务、组织、观念或它们的组合。产品一般可以分为三个层次，即核心产品、形式产品、延伸产品。核心产品是指整体产品提供给购买者的直接利益和效用；形式产品是指产品在市场上出现的物质实体外形，包括产品的品质、特征、造型、商标和包装等；延伸产品是指整体产品提供给顾客的一系列附加利益，包括运送、安装、维修、保证等在消费领域给予消费者的好处。</p>', 'products', 'archive/list_pic.html', 'archive/list_pic.html', 'archive/show_products.html', '0', 'archive/list_pic.html', 'archive/list_pic.html', '0', null, null, null, 'article', '1', '0', '0', '1', '0', '0', null, '', '', null, '', '0', '0', '1', '1', '0', null);
INSERT INTO `rbt_b_category` VALUES ('4', '1', '企业文化', 'corporate culture', '', '0', '/upload/images/201506/wenhua.jpg', '', '', '', '<p>企业文化，或称组织文化（Corporate Culture或Organizational Culture），是一个组织由其价值观、信念、仪式、符号、处事方式等组成的其特有的文化形象。</p><div>职工文化，也称企业职工文化，是与企业文化相对应的文化形态，职工文化以职工为本，是一种素质文化，企业文化以企业为本，是一种管理文化。[1]&nbsp;<p>企业文化是在一定的条件下，企业生产经营和管理活动中所创造的具有该企业特色的精神财富和物质形态。它包括文化观念、价值观念、企业精神、道德规范、行为准则、历史传统、企业制度、文化环境、企业产品等。其中价值观是企业文化的核心。</p><p>企业文化是企业的灵魂，是推动企业发展的不竭动力。它包含着非常丰富的内容，其核心是企业的精神和价值观。这里的价值观不是泛指企业管理中的各种文化现象，而是企业或企业中的员工在从事商品生产与经营中所持有的价值观念。</p></div>', 'culture', 'archive/list_page.html', 'archive/list_page.html', '0', '0', '0', '0', '0', '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '1', '1', '0', '');
INSERT INTO `rbt_b_category` VALUES ('5', '0', '联系我们', null, '', '6', '/cmseasy/upload/images/201712/15127136565774.jpg', null, null, null, '<p>如果你想拥有一份自由有趣的工作，如果你对界面设计拥有一份热情和动力，那么请与我们联系。在这里你能发现一群志同道合的年轻人，并为了实践理想而努力！</p><p>我们的团队为自己的理想奋斗，我们互补性强，分工明确，目标一致，我们艰苦奋斗，坚持不辍！因为我们坚信，一个好的理念和一个优秀的团队势必会成就一个远大的理想！<br/>&nbsp;</p><p>联系我们：<br/>售前咨询客服QQ-01：<br/>售前咨询客服QQ-02：<br/>客户售前咨询热线：<br/>客户售后服务热线：<br/>客服信箱：</p><p>&nbsp;</p><p>&nbsp;</p>', 'contact', 'archive/list_ditu.html', 'archive/list_page.html', '0', '0', 'archive/list_page.html', 'archive/list_page.html', '0', null, null, null, 'article', '1', '0', '0', '1', '1', '0', null, '', '', null, '', '0', '0', '1', '1', '0', null);
INSERT INTO `rbt_b_category` VALUES ('6', '3', '文档下载', null, '', '0', null, null, null, null, null, 'download', 'archive/list_down.html', 'archive/list_down.html', 'archive/show_down.html', '0', 'archive/list_down.html', 'archive/list_down.html', 'archive/show_down.html', null, null, null, 'article', '1', '0', '0', '1', '1', '0', null, '', '', null, '', '0', '0', '1', '1', '0', null);
INSERT INTO `rbt_b_category` VALUES ('7', '1', '职位招聘', 'Recruiting talents', '', '0', '/upload/images/201506/zhaopin.jpg', '', '', 'Have the energy have the dream, have the grade, the creative team', '', 'job', 'archive/list_job.html', 'archive/list_job.html', 'archive/show_job.html', '0', 'archive/list_job.html', 'archive/list_job.html', 'archive/show_job.html', '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '1', '1', '0', '');
INSERT INTO `rbt_b_category` VALUES ('8', '3', '产品运营', '', '', '0', '', '', '', '', '', 'operate', 'archive/list_pic.html', 'archive/list_pic.html', 'archive/show_products.html', '0', '', '', '', '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '1', '1', '0', '');
INSERT INTO `rbt_b_category` VALUES ('9', '2', '公司动态', '', '', '0', '/upload/images/201506/dongtai.jpg', '', '', '', '', 'dynamics', 'archive/list_text_pic.html', 'archive/list_text_pic.html', 'archive/show.html', '0', '0', '0', '0', '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '1', '1', '0', '');
INSERT INTO `rbt_b_category` VALUES ('10', '3', '产品设计', '', '', '0', '', '', '', '', '', 'design', 'archive/list_pic.html', 'archive/list_pic.html', 'archive/show_products.html', '0', '', '', '', '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '1', '1', '0', '');
INSERT INTO `rbt_b_category` VALUES ('11', '1', '公司荣誉', 'Company honor', '', '0', '/upload/images/201506/rongyu.jpg', '', '', '', '<p>企业荣誉指企业获得的来自社会和公众的奖项与赞许。包括政府组织机构评选颁发的各类奖项、媒体和市场研究机构的奖项、公众通过正式和非正式渠道对企业的赞许表达。企业荣誉是品牌口碑的重要表现形式，对品牌的最终影响程序还取决于品牌对企业荣誉的宣传程序、媒体参与度、公众认可度等。企业荣誉是可测量的品牌口碑指标。</p>', 'honor', 'archive/list_pic.html', 'archive/list_pic.html', 'archive/show_products.html', '0', '0', '0', '0', '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '1', '1', '0', '');
INSERT INTO `rbt_b_category` VALUES ('12', '1', '发展历程', 'Company development process', '', '0', '/upload/images/201506/gushi.jpg', '', '', '', '<p>流程管理（process management），是一种以规范化的构造端到端的卓越业务流程为中心，以持续的提高组织业务绩效为目的的系统化方法，常见商业管理教育如EMBA、MBA及CEO必读12篇等均对&ldquo;流程管理&rdquo;有所介绍，有时也被称为BPM业务流程管理。它应该是一个操作性的定位描述，指的是流程分析、流程定义与重定义、资源分配、时间安排、流程质量与效率测评、流程优化等。因为流程管理是为了客户需求而设计的，因而这种流程会随着内外环境的变化而需要被优化。</p>', 'history', 'archive/list_history.html', 'archive/list_page.html', 'archive/show.html', '0', '0', '0', '0', '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '1', '1', '0', '');
INSERT INTO `rbt_b_category` VALUES ('13', '2', '行业新闻', '', '', '0', '/upload/images/201506/hangye.jpg', '', '', '', '', 'honor', 'archive/list_text.html', 'archive/list_text.html', 'archive/show.html', '0', '0', '0', '0', '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0', '1', '1', '0', '');
INSERT INTO `rbt_b_category` VALUES ('14', '0', '解决方案', 'HAS BEEN FULL OF ENTHUSIASM TO MEET UNDERSTAND DESIGN YOU!', '', '2', '/upload/images/201506/anli.jpg', null, null, '有活力、有梦想、有品位、有创意，与一般团队有独特区别的年轻队伍', '<p>方案是计划中内容最为复杂的一种。由于一些具有某种职能的具体工作比较复杂，不作全面部署不足以说明问题，因而公文内容构成势必要繁琐一些，一般有指导思想、主要目标、工作重点、实施步骤、政策措施、具体要求等项目。</p>', 'case', 'archive/list_text_pic.html', 'archive/list_text_pic.html', '0', '0', 'archive/list_text_pic.html', 'archive/list_text_pic.html', '0', null, null, null, 'article', '1', '0', '0', '1', '1', '0', null, '', '', null, '', '0', '0', '1', '1', '0', null);
INSERT INTO `rbt_b_category` VALUES ('15', '0', '下载中心', null, null, '3', null, null, null, null, null, 'download', '0', '0', '0', '0', 'archive/list_pic.html', 'archive/list_pic.html', 'archive/show_pic.html', null, null, null, 'article', '1', '0', '0', '1', '1', null, null, null, null, null, null, '0', '0', '1', '1', '0', null);

-- ----------------------------
-- Table structure for rbt_b_special
-- ----------------------------
DROP TABLE IF EXISTS `rbt_b_special`;
CREATE TABLE `rbt_b_special` (
  `spid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT '',
  `banner` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `template` varchar(30) NOT NULL,
  `adddate` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `order` int(6) DEFAULT NULL,
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`spid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_b_special
-- ----------------------------
INSERT INTO `rbt_b_special` VALUES ('1', '6周年纪念，感恩大促销活动！', '', '/upload/images/201607/special.jpg', '<p>&nbsp;</p>\r\n<p>\r\n<p><span style=\"color: rgb(255, 0, 0); \"><strong>让您的产品，在互联网上普通盖地！</strong></span></p>\r\n<p><span style=\"color: rgb(0, 0, 255); \">想让更多的客户找到您吗？</span></p>\r\n<p><strong>易通企业网站系统独创企业推广链联盟系统</strong></p>\r\n<p>通过推广链接，让客户和生意自己找上门！</p>\r\n<p>为您的企业营销助力，伴您轻松成功！</p>\r\n<p>易通企业网站系统让您客源不断、生意兴隆！</p>\r\n<p>&nbsp;</p>\r\n</p>\r\n', '', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for rbt_b_tag
-- ----------------------------
DROP TABLE IF EXISTS `rbt_b_tag`;
CREATE TABLE `rbt_b_tag` (
  `tagid` int(11) NOT NULL AUTO_INCREMENT,
  `tagname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tagid` (`tagid`),
  UNIQUE KEY `tagname` (`tagname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_b_tag
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_event
-- ----------------------------
DROP TABLE IF EXISTS `rbt_event`;
CREATE TABLE `rbt_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `event` varchar(30) DEFAULT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user` (`uid`,`username`,`ip`),
  KEY `time` (`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_event
-- ----------------------------
INSERT INTO `rbt_event` VALUES ('1', '1', 'admin', '10.200.2.43', '1512350321', '后台登录', '成功');
INSERT INTO `rbt_event` VALUES ('2', '1', 'admin', '10.200.2.43', '1512609793', '后台登录', '成功');
INSERT INTO `rbt_event` VALUES ('3', '1', 'admin', '10.200.2.43', '1512609801', '修改网站配置', '成功');
INSERT INTO `rbt_event` VALUES ('4', '1', 'admin', '10.200.2.43', '1512609949', '修改网站配置', '成功');
INSERT INTO `rbt_event` VALUES ('5', '1', 'admin', '10.200.2.43', '1512610009', '修改网站配置', '成功');
INSERT INTO `rbt_event` VALUES ('6', '1', 'admin', '10.200.2.43', '1512610040', '修改网站配置', '成功');
INSERT INTO `rbt_event` VALUES ('7', '1', 'admin', '10.200.2.43', '1512628899', '修改模板标签', '成功');
INSERT INTO `rbt_event` VALUES ('8', '1', 'admin', '10.200.2.43', '1512628920', '修改模板标签', '成功');
INSERT INTO `rbt_event` VALUES ('9', '1', 'admin', '10.200.2.43', '1512628939', '修改模板标签', '成功');
INSERT INTO `rbt_event` VALUES ('10', '1', 'admin', '10.200.2.43', '1512629163', '修改内容', '成功');
INSERT INTO `rbt_event` VALUES ('11', '1', 'admin', '10.200.2.43', '1512629252', '修改内容', '成功');
INSERT INTO `rbt_event` VALUES ('12', '1', 'admin', '10.200.2.43', '1512629303', '修改内容', '成功');
INSERT INTO `rbt_event` VALUES ('13', '1', 'admin', '10.200.2.43', '1512629337', '修改内容', '成功');
INSERT INTO `rbt_event` VALUES ('14', '1', 'admin', '10.200.2.43', '1512632690', '修改栏目', '成功');
INSERT INTO `rbt_event` VALUES ('15', '1', 'admin', '10.200.2.43', '1512633057', '修改栏目', '成功');
INSERT INTO `rbt_event` VALUES ('16', '1', 'admin', '10.200.2.43', '1512633247', '修改栏目', '成功');
INSERT INTO `rbt_event` VALUES ('17', '1', 'admin', '10.200.2.43', '1512633267', '修改栏目', '成功');
INSERT INTO `rbt_event` VALUES ('18', '1', 'admin', '10.200.2.43', '1512633334', '修改栏目', '成功');
INSERT INTO `rbt_event` VALUES ('19', '1', 'admin', '10.200.2.43', '1512634631', '修改栏目', '成功');
INSERT INTO `rbt_event` VALUES ('20', '1', 'admin', '10.200.2.43', '1512634776', '修改模板标签', '成功');
INSERT INTO `rbt_event` VALUES ('21', '1', 'admin', '10.200.2.43', '1512636992', '修改内容', '成功');
INSERT INTO `rbt_event` VALUES ('22', '1', 'admin', '10.200.2.101', '1512696120', '后台登录', '成功');
INSERT INTO `rbt_event` VALUES ('23', '1', 'admin', '10.200.2.101', '1512698888', '添加模板标签', '成功');
INSERT INTO `rbt_event` VALUES ('24', '1', 'admin', '10.200.2.101', '1512699008', '修改内容', '成功');
INSERT INTO `rbt_event` VALUES ('25', '1', 'admin', '10.200.2.101', '1512699162', '修改内容', '成功');
INSERT INTO `rbt_event` VALUES ('26', '1', 'admin', '10.200.2.101', '1512699198', '修改内容', '成功');
INSERT INTO `rbt_event` VALUES ('27', '1', 'admin', '10.200.2.101', '1512699229', '修改内容', '成功');
INSERT INTO `rbt_event` VALUES ('28', '1', 'admin', '10.200.2.101', '1512699569', '修改网站配置', '成功');
INSERT INTO `rbt_event` VALUES ('29', '1', 'admin', '10.200.2.101', '1512702966', '删除模板标签', '成功 id=3,4,7,10,12,13,14,15,16,18,21,22,23,25,28');
INSERT INTO `rbt_event` VALUES ('30', '1', 'admin', '10.200.2.101', '1512702981', '删除模板标签', '成功 id=8,9,17,19,20,24,27');
INSERT INTO `rbt_event` VALUES ('31', '1', 'admin', '10.200.2.101', '1512703128', '添加模板标签', '成功');
INSERT INTO `rbt_event` VALUES ('32', '1', 'admin', '10.200.2.101', '1512703334', '修改模板标签', '成功');
INSERT INTO `rbt_event` VALUES ('33', '1', 'admin', '10.200.2.101', '1512703592', '修改栏目', '成功');
INSERT INTO `rbt_event` VALUES ('34', '1', 'admin', '10.200.2.101', '1512713596', '添加模板标签', '成功');
INSERT INTO `rbt_event` VALUES ('35', '1', 'admin', '10.200.2.101', '1512713669', '修改栏目', '成功');
INSERT INTO `rbt_event` VALUES ('36', '1', 'admin', '10.200.2.101', '1512713837', '修改模板标签', '成功');
INSERT INTO `rbt_event` VALUES ('37', '1', 'admin', '10.200.2.101', '1512713952', '修改模板标签', '成功');
INSERT INTO `rbt_event` VALUES ('38', '1', 'admin', '10.200.2.101', '1512714372', '修改网站配置', '成功');
INSERT INTO `rbt_event` VALUES ('39', '1', 'admin', '10.200.2.101', '1512715377', '修改网站配置', '成功');
INSERT INTO `rbt_event` VALUES ('40', '1', 'admin', '10.200.2.101', '1512715602', '修改网站配置', '成功');
INSERT INTO `rbt_event` VALUES ('41', '1', 'admin', '10.200.2.101', '1512715638', '修改网站配置', '成功');
INSERT INTO `rbt_event` VALUES ('42', '1', 'admin', '10.200.2.101', '1512715703', '修改网站配置', '成功');
INSERT INTO `rbt_event` VALUES ('43', '1', 'admin', '10.200.2.101', '1512717386', '添加内容', '成功');
INSERT INTO `rbt_event` VALUES ('44', '1', 'admin', '10.200.2.101', '1512717473', '添加内容', '成功');
INSERT INTO `rbt_event` VALUES ('45', '1', 'admin', '10.200.2.101', '1512717487', '修改内容', '成功');
INSERT INTO `rbt_event` VALUES ('46', '1', 'admin', '10.200.2.101', '1512717514', '添加内容', '成功');
INSERT INTO `rbt_event` VALUES ('47', '1', 'admin', '10.200.2.101', '1512717618', '添加模板标签', '成功');
INSERT INTO `rbt_event` VALUES ('48', '1', 'admin', '10.200.2.101', '1512717636', '修改模板标签', '成功');
INSERT INTO `rbt_event` VALUES ('49', '1', 'admin', '10.200.2.101', '1512717672', '修改模板标签', '成功');
INSERT INTO `rbt_event` VALUES ('50', '1', 'admin', '10.200.2.101', '1512719200', '修改网站配置', '成功');
INSERT INTO `rbt_event` VALUES ('51', '1', 'admin', '10.200.2.101', '1512719551', '修改语言包', '成功');
INSERT INTO `rbt_event` VALUES ('52', '1', 'admin', '10.200.2.101', '1512719647', '添加语言包', '成功');
INSERT INTO `rbt_event` VALUES ('53', '1', 'admin', '10.200.2.101', '1512719679', '修改语言包', '成功');
INSERT INTO `rbt_event` VALUES ('54', '1', 'admin', '10.200.2.101', '1512719688', '修改语言包', '成功');
INSERT INTO `rbt_event` VALUES ('55', '1', 'admin', '10.200.2.101', '1512719703', '修改语言包', '成功');
INSERT INTO `rbt_event` VALUES ('56', '1', 'admin', '10.200.2.101', '1512719738', '添加语言包', '成功');
INSERT INTO `rbt_event` VALUES ('57', '1', 'admin', '10.200.2.101', '1512719752', '修改语言包', '成功');
INSERT INTO `rbt_event` VALUES ('58', '1', 'admin', '10.200.2.101', '1512722573', '修改语言包', '成功');
INSERT INTO `rbt_event` VALUES ('59', '1', 'admin', '10.200.2.101', '1512723700', '修改栏目', '成功');
INSERT INTO `rbt_event` VALUES ('60', '1', 'admin', '10.200.2.101', '1512723716', '修改栏目', '成功');
INSERT INTO `rbt_event` VALUES ('61', '1', 'admin', '10.200.2.101', '1512723904', '修改栏目', '成功');
INSERT INTO `rbt_event` VALUES ('62', '1', 'admin', '10.200.2.101', '1512723968', '修改栏目', '成功');
INSERT INTO `rbt_event` VALUES ('63', '1', 'admin', '10.200.2.101', '1512723983', '修改栏目', '成功');
INSERT INTO `rbt_event` VALUES ('64', '1', 'admin', '10.200.2.101', '1512724039', '修改内容', '成功');

-- ----------------------------
-- Table structure for rbt_friendlink
-- ----------------------------
DROP TABLE IF EXISTS `rbt_friendlink`;
CREATE TABLE `rbt_friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linktype` tinyint(2) DEFAULT NULL,
  `typeid` tinyint(2) DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `listorder` int(11) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `introduce` text,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `adddate` datetime DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `state` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_friendlink
-- ----------------------------
INSERT INTO `rbt_friendlink` VALUES ('1', '2', '0', '易通免费企业CMS', '0', 'http://www.cmseasy.cn', 'http://www.cmseasy.cn/logo.gif', '', '0', 'admin', '2009-11-12 13:14:37', '0', '1');
INSERT INTO `rbt_friendlink` VALUES ('2', '1', '0', 'CmsEasy论坛', '0', 'http://www.cmseasy.org', '', '', '0', 'admin', '2009-11-12 13:15:00', '2', '1');
INSERT INTO `rbt_friendlink` VALUES ('3', '1', '0', '九州易通科技有限公司', '0', 'http://www.cmseasy.net', '', '', '0', 'admin', '2009-11-12 13:28:53', '2', '1');

-- ----------------------------
-- Table structure for rbt_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `rbt_guestbook`;
CREATE TABLE `rbt_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL,
  `adddate` datetime NOT NULL,
  `state` tinyint(2) DEFAULT '1',
  `guesttel` varchar(50) NOT NULL,
  `guestemail` varchar(255) NOT NULL,
  `guestqq` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `reply` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_invite
-- ----------------------------
DROP TABLE IF EXISTS `rbt_invite`;
CREATE TABLE `rbt_invite` (
  `inviteid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `invitecode` varchar(255) DEFAULT NULL,
  `ctuid` int(11) unsigned DEFAULT NULL,
  `ctname` varchar(255) DEFAULT NULL,
  `reguid` int(11) DEFAULT NULL,
  `cttime` datetime DEFAULT NULL,
  `regtime` datetime DEFAULT NULL,
  `isuse` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`inviteid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_invite
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_linkword
-- ----------------------------
DROP TABLE IF EXISTS `rbt_linkword`;
CREATE TABLE `rbt_linkword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkword` varchar(255) NOT NULL,
  `linkurl` varchar(255) DEFAULT NULL,
  `linkorder` int(11) DEFAULT NULL,
  `linktimes` int(3) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `word` (`linkword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_linkword
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_my_yingpin
-- ----------------------------
DROP TABLE IF EXISTS `rbt_my_yingpin`;
CREATE TABLE `rbt_my_yingpin` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `adddate` datetime DEFAULT NULL,
  `view` int(11) DEFAULT '0',
  `state` tinyint(2) DEFAULT '1',
  `checked` tinyint(2) DEFAULT '0',
  `ip` varchar(20) DEFAULT NULL,
  `my_xingming` varchar(100) DEFAULT NULL,
  `my_xingbie` varchar(10) DEFAULT NULL,
  `my_nianliang` varchar(100) DEFAULT NULL,
  `my_minzu` varchar(100) DEFAULT NULL,
  `my_shengao` varchar(100) DEFAULT NULL,
  `my_shenfenzheng` varchar(100) DEFAULT NULL,
  `my_jiguan` varchar(100) DEFAULT NULL,
  `my_xueli` varchar(10) DEFAULT NULL,
  `my_zanzhudizhi` varchar(100) DEFAULT NULL,
  `my_zhuanye` varchar(100) DEFAULT NULL,
  `my_biyeshijian` datetime DEFAULT NULL,
  `my_biyeyuanxiao` varchar(100) DEFAULT NULL,
  `my_waiyujibie` varchar(10) DEFAULT NULL,
  `my_jisuanji` varchar(10) DEFAULT NULL,
  `my_zhuanyetechang` varchar(100) DEFAULT NULL,
  `my_zhicheng` varchar(100) DEFAULT NULL,
  `my_daiyu` text,
  `my_lianxidianhua` varchar(100) DEFAULT NULL,
  `my_shouji` varchar(100) DEFAULT NULL,
  `my_email` varchar(100) DEFAULT NULL,
  `my_xuexijingli` text,
  `my_gongzuojingli` text,
  `my_gerenjianli` text,
  PRIMARY KEY (`fid`),
  UNIQUE KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_my_yingpin
-- ----------------------------
INSERT INTO `rbt_my_yingpin` VALUES ('1', '0', '', '0', '2011-11-11 16:11:04', '0', '1', '0', '127.0.0.1', 'a', '1', 'a', 'a', 'a', 'a', 'a', '1', 'a', 'a', '0000-00-00 00:00:00', 'a', '1', '', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a');
INSERT INTO `rbt_my_yingpin` VALUES ('2', '0', '', '0', '2011-11-11 16:11:13', '0', '1', '0', '127.0.0.1', 'a', '1', 'a', 'a', 'a', 'a', 'a', '1', 'a', 'a', '0000-00-00 00:00:00', 'a', '1', '3', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a');
INSERT INTO `rbt_my_yingpin` VALUES ('3', '0', '', '0', '2011-11-11 16:11:49', '0', '1', '0', '127.0.0.1', 'a', '1', 'a', 'a', 'a', 'a', 'a', '1', 'a', 'a', '0000-00-00 00:00:00', 'a', '1', '3', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a');
INSERT INTO `rbt_my_yingpin` VALUES ('4', '0', '', '0', '2011-11-11 16:12:12', '0', '1', '0', '127.0.0.1', 'a', '1', 'a', 'a', 'a', 'a', 'a', '1', 'a', 'a', '0000-00-00 00:00:00', 'a', '1', '3', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a');
INSERT INTO `rbt_my_yingpin` VALUES ('5', '0', '', '0', '2011-11-11 16:12:41', '0', '1', '0', '127.0.0.1', 'a', '1', 'a', 'a', 'a', 'a', 'a', '1', 'a', 'a', '0000-00-00 00:00:00', 'a', '1', '1', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a');
INSERT INTO `rbt_my_yingpin` VALUES ('6', '0', '', '0', '2011-11-11 16:13:47', '0', '1', '0', '127.0.0.1', 'a', '1', 'a', 'a', 'a', 'a', 'a', '1', 'a', 'a', '2011-11-11 00:00:00', 'a', '1', '1', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a');
INSERT INTO `rbt_my_yingpin` VALUES ('7', '0', '', '0', '2011-11-11 16:15:05', '0', '1', '0', '127.0.0.1', 'a', '1', 'a', 'a', 'a', 'a', 'a', '1', 'a', 'a', '2011-11-11 00:00:00', 'a', '1', '1', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a');
INSERT INTO `rbt_my_yingpin` VALUES ('8', '0', '', '0', '2011-11-12 11:33:07', '0', '1', '0', '127.0.0.1', 'a', '1', 'a', 'a', 'a', 'a', 'a', '1', 'a', 'a', '0000-00-00 00:00:00', 'a', '1', '1', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a');

-- ----------------------------
-- Table structure for rbt_option
-- ----------------------------
DROP TABLE IF EXISTS `rbt_option`;
CREATE TABLE `rbt_option` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `num` int(11) unsigned NOT NULL DEFAULT '0',
  `order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_option
-- ----------------------------
INSERT INTO `rbt_option` VALUES ('1', '1', '增强用户体验', '1', '0');
INSERT INTO `rbt_option` VALUES ('2', '1', '结构更加合理', '1', '0');
INSERT INTO `rbt_option` VALUES ('3', '1', '新产品新思路的融入', '1', '0');
INSERT INTO `rbt_option` VALUES ('4', '1', '解觉存在的BUG', '0', '0');
INSERT INTO `rbt_option` VALUES ('5', '1', '增加网民新鲜感', '0', '0');

-- ----------------------------
-- Table structure for rbt_pay_exchange
-- ----------------------------
DROP TABLE IF EXISTS `rbt_pay_exchange`;
CREATE TABLE `rbt_pay_exchange` (
  `exchangeid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `type` enum('money','point','time','credit') NOT NULL DEFAULT 'money',
  `value` float NOT NULL DEFAULT '0',
  `unit` enum('','y','m','d') NOT NULL DEFAULT '',
  `note` text NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `authid` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`exchangeid`),
  KEY `username` (`username`,`type`),
  KEY `authid` (`authid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_pay_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_p_ologin
-- ----------------------------
DROP TABLE IF EXISTS `rbt_p_ologin`;
CREATE TABLE `rbt_p_ologin` (
  `ologin_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `ologin_code` varchar(20) NOT NULL DEFAULT '',
  `ologin_name` varchar(120) NOT NULL DEFAULT '',
  `ologin_desc` text NOT NULL,
  `ologin_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ologin_id`),
  UNIQUE KEY `ologin_code` (`ologin_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_p_ologin
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_p_orders
-- ----------------------------
DROP TABLE IF EXISTS `rbt_p_orders`;
CREATE TABLE `rbt_p_orders` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `oid` varchar(100) NOT NULL,
  `aid` varchar(50) NOT NULL,
  `status` int(3) NOT NULL DEFAULT '0',
  `mid` int(10) NOT NULL DEFAULT '0',
  `adddate` int(10) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `telphone` varchar(50) NOT NULL,
  `pnums` varchar(50) NOT NULL DEFAULT '0',
  `pname` char(80) NOT NULL,
  `address` varchar(200) NOT NULL,
  `postcode` char(20) NOT NULL,
  `content` text NOT NULL,
  `courier_number` varchar(100) NOT NULL,
  `s_status` tinyint(1) NOT NULL DEFAULT '0',
  `trade_no` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`,`mid`),
  KEY `adddate` (`adddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_p_orders
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_p_pay
-- ----------------------------
DROP TABLE IF EXISTS `rbt_p_pay`;
CREATE TABLE `rbt_p_pay` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_p_pay
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_p_shipping
-- ----------------------------
DROP TABLE IF EXISTS `rbt_p_shipping`;
CREATE TABLE `rbt_p_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `overweight` int(10) NOT NULL,
  `cashondelivery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `insure` tinyint(1) NOT NULL DEFAULT '0',
  `insureproportion` smallint(6) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_p_shipping
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_sessionox
-- ----------------------------
DROP TABLE IF EXISTS `rbt_sessionox`;
CREATE TABLE `rbt_sessionox` (
  `PHPSESSID` varchar(50) NOT NULL,
  `update_time` int(10) NOT NULL,
  `client_ip` varchar(15) NOT NULL,
  `data` text,
  PRIMARY KEY (`PHPSESSID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_sessionox
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_settings
-- ----------------------------
DROP TABLE IF EXISTS `rbt_settings`;
CREATE TABLE `rbt_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `tag` varchar(30) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `array` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_settings
-- ----------------------------
INSERT INTO `rbt_settings` VALUES ('54', '', 'table-archive', 'a:1:{s:5:\"attr1\";s:96:\"(0)无 \r\n(1)推荐位一 \r\n(2)推荐位二 \r\n(3)推荐位三 \r\n(4)推荐位四 \r\n(5)推荐位五\";}', 'array (\n  \'attr1\' => \'(0)无 \r\n(1)推荐位一 \r\n(2)推荐位二 \r\n(3)推荐位三 \r\n(4)推荐位四 \r\n(5)推荐位五\',\n)');
INSERT INTO `rbt_settings` VALUES ('53', '', 'table-fieldset', 'a:3:{s:7:\"archive\";a:12:{s:7:\"my_size\";a:9:{s:4:\"name\";s:7:\"my_size\";s:5:\"cname\";s:12:\"文档大小\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"6\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:15:\"my_zhaopinbumen\";a:9:{s:4:\"name\";s:15:\"my_zhaopinbumen\";s:5:\"cname\";s:12:\"招聘部门\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:10:\"my_jobtype\";a:9:{s:4:\"name\";s:10:\"my_jobtype\";s:5:\"cname\";s:12:\"职位类型\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:20:\"(1)全职\r\n(2)兼职\";s:8:\"filetype\";N;}s:11:\"my_jobtitle\";a:9:{s:4:\"name\";s:11:\"my_jobtitle\";s:5:\"cname\";s:12:\"职称要求\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:12:\"my_jobnumber\";a:9:{s:4:\"name\";s:12:\"my_jobnumber\";s:5:\"cname\";s:12:\"招聘人数\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:12:\"my_jobgender\";a:9:{s:4:\"name\";s:12:\"my_jobgender\";s:5:\"cname\";s:12:\"性别要求\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:5:\"radio\";s:6:\"select\";s:25:\"(1)男\r\n(2)女\r\n(3)不限\";s:8:\"filetype\";N;}s:10:\"my_jobwork\";a:9:{s:4:\"name\";s:10:\"my_jobwork\";s:5:\"cname\";s:18:\"工作经验要求\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:14:\"my_jobacademic\";a:9:{s:4:\"name\";s:14:\"my_jobacademic\";s:5:\"cname\";s:12:\"学历要求\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:86:\"(1)初中以上\r\n(2)高中以上\r\n(3)专科以上\r\n(4)大专以上\r\n(5)研究生以上\";s:8:\"filetype\";N;}s:9:\"my_jobage\";a:9:{s:4:\"name\";s:9:\"my_jobage\";s:5:\"cname\";s:12:\"年龄要求\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:15:\"my_jobworkareas\";a:9:{s:4:\"name\";s:15:\"my_jobworkareas\";s:5:\"cname\";s:12:\"工作地区\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:18:\"my_jobrequirements\";a:9:{s:4:\"name\";s:18:\"my_jobrequirements\";s:5:\"cname\";s:15:\"要求与待遇\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:14:\"my_contactname\";a:9:{s:4:\"name\";s:14:\"my_contactname\";s:5:\"cname\";s:15:\"联系人姓名\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}}s:10:\"my_yingpin\";a:24:{s:6:\"myform\";a:3:{s:5:\"cname\";s:6:\"应聘\";s:4:\"name\";s:10:\"my_yingpin\";s:8:\"template\";s:18:\"myform/myform.html\";}s:11:\"my_xingming\";a:10:{s:4:\"name\";s:11:\"my_xingming\";s:5:\"cname\";s:6:\"姓名\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:10:\"my_xingbie\";a:10:{s:4:\"name\";s:10:\"my_xingbie\";s:5:\"cname\";s:6:\"性别\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:14:\"(1)男\r\n(2)女\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:12:\"my_nianliang\";a:10:{s:4:\"name\";s:12:\"my_nianliang\";s:5:\"cname\";s:6:\"年龄\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:8:\"my_minzu\";a:10:{s:4:\"name\";s:8:\"my_minzu\";s:5:\"cname\";s:6:\"民族\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:10:\"my_shengao\";a:10:{s:4:\"name\";s:10:\"my_shengao\";s:5:\"cname\";s:6:\"身高\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:15:\"my_shenfenzheng\";a:8:{s:4:\"name\";s:15:\"my_shenfenzheng\";s:5:\"cname\";s:12:\"身份证号\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:9:\"my_jiguan\";a:10:{s:4:\"name\";s:9:\"my_jiguan\";s:5:\"cname\";s:6:\"籍贯\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:8:\"my_xueli\";a:10:{s:4:\"name\";s:8:\"my_xueli\";s:5:\"cname\";s:6:\"学历\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:62:\"(1)初中\r\n(2)高中\r\n(3)专科\r\n(4)大专\r\n(5)研究生以上\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:14:\"my_zanzhudizhi\";a:8:{s:4:\"name\";s:14:\"my_zanzhudizhi\";s:5:\"cname\";s:12:\"暂住地址\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:10:\"my_zhuanye\";a:10:{s:4:\"name\";s:10:\"my_zhuanye\";s:5:\"cname\";s:6:\"专业\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:14:\"my_biyeshijian\";a:8:{s:4:\"name\";s:14:\"my_biyeshijian\";s:5:\"cname\";s:12:\"毕业时间\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:8:\"datetime\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:15:\"my_biyeyuanxiao\";a:8:{s:4:\"name\";s:15:\"my_biyeyuanxiao\";s:5:\"cname\";s:12:\"毕业院校\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:13:\"my_waiyujibie\";a:8:{s:4:\"name\";s:13:\"my_waiyujibie\";s:5:\"cname\";s:12:\"外语水平\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:69:\"(1)三级\r\n(2)四级\r\n(3)六级\r\n(4)专业四级\r\n(5)专业八级\r\n\r\n\";s:8:\"filetype\";N;}s:11:\"my_jisuanji\";a:10:{s:4:\"name\";s:11:\"my_jisuanji\";s:5:\"cname\";s:15:\"计算机能力\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:52:\"(1)差\r\n(2)一般\r\n(3)良好\r\n(4)很好\r\n(5)精通  \";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:17:\"my_zhuanyetechang\";a:8:{s:4:\"name\";s:17:\"my_zhuanyetechang\";s:5:\"cname\";s:12:\"专业特长\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:11:\"my_zhicheng\";a:10:{s:4:\"name\";s:11:\"my_zhicheng\";s:5:\"cname\";s:6:\"职称\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:8:\"my_daiyu\";a:8:{s:4:\"name\";s:8:\"my_daiyu\";s:5:\"cname\";s:12:\"待遇要求\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:16:\"my_lianxidianhua\";a:8:{s:4:\"name\";s:16:\"my_lianxidianhua\";s:5:\"cname\";s:12:\"联系电话\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:9:\"my_shouji\";a:10:{s:4:\"name\";s:9:\"my_shouji\";s:5:\"cname\";s:6:\"手机\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:8:\"my_email\";a:8:{s:4:\"name\";s:8:\"my_email\";s:5:\"cname\";s:12:\"电子邮箱\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:14:\"my_xuexijingli\";a:8:{s:4:\"name\";s:14:\"my_xuexijingli\";s:5:\"cname\";s:12:\"学习经历\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:16:\"my_gongzuojingli\";a:8:{s:4:\"name\";s:16:\"my_gongzuojingli\";s:5:\"cname\";s:12:\"工作经历\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:14:\"my_gerenjianli\";a:8:{s:4:\"name\";s:14:\"my_gerenjianli\";s:5:\"cname\";s:12:\"个人简历\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}}s:4:\"my_a\";a:2:{s:6:\"myform\";a:3:{s:5:\"cname\";s:2:\"aa\";s:4:\"name\";s:4:\"my_a\";s:8:\"template\";s:18:\"myform/myform.html\";}s:6:\"my_aaa\";a:8:{s:4:\"name\";s:6:\"my_aaa\";s:5:\"cname\";s:1:\"a\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}}}', 'array (\n  \'archive\' => \n  array (\n    \'my_size\' => \n    array (\n      \'name\' => \'my_size\',\n      \'cname\' => \'文档大小\',\n      \'tips\' => \'\',\n      \'catid\' => \'6\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_zhaopinbumen\' => \n    array (\n      \'name\' => \'my_zhaopinbumen\',\n      \'cname\' => \'招聘部门\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobtype\' => \n    array (\n      \'name\' => \'my_jobtype\',\n      \'cname\' => \'职位类型\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)全职\r\n(2)兼职\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobtitle\' => \n    array (\n      \'name\' => \'my_jobtitle\',\n      \'cname\' => \'职称要求\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobnumber\' => \n    array (\n      \'name\' => \'my_jobnumber\',\n      \'cname\' => \'招聘人数\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobgender\' => \n    array (\n      \'name\' => \'my_jobgender\',\n      \'cname\' => \'性别要求\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'radio\',\n      \'select\' => \'(1)男\r\n(2)女\r\n(3)不限\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobwork\' => \n    array (\n      \'name\' => \'my_jobwork\',\n      \'cname\' => \'工作经验要求\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobacademic\' => \n    array (\n      \'name\' => \'my_jobacademic\',\n      \'cname\' => \'学历要求\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)初中以上\r\n(2)高中以上\r\n(3)专科以上\r\n(4)大专以上\r\n(5)研究生以上\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobage\' => \n    array (\n      \'name\' => \'my_jobage\',\n      \'cname\' => \'年龄要求\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobworkareas\' => \n    array (\n      \'name\' => \'my_jobworkareas\',\n      \'cname\' => \'工作地区\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobrequirements\' => \n    array (\n      \'name\' => \'my_jobrequirements\',\n      \'cname\' => \'要求与待遇\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_contactname\' => \n    array (\n      \'name\' => \'my_contactname\',\n      \'cname\' => \'联系人姓名\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n  ),\n  \'my_yingpin\' => \n  array (\n    \'myform\' => \n    array (\n      \'cname\' => \'应聘\',\n      \'name\' => \'my_yingpin\',\n      \'template\' => \'myform/myform.html\',\n    ),\n    \'my_xingming\' => \n    array (\n      \'name\' => \'my_xingming\',\n      \'cname\' => \'姓名\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_xingbie\' => \n    array (\n      \'name\' => \'my_xingbie\',\n      \'cname\' => \'性别\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)男\r\n(2)女\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_nianliang\' => \n    array (\n      \'name\' => \'my_nianliang\',\n      \'cname\' => \'年龄\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_minzu\' => \n    array (\n      \'name\' => \'my_minzu\',\n      \'cname\' => \'民族\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_shengao\' => \n    array (\n      \'name\' => \'my_shengao\',\n      \'cname\' => \'身高\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_shenfenzheng\' => \n    array (\n      \'name\' => \'my_shenfenzheng\',\n      \'cname\' => \'身份证号\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jiguan\' => \n    array (\n      \'name\' => \'my_jiguan\',\n      \'cname\' => \'籍贯\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_xueli\' => \n    array (\n      \'name\' => \'my_xueli\',\n      \'cname\' => \'学历\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)初中\r\n(2)高中\r\n(3)专科\r\n(4)大专\r\n(5)研究生以上\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_zanzhudizhi\' => \n    array (\n      \'name\' => \'my_zanzhudizhi\',\n      \'cname\' => \'暂住地址\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_zhuanye\' => \n    array (\n      \'name\' => \'my_zhuanye\',\n      \'cname\' => \'专业\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_biyeshijian\' => \n    array (\n      \'name\' => \'my_biyeshijian\',\n      \'cname\' => \'毕业时间\',\n      \'tips\' => \'\',\n      \'type\' => \'datetime\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_biyeyuanxiao\' => \n    array (\n      \'name\' => \'my_biyeyuanxiao\',\n      \'cname\' => \'毕业院校\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_waiyujibie\' => \n    array (\n      \'name\' => \'my_waiyujibie\',\n      \'cname\' => \'外语水平\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)三级\r\n(2)四级\r\n(3)六级\r\n(4)专业四级\r\n(5)专业八级\r\n\r\n\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jisuanji\' => \n    array (\n      \'name\' => \'my_jisuanji\',\n      \'cname\' => \'计算机能力\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)差\r\n(2)一般\r\n(3)良好\r\n(4)很好\r\n(5)精通  \',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_zhuanyetechang\' => \n    array (\n      \'name\' => \'my_zhuanyetechang\',\n      \'cname\' => \'专业特长\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_zhicheng\' => \n    array (\n      \'name\' => \'my_zhicheng\',\n      \'cname\' => \'职称\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_daiyu\' => \n    array (\n      \'name\' => \'my_daiyu\',\n      \'cname\' => \'待遇要求\',\n      \'tips\' => \'\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_lianxidianhua\' => \n    array (\n      \'name\' => \'my_lianxidianhua\',\n      \'cname\' => \'联系电话\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_shouji\' => \n    array (\n      \'name\' => \'my_shouji\',\n      \'cname\' => \'手机\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_email\' => \n    array (\n      \'name\' => \'my_email\',\n      \'cname\' => \'电子邮箱\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_xuexijingli\' => \n    array (\n      \'name\' => \'my_xuexijingli\',\n      \'cname\' => \'学习经历\',\n      \'tips\' => \'\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_gongzuojingli\' => \n    array (\n      \'name\' => \'my_gongzuojingli\',\n      \'cname\' => \'工作经历\',\n      \'tips\' => \'\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_gerenjianli\' => \n    array (\n      \'name\' => \'my_gerenjianli\',\n      \'cname\' => \'个人简历\',\n      \'tips\' => \'\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n  ),\n  \'my_a\' => \n  array (\n    \'myform\' => \n    array (\n      \'cname\' => \'aa\',\n      \'name\' => \'my_a\',\n      \'template\' => \'myform/myform.html\',\n    ),\n    \'my_aaa\' => \n    array (\n      \'name\' => \'my_aaa\',\n      \'cname\' => \'a\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n  ),\n)');
INSERT INTO `rbt_settings` VALUES ('55', null, 'table-hottag', '', null);

-- ----------------------------
-- Table structure for rbt_stats
-- ----------------------------
DROP TABLE IF EXISTS `rbt_stats`;
CREATE TABLE `rbt_stats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bot` varchar(50) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_stats
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_templatetag
-- ----------------------------
DROP TABLE IF EXISTS `rbt_templatetag`;
CREATE TABLE `rbt_templatetag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `tagmodule` varchar(32) DEFAULT NULL,
  `tagtype` varchar(32) DEFAULT NULL,
  `tagcontent` text NOT NULL,
  `tagvar` text,
  `note` text,
  `tagfrom` varchar(16) DEFAULT 'define',
  `template_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_templatetag
-- ----------------------------
INSERT INTO `rbt_templatetag` VALUES ('1', '根目录', 'all', '', '{$base_url}', '', '', 'system', '');
INSERT INTO `rbt_templatetag` VALUES ('2', 'Skin目录', 'all', '', '{$skin_url}', '', '', 'system', '');
INSERT INTO `rbt_templatetag` VALUES ('3', '网站当前位置', 'article', '', '<a href=\"{$base_url}/\">{get(\'sitename\')}</a> >>\r\n{loop position($catid) $t}\r\n<a href=\"{$t.url}\">{$t[\'name\']} </a>>\r\n{/loop}', '$catid=', '参数: $catid', 'system', '');
INSERT INTO `rbt_templatetag` VALUES ('4', '栏目列表', 'all', '', '{loop categories($catid) $cat}\r\n<a href=\"{$cat[url]}\">{$cat[catname]}</a>\r\n{/loop}', '$catid=', '参数: $catid', 'system', '');
INSERT INTO `rbt_templatetag` VALUES ('5', '首页链接', 'all', '', '<a href=\"{$base_url}/\">首页</a>', '', '', 'system', '');
INSERT INTO `rbt_templatetag` VALUES ('6', '取得下级栏目', 'all', '', 'categories($catid)', '', '参数: $catid\r\n取得一级栏目： categories()\r\n取得ID为8的栏目的下级栏目: categories(8)\r\n取得当前栏目的下级栏目: categories($catid)', 'function', '');
INSERT INTO `rbt_templatetag` VALUES ('7', '取得栏目url', 'all', '', 'caturl($catid)', '', '参数: $catid\r\n取得栏目url', 'function', '');
INSERT INTO `rbt_templatetag` VALUES ('8', '栏目链接', 'all', '', '<a href=\"{caturl($catid)}\">{catname($catid)}</a>', '$catid=', '参数: $catid', 'system', '');
INSERT INTO `rbt_templatetag` VALUES ('9', '导航栏', 'all', '', '<ul style=\"width:980px\">\r\n{loop categories() $t}\r\n	<li style=\"float:left;display:inline;width:120px\">\r\n	<a href=\"{$t[url]}\" {if isset($topid) && $topid==$t[catid]}class=\"current\"{/if}>{$t[catname]}</a>\r\n	<!--loop一级目录-->\r\n	{loop categories($t) $t1}\r\n		<ul style=\"float:left;display:inline;width:100px\">\r\n		<a href=\"{$t1[url]}\" {if isset($catid) && $typeid==$t1[catid]}class=\"current\"{/if}>{$t1[catname]}</a>\r\n		<!--loop二级目录...-->\r\n		{loop categories($t1) $t2}\r\n			<ul style=\"float:left;display:inline;width:80px\"><a href=\"{$t2[url]}\" {if isset($catid) && $catid==$t2[catid]}class=\"current\"{/if}>{$t2[catname]}</a>\r\n			<!--loop三级目录...-->\r\n			{loop categories($t2) $t3}\r\n				<ul style=\"float:left;display:inline;width:60px\"><a href=\"{$t3[url]}\" {if isset($catid) && $catid==$t3[catid]}class=\"current\"{/if}>{$t3[catname]}</a></ul>\r\n			{/loop}\r\n			</ul>\r\n		{/loop}\r\n		</ul>\r\n	{/loop}\r\n	</li>\r\n{/loop}\r\n</ul>\r\n', '', '导航栏示范', 'system', '');
INSERT INTO `rbt_templatetag` VALUES ('10', '用户信息', '', '', '{if isset($user) && is_array($user)}\r\n欢迎你， {$user.username}!<br>\r\n<a href=\"{url(\'user/logout\')}\">退出</a>\r\n | <a href=\"{url(\'user\')}\" target=\"_blank\">会员中心</a>\r\n{if $user[\'username\']==\'admin\'}\r\n | <a href=\"{$base_url}/admin\" target=\"_blank\">后台管理</a>\r\n{/if}\r\n<?php }else{ ?>\r\n\r\n<form id=\"login_form\"   name=\"loginform\" method=\"post\"  action=\"{url(\'user/login\')}\" onsubmit=\"return checkform();\">\r\n用户名：<input type=\'text\' id=\"username\"  name=\"username\" size=\"16\"/><br>\r\n密  码：<input type=\'password\' id=\"password\"  name=\"password\" size=\"17\"/><br>\r\n验证码：<input type=\'text\' id=\"verify\"  name=\"verify\" size=\"4\"/>\r\n{verify()}<br>\r\n有效期: <select name=\"expire\">\r\n<option value=\"<?php echo 3600; ?>\">一小时</option>\r\n<option value=\"<?php echo 3600*24; ?>\">一天</option>\r\n<option value=\"<?php echo 3600*24*7; ?>\">一星期</option>\r\n<option value=\"<?php echo 3600*24*30; ?>\">一个月</option>\r\n<option value=\"<?php echo 3600*24*365; ?>\">一年</option>\r\n</select><br>\r\n<input type=\'submit\' name=\"submit\" value=\"登陆\" style=\"margin-left:30px\"/>\r\n<input type=\'button\' name=\"register\" value=\"注册\" onclick=\"javascript:location.href=\'{url(\'user/register\')}\'\"  style=\"margin-left:10px\">\r\n</form>\r\n{/if}', '', '一般用JS调用', 'system', '');
INSERT INTO `rbt_templatetag` VALUES ('11', 'ICP备案号', '', '', '{get(\'site_icp\')}', '', '', 'define', '');
INSERT INTO `rbt_templatetag` VALUES ('12', '首页关键词', '', '', '{get(\'site_keyword\')}', '', '', 'define', '');
INSERT INTO `rbt_templatetag` VALUES ('13', '首页网页描述', '', '', '{get(\'site_description\')}', '', '', 'define', '');
INSERT INTO `rbt_templatetag` VALUES ('14', '版权所有', '', '', '{get(\'site_right\')}', '', '', 'define', '');
INSERT INTO `rbt_templatetag` VALUES ('15', '调用模板', 'all', '', 'template($tpl)', '', '在当前模板中调用其他模板。变量值基于模板根目录。\r\n\r\n例子：\r\n\r\n{template(\'mypage/about.html\')}', 'function', '');
INSERT INTO `rbt_templatetag` VALUES ('16', '公司简介', '', '', 'CmsEasy是一款基于 PHP+Mysql 架构的网站内容管理系统，也是一个 PHP 开发平台。 采用模块化方式开发，功能易用便于扩展，可面向大中型站点提供重量级网站建设解决方案。2年来，凭借 团队长期积累的丰富的Web开发及数据库经验和勇于创新追求完美的设计理念，使得 CmsEasy v1.0 得到了众多网站的认可，并且越来越多地被应用到大中型商业网站。', '', '', 'define', '');
INSERT INTO `rbt_templatetag` VALUES ('17', '公告列表', 'announ', '', '{loop announ($num) $an}\r\n <a href=\"{$an[url]}\"> {$an[title]} </a> ({$an[adddate]}) \r\n{/loop}', '', '', 'system', '');

-- ----------------------------
-- Table structure for rbt_type
-- ----------------------------
DROP TABLE IF EXISTS `rbt_type`;
CREATE TABLE `rbt_type` (
  `typeid` int(6) NOT NULL AUTO_INCREMENT,
  `parentid` int(6) NOT NULL,
  `typename` varchar(30) NOT NULL,
  `subtitle` varchar(255) DEFAULT '',
  `stype` varchar(50) DEFAULT NULL,
  `listorder` int(11) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `keyword` varchar(150) DEFAULT NULL,
  `description` text,
  `typecontent` mediumtext,
  `htmldir` varchar(50) NOT NULL,
  `template` varchar(50) DEFAULT NULL,
  `listtemplate` varchar(50) DEFAULT NULL,
  `showtemplate` varchar(50) DEFAULT NULL,
  `htmlrule` varchar(100) DEFAULT NULL,
  `listhtmlrule` varchar(100) DEFAULT NULL,
  `showhtmlrule` varchar(100) DEFAULT NULL,
  `module` varchar(16) NOT NULL DEFAULT 'article',
  `isshow` tinyint(2) DEFAULT '1',
  `ishtml` tinyint(2) DEFAULT '0',
  `iswaphtml` tinyint(2) DEFAULT '0',
  `ispages` tinyint(2) DEFAULT NULL,
  `includecatarchives` tinyint(2) DEFAULT '0',
  `addarcenable` tinyint(2) DEFAULT NULL,
  `linkto` varchar(150) DEFAULT NULL,
  `attr1` varchar(20) DEFAULT NULL,
  `attr2` varchar(20) DEFAULT NULL,
  `attr3` varchar(20) DEFAULT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `thumb_width` int(3) DEFAULT NULL,
  `thumb_height` int(3) DEFAULT NULL,
  PRIMARY KEY (`typeid`),
  UNIQUE KEY `type` (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_type
-- ----------------------------
INSERT INTO `rbt_type` VALUES ('1', '0', '高端商品', '', '', '0', '', '', '', '', '', 'gaoduan', '0', '0', '', '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `rbt_type` VALUES ('2', '0', '促销商品', '', '', '0', '', '', '', '', '', 'cuxiao', '0', '0', '', '', '', '', 'article', '1', '0', '0', '1', '1', '0', '', '', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for rbt_union
-- ----------------------------
DROP TABLE IF EXISTS `rbt_union`;
CREATE TABLE `rbt_union` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `payaccount` varchar(30) NOT NULL DEFAULT '',
  `website` varchar(100) NOT NULL DEFAULT '',
  `visits` int(10) unsigned NOT NULL DEFAULT '0',
  `registers` int(10) unsigned NOT NULL DEFAULT '0',
  `settleexpendamount` float unsigned NOT NULL DEFAULT '0',
  `totalexpendamount` float unsigned NOT NULL DEFAULT '0',
  `totalpayamount` float unsigned NOT NULL DEFAULT '0',
  `lastpayamount` float unsigned NOT NULL DEFAULT '0',
  `lastpaytime` float unsigned NOT NULL DEFAULT '0',
  `profitmargin` float unsigned NOT NULL DEFAULT '0',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0',
  `regip` varchar(15) NOT NULL DEFAULT '',
  `passed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_union
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_union_pay
-- ----------------------------
DROP TABLE IF EXISTS `rbt_union_pay`;
CREATE TABLE `rbt_union_pay` (
  `payid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `payaccount` varchar(100) NOT NULL DEFAULT '',
  `amount` float NOT NULL DEFAULT '0',
  `expendamount` float unsigned NOT NULL DEFAULT '0',
  `profitmargin` float unsigned NOT NULL DEFAULT '0',
  `inputer` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`payid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_union_pay
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_union_visit
-- ----------------------------
DROP TABLE IF EXISTS `rbt_union_visit`;
CREATE TABLE `rbt_union_visit` (
  `visitid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `visittime` int(10) unsigned NOT NULL DEFAULT '0',
  `visitip` varchar(15) NOT NULL DEFAULT '',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `regusername` varchar(30) NOT NULL DEFAULT '',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`visitid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_union_visit
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_user
-- ----------------------------
DROP TABLE IF EXISTS `rbt_user`;
CREATE TABLE `rbt_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `groupid` int(2) NOT NULL DEFAULT '0',
  `checked` tinyint(2) DEFAULT NULL,
  `qqlogin` varchar(255) DEFAULT NULL,
  `alipaylogin` varchar(255) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `userip` varchar(20) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1',
  `qq` int(15) DEFAULT NULL,
  `e_mail` varchar(60) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `intro` text,
  `point` smallint(5) unsigned DEFAULT '0',
  `introducer` int(10) unsigned DEFAULT NULL,
  `regtime` int(10) DEFAULT '0',
  `sex` varchar(10) DEFAULT '',
  `isblock` tinyint(1) DEFAULT '0',
  `isdelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid` (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_user
-- ----------------------------
INSERT INTO `rbt_user` VALUES ('1', 'admin', '453ed644f0f1e521e616bb9de4c53c47', '管理员', '2', '1', '', '', '', '', '0', '0', '', '', '', '', '', '', '0', '0', '0', '', '0', '0');

-- ----------------------------
-- Table structure for rbt_usergroup
-- ----------------------------
DROP TABLE IF EXISTS `rbt_usergroup`;
CREATE TABLE `rbt_usergroup` (
  `groupid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `discount` float(2,1) unsigned NOT NULL DEFAULT '0.0',
  `powerlist` text,
  `fpwlist` text,
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_usergroup
-- ----------------------------
INSERT INTO `rbt_usergroup` VALUES ('2', '管理员', '0.0', 'a:161:{s:6:\"config\";s:1:\"1\";s:11:\"system_site\";s:1:\"1\";s:12:\"system_image\";s:1:\"1\";s:13:\"system_upload\";s:1:\"1\";s:15:\"system_security\";s:1:\"1\";s:11:\"system_mail\";s:1:\"1\";s:6:\"hottag\";s:1:\"1\";s:8:\"language\";s:1:\"1\";s:10:\"system_sms\";s:1:\"1\";s:11:\"system_ditu\";s:1:\"1\";s:7:\"website\";s:1:\"1\";s:7:\"content\";s:1:\"1\";s:8:\"category\";s:1:\"1\";s:13:\"category_list\";s:1:\"1\";s:12:\"category_add\";s:1:\"1\";s:13:\"category_edit\";s:1:\"1\";s:12:\"category_del\";s:1:\"1\";s:17:\"category_htmlrule\";s:1:\"1\";s:15:\"category_import\";s:1:\"1\";s:7:\"archive\";s:1:\"1\";s:12:\"archive_list\";s:1:\"1\";s:11:\"archive_add\";s:1:\"1\";s:12:\"archive_edit\";s:1:\"1\";s:11:\"archive_del\";s:1:\"1\";s:13:\"archive_check\";s:1:\"1\";s:15:\"archive_setting\";s:1:\"1\";s:17:\"archive_hotsearch\";s:1:\"1\";s:13:\"archive_image\";s:1:\"1\";s:11:\"archive_tag\";s:1:\"1\";s:5:\"mtype\";s:1:\"1\";s:9:\"type_list\";s:1:\"1\";s:8:\"type_add\";s:1:\"1\";s:9:\"type_edit\";s:1:\"1\";s:8:\"type_del\";s:1:\"1\";s:7:\"special\";s:1:\"1\";s:12:\"special_list\";s:1:\"1\";s:11:\"special_add\";s:1:\"1\";s:12:\"special_edit\";s:1:\"1\";s:11:\"special_del\";s:1:\"1\";s:4:\"user\";s:1:\"1\";s:11:\"user_manage\";s:1:\"1\";s:9:\"user_list\";s:1:\"1\";s:8:\"user_add\";s:1:\"1\";s:9:\"user_edit\";s:1:\"1\";s:8:\"user_del\";s:1:\"1\";s:11:\"user_ologin\";s:1:\"1\";s:11:\"user_invite\";s:1:\"1\";s:10:\"user_group\";s:1:\"1\";s:14:\"usergroup_list\";s:1:\"1\";s:13:\"usergroup_add\";s:1:\"1\";s:14:\"usergroup_edit\";s:1:\"1\";s:13:\"usergroup_del\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:12:\"order_manage\";s:1:\"1\";s:10:\"order_list\";s:1:\"1\";s:9:\"order_del\";s:1:\"1\";s:10:\"order_edit\";s:1:\"1\";s:9:\"order_pay\";s:1:\"1\";s:15:\"order_logistics\";s:1:\"1\";s:4:\"func\";s:1:\"1\";s:12:\"func_announc\";s:1:\"1\";s:17:\"func_announc_list\";s:1:\"1\";s:16:\"func_announc_add\";s:1:\"1\";s:17:\"func_announc_edit\";s:1:\"1\";s:16:\"func_announc_del\";s:1:\"1\";s:9:\"func_book\";s:1:\"1\";s:14:\"func_book_list\";s:1:\"1\";s:15:\"func_book_reply\";s:1:\"1\";s:13:\"func_book_del\";s:1:\"1\";s:12:\"func_comment\";s:1:\"1\";s:17:\"func_comment_list\";s:1:\"1\";s:17:\"func_comment_edit\";s:1:\"1\";s:16:\"func_comment_del\";s:1:\"1\";s:11:\"func_ballot\";s:1:\"1\";s:16:\"func_ballot_list\";s:1:\"1\";s:15:\"func_ballot_add\";s:1:\"1\";s:16:\"func_ballot_edit\";s:1:\"1\";s:15:\"func_ballot_del\";s:1:\"1\";s:9:\"func_data\";s:1:\"1\";s:15:\"func_data_baker\";s:1:\"1\";s:17:\"func_data_restore\";s:1:\"1\";s:16:\"func_data_phpweb\";s:1:\"1\";s:17:\"func_data_replace\";s:1:\"1\";s:19:\"func_data_adminlogs\";s:1:\"1\";s:14:\"func_data_safe\";s:1:\"1\";s:8:\"template\";s:1:\"1\";s:15:\"template_manage\";s:1:\"1\";s:15:\"system_template\";s:1:\"1\";s:13:\"template_note\";s:1:\"1\";s:13:\"template_edit\";s:1:\"1\";s:17:\"template_downlist\";s:1:\"1\";s:12:\"system_slide\";s:1:\"1\";s:15:\"templatetag_add\";s:1:\"1\";s:23:\"templatetag_add_content\";s:1:\"1\";s:24:\"templatetag_add_category\";s:1:\"1\";s:22:\"templatetag_add_define\";s:1:\"1\";s:16:\"templatetag_list\";s:1:\"1\";s:25:\"templatetag_list_function\";s:1:\"1\";s:23:\"templatetag_list_system\";s:1:\"1\";s:24:\"templatetag_list_content\";s:1:\"1\";s:25:\"templatetag_list_category\";s:1:\"1\";s:23:\"templatetag_list_define\";s:1:\"1\";s:3:\"seo\";s:1:\"1\";s:10:\"seo_weixin\";s:1:\"1\";s:15:\"seo_weixin_list\";s:1:\"1\";s:14:\"seo_weixin_add\";s:1:\"1\";s:15:\"seo_weixin_edit\";s:1:\"1\";s:14:\"seo_weixin_del\";s:1:\"1\";s:10:\"seo_status\";s:1:\"1\";s:15:\"seo_status_list\";s:1:\"1\";s:14:\"seo_status_del\";s:1:\"1\";s:16:\"seo_status_clear\";s:1:\"1\";s:12:\"seo_linkword\";s:1:\"1\";s:17:\"seo_linkword_list\";s:1:\"1\";s:16:\"seo_linkword_add\";s:1:\"1\";s:17:\"seo_linkword_edit\";s:1:\"1\";s:16:\"seo_linkword_del\";s:1:\"1\";s:14:\"seo_friendlink\";s:1:\"1\";s:19:\"seo_friendlink_list\";s:1:\"1\";s:18:\"seo_friendlink_add\";s:1:\"1\";s:19:\"seo_friendlink_edit\";s:1:\"1\";s:18:\"seo_friendlink_del\";s:1:\"1\";s:22:\"seo_friendlink_setting\";s:1:\"1\";s:10:\"user_union\";s:1:\"1\";s:10:\"union_user\";s:1:\"1\";s:9:\"union_pay\";s:1:\"1\";s:11:\"union_visit\";s:1:\"1\";s:13:\"union_reguser\";s:1:\"1\";s:12:\"union_config\";s:1:\"1\";s:8:\"seo_mail\";s:1:\"1\";s:13:\"seo_mail_send\";s:1:\"1\";s:17:\"seo_mail_usersend\";s:1:\"1\";s:21:\"seo_mail_subscription\";s:1:\"1\";s:7:\"defined\";s:1:\"1\";s:21:\"defined_field_content\";s:1:\"1\";s:26:\"defined_field_content_list\";s:1:\"1\";s:25:\"defined_field_content_add\";s:1:\"1\";s:26:\"defined_field_content_edit\";s:1:\"1\";s:25:\"defined_field_content_del\";s:1:\"1\";s:18:\"defined_field_user\";s:1:\"1\";s:23:\"defined_field_user_list\";s:1:\"1\";s:22:\"defined_field_user_add\";s:1:\"1\";s:23:\"defined_field_user_edit\";s:1:\"1\";s:22:\"defined_field_user_del\";s:1:\"1\";s:12:\"defined_form\";s:1:\"1\";s:17:\"defined_form_list\";s:1:\"1\";s:16:\"defined_form_add\";s:1:\"1\";s:17:\"defined_form_edit\";s:1:\"1\";s:16:\"defined_form_del\";s:1:\"1\";s:5:\"cache\";s:1:\"1\";s:12:\"cache_manage\";s:1:\"1\";s:13:\"cache_content\";s:1:\"1\";s:14:\"cache_category\";s:1:\"1\";s:11:\"cache_index\";s:1:\"1\";s:10:\"cache_type\";s:1:\"1\";s:13:\"cache_special\";s:1:\"1\";s:10:\"cache_area\";s:1:\"1\";s:9:\"cache_tag\";s:1:\"1\";s:11:\"cache_baidu\";s:1:\"1\";s:12:\"cache_google\";s:1:\"1\";s:12:\"cache_update\";s:1:\"1\";}', 'add_archive');
INSERT INTO `rbt_usergroup` VALUES ('101', '一般会员', '0.0', null, 'add_archive');
INSERT INTO `rbt_usergroup` VALUES ('1000', '游客', '0.0', null, null);
INSERT INTO `rbt_usergroup` VALUES ('3', '文章管理员', '0.0', 'a:101:{s:6:\"config\";s:1:\"1\";s:12:\"system_image\";s:1:\"1\";s:13:\"system_upload\";s:1:\"1\";s:8:\"language\";s:1:\"1\";s:7:\"content\";s:1:\"1\";s:8:\"category\";s:1:\"1\";s:13:\"category_list\";s:1:\"1\";s:12:\"category_add\";s:1:\"1\";s:13:\"category_edit\";s:1:\"1\";s:12:\"category_del\";s:1:\"1\";s:17:\"category_htmlrule\";s:1:\"1\";s:15:\"category_import\";s:1:\"1\";s:7:\"archive\";s:1:\"1\";s:12:\"archive_list\";s:1:\"1\";s:11:\"archive_add\";s:1:\"1\";s:12:\"archive_edit\";s:1:\"1\";s:11:\"archive_del\";s:1:\"1\";s:13:\"archive_check\";s:1:\"1\";s:15:\"archive_setting\";s:1:\"1\";s:17:\"archive_hotsearch\";s:1:\"1\";s:13:\"archive_image\";s:1:\"1\";s:11:\"archive_tag\";s:1:\"1\";s:5:\"mtype\";s:1:\"1\";s:9:\"type_list\";s:1:\"1\";s:8:\"type_add\";s:1:\"1\";s:9:\"type_edit\";s:1:\"1\";s:8:\"type_del\";s:1:\"1\";s:7:\"special\";s:1:\"1\";s:12:\"special_list\";s:1:\"1\";s:11:\"special_add\";s:1:\"1\";s:12:\"special_edit\";s:1:\"1\";s:11:\"special_del\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:12:\"order_manage\";s:1:\"1\";s:10:\"order_list\";s:1:\"1\";s:9:\"order_del\";s:1:\"1\";s:10:\"order_edit\";s:1:\"1\";s:9:\"order_pay\";s:1:\"1\";s:15:\"order_logistics\";s:1:\"1\";s:4:\"func\";s:1:\"1\";s:12:\"func_announc\";s:1:\"1\";s:17:\"func_announc_list\";s:1:\"1\";s:16:\"func_announc_add\";s:1:\"1\";s:17:\"func_announc_edit\";s:1:\"1\";s:16:\"func_announc_del\";s:1:\"1\";s:9:\"func_book\";s:1:\"1\";s:14:\"func_book_list\";s:1:\"1\";s:15:\"func_book_reply\";s:1:\"1\";s:13:\"func_book_del\";s:1:\"1\";s:12:\"func_comment\";s:1:\"1\";s:17:\"func_comment_list\";s:1:\"1\";s:17:\"func_comment_edit\";s:1:\"1\";s:16:\"func_comment_del\";s:1:\"1\";s:11:\"func_ballot\";s:1:\"1\";s:16:\"func_ballot_list\";s:1:\"1\";s:15:\"func_ballot_add\";s:1:\"1\";s:16:\"func_ballot_edit\";s:1:\"1\";s:15:\"func_ballot_del\";s:1:\"1\";s:3:\"seo\";s:1:\"1\";s:10:\"seo_weixin\";s:1:\"1\";s:15:\"seo_weixin_list\";s:1:\"1\";s:14:\"seo_weixin_add\";s:1:\"1\";s:15:\"seo_weixin_edit\";s:1:\"1\";s:14:\"seo_weixin_del\";s:1:\"1\";s:10:\"seo_status\";s:1:\"1\";s:15:\"seo_status_list\";s:1:\"1\";s:14:\"seo_status_del\";s:1:\"1\";s:16:\"seo_status_clear\";s:1:\"1\";s:12:\"seo_linkword\";s:1:\"1\";s:17:\"seo_linkword_list\";s:1:\"1\";s:16:\"seo_linkword_add\";s:1:\"1\";s:17:\"seo_linkword_edit\";s:1:\"1\";s:16:\"seo_linkword_del\";s:1:\"1\";s:14:\"seo_friendlink\";s:1:\"1\";s:19:\"seo_friendlink_list\";s:1:\"1\";s:18:\"seo_friendlink_add\";s:1:\"1\";s:19:\"seo_friendlink_edit\";s:1:\"1\";s:18:\"seo_friendlink_del\";s:1:\"1\";s:22:\"seo_friendlink_setting\";s:1:\"1\";s:10:\"user_union\";s:1:\"1\";s:10:\"union_user\";s:1:\"1\";s:9:\"union_pay\";s:1:\"1\";s:11:\"union_visit\";s:1:\"1\";s:13:\"union_reguser\";s:1:\"1\";s:12:\"union_config\";s:1:\"1\";s:8:\"seo_mail\";s:1:\"1\";s:13:\"seo_mail_send\";s:1:\"1\";s:17:\"seo_mail_usersend\";s:1:\"1\";s:21:\"seo_mail_subscription\";s:1:\"1\";s:5:\"cache\";s:1:\"1\";s:12:\"cache_manage\";s:1:\"1\";s:13:\"cache_content\";s:1:\"1\";s:14:\"cache_category\";s:1:\"1\";s:11:\"cache_index\";s:1:\"1\";s:10:\"cache_type\";s:1:\"1\";s:13:\"cache_special\";s:1:\"1\";s:10:\"cache_area\";s:1:\"1\";s:9:\"cache_tag\";s:1:\"1\";s:11:\"cache_baidu\";s:1:\"1\";s:12:\"cache_google\";s:1:\"1\";s:12:\"cache_update\";s:1:\"1\";}', 'add_archive');

-- ----------------------------
-- Table structure for rbt_webscan
-- ----------------------------
DROP TABLE IF EXISTS `rbt_webscan`;
CREATE TABLE `rbt_webscan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `var` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `ext1` varchar(100) DEFAULT NULL,
  `ext2` varchar(100) DEFAULT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_webscan
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_webscan360
-- ----------------------------
DROP TABLE IF EXISTS `rbt_webscan360`;
CREATE TABLE `rbt_webscan360` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `var` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `ext1` varchar(100) DEFAULT NULL,
  `ext2` varchar(100) DEFAULT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_webscan360
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_weixin
-- ----------------------------
DROP TABLE IF EXISTS `rbt_weixin`;
CREATE TABLE `rbt_weixin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `oldid` varchar(255) DEFAULT NULL,
  `weixinid` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `appid` varchar(255) DEFAULT NULL,
  `appsecret` varchar(255) DEFAULT NULL,
  `checksuc` tinyint(1) unsigned DEFAULT '1',
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_weixin
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_weixinmenu
-- ----------------------------
DROP TABLE IF EXISTS `rbt_weixinmenu`;
CREATE TABLE `rbt_weixinmenu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wid` int(11) unsigned DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `typeid` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sort` int(11) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `txt` text,
  `imgtext` text,
  `intro` text,
  `catid` text,
  `num` int(11) DEFAULT '0',
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_weixinmenu
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_weixinreply
-- ----------------------------
DROP TABLE IF EXISTS `rbt_weixinreply`;
CREATE TABLE `rbt_weixinreply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wid` int(11) unsigned DEFAULT NULL,
  `typeid` int(11) unsigned DEFAULT NULL,
  `msgtype` int(11) DEFAULT '0',
  `word` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `txt` text,
  `imgtext` text,
  `intro` text,
  `catid` text,
  `num` int(11) DEFAULT '0',
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_weixinreply
-- ----------------------------

-- ----------------------------
-- Table structure for rbt_zanlog
-- ----------------------------
DROP TABLE IF EXISTS `rbt_zanlog`;
CREATE TABLE `rbt_zanlog` (
  `zlid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(11) unsigned DEFAULT NULL,
  `cid` int(11) unsigned DEFAULT NULL,
  `uid` int(11) unsigned DEFAULT NULL,
  `addtime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`zlid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbt_zanlog
-- ----------------------------

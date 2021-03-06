/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : community

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2018-05-11 18:40:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------

-- ----------------------------
-- Table structure for `t_comments`
-- ----------------------------
DROP TABLE IF EXISTS `t_comments`;
CREATE TABLE `t_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `path` varchar(70) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `total_answer` int(11) DEFAULT '0' COMMENT '回答总条数',
  `total_view` int(11) DEFAULT '0' COMMENT '话题，问题被查看次数',
  `total_agree` int(11) DEFAULT '0',
  `total_disagree` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comments
-- ----------------------------
INSERT INTO `t_comments` VALUES ('27', 'tt1', '这他妈怎么会是一个测试', '1/26', '2018-04-05 00:06:16', '2', '2', null, '0', '0', '49', '0');
INSERT INTO `t_comments` VALUES ('28', 'test', '会费的', null, null, null, '1', null, '0', '0', '15', '0');
INSERT INTO `t_comments` VALUES ('29', 'test', '会费的', null, null, null, '1', null, '0', '0', '2', '0');
INSERT INTO `t_comments` VALUES ('30', 'test', '会费的', null, null, null, '1', null, '0', '0', '1', '0');
INSERT INTO `t_comments` VALUES ('31', 'test', '123421123', null, null, null, '1', null, '0', '0', '1', '0');
INSERT INTO `t_comments` VALUES ('32', 'qweqrq', '1234211235467urhhsrthse', null, null, null, '1', null, '0', '0', '1', '0');
INSERT INTO `t_comments` VALUES ('40', '文科生觉得哪些知识不知道是理科生的遗憾？', '镜像问题：文科生觉得哪些知识不知道是理科生的遗憾？https://www.zhihu.com/question/270455074?utm_source=zhihu', '1/', '2018-04-04 01:00:45', '1', '1', null, '5', '15084', '1200', '200');
INSERT INTO `t_comments` VALUES ('41', null, '作者：孤单彼岸\r\n链接：https://www.zhihu.com/question/270455074/answer/359067898\r\n来源：知乎\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\r\n\r\n之前网上流传过一个段子，说女生问男生：“我是不是世界上最漂亮的女生？”男生回答：“你这个问题我得看过世界上所有女生才可以回答啊。”大多数鸡汤文的推论是：”理科男生情商低“、”不能过度使用逻辑“。。。事实上，如果女生的逻辑推理学习得足够好的话，就知道男生能回答出这样的答案，说明目前为止他见到的所有女生里，她是最漂亮的。话都已经说到这个地步了，还想怎样啊。此外，还有网络上常见的对程序员的吹捧“据我的观察，学计算机的对女朋友都特别好。”合格的程序员一眼就能够看出：当p为假时，p蕴含q永真。逻辑推理应该是包含于离散数学课程知识中，不知道文科生是否了解…此外还有概率论问题。生活中经常会遇到概率问题，我们时常凭直觉推算概率，但这些直觉往往都是错的。常见的有赌徒谬误问题，简单地说在赌博中连续输了十几次，直观地会感觉我接下来就该要赢了。所以如果掷硬币赌输赢，在连续两次出现正面朝上的情况下，第三盘如果信誓旦旦地押反面并强调“事不过三，总该轮到我赢了”，那就有点遗憾了。 期望假象也是一类常见的现象。许多游戏中都有抽卡活动，中奖率为2%的话，直观上抽50次就能够在“数学期望”上完成中奖。但根据概率论可知，抽50次中奖的概率是  ，总有36%的用户无法完成数学期望，这也是游戏频道中时常看到玩家在骂游戏策划黑心的原因。而你之所以感觉看到的都是骂策划的玩家，是因为获利的玩家都不说话。因此你看到的总是那36%的背运玩家，加上另一部分吃瓜群众。这又涉及到幸存者偏差，也属于此前提到常见的逻辑谬误的一种。这些容易令人产生错觉的概率论问题，仔细思考和学习一下，挺有意思的。', '1/', '2018-04-04 01:00:45', '2', '3', '40', '0', null, '109', '21');
INSERT INTO `t_comments` VALUES ('42', null, '买菜的时候确实用不到微积分，线性代数，抽象代数，傅立叶变换，或者数论。\r\n\r\n可是你要是能把这些学好，买菜也就不用再看钱了。', '/1', '2018-04-05 20:20:35', '2', '2', '40', '0', '0', '69', '10');
INSERT INTO `t_comments` VALUES ('43', null, '相关：答主高二，现在是理科生，高一在我校文科实验班（北辰班，班建制35人左右，历年高考平均每年有五人进入省前十，二十五人进入省前百）。就读西北师大附中全国排名371哲学并不能所谓指导科学发展，相反是落后科学，在科学的故纸堆中研究语言。2大多数文科生对科学的本质存在理解错误3地理学是理科，生物不是文科4谁给你辩证天辩证地的勇气的？政治必修四吗？5生物，化学都是经验性的学科，部分缺乏坚实的理论基础6科学建立在怀疑论上，是自洽可行的理论总和7请你辨析下列名词：学说 理论 定律 定理 公设 公理…8文科理科没有难易之分，自学都会有缺陷9有些理论是描述同一件事情不同方法，也就是说很多现行理论是重叠的', null, null, null, '1', '40', '0', '0', '18', '0');
INSERT INTO `t_comments` VALUES ('50', '如何评价重庆的出租车？', '如何评价重庆的出租车？', '1/', '2018-04-05 20:50:45', '1', '4', null, '2', '3000', '2000', '50');
INSERT INTO `t_comments` VALUES ('51', null, '你和他拼技术 他和你拼八字 就看谁命硬', '1/', '2018-04-04 20:52:38', '2', '5', '50', '0', '0', '100', '10');
INSERT INTO `t_comments` VALUES ('52', null, '重庆是三流的路，二流的车，一流的托儿车司机！人家是开的太快，重庆的托儿车司机是飞得太低！', null, '2018-04-05 20:54:00', '2', '6', '50', '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('53', null, '三生有幸去了重庆因为去的时候是劳动节假期人多的二号线都没坐成直接打出租车师傅您还能飞快点不我这头发吹脸上扒拉都扒不下来手抓着车上面的把手都不敢松借前面一个答主叶彬回答里的一句话：五脏六腑都给你甩出来真的是我的天太刺激了(-ι_- )坐了出租车没啥别的感觉脑子里就剩一句：这是飞一样的感觉！！！！！！！\n\n作者：我啊\n链接：https://www.zhihu.com/question/270906685/answer/358320947\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '2018-04-05 20:55:07', '2', '7', '50', '0', '0', '120', '12');
INSERT INTO `t_comments` VALUES ('60', '如果外国趁汶川地震入侵中国会发生什么？', '距离汶川大地震马上十年了，突然回想往事，地震余震堰塞湖，那时候几乎在大街上睡了一个月，突发奇想，2008年的中国多灾多难，特别是大地震，如果这个时候某些国家“趁你病要你命”入侵中国，或者说搞事情，在当时的国力条件下，中国有可能做出何种反应？会发生什么？', null, '2018-03-26 21:01:14', '1', '8', null, '2', '1562', '1000', '25');
INSERT INTO `t_comments` VALUES ('61', null, '请问哪国敢趁火打劫入侵一个有核武器、号称最强陆军且所有周边战争不败的国家', null, '2018-03-26 21:02:51', '2', '9', '60', '0', '0', '50', '12');
INSERT INTO `t_comments` VALUES ('62', null, '在PLA救灾只动员临近的陆军。。。\r\n\r\n而且边防也不会赶着几千公里去救灾\r\n\r\n况且突袭追求的是什么\r\n\r\n在目标国家指挥系统集中起来之前进行进攻\r\n\r\n兔子集中调动几个军区的军力\r\n\r\n后勤和人力调度已经完全运行起来了\r\n\r\n“你特喵顶着别人枪口冲锋”', null, '2018-03-28 21:04:09', '2', '10', '60', '0', '0', '20', '0');
INSERT INTO `t_comments` VALUES ('63', null, '那真是挑了个最糟糕的时候，在中国凝聚力最强的时候入侵中国，怕不是要被PLA锤爆……', null, '2018-04-05 21:05:20', '2', '11', '60', '0', '0', '5', '1');
INSERT INTO `t_comments` VALUES ('70', '深圳房价暴跌，一线城市的第一轮下跌已经开始了吗？', '自从国庆政策出台后，深圳房价已经开始了不约而同的下跌，这一轮估计会跌到多少才是个低？\r\n\r\n国庆后在蛇口有个新开盘的叫山语海，业界本来预计7万开盘，结果开盘均价5.8，买房打折8000，实际也就是5万，而且还没卖完，大神们如何看待这个问题？', null, '2018-04-06 21:08:23', '1', '12', null, '4', '900', '289', '23');
INSERT INTO `t_comments` VALUES ('71', null, '哈哈哈哈，笑死我了\r\n\r\n广州黄埔号称不准越线1w9一平米，政府调控。\r\n\r\n然后开发商搞双合同，装修款1w多一平米，贷款不准贷很多\r\n\r\n买套房子，首付得5-6成，实际房价3w多一平米\r\n\r\n纳入系统，房价确实稳住了，调控好了，没到1w9啊', null, '2018-04-06 21:09:37', '2', '16', '70', '0', '0', '133', '0');
INSERT INTO `t_comments` VALUES ('72', null, '这个怎么说的，现在属于一个关键点，如果这时候，媒体使劲吹说房价已经跌了，成交量萎缩，不管报道是否准确，都会导致房价崩溃；如果媒体只是吹房价要崩，但实际报道的内容还是人民群众争相购房，那房价还能抢救一下。如果我是中央政府，我就命令媒体不准报道实质性的内容，这样无论是买房的还是卖房的，都只能游移不定，不管后续是涨也好，是跌也好，都给我拖到其他问题理顺了再说。所以，题主你现在报道房价跌了，出了偏差你要负责的哦。\n\n作者：知乎用户\n链接：https://www.zhihu.com/question/51547046/answer/126341702\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '2018-04-07 21:10:40', '2', '16', '70', '0', '0', '250', '16');
INSERT INTO `t_comments` VALUES ('80', '从小到大你都听到过哪些谎言？', '父母、亲戚、朋友、老师、同学等对你说的都可以', null, '2018-04-04 21:12:49', '1', '15', null, '3', '1344', '1231', '90');
INSERT INTO `t_comments` VALUES ('90', '如何看待电子科技大学暴走都江堰活动被提前半小时取消的情况？', '这个问题不是在黑主办方，请各位答主不要引到主办方身上，他们确实尽力了，我们很理解，同情，只是借此问问学校办事效率以及校方取消的真正原因。', null, '2018-04-05 21:15:23', '1', '16', null, '0', '450', '256', '185');
INSERT INTO `t_comments` VALUES ('100', '财务自由的感觉是怎样的？', '财务自由是指你无需为生活开销而努力为钱工作的状态。简单地说，你的资产产生的被动收入必须至少要等于或超过你的日常开支。\r\n\r\n财务自由 不是吃老本', null, '2018-04-05 21:17:24', '1', '16', null, '1', '908', '452', '90');
INSERT INTO `t_comments` VALUES ('110', '为什么中国大豆主要靠进口？', '今天看了国新办对一号文件的解读，提到了大豆的进口量占中国粮食进口量80%多。请问我国是不适合种大豆吗？如果投入大豆产业是不是一块很大的蛋糕？', null, '2018-04-05 21:18:33', '1', '3', null, '0', '356', '231', '99');
INSERT INTO `t_comments` VALUES ('120', '蒙古族的主体能否说在中国？', '看到资料外蒙古人口才312万，而中国境内蒙古族人口600多万，能否这么说，蒙古族的主体（或者说传承）实际在中国？', null, '2018-04-05 21:19:32', '1', '4', null, '0', '78', '23', '7');
INSERT INTO `t_comments` VALUES ('130', '广西是如何从汉地十八省之一变成了自治？', '众所周知，广西原本是汉地十八省之一，武昌起义铁血十八星旗也有一颗代表广西，清末国际上所谓的china proper,也就是中国本土的划分中也包括广西。军阀时代的桂系军阀也出自这里，那么这样一个原本没有异议的本土省份，怎么好端端的变成了少数民族自治区呢？\r\n-----------------------------------------------------------------------------------------------------------------------\r\n针对一些答案，我想补充一下我的问题，首先我认为认可壮族，以及确认56个民族的平等地位跟成立自治区是两个不同的问题。我对于现在的少数民族优惠政策和56个民族的划分是支持的。\r\n\r\n我的问题是为什么广西没有像云南那样在省内成立自治州，而是违反历史传统，整个划为了自治区，就我所知，新中国设立自治区是有深刻的背景的，比如内蒙古在解放前已经成立自治政府，并且出现独立倾向，新疆建国初联邦制呼声很高，西藏当时还没有肃清英国和印度势力等等，在以上地区设立自治区是当时条件下维护国家统一的必要手段。那么，广西成立自治区具体有什么样的政治考量，是否跟当时广西状况有什么关系，或者就是一次头脑发热的错误决策？\r\n\r\n我特别想听听熟悉中国近代史和建国后政治的朋友的看法', null, '2018-04-05 21:20:29', '1', '5', null, '0', '56', '23', '0');
INSERT INTO `t_comments` VALUES ('140', '为什么上海家长不喜欢把女儿嫁给外地人？', '看了很多答友的观点，我还想补充一下：\r\n\r\n1我让她跟家里讲不是为了提亲！本来我也没想让她家里知道的，但是当我从她哪里得知父母坚决反对外地人的态度以后我的第一反应就是直面这个问题，我觉得继续瞒下去心里会有道坎，如果继续瞒到毕业再来解决这个问题，到时候两个人可能会更无措（现在特别难受，如果让我再做选择我会隐瞒）\r\n\r\n2提这个问题我没有要黑上海人的意思，我很喜欢这座城市的文化和秩序，我也有很多要好的上海朋友。这个问题是我从她包括其他上海同学那里了解到的，在她们的成长环境里会有很多家长持有这种不能与外地人谈恋爱的观点。昨天我刚得知身边一个上海女生也是因为相同的原因被家里施压与来自湖北的男票分手，所以这其实是种普遍现象的，我希望一部分答友不要避重就轻\r\n\r\n3很多答友给我贴凤凰男的标签，我先不说我自己是不是凤凰男，必须承认抱有“娶个上海老婆少奋斗十年”想法的外地人大有人在，这是种更为普遍的现象。因为以后想留在上海的缘故，我是倾向于谈上海女朋友的，说完全不在乎女生的物质条件我自己都不会信。但是我遇到真正自己喜欢的人，我不会在乎她来自哪里，也不会屈服于家里的压力。我的父母对于女生的要求就是希望眼睛大一点，其他问题一概不会干预（其实我觉得是懒得干预）\r\n\r\n4那些黑山东的答友啊，拜托你们对山东的印象不要停在山东卫视那种垃圾里面好吗。我承认山东家暴现象，大男子主义，酒桌文化，以及一些低俗闹婚现象在全国范围内比较突出。但是不能就此否定我们一亿山东人吧。\r\n\r\n——————————分割线——————————\r\n我来自北方三线城市，现在在上海念书，今年大二，上学期在班里谈了一个上海本地的女朋友\r\n\r\n她敢爱敢恨，性格独立，是个非常开朗的女生。尽管没考虑过婚姻，但她的确让我有携手一生的冲动。我们彼此都非常依赖对方，恨不得每刻都在一起。那时候我们牵着手走在班里，脸上洋溢的都是幸福的笑容。\r\n\r\n有一次我给她推荐了一首我高中时听过的歌《上海小姑娘》，她听完以后眼泪直接落下来了，她说她害怕我们会像歌里的主人公一样，她有一天会失去我，那时我笑笑没有说话。再后来她给我讲家里人一直给她灌输坚决不能跟外地人谈恋爱的观点，所以我们恋爱的事情必须对其父母保密。\r\n\r\n     那时我不理解她，偏偏让她主动告诉家里，她劝了我很久最后还是当着我的面不情愿地跟家里说了，此后几天她人很憔悴心事重重（我猜测是那时家里打电话阻挠），在寒假她回家的那天我送她上车，我们说好共同面对这一切，三天后她过生日我去他家当面见他的父母，她那时也认为只要她父母见过我一定能够接受我的。让我始料未及的是，回家的那天晚上她迫于家里的压力跟我提出了分手，电话那头她哭得很伤心，我并不知晓那天到底她家里人是怎样跟她说的。\r\n\r\n     我开始疯狂表达后悔，来挽救这段感情。她对我说这就是她的家庭她尝试过她没办法改变，就算她还爱我我们也会因为这样的家庭而无法到达婚姻的那一步。经历了这件事她累了，她恨我作出的愚蠢决定，她没有力气去对抗，没有信心继续了。\r\n\r\n在学校最后的那一周眼看着身边同学放假回家，我的心情一下子变得很糟。也曾经去她家找过她，怕她的父母见到我会给她更大的压力，我选择了离开。\r\n\r\n    现在开学了，在一个班里上课，可她却依然不肯面对我，躲避我的眼神，躲避我的一切。仿佛我们之间什么都没有发生过一样。', null, '2018-04-20 21:22:02', '1', '6', null, '0', '453', '34', '125');
INSERT INTO `t_comments` VALUES ('150', '台湾民主吗？', '台湾民主吗？所谓的民主是什么？一人手里有一张票就能够实现民主吗？', null, '2018-04-03 21:23:18', '1', '7', null, '0', '345', '54', '37');
INSERT INTO `t_comments` VALUES ('160', '中国人为什么这么喜欢消费大豆？', '世界大豆年产量3.5亿吨，中国每年自产与进口大豆总量1.1亿吨。将近世界1/3，远超世界人均水平。\r\n\r\n那么如题，中国人为什么这么喜欢消费大豆？这是否表明中国人消费大豆的效率比较低，抑或是表明中国人有比较特殊的饮食结构？', null, '2018-04-02 21:24:47', '1', '8', null, '0', '72', '25', '6');
INSERT INTO `t_comments` VALUES ('170', '中国教育最大的失败在哪里？', '可以这样说，中国教育部是仅次于铁道部最备受争议的话题。可以看的到，上大学之后越来越多的学生不感激反而大骂整个学校。当这种现象增大时，我们就不能当作个体性格的因素造成的了。那么是什么使中国的教育（不仅仅是学校教育）这样失败？', null, '2018-04-01 21:25:54', '1', '9', null, '0', '720', '342', '421');
INSERT INTO `t_comments` VALUES ('180', '中国制造业在未来还有救吗？', '看了知乎很对回答感觉我国制造业药丸啊。中国制造业真的转型无望吗？那么作为普通人如何助力中国制造业转型升级？', null, '2018-04-02 21:26:45', '1', '10', null, '0', '267', '143', '2');
INSERT INTO `t_comments` VALUES ('190', '房价是不是已经透支了未来几十年中国人的购买力？', '这些年楼市的火爆以及房价的上涨速度有目共睹，大多数买房子的人都是父母积蓄加自己的存款凑够首付，加上未来几十年的贷款才能够买下，那么现在由楼市带来的经济表面的繁荣是不是透支了未来几十年的购买力换来的呢，当大多数人几十年手里都没有那么多钱的时候经济又怎么办呢', null, '2018-03-25 21:27:59', '1', '11', null, '0', '8238', '2341', '23');
INSERT INTO `t_comments` VALUES ('200', '民国时期是中国第二次百家争鸣吗？', '我和同学就这个问题发生了不同的看法。我个人很讨厌民国粉，也不认为民国时代所谓的百家争鸣就比现在好。当时的大师就比现在牛逼。不过因为实在是才疏学浅...不知道如何回答，求教一二，不胜感激。', null, '2018-04-02 21:29:20', '1', '12', null, '1', '3421', '2312', '123');
INSERT INTO `t_comments` VALUES ('210', '有哪些曾给你力量的句子值得分享？', '尚未佩妥剑 转眼便江湖\r\n\r\n愿你\r\n\r\n历尽千帆来 归来仍少年', null, '2018-04-03 21:31:22', '1', '13', null, '0', '8362', '234', '23');
INSERT INTO `t_comments` VALUES ('220', '为什么明粉说话戾气那么重？？', '各位明粉国仇家恨的民族感那么强吗？？？', null, '2018-04-03 21:32:25', '1', '14', null, '0', '45', '34', '1');
INSERT INTO `t_comments` VALUES ('230', '假如外来人口在不断冲击本地文化，当地文化会不会不断削弱？', '对比珠三角广州深圳两个城市，广州本地人外地人的比例为1比1,而深圳本地人与外地人的比例为1:40.广州虽然在尽力保存本土文化，但仔细发现部分区如粤语早就被普通话取代，例如天河区等，而深圳几乎消失了原本的本地文化，假如外来人口在不断冲击本地文化，当地文化会不会不断削弱？', null, '2018-04-04 21:33:46', '1', '15', null, '0', '654', '43', '34');
INSERT INTO `t_comments` VALUES ('373', '发帖测试', '发帖测试的内容内容内筒', null, '2018-04-23 16:39:44', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('374', '玩儿温热无若翁', '玩儿玩儿玩儿玩儿', null, '2018-04-23 16:42:32', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('375', '玩儿', '玩儿', null, '2018-04-23 16:43:22', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('376', '玩儿r', ' 而', null, '2018-04-23 16:43:31', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('377', '玩儿', '玩儿', null, '2018-04-23 16:43:41', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('378', '绕弯儿为', '二w', null, '2018-04-23 16:44:38', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('379', '是f', '我', null, '2018-04-23 16:44:51', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('380', '', '', null, '2018-04-23 16:44:55', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('381', '儿热', '儿他', null, '2018-04-23 16:45:21', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('382', '', '', null, '2018-04-23 16:47:55', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('383', '儿', '二位', null, '2018-04-23 16:48:23', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('384', '', '', null, '2018-04-23 16:48:27', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('385', '', '', null, '2018-04-23 16:48:56', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('386', '', '', null, '2018-04-23 16:50:19', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('387', '水电费', '是', null, '2018-04-23 16:50:48', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('388', '', '', null, '2018-04-23 16:51:17', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('389', '玩儿', '儿', null, '2018-04-23 16:51:23', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('390', '', '', null, '2018-04-23 16:53:00', null, '1', null, '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('391', '玩儿', '玩儿', null, '2018-04-23 16:53:05', null, '1', null, '1', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('392', null, '我呢', null, '2018-04-23 16:53:24', null, '1', '391', '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('393', null, '消灭', null, '2018-04-24 02:35:08', null, '1', '200', '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('394', null, '3523', null, '2018-04-30 15:17:17', null, '2', '40', '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('395', null, '他人y', null, '2018-05-02 13:54:48', null, '2', '40', '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('396', null, '他人y', null, '2018-05-02 13:54:46', null, '2', '40', '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('397', null, '他人y', null, '2018-05-02 13:54:46', null, '2', '40', '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('398', null, '他人y', null, '2018-05-02 13:54:49', null, '2', '40', '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('399', 'test444', 'testtttt', null, '2018-05-02 14:18:18', null, '2', null, '2', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('400', null, 'huifu', null, '2018-05-02 14:18:30', null, '2', '399', '0', '0', '0', '0');
INSERT INTO `t_comments` VALUES ('401', null, 'husadbh', null, '2018-05-02 14:18:37', null, '2', '399', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `t_comments_copy`
-- ----------------------------
DROP TABLE IF EXISTS `t_comments_copy`;
CREATE TABLE `t_comments_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_answer` int(11) DEFAULT '0' COMMENT '回答总条数',
  `total_view` int(11) DEFAULT '0' COMMENT '话题，问题被查看次数',
  `total_agree` int(11) DEFAULT '0',
  `total_disagree` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comments_copy
-- ----------------------------
INSERT INTO `t_comments_copy` VALUES ('1', 'test1', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('2', 'test2', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('3', 'test3', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('4', 'test4', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('5', 'test5', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('6', 'test6', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('7', 'test7', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('8', 'test8', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('9', 'test9', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('10', 'test10', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('11', 'test11', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('12', 'test12', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('13', 'test13', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('14', 'test14', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('15', 'test15', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('16', 'test16', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('17', 'test17', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('18', 'test18', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('19', 'test19', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('20', 'test20', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('21', 'test21', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('22', 'test22', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('23', 'test23', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('24', 'test24', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('25', 'test25', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('26', 'test26', '这是一个测试', '2018-04-04 01:00:45', '1', '5', '40', '10', '2');
INSERT INTO `t_comments_copy` VALUES ('27', 'tt1', '这他妈怎么会是一个测试', '2018-04-05 00:06:16', '2', '0', '0', '49', '0');
INSERT INTO `t_comments_copy` VALUES ('28', null, '会费的', null, '1', '0', '0', '15', '0');
INSERT INTO `t_comments_copy` VALUES ('29', null, '会费的', null, '1', '0', '0', '2', '0');
INSERT INTO `t_comments_copy` VALUES ('30', null, '会费的', null, '1', '0', '0', '1', '0');
INSERT INTO `t_comments_copy` VALUES ('31', null, '123421123', null, '1', '0', '0', '1', '0');
INSERT INTO `t_comments_copy` VALUES ('32', null, '1234211235467urhhsrthse', null, '1', '0', '0', '1', '0');
INSERT INTO `t_comments_copy` VALUES ('40', '文科生觉得哪些知识不知道是理科生的遗憾？', '镜像问题：文科生觉得哪些知识不知道是理科生的遗憾？https://www.zhihu.com/question/270455074?utm_source=zhihu', '2018-04-04 01:00:45', '1', '2', '15084', '1200', '200');
INSERT INTO `t_comments_copy` VALUES ('41', null, '作者：孤单彼岸\r\n链接：https://www.zhihu.com/question/270455074/answer/359067898\r\n来源：知乎\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\r\n\r\n之前网上流传过一个段子，说女生问男生：“我是不是世界上最漂亮的女生？”男生回答：“你这个问题我得看过世界上所有女生才可以回答啊。”大多数鸡汤文的推论是：”理科男生情商低“、”不能过度使用逻辑“。。。事实上，如果女生的逻辑推理学习得足够好的话，就知道男生能回答出这样的答案，说明目前为止他见到的所有女生里，她是最漂亮的。话都已经说到这个地步了，还想怎样啊。此外，还有网络上常见的对程序员的吹捧“据我的观察，学计算机的对女朋友都特别好。”合格的程序员一眼就能够看出：当p为假时，p蕴含q永真。逻辑推理应该是包含于离散数学课程知识中，不知道文科生是否了解…此外还有概率论问题。生活中经常会遇到概率问题，我们时常凭直觉推算概率，但这些直觉往往都是错的。常见的有赌徒谬误问题，简单地说在赌博中连续输了十几次，直观地会感觉我接下来就该要赢了。所以如果掷硬币赌输赢，在连续两次出现正面朝上的情况下，第三盘如果信誓旦旦地押反面并强调“事不过三，总该轮到我赢了”，那就有点遗憾了。 期望假象也是一类常见的现象。许多游戏中都有抽卡活动，中奖率为2%的话，直观上抽50次就能够在“数学期望”上完成中奖。但根据概率论可知，抽50次中奖的概率是  ，总有36%的用户无法完成数学期望，这也是游戏频道中时常看到玩家在骂游戏策划黑心的原因。而你之所以感觉看到的都是骂策划的玩家，是因为获利的玩家都不说话。因此你看到的总是那36%的背运玩家，加上另一部分吃瓜群众。这又涉及到幸存者偏差，也属于此前提到常见的逻辑谬误的一种。这些容易令人产生错觉的概率论问题，仔细思考和学习一下，挺有意思的。', '2018-04-04 01:00:45', '3', '0', null, '102', '21');
INSERT INTO `t_comments_copy` VALUES ('42', null, '买菜的时候确实用不到微积分，线性代数，抽象代数，傅立叶变换，或者数论。\r\n\r\n可是你要是能把这些学好，买菜也就不用再看钱了。', '2018-04-05 20:20:35', '2', '0', '0', '54', '10');
INSERT INTO `t_comments_copy` VALUES ('43', null, '相关：答主高二，现在是理科生，高一在我校文科实验班（北辰班，班建制35人左右，历年高考平均每年有五人进入省前十，二十五人进入省前百）。就读西北师大附中全国排名371哲学并不能所谓指导科学发展，相反是落后科学，在科学的故纸堆中研究语言。2大多数文科生对科学的本质存在理解错误3地理学是理科，生物不是文科4谁给你辩证天辩证地的勇气的？政治必修四吗？5生物，化学都是经验性的学科，部分缺乏坚实的理论基础6科学建立在怀疑论上，是自洽可行的理论总和7请你辨析下列名词：学说 理论 定律 定理 公设 公理…8文科理科没有难易之分，自学都会有缺陷9有些理论是描述同一件事情不同方法，也就是说很多现行理论是重叠的', null, '1', '0', '0', '16', '0');
INSERT INTO `t_comments_copy` VALUES ('50', '如何评价重庆的出租车？', '如何评价重庆的出租车？', '2018-04-05 20:50:45', '4', '2', '3000', '2000', '50');
INSERT INTO `t_comments_copy` VALUES ('51', null, '你和他拼技术 他和你拼八字 就看谁命硬', '2018-04-04 20:52:38', '5', '0', '0', '100', '10');
INSERT INTO `t_comments_copy` VALUES ('52', null, '重庆是三流的路，二流的车，一流的托儿车司机！人家是开的太快，重庆的托儿车司机是飞得太低！', '2018-04-05 20:54:00', '6', '0', '0', '0', '0');
INSERT INTO `t_comments_copy` VALUES ('53', null, '三生有幸去了重庆因为去的时候是劳动节假期人多的二号线都没坐成直接打出租车师傅您还能飞快点不我这头发吹脸上扒拉都扒不下来手抓着车上面的把手都不敢松借前面一个答主叶彬回答里的一句话：五脏六腑都给你甩出来真的是我的天太刺激了(-ι_- )坐了出租车没啥别的感觉脑子里就剩一句：这是飞一样的感觉！！！！！！！\n\n作者：我啊\n链接：https://www.zhihu.com/question/270906685/answer/358320947\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', '2018-04-05 20:55:07', '7', '0', '0', '120', '12');
INSERT INTO `t_comments_copy` VALUES ('60', '如果外国趁汶川地震入侵中国会发生什么？', '距离汶川大地震马上十年了，突然回想往事，地震余震堰塞湖，那时候几乎在大街上睡了一个月，突发奇想，2008年的中国多灾多难，特别是大地震，如果这个时候某些国家“趁你病要你命”入侵中国，或者说搞事情，在当时的国力条件下，中国有可能做出何种反应？会发生什么？', '2018-03-26 21:01:14', '8', '2', '1562', '1000', '25');
INSERT INTO `t_comments_copy` VALUES ('61', null, '请问哪国敢趁火打劫入侵一个有核武器、号称最强陆军且所有周边战争不败的国家', '2018-03-26 21:02:51', '9', '0', '0', '50', '12');
INSERT INTO `t_comments_copy` VALUES ('62', null, '在PLA救灾只动员临近的陆军。。。\r\n\r\n而且边防也不会赶着几千公里去救灾\r\n\r\n况且突袭追求的是什么\r\n\r\n在目标国家指挥系统集中起来之前进行进攻\r\n\r\n兔子集中调动几个军区的军力\r\n\r\n后勤和人力调度已经完全运行起来了\r\n\r\n“你特喵顶着别人枪口冲锋”', '2018-03-28 21:04:09', '10', '0', '0', '20', '0');
INSERT INTO `t_comments_copy` VALUES ('63', null, '那真是挑了个最糟糕的时候，在中国凝聚力最强的时候入侵中国，怕不是要被PLA锤爆……', '2018-04-05 21:05:20', '11', '0', '0', '5', '1');
INSERT INTO `t_comments_copy` VALUES ('70', '深圳房价暴跌，一线城市的第一轮下跌已经开始了吗？', '自从国庆政策出台后，深圳房价已经开始了不约而同的下跌，这一轮估计会跌到多少才是个低？\r\n\r\n国庆后在蛇口有个新开盘的叫山语海，业界本来预计7万开盘，结果开盘均价5.8，买房打折8000，实际也就是5万，而且还没卖完，大神们如何看待这个问题？', '2018-04-06 21:08:23', '12', '3', '900', '289', '23');
INSERT INTO `t_comments_copy` VALUES ('71', null, '哈哈哈哈，笑死我了\r\n\r\n广州黄埔号称不准越线1w9一平米，政府调控。\r\n\r\n然后开发商搞双合同，装修款1w多一平米，贷款不准贷很多\r\n\r\n买套房子，首付得5-6成，实际房价3w多一平米\r\n\r\n纳入系统，房价确实稳住了，调控好了，没到1w9啊', '2018-04-06 21:09:37', '13', '0', '0', '133', '0');
INSERT INTO `t_comments_copy` VALUES ('72', null, '这个怎么说的，现在属于一个关键点，如果这时候，媒体使劲吹说房价已经跌了，成交量萎缩，不管报道是否准确，都会导致房价崩溃；如果媒体只是吹房价要崩，但实际报道的内容还是人民群众争相购房，那房价还能抢救一下。如果我是中央政府，我就命令媒体不准报道实质性的内容，这样无论是买房的还是卖房的，都只能游移不定，不管后续是涨也好，是跌也好，都给我拖到其他问题理顺了再说。所以，题主你现在报道房价跌了，出了偏差你要负责的哦。\n\n作者：知乎用户\n链接：https://www.zhihu.com/question/51547046/answer/126341702\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', '2018-04-07 21:10:40', '14', '0', '0', '250', '16');
INSERT INTO `t_comments_copy` VALUES ('80', '从小到大你都听到过哪些谎言？', '父母、亲戚、朋友、老师、同学等对你说的都可以', '2018-04-04 21:12:49', '15', '3', '1344', '1231', '90');
INSERT INTO `t_comments_copy` VALUES ('90', '如何看待电子科技大学暴走都江堰活动被提前半小时取消的情况？', '这个问题不是在黑主办方，请各位答主不要引到主办方身上，他们确实尽力了，我们很理解，同情，只是借此问问学校办事效率以及校方取消的真正原因。', '2018-04-05 21:15:23', '1', '0', '450', '256', '185');
INSERT INTO `t_comments_copy` VALUES ('100', '财务自由的感觉是怎样的？', '财务自由是指你无需为生活开销而努力为钱工作的状态。简单地说，你的资产产生的被动收入必须至少要等于或超过你的日常开支。\r\n\r\n财务自由 不是吃老本', '2018-04-05 21:17:24', '2', '0', '908', '452', '90');
INSERT INTO `t_comments_copy` VALUES ('110', '为什么中国大豆主要靠进口？', '今天看了国新办对一号文件的解读，提到了大豆的进口量占中国粮食进口量80%多。请问我国是不适合种大豆吗？如果投入大豆产业是不是一块很大的蛋糕？', '2018-04-05 21:18:33', '3', '0', '356', '231', '99');
INSERT INTO `t_comments_copy` VALUES ('120', '蒙古族的主体能否说在中国？', '看到资料外蒙古人口才312万，而中国境内蒙古族人口600多万，能否这么说，蒙古族的主体（或者说传承）实际在中国？', '2018-04-05 21:19:32', '4', '0', '78', '23', '7');
INSERT INTO `t_comments_copy` VALUES ('130', '广西是如何从汉地十八省之一变成了自治？', '众所周知，广西原本是汉地十八省之一，武昌起义铁血十八星旗也有一颗代表广西，清末国际上所谓的china proper,也就是中国本土的划分中也包括广西。军阀时代的桂系军阀也出自这里，那么这样一个原本没有异议的本土省份，怎么好端端的变成了少数民族自治区呢？\r\n-----------------------------------------------------------------------------------------------------------------------\r\n针对一些答案，我想补充一下我的问题，首先我认为认可壮族，以及确认56个民族的平等地位跟成立自治区是两个不同的问题。我对于现在的少数民族优惠政策和56个民族的划分是支持的。\r\n\r\n我的问题是为什么广西没有像云南那样在省内成立自治州，而是违反历史传统，整个划为了自治区，就我所知，新中国设立自治区是有深刻的背景的，比如内蒙古在解放前已经成立自治政府，并且出现独立倾向，新疆建国初联邦制呼声很高，西藏当时还没有肃清英国和印度势力等等，在以上地区设立自治区是当时条件下维护国家统一的必要手段。那么，广西成立自治区具体有什么样的政治考量，是否跟当时广西状况有什么关系，或者就是一次头脑发热的错误决策？\r\n\r\n我特别想听听熟悉中国近代史和建国后政治的朋友的看法', '2018-04-05 21:20:29', '5', '0', '56', '23', '0');
INSERT INTO `t_comments_copy` VALUES ('140', '为什么上海家长不喜欢把女儿嫁给外地人？', '看了很多答友的观点，我还想补充一下：\r\n\r\n1我让她跟家里讲不是为了提亲！本来我也没想让她家里知道的，但是当我从她哪里得知父母坚决反对外地人的态度以后我的第一反应就是直面这个问题，我觉得继续瞒下去心里会有道坎，如果继续瞒到毕业再来解决这个问题，到时候两个人可能会更无措（现在特别难受，如果让我再做选择我会隐瞒）\r\n\r\n2提这个问题我没有要黑上海人的意思，我很喜欢这座城市的文化和秩序，我也有很多要好的上海朋友。这个问题是我从她包括其他上海同学那里了解到的，在她们的成长环境里会有很多家长持有这种不能与外地人谈恋爱的观点。昨天我刚得知身边一个上海女生也是因为相同的原因被家里施压与来自湖北的男票分手，所以这其实是种普遍现象的，我希望一部分答友不要避重就轻\r\n\r\n3很多答友给我贴凤凰男的标签，我先不说我自己是不是凤凰男，必须承认抱有“娶个上海老婆少奋斗十年”想法的外地人大有人在，这是种更为普遍的现象。因为以后想留在上海的缘故，我是倾向于谈上海女朋友的，说完全不在乎女生的物质条件我自己都不会信。但是我遇到真正自己喜欢的人，我不会在乎她来自哪里，也不会屈服于家里的压力。我的父母对于女生的要求就是希望眼睛大一点，其他问题一概不会干预（其实我觉得是懒得干预）\r\n\r\n4那些黑山东的答友啊，拜托你们对山东的印象不要停在山东卫视那种垃圾里面好吗。我承认山东家暴现象，大男子主义，酒桌文化，以及一些低俗闹婚现象在全国范围内比较突出。但是不能就此否定我们一亿山东人吧。\r\n\r\n——————————分割线——————————\r\n我来自北方三线城市，现在在上海念书，今年大二，上学期在班里谈了一个上海本地的女朋友\r\n\r\n她敢爱敢恨，性格独立，是个非常开朗的女生。尽管没考虑过婚姻，但她的确让我有携手一生的冲动。我们彼此都非常依赖对方，恨不得每刻都在一起。那时候我们牵着手走在班里，脸上洋溢的都是幸福的笑容。\r\n\r\n有一次我给她推荐了一首我高中时听过的歌《上海小姑娘》，她听完以后眼泪直接落下来了，她说她害怕我们会像歌里的主人公一样，她有一天会失去我，那时我笑笑没有说话。再后来她给我讲家里人一直给她灌输坚决不能跟外地人谈恋爱的观点，所以我们恋爱的事情必须对其父母保密。\r\n\r\n     那时我不理解她，偏偏让她主动告诉家里，她劝了我很久最后还是当着我的面不情愿地跟家里说了，此后几天她人很憔悴心事重重（我猜测是那时家里打电话阻挠），在寒假她回家的那天我送她上车，我们说好共同面对这一切，三天后她过生日我去他家当面见他的父母，她那时也认为只要她父母见过我一定能够接受我的。让我始料未及的是，回家的那天晚上她迫于家里的压力跟我提出了分手，电话那头她哭得很伤心，我并不知晓那天到底她家里人是怎样跟她说的。\r\n\r\n     我开始疯狂表达后悔，来挽救这段感情。她对我说这就是她的家庭她尝试过她没办法改变，就算她还爱我我们也会因为这样的家庭而无法到达婚姻的那一步。经历了这件事她累了，她恨我作出的愚蠢决定，她没有力气去对抗，没有信心继续了。\r\n\r\n在学校最后的那一周眼看着身边同学放假回家，我的心情一下子变得很糟。也曾经去她家找过她，怕她的父母见到我会给她更大的压力，我选择了离开。\r\n\r\n    现在开学了，在一个班里上课，可她却依然不肯面对我，躲避我的眼神，躲避我的一切。仿佛我们之间什么都没有发生过一样。', '2018-04-20 21:22:02', '6', '0', '453', '34', '125');
INSERT INTO `t_comments_copy` VALUES ('150', '台湾民主吗？', '台湾民主吗？所谓的民主是什么？一人手里有一张票就能够实现民主吗？', '2018-04-03 21:23:18', '7', '0', '345', '54', '37');
INSERT INTO `t_comments_copy` VALUES ('160', '中国人为什么这么喜欢消费大豆？', '世界大豆年产量3.5亿吨，中国每年自产与进口大豆总量1.1亿吨。将近世界1/3，远超世界人均水平。\r\n\r\n那么如题，中国人为什么这么喜欢消费大豆？这是否表明中国人消费大豆的效率比较低，抑或是表明中国人有比较特殊的饮食结构？', '2018-04-02 21:24:47', '8', '0', '72', '25', '6');
INSERT INTO `t_comments_copy` VALUES ('170', '中国教育最大的失败在哪里？', '可以这样说，中国教育部是仅次于铁道部最备受争议的话题。可以看的到，上大学之后越来越多的学生不感激反而大骂整个学校。当这种现象增大时，我们就不能当作个体性格的因素造成的了。那么是什么使中国的教育（不仅仅是学校教育）这样失败？', '2018-04-01 21:25:54', '9', '0', '720', '342', '421');
INSERT INTO `t_comments_copy` VALUES ('180', '中国制造业在未来还有救吗？', '看了知乎很对回答感觉我国制造业药丸啊。中国制造业真的转型无望吗？那么作为普通人如何助力中国制造业转型升级？', '2018-04-02 21:26:45', '10', '0', '267', '143', '2');
INSERT INTO `t_comments_copy` VALUES ('190', '房价是不是已经透支了未来几十年中国人的购买力？', '这些年楼市的火爆以及房价的上涨速度有目共睹，大多数买房子的人都是父母积蓄加自己的存款凑够首付，加上未来几十年的贷款才能够买下，那么现在由楼市带来的经济表面的繁荣是不是透支了未来几十年的购买力换来的呢，当大多数人几十年手里都没有那么多钱的时候经济又怎么办呢', '2018-03-25 21:27:59', '11', '0', '8238', '2341', '23');
INSERT INTO `t_comments_copy` VALUES ('200', '民国时期是中国第二次百家争鸣吗？', '我和同学就这个问题发生了不同的看法。我个人很讨厌民国粉，也不认为民国时代所谓的百家争鸣就比现在好。当时的大师就比现在牛逼。不过因为实在是才疏学浅...不知道如何回答，求教一二，不胜感激。', '2018-04-02 21:29:20', '12', '0', '3421', '2312', '123');
INSERT INTO `t_comments_copy` VALUES ('210', '有哪些曾给你力量的句子值得分享？', '尚未佩妥剑 转眼便江湖\r\n\r\n愿你\r\n\r\n历尽千帆来 归来仍少年', '2018-04-03 21:31:22', '13', '0', '8362', '234', '23');
INSERT INTO `t_comments_copy` VALUES ('220', '为什么明粉说话戾气那么重？？', '各位明粉国仇家恨的民族感那么强吗？？？', '2018-04-03 21:32:25', '14', '0', '45', '34', '1');
INSERT INTO `t_comments_copy` VALUES ('230', '假如外来人口在不断冲击本地文化，当地文化会不会不断削弱？', '对比珠三角广州深圳两个城市，广州本地人外地人的比例为1比1,而深圳本地人与外地人的比例为1:40.广州虽然在尽力保存本土文化，但仔细发现部分区如粤语早就被普通话取代，例如天河区等，而深圳几乎消失了原本的本地文化，假如外来人口在不断冲击本地文化，当地文化会不会不断削弱？', '2018-04-04 21:33:46', '15', '0', '654', '43', '34');
INSERT INTO `t_comments_copy` VALUES ('231', null, '可以第一', null, '1', '0', '0', '6', '0');

-- ----------------------------
-- Table structure for `t_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES ('1', '话题', '2018-04-19');
INSERT INTO `t_type` VALUES ('2', '问题', '2018-04-27');

-- ----------------------------
-- Table structure for `t_users`
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT '123456',
  `sex` int(11) DEFAULT NULL COMMENT '0 代表男 1代表女',
  `age` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `job` varchar(60) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `photo` varchar(20000) DEFAULT NULL,
  `words` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('1', '123', '123', '0', null, '12', '1@qq.com', null, null, null, null, '123', null);
INSERT INTO `t_users` VALUES ('2', '1', '', '0', null, '1', '1', null, null, null, null, '1', null);
INSERT INTO `t_users` VALUES ('3', '王玉英', '123456', '1', '15', '13645879632', null, '上海松江', '程序员', '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('4', '程成', '123456', '0', '26', '18315457896', null, '四川成都', '程序员', '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('5', '张玉兰', '123456', '1', '17', '1568974563245', null, '四川成都', '程序员', '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('6', '张国英', '123456', '1', '1', '15689745634', null, '四川成都', '程序员', '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('7', '顾俊杰', '123456', '0', '17', '17896547895', null, '四川成都', '程序员', '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('8', '比度克', '123456', '0', '21', '183545698745', null, '四川成都', '程序员', '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('9', '千珏', '123456', '1', '20', '178965423654', null, '四川成都', '程序员', '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('10', '古天乐', '123456', '0', '22', '14863258745', null, '四川成都', '程序员', '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('11', '王梦瑶', '123456', '1', '23', '14569874587', null, '四川成都', '程序员', '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('12', '秦俊杰', '123456', '0', '25', '12347856987', null, '四川成都', '程序员', '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('13', '王力', '123456', '0', '16', '14785254786', null, '四川成都', '程序员', '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('14', '李建华', '123456', '0', '21', '14569852369', null, '四川成都', '程序员', '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('15', '王长春', '123456', '0', '18', '147852369874', null, '四川成都', '程序员', '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('16', '12', '12', null, null, null, '12', null, null, '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('18', '133', '123', null, null, null, '123', null, null, '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('19', '123', '123456', null, null, null, '123', null, null, '2018-04-20', null, null, null);
INSERT INTO `t_users` VALUES ('20', '1', null, '0', null, '1', '1@qq.com', null, null, null, null, '1', null);
INSERT INTO `t_users` VALUES ('21', '1', null, '0', null, '1', '1@qq.com', null, null, null, null, '11', null);
INSERT INTO `t_users` VALUES ('22', '1', null, '0', null, '1', '1@qq.com', null, null, null, null, '11', null);
INSERT INTO `t_users` VALUES ('23', '1', null, '0', null, '1', '1@qq.com', null, null, null, null, '11', null);
INSERT INTO `t_users` VALUES ('24', '1', null, '0', null, '1', '1@qq.com', null, null, null, null, '11', null);
INSERT INTO `t_users` VALUES ('25', '', '123', '0', null, '', '', null, null, null, null, '', null);

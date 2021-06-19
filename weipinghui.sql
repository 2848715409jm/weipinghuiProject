-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-06-19 10:47:10
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `weipinghui`
--

-- --------------------------------------------------------

--
-- 表的结构 `list`
--

CREATE TABLE `list` (
  `id` int(10) NOT NULL,
  `name` char(40) DEFAULT NULL,
  `imgpath` text,
  `brand` varchar(255) DEFAULT NULL,
  `introduce` text,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(10) DEFAULT NULL COMMENT '库存',
  `pid` int(10) DEFAULT NULL,
  `isshowindex` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `list`
--

INSERT INTO `list` (`id`, `name`, `imgpath`, `brand`, `introduce`, `price`, `stock`, `pid`, `isshowindex`) VALUES
(1, '【小红书达人推荐】乐町2021早春少女新品抽褶碎花连衣裙', 'https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvop/00115128/10010028/1309869558-452125805626892288-452125805626892290-1_270x270_90.jpg', '乐町', '颐和园，中国清朝时期皇家园林，前身为清漪园，坐落在北京西郊，距城区15公里，占地约290公顷，与圆明园毗邻。它是以昆明湖、万寿山为基址，以杭州西湖为蓝本，汲取江南园林的设计手法而建成的一座大型山水园林，也是保存最完整的一座皇家行宫御苑，被誉为“皇家园林博物馆”，也是国家重点旅游景点。\r\n                                清朝乾隆皇帝继位以前，在北京西郊一带，建起了四座大型皇家园林。乾隆十五年（1750年），乾隆皇帝为孝敬其母孝圣皇后动用448万两白银在这里改建为清漪园，形成了从现清华园到香山长达二十公里的皇家园林区。咸丰十年（1860年），清漪园被英法联军焚毁。光绪十四年（1888年）重建，改称颐和园，作消夏游乐地。光绪二十六年（1900年），颐和园又遭“八国联军”的破坏，珍宝被劫掠一空。清朝灭亡后，颐和园在军阀混战和国民党统治时期，又遭破坏。', '203.50', 10, 2, NULL),
(2, '甜美白色连衣裙女2021新款夏季收腰气质长裙泡泡袖衬衫裙', 'https://a.vpimg3.com/upload/merchandise/pdcvis/605743/2021/0511/57/537509cb-cf55-43d2-bb63-cbd257c1afd9_521x521_90.jpg', 'KUOSE', '天安门，坐落在中华人民共和国首都北京市的中心、故宫的南端，与天安门广场以及人民英雄纪念碑、毛主席纪念堂、人民大会堂、中国国家博物馆隔长安街相望，占地面积4800平方米，以杰出的建筑艺术和特殊的政治地位为世人所瞩目。\r\n天安门是明清两代北京皇城的正门，始建于明朝永乐十五年（1417年），最初名“承天门”，寓“承天启运、受命于天”之意。设计者为明代御用建筑匠师蒯祥。清朝顺治八年（1651年）更名为天安门。由城台和城楼两部分组成，有汉白玉石的须弥座，总高34.7米。天安门城楼长66米、宽37米。城台下有券门五阙，中间的券门最大，位于北京皇城中轴线上，过去只有皇帝才可以由此出入。正中门洞上方悬挂着毛泽东画像，两边分别是“中华人民共和国万岁”和“世界人民大团结万岁”的大幅标语。 [1] \r\n民国十四年（1925年）十月十日，故宫博物院成立，天安门开始对民众开放。1949年10月1日，在这里举行了中华人民共和国开国大典，由此被设计入国徽，并成为中华人民共和国的象征。1961年，中华人民共和国国务院公布为第一批全国重点文物保护单位之一。 [2] ', '189.00', 10, 2, NULL),
(3, '法式复古红色格子连衣裙女2021春季新款气质收腰赫本裙', 'https://a.vpimg2.com/upload/merchandise/pdcvis/605743/2021/0304/90/1fe60153-05ab-45b8-9d96-d02904766311.jpg', 'KUOSE', '北京故宫，旧称紫禁城，位于北京中轴线的中心，为中国明清两代的皇家宫殿，是世界上现存规模最大的宫殿型建筑，国家5A级旅游景区，第一批全国重点文物保护单位，国家一级博物馆，1987年入选《世界文化遗产》名录，被誉为“世界五大宫之首”（法国凡尔赛宫、英国白金汉宫、美国白宫、俄罗斯克里姆林宫）。\r\n故宫占地面积72万平方米，建筑面积约15万平方米。建于明成祖永乐四年（1406年），永乐十八年（1420年）落成；现为故宫博物院，藏品主要以明、清两代宫廷收藏为基础。', '142.00', 10, 2, NULL),
(4, '夏韩版女款收腰气质仙女公主裙中长款连衣裙', 'https://a.vpimg2.com/upload/merchandise/pdcvis/115742/2021/0310/96/32b86b70-54c1-4073-b7b9-4e70c6c35ed8.jpg', '韩都衣舍', '八达岭长城，位于北京市延庆区军都山关沟古道北口。是中国古代伟大的防御工程万里长城的重要组成部分，是明长城的一个隘口。八达岭长城为居庸关的重要前哨，古称“居庸之险不在关而在八达岭”。\r\n明长城的八达岭段被称作“玉关天堑”，为明代居庸关八景之一。八达岭长城是明长城向游人开放最早的地段，八达岭景区以八达岭长城为主，兴建了八达岭饭店和由江泽民主席亲笔题名的中国长城博物馆等功能齐全的现代化旅游服务设施。\r\n八达岭景区是全国文明风景旅游区示范点，以其宏伟的景观、完善的设施和深厚的文化历史内涵而著称于世，是举世闻名的旅游胜地。\r\n2016年7月29日开始，八达岭长城向现役军人、残疾军人免收门票。[1]\r\n2019年6月1日起，八达岭长城景区开始实施全网络实名制预约售票，并试行单日游客总量控制，每日最大流量为6.5万人次。提前7天预约购票，扫码购票只需1分钟，持身份证入园更快捷。[2]', '131.00', 10, 2, NULL),
(5, '夏装碎花森系木耳边方领连衣裙', 'https://a.vpimg3.com/upload/merchandise/pdcvis/115742/2020/0729/101/8e1d2bae-92ee-446a-ad2e-8b7cee1860d0.jpg', '韩都衣舍', '国家体育场（鸟巢）位于北京奥林匹克公园中心区南部，为2008年北京奥运会的主体育场。工程总占地面积21公顷，场内观众坐席约为91000个。举行了奥运会、残奥会开闭幕式、田径比赛及足球比赛决赛。奥运会后成为北京市民参与体育活动及享受体育娱乐的大型专业场所，并成为地标性的体育建筑和奥运遗产。\r\n体育场由雅克·赫尔佐格、德梅隆、艾未未以及李兴刚等设计，由北京城建集团负责施工。体育场的形态如同孕育生命的“巢”和摇篮，寄托着人类对未来的希望。\r\n2003年12月24日开工建设，2008年3月完工，总造价22.67亿元。作为国家标志性建筑，2008年奥运会主体育场，国家体育场结构特点十分显著。体育场为特级体育建筑，大型体育场馆。主体结构设计使用年限100年，耐火等级为一级，抗震设防烈度8度，地下工程防水等级1级。\r\n作为北京2022年冬奥会冰上项目场馆，国家体育场的改造工程于2020年开工。\r\n2018年9月22日起，国家体育场门票价格从50元/人次降至40元/人次。', '128.00', 10, 2, NULL),
(6, '春夏装女款方领纯美修身小飞袖棉质凉爽背带裙', 'https://a.vpimg3.com/upload/merchandise/pdcvop/00101577/10001211/1350722837-1037030678738952318-1037030678738964671-4.jpg', '茵曼', '南锣鼓巷是一条胡同，位于北京中轴线东侧的交道口地区，北起鼓楼东大街，南至平安大街，宽8米，全长787米，于元大都同期建成。是北京最古老的街区之一，至今已有740多年的历史。也位列规划中的25片旧城保护区之中。因其地势中间高、南北低，如一驼背人，故名罗锅巷。到了清朝，乾隆十五年（1750年）绘制的《京城全图》改称南锣鼓巷。\r\n它是北京最古老的街区之一，是我国唯一完整保存着元代胡同院落肌理、规模最大、品级最高、资源最丰富的棋盘式传统民居区，也是最赋有老北京风情的街巷。周边胡同里各种形制的府邸、宅院多姿多彩，厚重深邃。南锣鼓巷及周边区域曾是元大都的市中心，明清时期则更是一处大富大贵之地，这里的街街巷巷挤满了达官显贵，王府豪庭数不胜数，直到清王朝覆灭后，南锣鼓巷的繁华也跟着慢慢落幕。\r\n现已完全改造成为步行街，车辆不可通行。\r\n2016年4月25日零时起，南锣鼓巷暂停接待旅游团队。同时，由于不堪景区客流量超载，南锣鼓巷主动取消了3A景区称号。', '251.00', 10, 2, NULL),
(7, '2021夏季新款短袖休闲连衣裙娃娃领甜美淑女风收腰碎花A字裙', 'https://a.vpimg3.com/upload/merchandise/pdcvop/00106600/10007612/345134121-2382481202583126052-2382481202583130143-1.jpg', '妖精的口袋', '国家游泳中心又称“水立方”(Water Cube)位于北京奥林匹克公园内，是北京为2008年夏季奥运会修建的主游泳馆，也是2008年北京奥运会标志性建筑物之一。\r\n它的设计方案，是经全球设计竞赛产生的“水的立方”([H2O]3)方案。其与国家体育场(俗称鸟巢)分列于北京城市中轴线北端的两侧，共同形成相对完整的北京历史文化名城形象。\r\n国家游泳中心规划建设用地62950平方米，总建筑面积65000-80000平方米，其中地下部分的建筑面积不少于15000平方米,长宽高分别为 177m ×177m ×30m。\r\n2008年奥运会期间，国家游泳中心承担游泳、跳水、花样游泳、水球等比赛，可容纳观众坐席17000座，其中永久观众坐席为6000座，奥运会期间增设临时性座位11000个(赛后将拆除)。赛后成为具有国际先进水平的、集游泳、运动、健身、休闲于一体的中心[1]。', '176.00', 10, 2, NULL),
(8, '设计感连衣裙春装2021年新款韩系甜美可爱女装花花背心连衣裙', 'https://a.vpimg2.com/upload/merchandise/pdcvop/00115128/10010028/1336129900-803406562366554112-803406562366558219-1.jpg', NULL, '天坛，世界文化遗产，全国重点文物保护单位，国家AAAAA级旅游景区，全国文明风景旅游区示范点。\r\n天坛，在北京市南部，东城区永定门内大街东侧。占地约273万平方米。天坛始建于明永乐十八年（1420年），清乾隆、光绪时曾重修改建。为明、清两代帝王祭祀皇天、祈五谷丰登之场所。天坛是圜丘、祈谷两坛的总称，有坛墙两重，形成内外坛，坛墙南方北圆，象征天圆地方。主要建筑在内坛，圜丘坛在南、祈谷坛在北，二坛同在一条南北轴线上，中间有墙相隔。圜丘坛内主要建筑有圜丘坛、皇穹宇等等，祈谷坛内主要建筑有祈年殿、皇乾殿、祈年门等。\r\n自2019年1月1日起，天坛的门票收入由税务部门负责征收。[1]', '305.00', 10, 2, NULL),
(9, '2021夏季新款休闲吊带连衣裙甜美风露肩宽松蕾丝薄款花边裙', 'https://a.vpimg3.com/upload/merchandise/pdcvop/00106600/10007612/1758153004-2246247326991392775-2246247326991401037-1.jpg', '妖精的口袋', '圆明园又称圆明三园，是清代大型皇家园林，它坐落在北京西北郊，与颐和园毗邻，由圆明园、长春园和绮春园组成，所以也叫圆明三园。此外，还有许多小园，分布在东、西、南三面，众星拱月般环绕周围。[1]\r\n占地面积3.5平方千米，建筑面积达20万平方米，一百五十余景，有“万园之园”之称。[2]清帝每到盛夏就来到这里避暑、听政，处理军政事务，因此也称“夏宫”。\r\n圆明园始建于1709年（康熙四十八年），最初是康熙帝给皇四子胤禛的赐园。1722年雍正即位以后，拓展原赐园，并在园南增建了正大光明殿和勤政殿以及内阁、六部、军机处诸多值房，欲以夏季在此“避喧听政”。乾隆帝在位期间除对圆明园进行局部增建、改建之外，还在紧东邻新建了长春园，在东南邻并入了万春园。[3]1860年10月6日英法联军洗劫圆明园，抢掠文物，焚烧，同治帝时欲修复，后因财政困难，被迫停止，改建其它建筑。八国联军之后，又遭到匪盗的打击，终变成一片废墟。[4]\r\n圆明园被誉为“一切造园艺术的典范”，被法国作家维克多·雨果称誉为“理想与艺术的典范”。[1][5][6]', '279.00', 10, 2, NULL),
(10, '【新疆棉】2021春夏新女款V领短袖连衣裙女小清新格子收腰', 'https://a.vpimg2.com/upload/merchandise/pdcvis/2021/01/28/181/1151c6f6-62b3-4c77-8db5-81fe8d1e6076.jpg', '茵曼', '北海公园(Beihai Park)，位于北京市中心区，城内景山西侧，在故宫的西北面，与中海、南海合称三海。属于中国古代皇家园林。全园以北海为中心，面积约71公顷，水面占583市亩，陆地占480市亩。这里原是辽、金、元建离宫，明、清辟为帝王御苑，是中国现存最古老、最完整、最具综合性和代表性的皇家园林之一，1925年开放为公园。是中国保留下来的最悠久最完整的皇家园林，为全国重点文物保护单位，是国家AAAA级旅游景区。[1]', '119.00', 10, 2, NULL),
(11, '景山公园', 'http://pic.baike.soso.com/ugc/baikepic2/1305/20170824055140-1975792669_jpg_300_240_14683.jpg/0', NULL, '景山公园位于北京市西城区景山前街，坐落在明清北京城的中轴线上，西临北海，南与故宫神武门隔街相望，是明、清两代的御苑。公园中心的景山为堆土而成，曾是全城的制高点。\r\n景山公园1928年建园，全园总面积23公顷其中，花卉草坪占地1100 平方米。该公园是国家AAAA级旅游景区，公园内有绮望楼、五方亭、寿皇殿、永思殿、牡丹园等景点。\r\n2018年8月，景山公园完成园内住户腾退工作。', '50.00', 10, 2, NULL),
(12, '慕田峪长城', 'http://pic.baike.soso.com/ugc/baikepic2/2959/cut-20170728073143-517518821.jpg/300', NULL, '北京的慕田峪长城位于北京市怀柔区境内，距北京城区73公里。其历史悠久，文化灿烂，在中外享有“万里长城，慕田峪独秀”的美誉。景区内山峦叠嶂，植被覆盖率达90%以上。长城全长5400米，是中国目前最长的长城，也是著名的北京十六景之一，国家AAAAA级旅游区。\r\n慕田峪长城于公元1368年由朱元璋手下大将徐达在北齐长城遗址上督建而成，是明朝万里长城的精华所在。此段长城东连古北口，西接居庸关，自古以来就是拱卫京畿的军事要冲，有正关台、大角楼、鹰飞倒仰等著名景观，长城墙体保持完整，较好地体现了长城古韵。\r\n景区中设有国内一流的登城缆车，开发了中华梦石城、施必得滑道等项目，形成了长城文化、石文化和体育健身娱乐的有机结合。英国前首相梅杰，美国前总统克林顿等多位外国首脑曾到慕田峪长城观光游览。\r\n2018年8月，2018上半年全国5A级旅游景区综合影响力排行榜出炉，慕田峪长城综合影响力51.88，排名第45位。', '25.00', 10, 2, NULL),
(13, '798艺术区', 'http://pic.baike.soso.com/ugc/baikepic2/24322/cut-20190522144236-1687671284_jpg_625_500_82836.jpg/300', NULL, '798艺术区（ArtDist，又称大山子艺术区）位于北京朝阳区酒仙桥街道大山子地区，因当代艺术和798生活方式闻名于世，成为了北京都市文化的新地标。主要有北京季节画廊、小柯剧院等景点。\r\n艺术区西起酒仙桥路，东至酒仙桥东路、北起酒仙桥北路，南至将台路，面积60多万平方米，是原国营798厂等电子工业老厂区所在地。', '25.00', 10, 2, NULL),
(14, '雍和宫', 'http://pic.baike.soso.com/ugc/baikepic2/26365/20170824045520-1923264686_jpg_300_239_20904.jpg/0', NULL, '雍和宫（The Lama Temple）位于北京市区东北角，清康熙三十三年（1694年）， 康熙帝在此建造 府邸、赐予四子 雍亲王，称 雍亲王府。雍正三年（1725年），改王府为 行宫，称雍和宫。雍正十三年（1735年），雍正驾崩，曾于此停放灵柩，因此，雍和宫主要殿堂原绿色 琉璃瓦改为黄色琉璃瓦。又因 乾隆皇帝诞生于此，雍和宫出了两位皇帝，成了“龙潜福地”，所以殿宇为黄瓦红墙，与 紫禁城 皇宫一样规格。乾隆九年（1744年），雍和宫改为 喇嘛庙，特派总理事务王大臣管理本宫事务，无定员。可以说，雍和宫是清朝中后期全国规格最高的一座佛教寺院。\r\n1983年被国务院确定为汉族地区佛教全国重点寺院。该寺院主要由三座精致的 牌坊和五进宏伟的大殿组成。从飞檐斗拱的东西牌坊到古色古香东、西顺山楼共 占地面积66400平方米，有殿宇千余间。', '80.00', 10, 2, NULL),
(15, '清华大学', 'http://pic.baike.soso.com/ugc/baikepic2/30685/cov-20190521162006-1358213175_jpg_500_400_19016.jpg/300', NULL, '清华大学（Tsinghua University）是中华人民共和国教育部直属的高等院校，“211工程”、“985工程”、“世界一流大学和一流学科”，为亚洲大学、环太平洋大学等联盟成员，被誉为“红色工程师的摇篮”，是中国最著名的大学之一。\r\n其前身是清华学堂，始建于1911年，因北京西北郊清华园而得名。1912年，更名为清华学校。1928年，更名为国立清华大学。1938年，迁至昆明，易名国立西南联合大学。1946年，迁回清华园复校。1949年后，更名“清华大学”。', '25.00', 10, 2, NULL),
(16, '古北水镇', 'http://pic.baike.soso.com/ugc/baikepic2/23000/cut-20171020155340-42133074_jpg_460_368_34214.jpg/300', NULL, '古北水镇是司马台长城脚下独具北方风情的度假式小镇。北京古北水镇旅游有限公司成立于2010年7月，由IDG战略资本、中青旅控股股份有限公司、乌镇旅游股份有限公司和北京能源投资（集团）有限公司共同投资建设。\r\n公司旗下北京·密云古北水镇（司马台长城）国际旅游度假区总占地面积9平方公里，总投资逾45亿元人民币，是集观光游览、休闲度假、商务会展、创意文化等旅游业态为一体，服务与设施一流、参与性和体验性极高的综合性特色休闲国际旅游度假目的地。古北水镇（司马台长城）国际旅游度假区内拥有43万平方米精美的明清及民国风格的山地合院建筑，包含2个五星标准大酒店、4个精品酒店、5个主题酒店，20余家民宿、餐厅及商铺，10多个文化展示体验区及完善的配套服务设施。到目前为止，公司拥有3500余名员工。\r\n2018年10月30日起，古北水镇景区门票价格从150元/人次降至140元/人次。', '25.00', 10, 2, NULL),
(17, '什沙海', 'http://pic.baike.soso.com/ugc/baikepic2/5654/20170824060521-1660938315_jpg_300_240_11476.jpg/0', NULL, '什刹海，是北京市历史文化旅游风景区、北京市历史文化保护区。位于市中心城区西城区，毗邻北京城中轴线。水域面积33.6万平方米，与中南海水域一脉相连，是北京内城唯一一处具有开阔水面的开放型景区，也是北京城内面积最大、风貌保存最完整的一片历史街区，在北京城规划建设史上占有独特的地位。在2000年批准的北京25片历史文化保护区中，什刹海地区面积是最大的。\r\n什刹海包括前海、后海和西海（又称积水潭）三个水域及临近地区，与“前三海”相呼应，俗称“后三海”。什刹海也写作“十刹海”，四周原有十座佛寺，故有此称。清代起就成为游乐消夏之所，为燕京胜景之一。什刹海景区的不少古建筑在北京城市建设发展史上及政治文化史上占有重要地位，主要代表有恭王府及花园、宋庆龄故居及醇王府、郭沫若纪念馆、钟鼓楼、德胜门箭楼、广化寺、汇通祠、会贤堂。', '100.00', 10, 2, NULL),
(18, '恭王府', 'http://pic.baike.soso.com/ugc/baikepic2/1473/20170825235847-1715804820_jpg_717_477_73322.jpg/300', NULL, '恭王府（Prince kung’s Mansion），位于北京市西城区柳荫街，国家5A级旅游景区、全国重点文物保护单位，为清代规模最大的一座王府，是中国首家以王府文化为特色的国家级王府博物馆。因恭亲王奕訢曾居住在此而得名。\r\n恭王府南北长约330米，东西宽180余米，占地面积约61120平方米，其中府邸占地32260平方米，花园占地28860平方米。王府分为府邸和花园两部分，府邸堂皇庄重，花园优美繁华，拥有各式建筑群落30多处。', '25.00', 10, 2, NULL),
(19, '北京杜莎夫人蜡像馆', 'http://pic.baike.soso.com/ugc/baikepic2/10261/cut-20171013171143-1307345793_jpg_737_590_54647.jpg/300', NULL, '北京杜莎夫人蜡像馆，是继上海杜莎夫人蜡像馆、香港杜莎夫人蜡像馆、武汉杜莎夫人蜡像馆之后，中国第四家杜莎夫人蜡像馆。', '25.00', 10, 2, NULL),
(20, '前门大街', 'http://pic.baike.soso.com/ugc/baikepic2/5647/20170824010243-1172678826_jpg_279_223_11289.jpg/0', NULL, '前门大街是北京非常著名的商业街。位于京城中轴线，北起前门月亮湾，南至天桥路口，与天桥南大街相连。明嘉靖二十九年（1550）建外城前是皇帝出城赴天坛、山川坛的御路，建外城后为外城主要南北街道。民众俗称前门大街。大街长845米，行车道宽20米。明、清至民国时皆称正阳门大街。1965年正式定名为前门大街。\r\n2018年4月5日，清明假日首日，前门大街接待6.0万人，同比减少58.3％。', '125.00', 10, 2, NULL),
(21, '德云社', 'http://pic.baike.soso.com/ugc/baikepic2/11812/cov-20190731150336-617026083_jpg_1280_879_74718.jpg/300', NULL, '德云社（北京德云社文化传播有限公司）是一家从事专业相声艺术表演的文化传播有限公司，由郭德纲于1995年在北京成立，总部在北京市天桥剧场。该公司是以弘扬中华民族文化、培养曲艺人才、服务大众为主旨的曲艺演出团体，是中国最著名的大型专业相声社团之一。', '25.00', 10, 2, NULL),
(22, '香山公园', 'http://pic.baike.soso.com/ugc/baikepic2/1305/20170824054319-894464240_jpg_300_239_16296.jpg/0', NULL, '香山公园位于北京西郊，地势险峻，苍翠连绵，占地188公顷，是一座具有山林特色的皇家园林，始建于金大定二十六年，距今已有近900年的历史，早在元、明、清时，皇家就在香山营建离宫别院，每逢夏秋时节皇帝都要到此狩猎纳凉。\r\n 香山公园文物古迹众多，亭台楼阁似星辰散布山林之间。这里有燕京八景之一的“西山晴雪”；有集明清两代建筑风格的寺院“碧云寺”；有国内仅存的木质贴金“五百罗汉”；有迎接六世班禅的行宫“宗镜大昭之庙”；有颇具江南特色的古雅庭院“见心斋”。\r\n 香山红叶驰名中外，1986年就被评为“新北京十六景”之一，成为京城最浓的秋色。\r\n香山公园于1993年被评为首都文明单位，2001年被国家旅游局评为AAAA景区，2002年被评为首批北京市精品公园。', '150.00', 10, 2, NULL),
(23, '北京大学', 'http://pic.baike.soso.com/ugc/baikepic2/27412/cov-20190525162756-42255749_jpg_690_526_30936.jpg/300', NULL, '北京大学（Peking University，简称“北大”），由中华人民共和国教育部直属，位列“211工程”“985工程”“世界一流大学和一流学科”，为九校联盟、亚洲大学联盟等联盟成员。\r\n北大创立于1898年，初名京师大学堂。1912年，更名国立北京大学。1937年，抗日战争爆发后，北大与清华、南开合并组建国立西南联合大学。1946年，迁回北平复校。1952年，迁入原燕京大学校园（燕园）。2000年，北京医科大学回归，成为北京大学医学部。', '25.00', 10, 2, 1),
(24, '中国国家博物馆', 'http://pic.baike.soso.com/ugc/baikepic2/26022/cut-20190829122815-1940041223_jpg_751_600_36257.jpg/300', NULL, '中国国家博物馆（National Museum of China）是代表国家征集、收藏、保管、展示、阐释能够充分反映中华优秀传统文化、革命文化和社会主义先进文化代表性物证的最高机构，是国家最高历史文化艺术殿堂和文化客厅。\r\n中国国家博物馆位于北京市天安门广场东侧，其前身是成立于1912年的国立历史博物馆筹备处，现有藏品数量140余万件，涵盖古代文物、近现代文物、图书古籍善本、艺术品等多种门类。中国国家博物馆展览包括基本陈列、专题展览、临时展览三大系列。', '25.00', 10, 2, 1),
(25, '孔庙和国子监博物馆', 'http://pic.baike.soso.com/ugc/baikepic2/26318/20170823193644-1989430504_jpg_300_265_26916.jpg/300', NULL, '孔庙和国子监博物馆国子监是中国元、明、清三代国家管理教育的最高行政机关和国家设立的最高学府，而孔庙则是皇家祭孔之地，两者相伴，形成“左庙右学”。新中国成立后，国子监里开设为首都图书馆，首都博物馆则在孔庙内建立。随着首都图书馆与首都博物馆社会影响的提高，需要有良好硬件设施的现代化场馆来满足服务功能，北京市政府经过慎重研究，决定将二馆陆续迁出，于是“空”出了国子监与孔庙。孔庙与国子监修葺一新，合并成一个博物馆，重新对外开放。', '25.00', 10, 2, NULL),
(26, '北京动物园', 'http://pic.baike.soso.com/ugc/baikepic2/30355/20170824024929-1513496300_jpg_300_240_16007.jpg/0', NULL, '北京动物园位于北京市西城区西直门外大街，东邻北京展览馆和莫斯科餐厅，占地面积约86公顷，水面8.6公顷。始建于清光绪三十二年（1906年），是中国开放最早、饲养展出动物种类最多的动物园。饲养展览动物500余种5000多只；海洋鱼类及海洋生物500余种10000多尾。每年接待中外游客600多万人次。是中国最大的动物园之一，也是一所世界知名的动物园。\r\n2018年，清明三天小长假，北京动物园共接待游客16.2万人次。', '25.00', 10, 2, NULL),
(27, '奥林匹克森林公园', 'http://pic.baike.soso.com/ugc/baikepic2/45437/20160726131715-1283092490.jpg/300', NULL, '奥林匹克森林公园（Olympic forest park）位于北京市朝阳区北五环林萃路，国家5A级旅游景区，是奥林匹克公园的终点配套建设项目之一。\r\n东至安立路，西至林萃路，北至清河，南至科荟路。公园占地680公顷，其中南园占地380公顷，北园占地300公顷。公园森林资源丰富，以乔灌木为主，绿化覆盖率95.61%。著名景点有奥海、湿地、天境、森林艺术中心等。', '300.00', 10, 2, NULL),
(28, '北京大栅栏', 'http://pic.baike.soso.com/ugc/baikepic2/13234/20170806103020-222710919.jpg/300', NULL, '大栅栏（Dàshílànr），是北京市前门外一条著名的商业街。现也泛指大栅栏街及廊房头条、粮食店街、煤市街在内的一个地片。大栅栏地处古老北京中心地段，是南中轴线的一个重要组成部分，位于天安门广场以南，前门大街西侧，从东口至西口全长275米。自1420年（明朝永乐十八年）以来，经过500多年的沿革，逐渐发展成为店铺林立的商业街了。\r\n在大栅栏分布着11个行业的36家商店。复原民国初期风貌，大栅栏已有500多年的历史，曾经就是一个繁华的商业区。兴起于元代，建立于明朝，从清代开始繁盛至今。1900年义和团曾一把火将整条街付之一炬，重建后依旧繁华。据中国社会科学院考古研究所专家徐萍芳介绍，此次复原以民国初期风貌为基础。大栅栏的由来，要追溯到明代孝宗弘治元年。当时，北京有“宵禁”，为了防止盗贼隐藏在大街小巷之内，由朝廷批准，在北京很多街巷道口，建立了木栅栏。[1]', '25.00', 10, 2, 1),
(29, '玉渊潭公园', 'http://pic.baike.soso.com/ugc/baikepic2/5657/20170824061231-987981139_jpg_300_240_17877.jpg/0', NULL, '玉渊潭公园，AAAA级景区，位于海淀区。东门与钓鱼台国宾馆相邻；西至西三环中路与中央电视塔隔路相望；南门在中华世纪坛正北方，北接海军总医院。\r\n1960年定名玉渊潭公园。截至2015年，东西宽1820米，南北长1106米，规划总面积136.69公顷，其中水域面积61公顷，建成绿地面积74.44公顷（含草坪），绿化覆盖率达到95%以上，园内现有各种植物约19.95万株。[1]\r\n公园主要景区由西部樱花园、北部引水湖景区（局部建成）、南部中山岛、东面的留春园等组成。公园每年春季都会举办“樱花赏花', '25.00', 10, 2, NULL),
(30, '北京欢乐谷', 'http://pic.baike.soso.com/ugc/baikepic2/30125/20170621124603-942007484.jpg/300', NULL, '北京欢乐谷是国家4A级旅游景区、新北京十六景、北京文化创意产业基地，由华侨城集团创办，是集国际化、现代化的主题公园。位于朝阳区东四环四方桥东南角，占地56万平方米[1]。其中，公园一期占地约54万平方米，于2006年7月29日正式开放[2]。公园二期、三期分别占地5万平方米和40多万平方米。公园分别由峡湾森林、亚特兰蒂斯、失落玛雅、爱琴港、香格里拉、蚂蚁王国和欢乐时光七个主题区（另外还有位于爱琴港的奇幻海洋馆、欢乐世界主题漂流三期项目）组成。\r\n北京欢乐谷设置了120余项体验项目，包括40多项游乐设施、50多处人文生态景观、10多项艺术表演、20多项主题游戏和商业辅助性项目，可以满足不同人群的需要。获得过“中国文化创意产业高成长企业百强”“首都旅游紫禁杯先进集体”“首都文明旅游景区”等荣誉。', '800.00', 10, 2, NULL),
(31, '北京植物园', 'http://pic.baike.soso.com/ugc/baikepic2/5368/20170824042053-2049532269_jpg_368_294_26254.jpg/0', NULL, '北京植物园位于京西香山脚下，隶属于北京市公园管理中心。距市中心23公里。有多条公交可达。北京植物园是一个集科普、科研、游览等功能于一体的综合性植物园，是国家重点建设的植物园之一。\r\n北京植物园是国家级AAAA旅游景区、中国林业科普基地、中国野生植物保护科普教育基地、中国青少年科技教育基地、中央国家机关思想教育基地、北京市科普教育基地、北京市首批精品公园。[1]', '25.00', 10, 2, 1),
(32, '五道营胡同', 'http://pic.baike.soso.com/p/20120723/ext-20120723185253-1918786972.jpg', NULL, '五道营胡同位于北京市东城区北部，安定门立交桥东侧，属安定门街道办事处管辖，呈东西走向。东起雍和宫大街，西止安定门内大街，南与箭厂胡同相通，北有二条支巷通安定门东大街。全长632米，宽6米，沥青路面。五道营胡同明朝叫武德卫营，清代讹称.名字虽已面目全非，但也是因驻扎军队而得名的。', '25.00', 10, 2, NULL),
(33, '烟袋斜街', 'http://pic.baike.soso.com/ugc/baikepic2/5654/20170824064717-1678380461_jpg_633_493_72702.jpg/300', NULL, '烟袋斜街是位于北京市西城区东北部的一条街。烟袋斜街东起地安门外大街，西到小石碑胡同，东西斜形走向。入东口后向西，到与大石碑胡同交叉处向西南折，然后再向西北折，最终与小石碑胡同相交，连接西侧的鸦儿胡同。该街全长232米，宽5至6米。《光绪顺天府志》记作“烟袋斜街”。清朝初年，该街称“斜街”。清朝末年，改称“烟袋斜街”，沿用至今。', '25.00', 10, 2, 1),
(34, '地坛公园', 'http://pic.baike.soso.com/ugc/baikepic2/16485/20170824035306-1184164614_jpg_619_425_60193.jpg/300', NULL, '地坛公园[1]又称方泽坛，在中国北京安定门外，是明世宗以后明清两代皇帝每年夏至祭祀土地神的地方。地坛始建于明代嘉靖九年（公元1530年），是中国现存的最大的祭地之坛。坛内总面积37.4公顷，呈方型，整个建筑从整体到局部都是遵照中国古代“天圆地方”、“天青地黄”、“天南地北”、“龙凤”、“乾坤”等传统和象征传说构思设计的。地坛现存有方泽坛、皇祇室、宰牲亭、斋宫、神库等古建筑。', '1000.00', 10, 2, NULL),
(35, '玉渡山', 'http://pic.baike.soso.com/ugc/baikepic2/2113/cut-20170930171913-243279673_jpg_345_276_20698.jpg/300', NULL, '玉渡山自然风景区位于延庆城区10公里，龙庆峡景区上游，海坨山脚下。该区地处深山，人迹罕至，景色秀丽，环境清幽。它是北京地区一块鲜为人知的处女地，是大自然保存最原始的绿色记忆，是现代人回归大自然最好的选择，是延庆区自然保护区，是京郊最美的地方。\r\n2016年7月29日开始，玉渡山自然风景区向现役军人、残疾军人免收门票。', '25.00', 10, 2, 1),
(36, '明十三陵', 'http://pic.baike.soso.com/ugc/baikepic2/16098/20170824081355-342694255_jpg_331_265_10733.jpg/0', NULL, '明十三陵，位于北京市昌平区境内天寿山南麓，距京城约50公里，总面积120多平方公里。自永乐七年（公元1409年）五月始作长陵，到明朝最后一帝崇祯藏入思陵止，其间230多年，这里先后修建了13座金壁辉煌的帝王陵墓、7座妃子墓、1座太监墓。共埋葬了13位皇帝、23位皇后、2位太子、30余名妃嫔、1位太监，是当今世界上保存完整、埋藏皇帝最多的墓葬群。 \r\n十三陵建造的顺序依次为长陵、献陵、景陵、裕陵、茂陵、泰陵 、康陵、永陵、昭陵、定陵、庆陵、德陵、思陵，其中最著名的要数长陵和定陵。长陵建成于明永乐十一年（1413年），是明朝第三帝朱棣的陵墓，也是十三陵中最早和最大的一座。高耸的明楼，是长陵的标志。\r\n1957年，被批准为北京市第一批重点古建文物保护单位；1982年，被列为全国44个重点风景名胜保护区之一；2003年，被列入《世界遗产目录》；2011年，成为国家5A级旅游景区。', '25.00', 10, 2, NULL),
(37, '北京潭柘寺', 'http://pic.baike.soso.com/ugc/baikepic2/16090/20170824030952-1029639818_jpg_300_240_15865.jpg/0', NULL, '潭柘寺位于北京西部门头沟区东南部的潭柘山麓，距市中心30余公里。寺院坐北朝南，背倚宝珠峰。潭柘寺寺内占地2.5公顷，寺外占地11.2公顷，再加上周围由潭柘寺所管辖的森林和山场，总面积达121公顷以上。\r\n潭柘寺始建于西晋永嘉元年（公元307年），寺院初名“嘉福寺”，清代康熙皇帝赐名为“岫云寺”，但因寺后有龙潭，山上有柘树，故民间一直称为“潭柘寺”。\r\n潭柘寺主要建筑可分为中、东、西三路，中路主体建筑有山门、天王殿、大雄宝殿、斋堂和毗卢阁；东路有方丈院、延清阁、行宫院、万寿宫和太后宫等；西路有愣严坛（已不存）、戒台和观音殿等，庄严肃穆。\r\n2018年8月21日，北京市门头沟区潭柘寺镇对潭柘寺周边多年碰不得、拆不动的违法建设彻底拆除，让潭柘寺逐渐恢复原貌。', '25.00', 10, 2, 1),
(38, '龙庆峡', 'http://pic.baike.soso.com/ugc/baikepic2/22987/20171023084213-1296524123.jpg/300', NULL, '龙庆峡位于北京市延庆区城东北10公里的古城村西北的古城河口，距北京城区85公里。龙庆峡古称“古城九曲”，被人们誉为北京的“小漓江”，是北京十六景之一。其水源于海坨山东麓，经玉渡山汇入古城水库。\r\n延庆的龙庆峡峰峦峭立，山清水秀，7公里长的峡谷既有南方的秀丽，又有北方的雄奇，开阔与幽深间或，险峻与浅滩并存，神仙院、金刚寺、玉泉阁、神笔峰等奇山异景胜似仙境，到了冬天又成为冰雕和冰灯的世界。每年的冰灯节吸引了众多的八方宾客。\r\n2019年2月8日晚，延庆龙庆峡冰灯展区发生山体碎石坠落致数名游客受伤事件。造成1人死亡12人受伤，龙庆峡景区已经关闭。', '65.00', 10, 2, 1),
(39, '老舍茶馆', 'http://pic.baike.soso.com/ugc/baikepic2/10119/20160731022604-1461261558.jpg/300', NULL, '老舍茶馆是以老舍先生命名的茶馆，建于1988年，古香古色、京味十足。可以欣赏到曲艺、戏剧名流的精彩表演，同时品用名茶、宫廷细点和应季北京风味小吃。开业以来，老舍茶馆接待了很多中外名人，享有很高的声誉。[1]', '25.00', 10, 2, NULL),
(40, '黄山', 'https://bkimg.cdn.bcebos.com/pic/377adab44aed2e73d62918068f01a18b86d6fadc?x-bce-process=image/resize,m_lfit,w_640,limit_1', NULL, '黄山，安徽省地级市，古称新安、歙州、徽州，地处皖浙赣三省交界处，西南与江西省景德镇市、婺源县交界，东南与浙江省开化、淳安、临安县为邻，东北与安徽省宣城市的绩溪、旌德、泾县接壤，西北与池州市的石台、青阳、东至县毗邻，总面积9807平方千米。\r\n黄山市古称徽州，既是徽商故里，又是徽文化的重要发祥地，新安画派、新安医学、徽派建筑、徽州四雕、徽派盆景等影响深远，徽剧是京剧的前身，徽菜是中国八大菜系之一。黄山市境内的黄山为世界自然与文化双遗产，皖南古村落西递、宏村为世界文化遗产。 [1] \r\n2019年，黄山市下辖3个区、4个县 [2]  ，常住人口142.1万人，实现地区生产总值（GDP）818.0亿元，分产业看，第一产业增加值61.8亿元，第二产业增加值283.3亿元，第三产业增加值472.9亿元，三次产业结构为7.6：34.6：57.8，人均GDP57853元（折合8386美元）', '100.00', 20, 13, 1),
(41, '三河古镇', 'https://bkimg.cdn.bcebos.com/pic/77094b36acaf2edd9ce353b6841001e93901935a?x-bce-process=image/resize,m_lfit,w_500,h_500,limit_1', NULL, '三河古镇，古名鹊渚、鹊尾（渚）、鹊岸，是中国历史文化名镇，国家AAAAA级旅游景区，位于安徽省合肥市肥西县南端，地处肥西、庐江、舒城交界处，古镇总面积2.9平方公里。 [1-2] \r\n三河古镇原是巢湖中的高洲，因泥沙淤积，渐成陆地。南北朝后期称三汊河，明、清置三河镇。 [2] \r\n三河古镇有丰乐河、杭埠河、小南河在境内汇合，经新河向东流约15公里入巢湖。镇内有古城墙、古炮台、太平军指挥部旧址、英王府、一人巷、万年台、李府粮仓、鹤庐、刘同兴隆庄等历史遗迹，是庐剧的发源地，古镇有米饺、牛皮糖、酥糖、麦芽糖、茶干、米酒等特产。 [3] \r\n为表达对全体医护人员的敬意和感谢，自疫情结束恢复运营之日起至2020年12月31日，三河古镇景区所有收费景区将面向全国医护工作者实行免费游览政策', '50.00', 6, 13, 1),
(42, '天柱山', 'https://bkimg.cdn.bcebos.com/pic/a6efce1b9d16fdfad72ae0f5b08f8c5494ee7b62?x-bce-process=image/resize,m_lfit,w_640,limit_1', NULL, '天柱山，安徽省安庆市潜山市西部山地，又名潜山、皖山、皖公山（安徽省简称“皖”由此而来）、万岁山、万山等。为大别山山脉东延的一个组成部分（或称余脉）。一般指潜山市境内以其主峰天柱峰为中心的山地，有时也指其主峰天柱峰（地理坐标东经116°27′，北纬30°43′）。据1980年航空测定，主峰海拔为1488.4米， [1]  2008年，国家测绘局重新测定为1489.8米。 [2] \r\n天柱山呈现出奇峰、怪石、幽洞、峡谷等自然景观，以雄、奇、灵、秀而著称于世。天柱山内植被繁茂，森林覆盖率高达97%，享有“空气维他命”美称的负氧离子是国家最高的Ⅰ级标准的三倍。唐代大诗人白居易在《题天柱峰》一诗中赞美：“天柱一峰擎日月，洞门千仞锁云雷。\r\n天柱山拥有全国唯一、全球揭露面积最大、暴露最深的超高压变质带，尤其以崩塌堆垒地貌景观而被地质学家誉为世界上最美的花岗岩地貌，又被称做“地球的泄密者”。文学家形容其为“山峰丛林”和“石头宫殿”。2011年9月被联合国教科文组织正式批准成为世界地质公园。\r\n天柱山因独特的自然景观，名列安徽省三大名山之一（黄山、九华山、天柱山）。早在汉武帝时就封为“南岳”，历代都有人文活动。建国后开发为安庆天柱山风景名胜区，先后获得国家级重点风景名胜区，国家自然与文化遗产地，国家森林公园，国家AAAAA级旅游景区等称号。', '20.00', 15, 13, 1),
(43, '九华山', 'https://bkimg.cdn.bcebos.com/pic/4ec2d5628535e5dd647a6d027ec6a7efcf1b629d?x-bce-process=image/resize,m_lfit,w_640,limit_1', NULL, '九华山（Jiuhua Mountain），古称陵阳山、九子山，为“中国佛教四大名山”之一，位于安徽省池州市青阳县境内，素有“东南第一山”之称，传说因唐朝李白《望九华赠青阳韦仲堪》诗：“昔在九江上，遥望九华峰。天河挂绿水，秀出九芙蓉。”而更名为“九华山”。 [1] \r\n九华山为皖南三大山系之一，主体是由花岗岩岩体组成的强烈断隆带。其边缘地区除部分为沉积岩外，大都是由花岗闪长岩组成的褶皱断块轻度隆起带。九华山地处北亚热带，不仅受到湿润季风的影响，而且受到山区海拔高度、地形地势的制约，所以具有温和、湿润、阴凉等山区气候特点。 [2-3]  九华山北俯长江，南望黄山，东临太平湖，西接池州，绵亘一百余公里，主要有九十九峰，最高的十王峰海拔1342米。九华山区域总面积约120平方公里，大致呈南-北走向，介于东经117°43′-118°80′，北纬30°24′-30°40′之间。 [3] \r\n九华山自山麓至天台峰，名刹古寺林立，文物古迹众多，尚存化城寺、月身宝殿、慧居寺、百岁宫等古刹78座，佛像1500余尊，藏有明万历皇帝颁赐的圣旨、藏经及其它玉印、法器等文物1300余件。 [4]  2006年以九华山为主体的九华山风景名胜区被评为国家重点风景名胜区。 [5]  2007年九华山风景区获评为国家AAAAA级旅游景区。 [6]  2009年，九华山获评为国家地质公园。 [7]  2019年4月17日，联合国教科文组织发布公告，批准九华山为世界地质公园', '86.00', 50, 13, 1),
(44, '龙泉寺', 'https://bkimg.cdn.bcebos.com/pic/b2de9c82d158ccbf5a9dea1910d8bc3eb13541eb?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5', NULL, 'INSERT INTO `scenics` VALUES (\'43\', \'九华山\', \'https://bkimg.cdn.bcebos.com/pic/4ec2d5628535e5dd647a6d027ec6a7efcf1b629d?x-bce-process=image/resize,m_lfit,w_640,limit_1\', \'九华山（Jiuhua Mountain），古称陵阳山、九子山，为“中国佛教四大名山”之一，位于安徽省池州市青阳县境内，素有“东南第一山”之称，传说因唐朝李白《望九华赠青阳韦仲堪》诗：“昔在九江上，遥望九华峰。天河挂绿水，秀出九芙蓉。”而更名为“九华山”。 [1] \\r\\n九华山为皖南三大山系之一，主体是由花岗岩岩体组成的强烈断隆带。其边缘地区除部分为沉积岩外，大都是由花岗闪长岩组成的褶皱断块轻度隆起带。九华山地处北亚热带，不仅受到湿润季风的影响，而且受到山区海拔高度、地形地势的制约，所以具有温和、湿润、阴凉等山区气候特点。 [2-3]  九华山北俯长江，南望黄山，东临太平湖，西接池州，绵亘一百余公里，主要有九十九峰，最高的十王峰海拔1342米。九华山区域总面积约120平方公里，大致呈南-北走向，介于东经117°43′-118°80′，北纬30°24′-30°40′之间。 [3] \\r\\n九华山自山麓至天台峰，名刹古寺林立，文物古迹众多，尚存化城寺、月身宝殿、慧居寺、百岁宫等古刹78座，佛像1500余尊，藏有明万历皇帝颁赐的圣旨、藏经及其它玉印、法器等文物1300余件。 [4]  2006年以九华山为主体的九华山风景名胜区被评为国家重点风景名胜区。 [5]  2007年九华山风景区获评为国家AAAAA级旅游景区。 [6]  2009年，九华山获评为国家地质公园。 [7]  2019年4月17日，联合国教科文组织发布公告，批准九华山为世界地质公园\', \'86.00\', \'50\', \'13\', \'1\');', '25.50', 10, 13, NULL),
(45, '周瑜墓', 'https://bkimg.cdn.bcebos.com/pic/71cf3bc79f3df8dcd100d9028b5b658b4710b9128244?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5', NULL, '周瑜墓，又称吴名将周公瑾之墓，古称周郎墓，位于安徽省合肥市庐江县庐城镇晨光社区，占地8648平方米，始建于东汉建安十五年（210年）。 [1-3] \r\n周瑜墓底台阶边长10米，墓高约5米，墓四角配以4头石狮，域高约8尺，按汉代墓冢形制，为覆斗形方锥夯土墓冢；周瑜墓园主要由门楼、影壁、阙门、石像生、享堂、碑廊、文物展厅等东汉风格建筑群组成，是展示和传播庐江人文历史的园地。 [4-5] \r\n1989年5月27日，周瑜墓被安徽省人民政府批准为第三批省级重点文物保护单位', '1000.00', 1, 13, NULL),
(46, '包公园', 'https://bkimg.cdn.bcebos.com/pic/4bed2e738bd4b31cf58a30e388d6277f9e2ff830?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UyNzI=,g_7,xp_5,yp_5', NULL, '包公园，简称包园，位于安徽省合肥市包河区芜湖路72号，始建于北宋嘉祐七年（1063年），是为纪念北宋著名清官包拯而修建的园林。\r\n包公园占地34.5公顷，其中水域面积15公顷，总体布局为开放式，主要由包公祠、包公墓、清风阁、浮庄等景点组成。\r\n包公园，1981年被公布为第一批省级文物保护单位。 2006年获评国家AAAA级旅游景区。 2010年被中央纪委命名为首批全国廉政教育基地。', '25.00', 6, 13, NULL),
(47, '天鹅湖', 'https://bkimg.cdn.bcebos.com/pic/08f790529822720ed30e8eac7ccb0a46f31faba0?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5', NULL, '天鹅湖原名荷叶地，位于安徽省合肥市，因湖面呈天鹅形状得名。总占地面积约1000亩，周长3.5公里，水深3.5米，有各种雕塑、园林树木、人工沙滩、喷泉等景观，是安徽省开放式公园。\r\n天鹅湖东临潜山路、南临祁门路、西临翡翠路、北临南二环路。环湖有合肥大剧院、天鹅湖体育馆、安徽省博物馆、合肥市政务双子大楼、安徽新广电中心等安徽省标志性建筑', '100.00', 15, 13, NULL),
(48, '科学岛', 'https://bkimg.cdn.bcebos.com/pic/8718367adab44aed3a6b789bbb1c8701a18bfbac?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5', NULL, '中国科学院合肥物质科学研究院（Hefei Institute of Physical Science, Chinese Academy of Sciences）成立于2003年5月，可追溯至2001年11月由原中国科学院合肥分院及安徽光学精密机械研究所、等离子体物理研究所、固体物理研究所合并而成的中国科学院合肥研究院；2003年5月，正式批复合并为中国科学院合肥物质科学研究院；2004年4月，合肥智能机械研究所划归该研究院。 [1] \r\n中国科学院合肥物质科学研究院的主要学科有等离子体物理与磁约束核聚变、强磁场科学与技术、材料物理与纳米技术、大气光学与遥感、环境光学与技术、仿生感知与智能系统、激光材料与技术、超导电工与节能应用、离子束生物工程、智能农业信息技术、太阳能材料与工程等。 [2] \r\n截至2014年底，该研究院占地面积2.65平方公里，建有10个直属研究所，1个国家工程中心，17个省部级重点实验室/工程中心；共有在职职工2408人，在学研究生1361人，在站博士后90余人', '50.00', 50, 13, NULL),
(49, '蜀山烈士陵园', 'https://bkimg.cdn.bcebos.com/pic/f703738da97739120ce5f75cfa198618377ae2c8?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5', NULL, '蜀山烈士陵园位于合肥西郊风景区大蜀山东麓，占地约18万平方米，是安徽省规模最大的烈士陵园，被国务院批准为“中国重点烈士纪念建筑物保护单位”，并先后被国家民政部和安徽省人民政府列为中国、安徽省爱国主义教育基地。蜀山烈士陵园也是合肥市旅游景点之一。', '20.00', 10, 13, NULL),
(50, '合肥欢乐岛', 'https://bkimg.cdn.bcebos.com/pic/7acb0a46f21fbe09b8789f7862600c338744adbc?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5', NULL, '合肥欢乐岛是安徽省一处集体验式旅游、青少年素质教育、团队集体休闲、企事业拓展培训于一体的大型旅游、休闲基地。开创了安徽省新概念旅游之先河，既可以观光旅游，又有别于传统的自然景观与人文景观。不仅涵盖了经典的游乐项目，还包含了极限运动、传统体育、工艺体验、农事体验，并能够开展以“拓展培训、情商教育、拓展休闲”为主题的团队活动。', '86.00', 20, 13, NULL),
(51, '双江塔影', 'https://bkimg.cdn.bcebos.com/pic/dbb44aed2e738bd40840d13ca18b87d6277ff95e?x-bce-process=image/resize,m_lfit,w_268,limit_1', NULL, '“双江塔影”。中江塔巍然耸立于青弋江与长江交汇处的江堤上，半依闹市半偎江，古人誉之为“江上芙蓉”，系芜湖市重点文物保护单位。', '25.00', 6, 13, NULL),
(52, '西山灵石', 'https://bkimg.cdn.bcebos.com/pic/8b82b9014a90f603c9cbe0503b12b31bb051edaa?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UyMjA=,g_7,xp_5,yp_5', NULL, '西山风景区位于芜湖市南陵县西山风景区内，西山风景区又名丫山风景区。西山风景区面积约为20余平方公里，区内奇锋异石和溶涧、清泉、瀑布融为一体，景色十分秀丽。有形态各异的奇峰60余座，如丫字峰、美人峰、狮子峰、蝙蝠峰等；也有数不胜数的异石遍布各处，如大神龟、八戒石、蟾蜍观天、犀牛望月、熊猫嬉叶、双燕呢喃、百猴朝圣等更是妙趣横生。', '100.00', 15, 13, NULL),
(53, '褐山揽胜', 'https://bkimg.cdn.bcebos.com/pic/3b87e950352ac65c768fa6cafef2b21192138a85?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5', NULL, '褐山滨临长江，登临山巅，远眺扬子江，数十里码头历历在目，长江大桥近在咫尺，俯瞰曹姑洲，田园风光尽收眼底。褐山林木茂盛，绿荫葱茏，古银杏参天而立；野生灵芝、枸杞等240余种珍贵药材遍布林间；各种花卉植物芬芳滴翠，系市内绿化覆盖率最高、苗圃种植面最大、野生药材最丰富的天然宝库。褐山脚下，江水滔滔，有神话色彩的江心岛曹姑洲与褐山一衣带水，相映成趣。“褐山揽胜”为芜湖十景之一。', '50.00', 10, 13, NULL),
(54, '太白楼', 'https://bkimg.cdn.bcebos.com/pic/8b13632762d0f703446df02100fa513d2797c574?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5', NULL, '马鞍山太白楼位于马鞍山市采石矶西南二公里处 [1]  ，面临长江，背依翠螺山，是一座金碧辉煌，宏伟壮丽的古建筑。素有“风月江天贮一楼”之称。太白楼原名谪仙楼。\r\n太白楼挹长江，枕翠螺，是中国现存最具规模的一组纪念李白的古建筑群，现为全国重点文物保护单位。', '20.00', 20, 13, NULL),
(55, '琅琊山风景区', 'https://bkimg.cdn.bcebos.com/pic/b8389b504fc2d562712c6d63ed1190ef76c66c1c?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5', NULL, '琅琊山风景名胜区位于安徽省东部滁州市境内，古名摩陀岭，系大别山向东延伸的一支余脉。这里自然风光秀美，人文景观丰富，集自然景观和人文景观于一体，自古有“皖东第一名胜”之赞誉。\r\n琅琊山享有“蓬莱之后无别山”“皖东明珠”之美誉。因盛产多种中药材，而被人们誉为“天然药圃”。境内有醉翁亭、琅琊阁、城西湖、姑山湖、胡古等景点。\r\n自宋代以来，琅琊山一直是皖东有名的历史胜境。1988年8月，经国务院批准，确定为国家重点风景名胜区。是首批被国家林业局确定的国家森林公园。2001年1月11日琅琊山森林公园成为全国首批国家AAAA级旅游景区。', '86.00', 6, 13, NULL),
(56, '女山湖', 'https://bkimg.cdn.bcebos.com/pic/8d5494eef01f3a29c617447c9e25bc315d607ca1?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5', NULL, '女山湖，淮河支流池河过境湖，位于淮河右岸，明光市明光镇以北八公里，是明光市最大的湖泊，也是安徽省著名湖泊之一。湖泊面积为80平方公里（一说74平方公里 [1]  ），湖泊水面为15万亩。湖底高程11.0米，平均水深2.7米。1983年女山湖节制闸建成后，湖水达到合理控制，正常蓄水位14.5米时，相应蓄水容量2.16亿立方米，是明光和皖东地区水产品重要基地。', '25.00', 15, 13, NULL),
(57, '皇藏峪国家森林公园', 'https://bkimg.cdn.bcebos.com/pic/63d0f703918fa0ec600aeae52a9759ee3c6ddb0d?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5', NULL, '安徽皇藏峪国家森林公园位于宿州市萧县东南部，由瑞云寺景区、天门寺景区、樱桃沟景区、竹林寺景区和倒流河遗址区组成。\r\n安徽皇藏峪国家森林公园属暖温带季风气候区，植被类型为暖温带落叶阔叶林区、亚热带和暖温带交汇地带，最高海拔389米，总面积2273.33公顷。\r\n1992年，皇藏峪森林公园经国家林业局批准为国家级森林公园。', '100.00', 50, 13, NULL),
(58, '大龙山', 'https://bkimg.cdn.bcebos.com/pic/aa18972bd40735fa6cfa2adf99510fb30f240849?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5', NULL, '大龙山位于安徽省安庆市北郊10公里处。整个风景区由大龙山和石塘湖两部分组成，总面积约132平方公里。（其中大龙山面积约122平方公里，石塘湖水面面积约10平方公里），分为日照峰、龙山第一刹、灵山石树、石塘湖、龙泉寺、洪桂山、龙湫七个景区。大龙山呈南北走向，绵亘起伏、层峦迭峰、蜿蜒如龙，故称“大龙山”，主峰日照峰海拔690米。自1998年开放以来，到2007年12月截止，累计接待游客人次达150万人次，是安徽省AAA级风景区。\r\n另外，值得了解：湖南省涟源市—新邵县之间有长达一百里多的大龙山，也是旅游景区', '50.00', 10, 13, NULL),
(59, '八公山', 'https://bkimg.cdn.bcebos.com/pic/aa64034f78f0f7368618b1f60c55b319eac41366?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5', NULL, '八公山位于中国安徽省淮南市，是著名的文化胜地，汉文化重镇。\r\n八公山，是汉代淮南王刘安的主要活动地，这儿曾集中了大量当时国内的一流知识分子，博大精深的《淮南子》也是在这里诞生的。\r\n八公山也是绿色健康食品——豆腐的发源地，公认淮南王刘安及八公为豆腐发明人。', '20.00', 20, 13, NULL),
(60, '太极洞', 'https://bkimg.cdn.bcebos.com/pic/cdbf6c81800a19d8be9e13a73bfa828ba71e46f6?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5', NULL, '太极洞位于宣城广德市新杭镇，距县城35km，因“洞面有纹，类太极图”而得名。 [1]  太极洞古名颇多，或称太极真境，或称广德埋藏，或称长乐洞。远在两汉时即已成为旅游胜地。宋明时声名益著，被视为人间奇景。\r\n太极洞有“东南第一洞”的美誉，坐落于安徽省长江以南的宣城广德市，明代大文学家冯梦龙把太极洞誉为“天下四绝”之一，2001年被评为国家AAAA级风景区。是中国最有名的道教道场之一。\r\n2015年5月25日，入选国家旅游局公布首批“全国旅游价格信得过景区”名单', '86.00', 6, 13, NULL),
(61, '杏花村', 'https://bkimg.cdn.bcebos.com/pic/4034970a304e251f65d368f1a986c9177f3e5397?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5', NULL, '池州秀山门外的杏花村，正是唐代大诗人杜牧笔下的“牧童遥指杏花村”，使得杏花村名播青史，饮誉天下。明代名士福建福清人林古度（字冉予，一字茂之，晚号乳山）的七绝，抒出了千百年来池州人民因杏花村而自豪之情。诗曰：“郡楼高出秀山门，古迹今时不可论。杜牧当年有名句，独唱城外杏花村”（引自清《杏花村志》卷五）\r\n池州杏花村的说法最早见于清代贵池县人郎遂所写的《贵池县杏花村志》 而后《广舆记》《江南通志》等书有所收录，而贵池杏花村明代时就由曾出任池州的顾元镜所建。', '25.00', 15, 13, NULL),
(62, '相山庙', 'https://bkimg.cdn.bcebos.com/pic/d52a2834349b033b09d1ca8415ce36d3d539bd16?x-bce-process=image/resize,m_lfit,w_268,limit_1', NULL, '显通寺 [1]  ，位于相山龙山、虎山两峰之峪。俗称相山庙，又称显济王庙。已历尽人间1700多年的沧桑。庙宇是依明清建筑风格修复的，为安徽省重点文物保护单位。\r\n显通寺，始建于西晋太康五年（284年）。据《宿州志》记载：北宋元丰间（1078—1085）赐额“显通”。辽金时又加封“显济王”，故又称“显济王庙”。', '100.00', 50, 13, NULL),
(63, '八里河风景区', 'https://bkimg.cdn.bcebos.com/pic/fd039245d688d43f0209ee2a7d1ed21b0ff43b41?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5', NULL, '隋唐时期，修闸控制柳沟河水，后被特大洪水冲垮直泻淮河。\r\n元末明初，战争频繁，洪水泛滥，柳沟河无人问津，洪水冲柳沟镇和白雀寺，一场大的灾难降在柳沟河两岸。 [2] \r\n清朝，改名为八里河。\r\n1938年6月国民党政府在黄河花园口制造决堤事件，形成黄水南泛，由颍河决堤进入八里河，泛滥成灾，河床升高，水面拓宽，良田淹没，房屋倒塌，周围群众外逃求生。 [2] \r\n  南湖神韵1\r\n南湖神韵1(16张)\r\n1954年解放初期，八里河未进行改造利用，百年未遇洪水，颍、霍两县成泽国，颍淮两河见面，八里河、戴家湖、邱家湖、姜家湖、城西湖、唐垛湖六大湖泊汇合，成为海洋。\r\n1954年冬至1955年春，政府安排灾民北移生产自救。1955年秋，开始淮河堵口和八里河的改道工程。淮河北岸的沿岗大堤破土动工，截流八里河水入淮的通道；开通八里河水入颍河的流径，建闸截流。八里河成颍河的支流。\r\n1958年，八里河建立渔场，对大湖面没有实行投放和管理，单一地鱼苗生产。三年困难时期，两岸人民下河摸哈蜊、捞菱角、捕鱼虾、割杂草充饥，八里河帮助两岸百姓度过难关。 [2] \r\n1972年，颍上县委、县政府集中常年飘泊在外的全县渔民定居八里河，成立渔业公社，治理八里河。\r\n1976年，先后开发胜天圩、冲天圩、尤湖圩、稻香圩四个大圩，重建徐桥、马砖桥，沟通半岗、关屯与颍城的交通。\r\n1978年，对八里河大湖面开始鱼苗投放和湖面管理。\r\n1982年，中央水产公司、省水产公司、县农牧渔业局三家联合投资193万元，成立“国营颍上县八里河联营渔场”，完成胜天圩1500亩精养鱼塘的开挖。', '50.00', 10, 13, NULL),
(64, '天堂寨', 'https://bkimg.cdn.bcebos.com/pic/7aec54e736d12f2e26fb469f49c2d56284356857?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5', NULL, '天堂寨（国家AAAAA级旅游景区、国家级自然保护区、国家森林公园、国家地质公园），是大别山第二高峰，由十一届全国人大常委会委员长吴邦国先生题字。位于安徽省金寨县与湖北省罗田县交界的地区，有“华东最后一片原始森林、植物的王国、花的海洋”的美称。\r\n天堂寨所处的大别山，是中国南北水系的分水岭，山北水往北流注入淮河，山南水往南流注入长江。所以在天堂寨峰顶北可望中原，南可眺荆楚，巍巍群山尽收眼底。海拔1729米的天堂顶有一口天塘，塘水不溢不涸，俗称“瑶池”。\r\n景区总面积120平方公里，境内千米以上的高峰25座，天堂寨最高峰为大别山主峰之一，系江淮分水岭，常年平均降雨量1350毫米，湿度85%，年均气温12.6度，水质为地表一级卫生饮用水。其间，雄关漫道，崇山峻岭，茂林修竹，龙潭飞瀑，奇松怪石颇多，古称“吴楚东南第一关”，气势雄伟壮观。', '20.00', 20, 13, NULL),
(65, '花戏楼', 'https://bkimg.cdn.bcebos.com/pic/d439b6003af33a8724adbc8fc15c10385243b567?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5', NULL, '花戏楼，原名大关帝庙，亦称山陕会馆。由于戏楼的砖雕、木雕、彩绘多以地方戏曲折子戏为主要内容，所以俗称花戏楼。花戏楼始建于清顺治十三年（1656年），位于安徽省亳州城北关隅咸宁街，花戏楼路的最北边。为山西商人王璧、陕西商人朱孔领发起筹建，后经康熙、乾隆两朝共百余年多次扩建。\r\n1988年1月13日被国务院批准为第三批全国重点文物保护单位。 [1] \r\n2020年2月，为致敬医者仁心、褒扬人间大爱，景区恢复运营之日至2020年12月31日对全国所有医务工作者实行优待政策。', '86.00', 6, 13, NULL),
(66, '徽州古城', 'https://bkimg.cdn.bcebos.com/pic/2f738bd4b31c8701cfa51a4d2f7f9e2f0708ff0e?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5', NULL, '徽州古城，又名歙县古城，古称新安郡。位于安徽黄山市歙县徽城镇，总占地面积24.7平方公里。古城始建于秦朝，自唐代以来，一直是徽郡、州、府治所在地，故县治与府治同在一座城内，形成了城套城的独特风格。徽州古城是中国三大地方学派之一的\"徽学\"发祥地，被誉为\"东南邹鲁、礼仪之邦\"。\r\n徽州古城分内城、外廓，有东西南北4个门。此外还保留着瓮城、城门、古街、古巷等。\r\n城内景区包含徽园、渔梁坝、许国石坊、斗山街、陶行知纪念馆、新安碑园、太白楼等七处。覆盖了新安理学、徽派朴学、新安医学、新安画派、徽派版画、徽派篆刻、徽剧、徽商、徽派建筑、徽州“四雕”、徽菜、徽州茶道、徽州方言等徽州文化。\r\n徽州古城是保存完好的中国四大古城之一，1986年，被国务院列为国家历史文化名城，2014年，被列入国家5A级景区古徽州文化旅游区的组成部分。 [1] \r\n2020年2月，对全国医护工作者实行门票免费优惠政策', '20.00', 15, 13, NULL),
(67, '迪沟生态旅游风景区', 'https://bkimg.cdn.bcebos.com/pic/f603918fa0ec08fa0c8feb0a5fee3d6d54fbda94?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5==========https://bkimg.cdn.bcebos.com/pic/c2fdfc039245d688dce343cda6c27d1ed31b24f1?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5==========https://bkimg.cdn.bcebos.com/pic/ae51f3deb48f8c542c8a22da33292df5e1fe7fee?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5', NULL, '迪沟生态旅游风景区整个风景区由竹音寺，五百罗汉堂，生态园，城镇建设区，文化广场、安徽旅游职业学院和正在建设的迪沟国家级湿地公园组成。迪沟镇荣誉国家AAAA级风景区、国家园林城镇、全国环境优美城镇、迪沟国家湿地公园、全国发展改革试点镇、首批全国农业旅游示范点、安徽十大旅游休闲基地、安徽省最佳旅游城镇等多项国家级和省市级荣誉称号', '12.00', 12, 13, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'jmzr', '123456'),
(2, 'admin', '123456'),
(3, 'jsz', '123456'),
(6, 'jmz', '123456');

--
-- 转储表的索引
--

--
-- 表的索引 `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `list`
--
ALTER TABLE `list`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

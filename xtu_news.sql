/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50623
 Source Host           : localhost:3306
 Source Schema         : xtu_news

 Target Server Type    : MySQL
 Target Server Version : 50623
 File Encoding         : 65001

 Date: 05/08/2022 11:29:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `admin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '管理员账号',
  `admin_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (0, 'admin', 'mf/OG+b1OingkqfJhYkl0jftQHI+pLxO2Mr0PAd8zjsQA6jMmiuyRDZfSBm1XR1G');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '新闻id',
  `news_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '新闻标题',
  `news_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '新闻内容',
  `news_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '新闻类型',
  `news_dept` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '新闻发布部门',
  `news_time` date NULL DEFAULT NULL COMMENT '新闻发布时间',
  `is_deleted` int(1) UNSIGNED ZEROFILL NOT NULL DEFAULT 0 COMMENT '新闻删除标志',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '21312同志', '老师们，同志们：\r\n\r\n大家上午好！\r\n\r\n今天，我们在这里召开湘潭大学2022年科研工作大会，总结过去一段时间学校科研工作经验，表彰为我校科研工作作出突出贡献的先进集体和个人，谋划未来学校科研创新发展的新思路、新举措。\r\n\r\n“十三五”以来，全校广大科研工作者紧紧围绕学校发展目标，瞄准基础研究和学术前沿，面向国家和行业重大需求，立足经济社会主战场，开拓创新、真抓实干，在科研项目、科研成果、科技奖励、平台建设、科研服务等方面都取得了显著成绩，为推进“双一流”建设，实现特色鲜明的高水平现代大学奋斗目标奠定了坚实基础。学校获得国家自然科学二等奖，牵头获批2项国家重点研发项目，国家社科基金年度最好排名到了全国26位，依托学校建设的湖南应用数学中心获批为全国首批十三个国家应用数学中心之一，人大复印报刊资料转载量稳居全国高校70位等等。这些成绩的取得，是全校广大科研人员和管理人员潜心学问、甘于奉献、追求卓越的结果。在此，我谨代表学校向大家表示诚挚的敬意和衷心的感谢！\r\n\r\n当前学校的建设发展站在了新起点，步入了新阶段，这对学校科研工作也提出了新要求，赋予了新使命。下面，我就大力弘扬科学精神，不断提高创新能力和创新水平，讲三点意见。\r\n\r\n一、牢记科研初心，培养创新人才\r\n\r\n大学的首要职能和本质职能是人才培养，大学的科学研究工作应当服务和服从于人才培养这个中心工作。20多年前，我们的老校长潘长良教授对如何办好大学，曾有过十分精辟的论述。他说，要办好一所大学，必须始终围绕一个中心，牢牢把握两个基本点。一个中心就是人才培养，两个基本点就是教学和科研。教学是人才培养的基本途径，是经常性的中心工作；科研是现代大学的重要职能，是教师职业发展的主要途径，是不断丰富和优化教育教学资源的主要来源。同样是科研，在大学与在科研机构和企业，其功能和作用是不一样的。因此，作为一名大学教师，必须坚持科研为人才培养服务，为不断提高教学水平服务。这就是我们大学教师的科研初心。从学校层面来讲，就是要通过制度规定和政策引导，促使我们的教师，特别是主持高级别课题和发表高水平成果的教师多为学生开设学术讲座和专业选修课，从而进一步拓宽学生的学术视野，培养科学精神，完善知识结构，使学生在探究和解决问题的过程中锻炼思维、提升能力。\r\n\r\n二、弘扬科学精神，涵养学术生态\r\n\r\n科学之美，在于发现、在于创新、在于创造，是一种精神之美、力量之灵。科学精神是人类文明中最为宝贵的精神财富，是人类文明进程中逐步形成和发展的。科学精神源于近代科学的求实求真精神和理性与实证传统。科学精神集中体现为追求真理、崇尚创新、尊重实践、崇尚理性。科学可以通过求真，达到求美和求善，追求真善美的统一是科学的最高价值准则。任何急功近利、虚假伪善的行为都是与科学精神背道而驰的。习近平总书记一再强调，我们要有自己的大师、大先生，大师和大先生从何而来？我想，应该来自于科学精神持续不断的传承，来自于优良肥沃的学术土壤。作为一名科研工作者，必须始终坚守学术良知，坚守学术道德的底线，坚持正确的科研价值导向，在科研实践中研究真问题，做真学问，甘坐“冷板凳”，大胆探索、矢志不渝，这样才能结出科研的硕果。同时，学校也要通过体制和机制的创新，真正构建起公平有效、风清气正的学术生态，营造出一种崇尚创新、追求真知的学术氛围。\r\n\r\n三、完善评价机制，激发创新活力\r\n\r\n如何激发科研活力、提高研究质量，最大程度调动广大科研工作者的积极性、主动性和创造性，这是我们迫切需要解决的一个现实问题。我们必须建立健全指导监督有力、管理科学规范、责权关系明晰、开放合作有序、组织运行高效的现代科研管理体制机制。首先，要坚持“质量与贡献” 导向，健全学术评价机制。根据学科发展水平、特性，构建差异化、多元化的评价标准，注重引入长期评价、同行评价、第三方评价和社会评价作为现有评价体系的重要补充。同时，要营造开放、兼容、和谐的学术氛围。让科研人员在创造高价值的同时，也能得到高价值的回报，真正激发科研人员的创新热情，形成生动活泼的局面。要积极探索建立学术特区，打破有形和无形的壁垒，鼓励学科交叉融合，让每一个教师，特别是青年教师都有获得资源的机会和充分发展的通道。\r\n\r\n老师们，同志们！在全校上下扎实推进“双一流”建设之际，需要不断强化科学合理的科研评价导向，营造和引领风清气正的学术生态，更需要广大科研工作者大力弘扬科学精神，不断激发科研活力和动力，涌现出更多创新思想、产出更多创新成果，培养更多创新人才，为加快建设特色鲜明的高水平现代大学作出新的更大贡献！\r\n\r\n谢谢大家！', '领导讲话', '校长办公室', '2022-05-09', 0);
INSERT INTO `news` VALUES (2, '认真实施“十四五”规划 扎实推进“双一流”建设\r\n——湘潭大学第八届教职工暨第十一届工会会员代表大会第四次会议工作报告', '各位代表，同志们：\r\n\r\n受学校委托，我向大会作工作报告，请予审议，并请列席代表和特邀代表提出建议。\r\n\r\n报告的主题是：坚持以习近平新时代中国特色社会主义思想为指导，全面贯彻党的十九大和十九届二中、三中、四中、五中、六中全会精神，深入落实湖南省第十二次党代会精神，牢记伟人嘱托，坚持根本遵循，立足新起点，开启新征程，认真实施“十四五”规划，扎实推进“双一流”建设，加快建设特色鲜明的高水平现代大学。\r\n\r\n下面，我从三个方面报告工作。\r\n\r\n一、2021年工作回顾\r\n\r\n2021年，是科学谋划“十四五”规划的开局之年，是全面推进“双一流”建设的关键之年。一年来，全校上下坚持以习近平总书记重要批示精神为根本遵循，落实立德树人根本任务，团结一心、锐意进取，各方面工作取得了新成绩。\r\n\r\n1. 人才培养质量持续提升。一是本科人才培养方面，获批1个国家基础学科拔尖学生培养计划2.0基地和1个省级基础学科拔尖学生培养基地；新增9个国家级、17个省级一流专业建设点，2个本科专业；2个专业通过教育部工程教育认证；获评教育部课程思政示范课1门、省级1门，省级一流课程73门、省级思政“金课”2门；新增8个省级创新创业教育基地，2个学院获批首批湖南省现代产业学院。应届本科毕业生升学率31 %。二是研究生教育方面，一志愿报考人数再创新高，超过8000人；生源质量稳步提升，一本生源人数较去年增长14.09%，占比超过60%；获评1门教育部研究生课程思政示范课、1门省级研究生思政“金课”，8名“湖南省优秀研究生导师”，4个“湖南省研究生优秀导师团队”。三是学生竞赛获奖方面，学生荣获宝钢奖特等奖、全国大学生“挑战杯”特等奖等多项荣誉，其中，国家级特等奖3项、一等奖49项；省级特等奖1项、一等奖90项；6个项目入围中国国际“互联网+”大学生创新创业大赛全国总决赛，荣获2项银奖、4项铜奖，取得参赛最好成绩；2人荣获“中国大学生自强之星”，1人获评湖南省首届“最美大学生”称号；“三下乡”活动获得全国“优秀组织单位”和镜头下的“优秀组织单位”；学校获评湖南省就业创业工作先进单位，连续六次获评湖南省高校就业创业工作“一把手工程”督查先进单位，8人荣获湖南省就业工作先进个人。\r\n\r\n2. 学科综合实力稳步提升。一是数学学科入围国家“双一流”建设学科建议名单，编制完成湘潭大学《“双一流”建设整体建设方案》《数学一流学科建设方案》。二是优势特色学科竞争力稳步提升。7个学科入选USNEWS 2022年世界大学学科排名，新增1个学科进入2021年软科世界一流学科。三是完成湖南省优势特色学科群建设申报工作，“数学与交叉”学科群入选湖南省“三高四新”优势特色学科群建设项目。四是认真开展了“双一流”建设专项资金绩效评价工作，加大力度建设高水平学科，毛泽东思想研究协同创新中心等学科平台建设持续加强。\r\n\r\n3. 科研创新能力明显增强。一是社科研究方面，新增各类项目225项，科研经费3200余万元，其中，国社科重大2项，教育部后期重大1项，国社科重点6项，一般和青年项目25项。年度重点项目立项率11.54%，立项数居全省第二，青年项目立项率为14.8%，立项数居全省第一；后期资助8项，立项数居全省第二；发表CSSCI论文369篇，SSCI论文30余篇；出版各类专著、教材50余部；17项成果获省哲学社会科学优秀成果奖，其中一等奖2项。二是自科研究方面，纵向项目294项，立项经费超过1亿元；横向项目199项，立项经费6113万元。获批国家自科基金优秀青年科学基金项目1项、区域创新联合基金重点支持项目1项，国家自科基金面上项目立项率高于全国平均资助率2.69%，青年项目立项率同比增长4.85%；16项成果获2020年度湖南省科学技术奖励。“碳基生物等先进传感器件”入选湖南省十大技术攻关项目。主持了“神舟十二号”舱外航天服工业设计，参与了“鲲龙500”海底采矿车研发等国家重大科技项目，智能群枕式长钢轨铺轨机组在首届北斗规模应用国际峰会受到高度肯定。\r\n\r\n4. 师资队伍建设扎实推进。一是引进高层次人才和海内外优秀博士140余人（其中，柔性引进人才10余人）；入选国家“万人计划”哲学社会科学领军人才1人，中宣部宣传思想文化青年英才1名，入围湖南省“芙蓉学者”特聘教授5人、讲座教授3人、青年学者6人；当选教育部物理学类专业教指委委员1人，首届全国高校毕业生就业创业指委会委员1人，国家文化公园专家咨委会委员1人；荣获宝钢优秀教师奖2人，湖南省青年科技奖1人，湖南省高校首届“最美思政课教师”称号1人，普通高校教师教学创新大赛一等奖1人。二是修订发布韶峰学者特聘岗位计划实施方案，新一轮遴选工作正有序推进。三是博士后工作取得新成绩，入选香江学者计划、澳门青年学者计划以及其他博士后国（境）外引进项目共3人，获博士后科学基金特别资助1项，博士后科学基金面上项目资助8项，湖南省优秀博士后创新人才项目14项，入围首届全国博士后创新创业大赛总决赛3项。\r\n\r\n5. 开放合作办学不断深化。一是成功加入“一带一路”高校战略联盟，南亚研究中心获教育部备案，与国（境）外5所大学签订协议9个，顺利完成西班牙莱昂大学孔子学院转隶，获批香港免试生和澳门保送生招生资格。二是与司法部共同组建全国首个“司法部公证理论研究与人才培训基地”；与最高人民法院共建“知识产权司法保护理论研究与人才培训基地”；三是校友资源进一步拓展，教育基金管理更加完善；四是校企深层次合作扎实推进，与华为、江南工业集团等企业签署战略合作协议11个，京东智能城市与大数据研究院、先进制造协同创新中心、湖南韶峰应用数学研究院相继揭牌成立，湖南国家应用数学中心产学研合作和实体化建设迈出坚实步伐。五是附属实验学校建成开学。\r\n\r\n6. 办学基础条件日渐完善。一是校园基本建设有序推进，毛泽东思想研究大楼完成校内预验收，文科实训大楼、环境资源与实验大楼、北苑学生综合食堂等项目稳步推进；600亩区域电力实现增容新建，校园供水管道改造有序推进，现代后勤保障体系更加完善。二是正式加入全球无线网络漫游联盟，信息化与教育教学深度融合，智慧财务、智慧图书馆、智慧就业云功能更加健全。三是教研保障基础稳步夯实，实验室管理获“易制毒化学品管理甲级单位”资质，获评湖南省大型仪器开放共享评价考核优秀等级，工程训练中心圆满完成实践教学任务，校园综治维稳、治安防控和交通整治成效明显。\r\n\r\n7. 校园文化建设持续推进。一是红色文化活动特色鲜明。打造《换了人间——毛泽东的家书故事》思政系列纪录片，推出《湘谈“四史”》微视频课程、大型原创话剧《初心》；举办红色文化系列活动、主题活动40余场次。二是校园学术活动更加丰富。推出《伟人智慧——大学生学习毛泽东》等系列特色课程；开展“师道大讲堂”“明道信道”等系列讲座20余场，师德教育专题讲座、讨论会、交流会等50余场。三是校园品牌思政活动创新开展。构建了“在线学习+互动讨论+知识竞赛”的易班学习模式；推出全国首档大学生原创百集思政短视频《“百年百地正青春”大学生思政微讲述》；《抗战精神》等中国共产党革命精神谱系丛书入选中宣部、教育部向建党百年献礼工程；与中国人民大学开展同上一堂党史课活动，获教育部部长高度评价。四是学校荣获2020届“湖南省文明标兵校园”称号，入选2021-2023创建全国文明校园先进学校名单，完成迎接全国文明校园督导测评工作。\r\n\r\n8. 党的建设全面加强。一是第六次党代会胜利召开，未来五年奋斗目标更加明确；深入开展庆祝中国共产党成立100周年系列活动，弘扬伟大建党精神，传承红色基因，推动党史学习教育走深走实；党支部“五化”建设和教师党支部书记“双带头人”培育工作扎实开展，获评全省高校党建工作“示范高校”、全省高校基层党建示范点；干部队伍建设持续加强，全年共提拔处级领导干部75名，交流处级领导干部35名。二是宣传思想工作成效明显，全年在中央和省级媒体刊发、播出新闻稿件1400余篇；在《人民日报》《光明日报》等中央主流媒体刊发理论文章20余篇，推出了《马克思主义中国化百年历程与主要理论成果》《毛泽东民主集中制原则的共和意义研究》《历史发展视域中的毛泽东人民内部矛盾理论研究》等重要理论成果，向省委有关部门提交建言献策成果20余份。三是完善风险管控，严格落实意识形态责任制，全年召开专门会议10次，分析研判意识形态领域情况4次，开展意识形态工作专题研训班，严把哲学社会科学学术活动关、新闻舆论宣传关。四是全面贯彻“三全育人”理念，认真推进“三全育人”综合改革试点工作，配优配强专职辅导员和组织员，强化思想政治教育，1人入选全国高校思政课名师工作室，1人获得湖南省“高校思想政治工作名师工作室建设项目”；顺利完成大学生心理素质提升示范校建设项目。五是乡村振兴驻村帮扶工作成效良好，发挥学校智力支持、科研平台、校友资源等方面优势，为当地教育事业发展、招商引资、油茶精深加工、村庄规划、村貌美化等方面提供帮扶和支持。六是坚持“三不”一体推进，以突出抓教育预防、执纪问责、日常监管和清廉校园建设为重点，在服务学校建设大局中统筹部署党风廉政建设工作。七是加强统战、群团和民族团结工作，获评湖南省民族团结进步示范学校，荣获3项省统战理论政策研究成果奖。\r\n\r\n与此同时，学校其它各方面工作也取得了新成绩。落实疫情防控常态化要求，确保师生生命安全和身心健康；离退休工作服务能力进一步提升，获评 “湖南省离退休干部示范党支部”1个，“湖南省优秀共产党员”1人，“省委教育工委优秀共产党员”1人；学校成为全省增值税电子发票电子化报销、入账、归档试点单位；3个项目入选“十四五”国家重点图书出版物专项规划，4种图书获湖湘优秀出版物奖；继续教育创收2385万余元，办学收入连续3年实现增长；审计、财务工作在完善学校治理、加强内部控制和风险管理等方面成效明显；校工会民主管理、民主监督工作持续推进；教学质量监控与督导工作综合运用各类监测评价，人才培养过程管理持续完善；图书馆扶贫案例入选国内首部全国图书馆扶贫案例集；保密工作通过二级资质审查。\r\n\r\n各位代表，同志们！这些成绩的取得，凝聚着全校师生员工的辛勤和汗水。在此，我谨代表学校，向各位代表并通过你们，向全校师生员工表示衷心的感谢！\r\n\r\n二、面临的形势和任务\r\n\r\n各位代表，同志们！当前学校的建设发展站在了新起点，步入了新阶段，肩负着新使命。我们要清醒地认识到，对照中国特色、世界一流的目标和内涵式、高质量发展要求，办学资源不足仍是制约学校发展的“瓶颈”问题；学科“高原”“高峰”建设成效还不够突出，学科优势仍需进一步强化，学科特色仍需进一步彰显；高端拔尖领军人才和团队数量还不够；有重大国内外影响力的原创性、标志性成果还不多；国际交流合作步伐还不够快、水平还不够高；内部管理服务能力水平对照现代大学治理要求还存在一定差距。\r\n\r\n对此，我们要对照“十四五”规划部署，以“双一流”建设为引领，创新学科群建设机制，提高学科整体水平；全面落实立德树人根本任务，深化教育教学和人才培养模式改革，完善高水平育人体系；通过引进、培养、稳定多措并举，优化人才发展环境；面向国家地方战略需求，加强平台建设和协同攻关，创新科研机制，取得更多标志性高水平科研成果，服务经济社会，加快学校各项事业高质量发展。\r\n\r\n三、2022年学校主要工作\r\n\r\n各位代表，同志们！关于学校具体工作安排，将会以工作要点形式下发，这里就不作详细报告。今天我重点就认真实施“十四五”规划，扎实推进“双一流”建设，谈几点意见。\r\n\r\n（一）以一流学科为龙头，整体带动提升学科建设水平\r\n\r\n1. 高位推进数学一流学科建设。加强对学科建设的全面领导和统筹规划，围绕数学一流学科建设，设立“学科特区”，在人才培养、队伍建设、经费保障、资源配置等方面实施特殊政策，进行优先投入、重点倾斜和重点支持。完善决策和运行机制，在用人机制和资源配置方面赋予数学学科高度的自主权，确保集中学校优势资源和力量推动数学一流学科建设。同时，要推动与数学应用相关的其他学科共同组建交叉学科群。以项目为牵引，支持学科群交叉融合发展，培育新的学术方向和学科增长点，打造跨学科的研究平台，拉升学科“高原”，实现交叉学科的共同发展。\r\n\r\n2. 继续加强马克思主义理论学科群建设。第四轮学科评估以来，我校马克思主义理论学科对标对表“双一流”建设标准，精准施策，学科群建设取得明显成效。我们要在已有的良好基础上，继续充分整合全校人文社科资源，提升学科核心竞争力，深度强化五校对口支援机制，加强与对口支援高校在学科建设、科学研究等方面的衔接合作；持续加大优秀人才引培力度，切实将马理学科师资团队建成全省最优、全国一流；加强毛泽东思想研究省部共建协同创新中心、习近平新时代中国特色社会主义思想研究中心、毛泽东图像数据中心、中国红色旅游创新发展研究基地等平台建设；积极推进马克思主义学院申报全国重点马院；统筹实施重点领域和重大项目研究计划，着力推出标志性研究成果，提升服务治国理政和中国特色哲学社会科学体系建设的能力。\r\n\r\n3. 统筹优势特色学科分层发展。坚持“特色一流、分类建设、整体推进”原则，推进文理工协同发展。结合第五轮学科评估结果，明确学科分层分类发展的目标、建设重点和监测指标，监测学科建设动态，实施动态管理，强化绩效考核，给予不同类别、不同层次建设学科相应的政策支持和经费支持。发挥综合性优势，依托大平台、大项目、大团队，推进文理工交叉交融。聚焦国家和湖南战略性新兴产业发展需求，培育新的学科生长点，发展新兴交叉学科。探索医学等其它学科门类建设，持续完善优化学科布局与结构。\r\n\r\n（二）落实立德树人根本任务，完善高水平育人体系\r\n\r\n1. 创新人才培养理念。树立“以学生发展为中心”的人才培养理念、突出质量导向。发挥学科综合优势，通过开设丰富的、高质量的通识教育课程，提升学生的科学精神、科学思维、人文素养，以及学生的艺术审美情趣和鉴赏能力；通过加强劳动教育、体育教育和实践教学，提升学生实践动手能力、锤炼坚韧品格；通过制度和政策引导，建立科研成果转化为课程资源的长效机制，促使教师，特别是主持高级别课题和发表高水平成果的教师多为学生开学术讲座和专业选修课；同时，合理增加大学课程难度、拓展课程深度、扩大课程的可选择性，在优势特色学科、公共基础课程试点选课制，适当允许学有余力的学生按程序申请自修、免听或免修某些课程。对有培养潜质的学生，打通从应用学科转向基础学科培养的渠道，鼓励和推动基础学科与应用学科交叉融合，依托重大科研项目与平台，汇聚交叉学科导师团队，推进项目制交叉学科人才培养，探索培养应用型、复合型、创新型人才。\r\n\r\n2. 深化人才培养模式改革。加强基础学科拔尖人才培养实验班和创新创业教改实验班建设，持续深入推进韶峰班、师昌绪班等教改实验班建设，推进主辅修制改革，探索设立双学士学位复合型人才培养项目。适当扩大相关拔尖人才培养实验班推免比例，优化“直博生”制度，完善“硕博连读”“申请-考核”制博士招生选拔机制，针对基础学科试点三年级本科生“预研培养计划”。统筹本硕博培养环节，打通本研课程，完善课程选修与考核机制，实现跨阶段的课程互选、成绩认定与分流衔接。\r\n\r\n3. 强化人才培养质量保障。坚持学校自评与第三方评估相结合，常态化开展学位点评估、专业认证评估、课程评估、教学评估等。加大教学奖励力度，进一步激励教师投入教学，在校内津贴分配制度方面，充分考虑“人头-工分-质量”的有机统一；完善教学荣誉评选指标体系及评选指标，完成教学改革与职称评审、人才工程评审的无缝对接。营造老师潜心于教研、学生乐于学习的浓郁学术氛围和严谨学习风气，让获得学生高度认可的“名师”和热烈欢迎的“金课”不断涌现出来。严格学业标准与闭环管理，强化学业监测预警，健全人才培养全过程监控与分流机制。加强教学质量信息分析、公开与反馈运用，构建全员参与、全程覆盖、持续改进的教学质量保障机制。\r\n\r\n（三）坚持人才强校战略，打造高素质师资队伍\r\n\r\n1. 多措并举做好人才工作。根据学科布局和人才培养、学科建设发展需要，拓宽渠道、主动谋划、有针对性地物色高端人才，充分利用国家和湖南省各类人才计划项目，引进和培养一批高水平学科、学术带头人。进一步完善柔性引进机制，充分吸引海内外高层次人才参与学校人才培养、科学研究和学科建设。立足教师终身学习和专业发展需求，搭建教师发展平台，有计划地稳步推进教师到国内外著名高校、科研院所访学和从事博士后研究工作，进一步拓展学术视野。创新支持优秀人才脱颖而出的激励机制，实施“青年拔尖人才”计划，通过提供人才工程津贴、年薪制、专项科研经费等系列支持政策，引进、遴选和培育一批学术基础好、科研能力强、发展潜力大、坚守教学科研一线并取得一定标志性创新性学术成果的青年英才。实施高端人才引进“一把手”负责制，建立人才跟踪服务管理机制，重点服务和保障高端学术人才，将师资队伍建设考核评价作为单位和干部考核依据。支持和鼓励二级教学科研单位在人才引进、培养和使用等方面进行制度创新，确保各类人才引得进、用得好、留得住。\r\n\r\n2. 深化人事制度综合改革。进一步完善教学科研绩效考评办法、专任教师职称评审办法，注重个人评价与团队评价相结合、分类评价与综合评价相结合、教学评价与科研评价相结合，突出品德、能力、业绩导向，重点评价学术贡献、社会贡献以及支撑人才培养情况，鼓励教师专注人才培养、潜心科学研究、致力社会服务。进一步完善绩效工资实施方案，创新绩效激励机制，优化教学、科研、管理与创收等业绩津贴分类核算办法，建立健全学院（教学部）负责人与机关及直属单位人员的绩效考评机制，把考核结果与学院办学资源配置、学科经费划拨、专业招生指标安排、绩效津贴分配和干部晋升、评优评先等密切挂钩。落实好岗位聘用与动态调整工作长效机制，完善体现岗位性质、岗位职责和业绩贡献相匹配的人员分类管理办法，充分调动各类人才的积极性和创造性。\r\n\r\n3. 提高师资队伍国际化水平。对照“双一流”建设的指标体系，师资队伍国际化水平目前仍然是我们的短板。加强师资国际化培养，多渠道、多形式选派教师赴世界一流大学、科研机构进修学习，进一步提高具有海外留学经历的教师比例。鼓励教师通过申报国家留学基金委项目、地方政府项目、学校自主选派项目等，出国访学研修、参与国际学术交流和国际组织活动，提高教师与科研人员的国际交流与合作能力。实施海外优秀青年人才引进计划，多渠道遴选和重点引进海外优秀青年人才和团队，探索实行海外高端人才短期聘任制度，吸引一批海外优秀顶尖人才作为学校特聘教授定期来校讲学、合作科研。\r\n\r\n（四）面向国家地方战略需求，提高科研创新能力\r\n\r\n1. 深化重大科研项目协同攻关。聚焦国家和湖南省重大需求，围绕重点学科群建设，整合优势力量，针对关系国家和社会发展的关键技术和共性问题，加强“从0到1”的基础研究和关键核心技术攻关，力争在科学计算、先进装备制造、环境治理、新能源与智能电网、新材料、电子信息等领域获得一批国家科技重大专项、国家重点研发计划，力争国自科、社科基金重大项目显著增长，提升基础研究围绕产业需求中核心问题开展集成攻关的能力。面向地方产业发展特色，发挥学校优势特色学科的科研优势，积极打造学校科研同湖南省工业新兴优势产业链有机融合、互动发展的新路径，提高学校科技成果转化水平。\r\n\r\n2. 加强重大科研创新平台建设。重点支持湖南国家应用数学中心、湖南先进传感与信息技术创新研究院、毛泽东思想研究教育部省部共建协同创新中心等重大平台建设。聚焦科技前沿和国家重大战略需求，谋划布局一批创新要素集聚性强、学科交叉跨界融合度高、支撑产业转型升级作用大的国家级重大科研创新平台，加大资源整合和前期培育力度。建设新文科实验室，充分发挥乡村振兴与共同富裕研究中心作用，突出区域发展与应急管理等方向。在科学计算、化学化工、新材料、新能源、智能制造等领域，争取获得国家重点实验室培育基地。围绕计算数学与人工智能、智慧司法与数据安全、知识产权保护，与华为、京东等大型企业化校企创新平台共建共享。\r\n\r\n3. 健全重大学术成果多元评价机制。科学的学术评价机制是引导学术本质回归的关键，要建立以科研创新质量、贡献、绩效为导向的多元、差异、分类化评价体系，克服“五唯”倾向，如：把单纯的论文数量导向转变为论文质量导向，更加注重成果的原创性、贡献度与标志性；应用性研究，重点评价成果是否转化为社会生产力；人文社科领域，要考虑对党和政府决策的实际贡献与“智库”作用。根据不同学科、不同岗位特点，推行代表性成果评价，探索长周期评价，完善同行专家评议机制，注重个人评价与团队评价相结合，适时引入第三方评价，确保公平公正，让人尽其才、才尽其用、用正当时。通过目标管理和多元评价，探索建立学术特区试点，分类分层推进学科差异化发展，重点扶持在某一学科领域具有较大发展前景的团队，积极培育凝练学科特色，在不断壮大学科特色的基础上形成新的学科优势。努力实现不同学科都有通过不同途径和方式发展的机会，让学术特区真正成为引进、培育、用好人才的窗口。\r\n\r\n（五）改革干部人事考核评价机制，切实提高内部治理能力和治理水平\r\n\r\n1. 树立重实绩、重贡献的评价导向。坚持注重实绩、分层分类、科学精准的基本原则，突出群众认可度和工作成效，增强考核客观性，提高考核精准度，激发领导干部和教职员工担当作为和干事创业热情，形成能者上、优者奖、庸者下、劣者汰的鲜明用人导向。\r\n\r\n2. 完善精准考核评价机制。明确考核体系、指标体系和方法体系，建立分层分类考核，突出可比性，让优秀人才在考核中脱颖而出；建立机关与学院联动，突出学院主体性，将学院相关指标完成情况作为考核机关相关部门的重要依据，促进机关围绕学校、学院发展不断提升管理服务水平。聚焦学校“十四五”规划和“双一流”建设，坚持问题导向，突出核心指标，坚持激励与约束并举，以激励为主，重点考察单位工作实绩。在考评方法上，坚持横向与纵向比较结合，以纵向比较为主；坚持内部与外部评价结合，以外部评价为主，将外部参考标杆引入考核评价中；改进民主测评，突出主体关联性，根据工作关联度，合理设置测评人员范围，提升测评的准确性。\r\n\r\n3. 注重考核结果综合运用。进一步加大考核奖惩力度，突出制度刚性，根据考核结果给予奖惩。对连续评优的单位，适当增加单位绩效工资总额，提高教职工年度考核评优比例等；对连续评优的个人，给予记功、授予荣誉等表彰；在干部选拔、人才遴选、职称评审、岗位聘用、定期奖励、延聘返聘等方面，同等条件下予以优先考虑。建立持续改进的长效机制，针对单位特点设置个性化指标，不断完善各类指标的权重、比例、计分标准等，使考核结果真正成为科学选人用人、促进干部能上能下的重要依据。\r\n\r\n各位代表，同志们！新起点开启新征程，新使命呼唤新作为。让我们在习近平新时代中国特色社会主义思想的指导下，一年接着一年干，一张蓝图干到底，为加快建设特色鲜明的高水平现代大学，努力把学校办得更好、更有特色而不懈奋斗！', '领导讲话', '大会秘书处', '2022-03-07', 0);
INSERT INTO `news` VALUES (3, '​中共中央印发《中国共产党纪律检查委员会工作条例》', '　近日，中共中央印发了《中国共产党纪律检查委员会工作条例》（以下简称《条例》），并发出通知，要求各地区各部门认真遵照执行。\r\n\r\n　　通知指出，在建党百年之际制定《条例》，彰显了我们党勇于进行自我革命的坚强决心。《条例》以习近平新时代中国特色社会主义思想为指导，深入贯彻党的十九大和十九届历次全会精神，以党章为根本遵循，充分运用党的十八大以来全面从严治党、推进党风廉政建设和反腐败斗争、深化纪检监察体制改革的理论成果、实践成果、制度成果，对党的纪律检查委员会的领导体制、产生运行、任务职责、自身建设等作出全面规范，对于坚持和加强党的全面领导、坚持党中央集中统一领导，推进新时代纪检监察工作高质量发展，充分发挥监督保障执行、促进完善发展作用，具有重要意义。\r\n\r\n　　通知要求，各级党委（党组）要认真抓好《条例》的学习宣传和贯彻落实，增强“四个意识”、坚定“四个自信”、做到“两个维护”，深入贯彻全面从严治党战略方针，坚定不移推进党风廉政建设和反腐败斗争。各级纪检监察机关要认真履行党章和《条例》规定的任务职责，坚决把“两个维护”作为最高政治原则和根本政治责任，以强有力的政治监督确保党中央决策部署贯彻落实到位。要进一步加强纪检监察机关自身建设，健全符合纪检监察工作规律的组织制度、运作方式和审批程序，确保执纪执法权规范正确行使。各地区各部门在执行《条例》中的重要情况和建议，要及时报告党中央。\r\n\r\n　　《条例》全文如下。\r\n\r\n中国共产党纪律检查委员会工作条例\r\n\r\n（2021年12月6日中共中央政治局会议审议批准 2021年12月24日中共中央发布）\r\n\r\n第一章 总则\r\n\r\n　　第一条 为了加强和规范新时代党的纪律检查委员会工作，根据《中国共产党章程》，制定本条例。\r\n\r\n　　第二条 党的各级纪律检查委员会高举中国特色社会主义伟大旗帜，以马克思列宁主义、毛泽东思想、邓小平理论、“三个代表”重要思想、科学发展观、习近平新时代中国特色社会主义思想为指导，增强“四个意识”、坚定“四个自信”、做到“两个维护”，不忘初心、牢记使命，深入贯彻全面从严治党战略方针，坚定不移推进党风廉政建设和反腐败斗争，构建一体推进不敢腐、不能腐、不想腐体制机制，从严从实加强自身建设，自觉接受监督，充分发挥监督保障执行、促进完善发展作用。\r\n\r\n　　第三条 党的各级纪律检查委员会是党内监督专责机关，是党推进全面从严治党、开展党风廉政建设和反腐败斗争的专门力量。\r\n\r\n　　党的各级纪律检查委员会的主要任务是：维护党的章程和其他党内法规，检查党的理论和路线方针政策、党中央决策部署执行情况，协助党的委员会推进全面从严治党、加强党风建设和组织协调反腐败工作。\r\n\r\n　　党的各级纪律检查委员会把坚决维护习近平总书记党中央的核心、全党的核心地位，维护党中央权威和集中统一领导作为最高政治原则和根本政治责任。\r\n\r\n　　第四条 党的各级纪律检查委员会遵循以下原则开展工作：\r\n\r\n　　（一）坚持党的全面领导，坚持党中央集中统一领导。\r\n\r\n　　（二）坚持以人民为中心，践行党的根本宗旨和群众路线。\r\n\r\n　　（三）坚持民主集中制，实行集体领导和个人分工负责相结合的制度。\r\n\r\n　　（四）坚持严的主基调，全面从严、一严到底。\r\n\r\n　　（五）坚持实事求是，依规依纪依法履行职责。\r\n\r\n　　（六）坚持惩前毖后、治病救人，实现政治效果、纪法效果、社会效果有机统一。\r\n\r\n第二章 领导体制\r\n\r\n　　第五条 党的中央纪律检查委员会（国家监察委员会）在党中央领导下进行工作，履行党的最高纪律检查机关（国家最高监察机关）职责。\r\n\r\n　　党的中央纪律检查委员会严格执行加强和维护党中央集中统一领导的各项制度要求，及时向中央政治局、中央政治局常务委员会请示汇报工作，研究重大事项、重要问题以及作出立案审查决定、给予党纪处分等事项向党中央请示报告。执行党中央重要决定的情况应当专题报告。\r\n\r\n　　第六条 党的地方各级纪律检查委员会和基层纪律检查委员会在同级党的委员会和上级纪律检查委员会双重领导下进行工作。\r\n\r\n　　党的地方各级纪律检查委员会和基层纪律检查委员会应当落实同级党的委员会推进全面从严治党、加强党风廉政建设和反腐败工作的部署，执行同级党委作出的决定，及时向同级党委汇报工作，按照规定请示报告重大事项。\r\n\r\n　　上级党的纪律检查委员会加强对下级纪律检查委员会的领导，对下级纪委的工作作出部署、提出要求；督促指导和支持下级纪委开展同级监督，检查下级纪委的工作，定期听取工作汇报，开展政治和业务培训；坚持查办腐败案件以上级纪委领导为主，按照规定审议和批准下级纪委关于线索处置、立案审查、纪律处分等的请示报告，按照程序改变下级纪委作出的错误或者不当的决定，必要时直接审查或者组织、指挥审查下级纪委管辖范围内有重大影响或者复杂的案件。\r\n\r\n　　第七条 党的中央纪律检查委员会与国家监察委员会合署办公，党的地方各级纪律检查委员会与地方各级监察委员会合署办公，实行一套工作机构、两个机关名称，履行党的纪律检查和国家监察两项职责，实现纪委监委领导体制和工作机制的统一融合，集中决策、一体运行，坚持纪严于法，执纪执法贯通。\r\n\r\n第三章 产生和运行\r\n\r\n　　第八条 党的中央纪律检查委员会由党的全国代表大会选举产生，每届任期和党的中央委员会任期相同。\r\n\r\n　　党的中央纪律检查委员会全体会议，选举常务委员会和书记、副书记，并报党的中央委员会批准。\r\n\r\n　　第九条 中央纪律检查委员会委员应当政治坚定、对党忠诚、敢于斗争、担当作为、清正廉洁，具备组织领导纪律检查工作、推进党风廉政建设和反腐败斗争的能力。\r\n\r\n　　中央纪律检查委员会委员应当认真履行以下职责：\r\n\r\n　　（一）参加中央纪委全体会议，积极发表意见、提出建议。\r\n\r\n　　（二）在纪律检查机关担负具体工作的委员，应当模范履行岗位职责，高质量完成所承担的纪律检查工作。\r\n\r\n　　（三）未在纪律检查机关担负具体工作的委员，应当支持和帮助本地区、本部门、本单位纪律检查机关开展工作；了解所在地区、部门、单位党组织和党员领导干部遵守党章党规党纪、贯彻落实党中央决策部署等情况，提出意见建议，重要问题及时向中央纪委常委会反映。\r\n\r\n　　（四）对中央纪委的工作，以及中央纪委常委、其他中央纪委委员进行监督。\r\n\r\n　　（五）承担中央纪委安排的其他任务。\r\n\r\n　　第十条 党的中央纪律检查委员会通过召开全体会议的方式行使以下职权：\r\n\r\n　　（一）制定贯彻落实党的全国代表大会和党中央决议决定的重大部署、重大措施。\r\n\r\n　　（二）听取和审议常务委员会工作报告。\r\n\r\n　　（三）选举常务委员会和书记、副书记。\r\n\r\n　　（四）讨论和决定纪检监察工作的重大问题、重大事项。\r\n\r\n　　（五）按照权限审议重要党内法规或者规范性文件。\r\n\r\n　　（六）决定或者追认给予中央纪委委员撤销党内职务以上处分。\r\n\r\n　　（七）研究决定常务委员会提请决定的事项，或者应当由全体会议决定的其他重要事项。\r\n\r\n　　第十一条 党的中央纪律检查委员会全体会议每年至少召开一次，由中央纪律检查委员会常务委员会召集并主持。\r\n\r\n　　党的中央纪律检查委员会全体会议应当有三分之二以上委员到会方可召开。委员因故不能参加会议的应当在会前请假，其意见可以用书面形式表达。根据需要，可以安排有关人员列席会议。\r\n\r\n　　根据讨论和决定事项的不同，采用举手、无记名投票等方式进行表决，赞成票超过应到会委员半数的为通过。\r\n\r\n　　对中央纪律检查委员会委员给予撤销党内职务以上处分，必须由应到会委员三分之二以上的多数决定，报党中央批准。\r\n\r\n　　第十二条 中央纪律检查委员会常务委员会贯彻落实党中央决策部署，以及中央纪律检查委员会全体会议的决定和部署，向全体会议报告工作，接受监督。在全体会议闭会期间，行使中央纪律检查委员会职权，主要包括：\r\n\r\n　　（一）讨论向党的全国代表大会的工作报告，向党中央请示报告工作，学习贯彻党中央决策部署。\r\n\r\n　　（二）召集全体会议，对拟提交全体会议讨论和决定的事项先行审议、提出意见。\r\n\r\n　　（三）讨论和决定纪检监察工作的重要问题、重要事项。\r\n\r\n　　（四）按照权限审议党内法规或者规范性文件。\r\n\r\n　　（五）听取以中央纪委名义立案审查的有关案件情况通报。\r\n\r\n　　（六）按照权限讨论和决定对违犯党纪的党组织、党员处理、处分等事项。\r\n\r\n　　（七）决定给予中央纪委委员撤销党内职务以上处分，并报党中央批准，待召开全体会议时予以追认。\r\n\r\n　　（八）按照干部管理权限审议干部任免事项。\r\n\r\n　　（九）研究决定应当由常务委员会决定的其他重要事项。\r\n\r\n　　第十三条 中央纪律检查委员会常务委员会会议一般定期召开，遇有重要情况可以随时召开。\r\n\r\n　　中央纪律检查委员会常务委员会会议由中央纪委书记召集并主持，会议议题由书记确定。\r\n\r\n　　中央纪律检查委员会常务委员会会议应当有半数以上常委会委员到会方可召开。审议干部任免事项必须有三分之二以上常委会委员到会。根据需要，可以安排有关人员列席会议。\r\n\r\n　　讨论和决定重要问题，应当进行表决。涉及多个事项的，应当逐项表决。表决可以根据讨论和决定事项的不同，采用口头、举手、无记名投票或者记名投票等方式进行，赞成票超过应到会常委会委员半数的为通过。\r\n\r\n　　第十四条 中央纪律检查委员会办公会议一般定期召开，遇有重要情况可以随时召开。办公会议由中央纪委书记召集并主持，会议议题由书记确定，驻委的副书记、常委会委员及有关负责同志参加。办公会议研究或者决定以下事项：\r\n\r\n　　（一）学习贯彻党中央决策部署。\r\n\r\n　　（二）机关日常工作中需要研究、决定或者通报的重要事项。\r\n\r\n　　（三）按照权限讨论和决定对违犯党纪的党的组织、党员处理、处分等事项。\r\n\r\n　　（四）按照干部管理权限讨论和决定有关干部任免事项。\r\n\r\n　　（五）其他需要提交办公会议讨论的重要事项。\r\n\r\n　　第十五条 中央纪律检查委员会机关根据工作需要，设立必要的内设机构，依照有关规定配置机构职能和权限。\r\n\r\n　　第十六条 党的地方各级纪律检查委员会由同级党的代表大会选举产生，每届任期和同级党的委员会任期相同。\r\n\r\n　　党的地方各级纪律检查委员会全体会议，选举常务委员会和书记、副书记，并由同级党的委员会通过，报上级党的委员会批准。\r\n\r\n　　上级党的委员会可以根据工作需要，在下级党的代表大会闭会期间，调动、任免下级纪律检查委员会书记、副书记。\r\n\r\n　　第十七条 党的地方各级纪律检查委员会通过召开全体会议的方式行使以下职权：\r\n\r\n　　（一）制定贯彻落实党中央决策部署以及中央纪委工作部署，同级党的代表大会和党委决议决定、上级纪委工作要求的重大措施。\r\n\r\n　　（二）听取和审议常务委员会工作报告。\r\n\r\n　　（三）选举常务委员会和书记、副书记。\r\n\r\n　　（四）讨论和决定管辖范围内纪检监察工作的重大问题、重大事项。\r\n\r\n　　（五）按照权限审议规范性文件。\r\n\r\n　　（六）决定或者追认给予本级纪委委员撤销党内职务以上处分。\r\n\r\n　　（七）研究决定常务委员会提请决定的事项，或者应当由全体会议决定的其他重要事项。\r\n\r\n　　第十八条 地方各级纪律检查委员会常务委员会贯彻落实党中央决策部署以及中央纪委工作部署，落实同级党委、上级纪委、本级纪委全体会议的工作部署，向全体会议报告工作，接受监督。在全体会议闭会期间，行使本级纪律检查委员会职权，主要包括：\r\n\r\n　　（一）讨论向同级党的代表大会的工作报告，向同级党委和上级纪委请示报告工作。\r\n\r\n　　（二）召集全体会议，对拟提交全体会议讨论和决定的事项先行审议、提出意见。\r\n\r\n　　（三）讨论和决定管辖范围内纪检监察工作的重要问题、重要事项。\r\n\r\n　　（四）按照权限审议规范性文件。\r\n\r\n　　（五）听取以本级纪委名义立案审查的有关案件情况通报。\r\n\r\n　　（六）按照权限讨论和决定对违犯党纪的党组织、党员处理、处分等事项。\r\n\r\n　　（七）决定给予本级纪委委员撤销党内职务以上处分，并报同级党委批准后，按照规定报上一级纪委备案或者批准，待召开本级纪委全体会议时予以追认。\r\n\r\n　　（八）按照干部管理权限审议干部任免事项。\r\n\r\n　　（九）研究决定应当由常务委员会决定的其他重要事项。\r\n\r\n　　第十九条 地方各级纪律检查委员会委员的任职条件、履职要求，全体会议和常务委员会会议的召开、表决，以及机关机构设置等事项，参照本条例第九条、第十一条、第十三条、第十五条的规定执行。\r\n\r\n　　第二十条 党的基层委员会是设立纪律检查委员会，还是设立纪律检查委员，由它的上一级党组织根据有关规定和具体情况决定。\r\n\r\n　　党的基层纪律检查委员会由党员大会或者党员代表大会选举产生，每届任期和同级党的委员会任期相同。\r\n\r\n　　党的基层纪律检查委员会选出的书记、副书记，经同级党的委员会通过后，报上级党组织批准。\r\n\r\n　　基层纪律检查委员会委员的任职条件、履职要求等事项，按照有关规定执行。\r\n\r\n　　第二十一条 党的基层纪律检查委员会根据需要及时召开全体会议，传达学习党中央决策部署以及中央纪委工作部署，传达学习同级党委和上级纪委的工作部署，提出贯彻落实的具体措施，研究讨论管辖范围内纪律检查工作的重要问题、重要事项，按照权限讨论或者决定对违犯党纪的党组织、党员处理、处分等事项。\r\n\r\n　　第二十二条 乡镇和企业、机关、高校等单位中的党的基层纪律检查委员会应当按照党章、本条例和其他党内法规的有关规定，结合实际建立健全议事规则、工作制度，注重发挥纪委委员在监督执纪、议事决策方面的作用，根据工作需要可以组织纪委委员参与监督执纪有关事项。\r\n\r\n　　党的基层纪律检查委员会可以按照有关规定，设立必要的工作机构，配备专职工作人员。\r\n\r\n　　党的基层纪律检查委员会应当指导和督促同级党的委员会所属基层党组织纪律检查委员履行职责、发挥作用。\r\n\r\n　　第二十三条 因调离本地区、辞去公职、退休等原因不适宜继续担任纪律检查委员会委员职务的，应当辞去或者按照程序免去其纪委委员职务。死亡、丧失国籍、被追究刑事责任、被停止党籍、受到撤销党内职务以上处分的，其纪委委员职务自动终止。辞去、免去或者自动终止地方纪委委员、基层纪委委员职务的，应当报上一级党的委员会备案。\r\n\r\n第四章 主要任务\r\n\r\n　　第二十四条 党的各级纪律检查委员会坚定维护党章，促进党组织和党员牢固树立党章意识、严格遵守党章规定，发挥党章作为管党治党总章程的作用，以严明的纪律巩固党的团结统一。切实维护各项党内法规，有规必依、执规必严、违规必究，保证党内法规得到有效执行，促进依规治党。\r\n\r\n　　第二十五条 党的各级纪律检查委员会检查党的理论和路线方针政策的执行情况，坚持服务党和国家工作大局，坚决维护党中央权威和集中统一领导，推动党组织和党员统一意志、统一行动。加强对党中央决策部署落实情况的监督检查，坚持跟进监督、精准监督、全程监督，督促党组织和党员履职尽责、担当作为，确保党中央政令畅通、令行禁止。\r\n\r\n　　第二十六条 党的各级纪律检查委员会协助同级党的委员会推进全面从严治党：\r\n\r\n　　（一）协助同级党委制定全面从严治党规划、计划，推动各项工作落实。\r\n\r\n　　（二）推动全面从严治党主体责任制度执行，检查同级党委领导班子成员包括“一把手”管党治党责任落实情况，监督下级党组织落实主体责任情况。\r\n\r\n　　（三）加强对同级党委领导班子监督，发现班子成员包括“一把手”履职尽责、廉洁自律等方面重要问题，按照规定如实报告。\r\n\r\n　　（四）协助同级党委加强对本地区本单位政治生态、党风廉政等情况分析，有关问题向同级党委报告并提出意见建议。\r\n\r\n　　（五）协助同级党委开展巡视巡察工作。\r\n\r\n　　（六）对日常监督、巡视巡察、审计监督等发现问题整改情况开展检查，通过加强监督推动整改常态化。\r\n\r\n　　（七）协助起草相关党内法规和规范性文件。\r\n\r\n　　（八）参与党委组织的管党治党有关专项工作。\r\n\r\n　　坚持履行协助职责和监督责任有机结合，促进全面从严治党党委主体责任和纪委监督责任贯通协同。\r\n\r\n　　第二十七条 党的各级纪律检查委员会协助同级党的委员会加强党风建设，锲而不舍落实中央八项规定精神，大力弘扬党的光荣传统和优良作风，驰而不息纠治形式主义、官僚主义、享乐主义和奢靡之风，坚决纠正损害群众利益的不正之风，保持党同人民群众的血肉联系。\r\n\r\n　　第二十八条 党的各级纪律检查委员会协助同级党的委员会组织协调反腐败工作，坚定不移推进反腐败斗争，坚持和完善党中央集中统一领导、各级党委统筹指挥、纪委监委组织协调、职能部门高效协同、人民群众支持参与的反腐败工作体制机制。\r\n\r\n　　发挥党委反腐败协调机构的统筹协调作用，开展反腐败国际追逃追赃等工作，加强相关部门协作配合，增强反腐败整体合力。\r\n\r\n　　第二十九条 党的纪律检查工作坚持把一体推进不敢腐、不能腐、不想腐作为反腐败斗争的基本方针、新时代全面从严治党的重要方略，惩治震慑、制度约束、提高觉悟一体发力，系统施治、标本兼治，努力取得更多制度性成果和更大治理成效：\r\n\r\n　　（一）坚持无禁区、全覆盖、零容忍，坚持重遏制、强高压、长震慑，坚持受贿行贿一起查，巩固不敢腐。\r\n\r\n　　（二）坚持将惩治腐败与深化改革、促进治理贯通起来，深入查找制度和体制机制存在的问题，推动补齐制度短板、堵塞监管漏洞、规范权力运行，强化不能腐。\r\n\r\n　　（三）坚持教育党员、干部坚定理想信念宗旨，提高党性觉悟，提升道德修养，涵养廉洁文化，筑牢思想上拒腐防变的堤坝，自觉不想腐。\r\n\r\n　　第三十条 发挥党的纪律检查工作在党和国家监督体系中的重要作用，强化对权力运行的制约和监督，重点加强对领导干部特别是主要领导干部的监督，提升监督全覆盖质量，增强监督的政治性、严肃性、协同性、有效性。\r\n\r\n　　深化纪检监察体制改革，推进纪律监督、监察监督、派驻监督、巡视监督统筹衔接，整合运用监督力量，构建系统集成、协同高效的监督机制。坚持以党内监督为主导，促进人大监督、民主监督、行政监督、司法监督、审计监督、财会监督、统计监督、群众监督、舆论监督等各类监督有机贯通、相互协调，健全信息沟通、线索移交、措施配合、成果共享等机制，形成常态长效的监督合力。\r\n\r\n第五章 工作职责\r\n\r\n　　第三十一条 党的各级纪律检查委员会围绕实现党章赋予的任务，坚持聚焦主责主业，履行监督、执纪、问责职责。\r\n\r\n　　坚持把监督作为基本职责，抓早抓小、防微杜渐，综合考虑错误性质、情节后果、主观态度等因素，依规依纪依法、精准有效运用监督执纪“四种形态”：\r\n\r\n　　（一）党员、干部有作风纪律方面的苗头性、倾向性问题或者轻微违纪问题，或者有一般违纪问题但具备免予处分情形的，运用监督执纪第一种形态，按照规定进行谈话提醒、批评教育、责令检查等，或者予以诫勉。\r\n\r\n　　（二）党员、干部有一般违纪问题，或者违纪问题严重但具有主动交代等从轻减轻处分情形的，运用监督执纪第二种形态，按照规定给予警告、严重警告处分，或者建议单处、并处停职检查、调整职务、责令辞职、免职等处理。\r\n\r\n　　（三）党员、干部有严重违纪问题，或者严重违纪并构成严重职务违法的，运用监督执纪第三种形态，按照规定给予撤销党内职务、留党察看、开除党籍处分，同时建议给予降职或者依法给予撤职、开除公职、调整其享受的待遇等处理。\r\n\r\n　　（四）党员、干部严重违纪、涉嫌犯罪的，运用监督执纪第四种形态，按照规定给予开除党籍处分，同时依法给予开除公职、调整或者取消其享受的待遇等处理，再移送司法机关依法追究刑事责任。\r\n\r\n　　第三十二条 党的各级纪律检查委员会应当把自觉遵守纪律的教育作为基础性工作，经常开展党章党规教育，强化党的政治纪律、组织纪律、廉洁纪律、群众纪律、工作纪律、生活纪律教育，深入开展警示教育，以案明纪、以案说法。\r\n\r\n　　开展廉政教育，加强全面从严治党、党风廉政建设和反腐败工作的形势任务以及家风家教等宣传教育，推进廉洁文化建设，营造崇廉拒腐氛围。\r\n\r\n　　根据形势需要，着眼保障党的中心工作，作出维护党纪的决定，制定相关法规文件，严明纪律要求，教育、引导和规范党组织、党员行为。\r\n\r\n　　第三十三条 党的纪律检查委员会应当强化政治监督，重点监督党组织、党员特别是领导干部以下情况：\r\n\r\n　　（一）对党忠诚，坚持党的领导，贯彻落实党的理论和路线方针政策、党中央决策部署，践行“两个维护”的情况。\r\n\r\n　　（二）坚定理想信念宗旨，牢记初心使命，践行入党誓词，坚持中国特色社会主义制度的情况。\r\n\r\n　　（三）落实全面从严治党主体责任和监督责任的情况。\r\n\r\n　　（四）贯彻执行民主集中制，公正用权、依法用权、廉洁用权、担当作为的情况。\r\n\r\n　　政治监督应当突出“关键少数”，重点加强对“一把手”、同级党委特别是常委会委员的监督。\r\n\r\n　　第三十四条 党的纪律检查委员会应当加强日常监督，监督方式主要包括：座谈，召集、参加或者列席会议，了解党内同志和社会群众反映；查阅查询相关资料和信息数据；现场调查，驻点监督；督促巡视巡察整改；谈心谈话，听取工作汇报，听取述责述廉；建立健全党员领导干部廉政档案，开展党风廉政意见回复等工作。\r\n\r\n　　开展专项监督，针对落实党中央决策部署中的突出问题，行业性、系统性、区域性的管党治党重点问题，形式主义、官僚主义、享乐主义和奢靡之风问题，群众反映强烈、损害群众利益的突出问题加强监督检查。必要时，可以组织、参加或者督促开展集中整治、专项治理。\r\n\r\n　　加强基层监督，促进基层监督资源和力量整合，发挥纪检监察、巡察等作用，有效衔接村（居）务监督，建立监督信息网络平台，扩大群众参与，及时发现、处理群众身边的腐败问题和不正之风。\r\n\r\n　　第三十五条 党的各级纪律检查委员会应当畅通信访举报渠道，依规依纪受理党员群众的信访举报，健全分办、交办、督办、反馈等工作机制。\r\n\r\n　　对信访举报情况应当定期分析研判，对反映的典型性、普遍性、苗头性问题提出有针对性的工作建议，形成综合分析或者专题分析材料，向同级党委、上级纪委报告或者向有关党组织通报。\r\n\r\n　　对于信访举报反映、监督执纪中发现以及巡视巡察机构和其他单位移交的问题线索，应当实行集中管理，采取谈话函询、初步核实、暂存待查、予以了结等方式分类处置，做到件件有着落。\r\n\r\n　　第三十六条 党的各级纪律检查委员会对反映党组织、党员的问题线索经过初步核实，对于涉嫌违纪、需要追究党纪责任的，应当按照规定予以立案审查。\r\n\r\n　　各级纪律检查委员会按照管理权限，审查违反党章和其他党内法规的比较重要或者复杂的案件，主要包括：同级党委委员、候补委员，同级纪委委员，同级党委管理的党员干部，以及同级党委工作部门，同级党委批准设立的党组（党委），下一级党委、纪委等涉嫌违纪案件；案情重大复杂，需要采取重要审查措施的案件；同级党委、上级纪委交办的其他案件。\r\n\r\n　　地方各级纪律检查委员会和基层纪律检查委员会对于处理涉及同级党委委员、候补委员，同级党委管理的正职领导干部，同级纪委常委、监委委员等人员的案件，以及涉及政治问题、国家安全等特别重要或者复杂案件中的问题和处理的结果，在向同级党委报告的同时，即向上级纪委一并报告。\r\n\r\n　　纪律审查工作应当依规依纪采取谈话、查询、调取、暂扣、封存、勘验检查、鉴定等措施，以及通过要求相关组织作出说明等方式，收集证据，查明事实，处置违纪所得。\r\n\r\n　　第三十七条 党的各级纪律检查委员会根据纪律审查结果，依据相关党内法规，对应当追究党纪责任的党组织和党员进行纪律处理、处分。\r\n\r\n　　对于各级纪律检查委员会立案审查的党员，需要给予纪律处分的，一般由负责审查的纪委提出处分意见，经被审查人所在党支部的党员大会讨论形成决议，并按照规定报党的基层委员会批准或者有权处分的党组织审批。在特殊情况下，县级和县级以上各级纪委有权直接决定给予党员纪律处分，主要包括：案情涉密、敏感；违纪案件跨地区跨部门跨单位；违纪党员所在的基层党组织无法正常履行职责、不正确履行职责或者其负责人同违纪问题有关联；违纪党员为县级或者县级以上各级党委管理的党员干部；党章和其他党内法规明确规定的相关情况。\r\n\r\n　　地方各级纪律检查委员会和基层纪律检查委员会对同级党的委员会处理案件的决定有不同意见的，可以请求上一级纪委予以复查。\r\n\r\n　　建立健全处分决定执行公示、回访教育、情况报告和专项检查等制度，加强与相关党组织及职能部门的协作沟通，确保处分决定得到严格执行。\r\n\r\n　　第三十八条 党的纪律检查委员会发现党组织、党的领导干部在党的建设、党的事业中失职失责的，应当依据相关党内法规开展问责调查，查明失职失责问题，向党的委员会提出责任追究的建议，或者按照规定的权限和程序作出问责决定。\r\n\r\n　　第三十九条 党的纪律检查委员会对于党员因合法权益受到党组织或者其他党员侵害提出的控告，按照规定予以受理，及时恰当进行处理。通过办理党员的控告发现的违纪违法问题，按照本章规定进行检查和处理。\r\n\r\n　　对于党员因不服纪委或者其他党组织给予本人的处理、处分而提出的申诉，按照规定予以受理，进行复议复查。\r\n\r\n　　第四十条 党的各级纪律检查委员会应当依据相关党内法规，加强对党组织和领导干部履行保障党员权利工作职责的监督检查，依规依纪查处侵犯党员权利的行为。开展监督执纪工作，应当落实保障党员权利的规定和要求。\r\n\r\n　　第四十一条 在监督检查、纪律审查等过程中，应当注意查找分析监督对象所在党组织党风廉政建设、管理监督等方面存在的突出问题，采取制发纪律检查建议书或者其他适当方式，提出有关强化管党治党、净化政治生态、健全制度、整改纠正等意见建议，督促指导和推动有关地区、部门、单位党组织举一反三、切实整改。\r\n\r\n　　对于涉及党的建设、党的事业的普遍性、倾向性问题，应当进行深入调研，形成专题报告，报送同级党委、上级纪委或者通报相关党组织，推动解决问题、规范决策、完善政策、健全制度。\r\n\r\n第六章 派驻、派出机构\r\n\r\n　　第四十二条 党的中央纪律检查委员会国家监察委员会、地方各级纪律检查委员会监察委员会向同级党和国家机关全面派驻纪检监察组，按照规定可以向国有企业、事业单位等其他组织和单位派驻纪检监察组。\r\n\r\n　　党的中央和地方各级委员会派出党的机关工作委员会、街道工作委员会等代表机关的，党的中央纪律检查委员会国家监察委员会、地方各级纪律检查委员会监察委员会可以相应派出纪检监察工作委员会。\r\n\r\n　　第四十三条 派驻机构是派出它的党的纪律检查委员会监察委员会的组成部分，由派出机关直接领导、统一管理。\r\n\r\n　　派出机构在派出它的党的纪律检查委员会监察委员会和本级党的工作委员会双重领导下进行工作。派出机构按照规定开展纪律检查工作，领导管辖范围内机关纪委等纪检机构的工作。\r\n\r\n　　第四十四条 派驻机构根据派出机关授权开展监督执纪问责工作：\r\n\r\n　　（一）加强对驻在单位（含综合监督单位）的监督，重点对驻在单位领导班子及其成员、党组（党委）管理的领导班子及其成员等进行监督。\r\n\r\n　　（二）监督促进驻在单位领导班子贯彻落实党的理论和路线方针政策、党中央决策部署，履行全面从严治党主体责任。\r\n\r\n　　（三）经常、及时地向派出机关报告情况和问题。\r\n\r\n　　（四）加强对驻在单位纪检机构的业务指导和监督检查，促进其履行监督责任。\r\n\r\n　　（五）认真处理信访举报，对问题线索进行集中管理和处置。\r\n\r\n　　（六）依规依纪开展纪律审查，严肃查处违纪问题。\r\n\r\n　　（七）按照管理权限作出问责决定或者提出问责建议。\r\n\r\n　　（八）协助驻在单位党组（党委）做好巡视巡察工作。\r\n\r\n　　（九）完成派出机关交办的其他任务。\r\n\r\n　　第四十五条 健全派驻监督工作机制，统筹协调派出机关内设监督检查室、派驻纪检监察组、地方纪检监察机关、巡视巡察机构等力量，通过“室组”联动监督、“室组地”联合办案等方式，提高派驻监督质量。\r\n\r\n　　县（市、区）纪律检查委员会监察委员会开展派驻监督工作，应当保证派驻机构人员力量，推动监督工作向基层延伸，采取综合派驻、工作协作等方式，提升监督效能。\r\n\r\n第七章 队伍建设和监督\r\n\r\n　　第四十六条 党的各级纪律检查委员会必须坚持以习近平新时代中国特色社会主义思想武装头脑、指导实践、推动工作，突出抓好党的政治建设，教育引导纪检干部不断提高政治判断力、政治领悟力、政治执行力，带头践行“两个维护”，敢于善于斗争，做到忠诚干净担当。\r\n\r\n　　第四十七条 贯彻新时代党的组织路线，坚持党管干部，严把干部准入关，加强思想淬炼、政治历练、实践锻炼、专业训练，加强理论研究和学科建设，提高把握政策、监督执纪、做思想政治工作等能力，建设高素质专业化干部队伍。\r\n\r\n　　第四十八条 加强作风建设和纪律建设，保证纪检干部严守政治纪律和政治规矩，模范遵守党的纪律和国家法律，坚持实事求是，深入开展调查研究，密切联系群众，树立纪律严明、作风深入、工作扎实、谦虚谨慎、秉公执纪的良好形象。\r\n\r\n　　第四十九条 加强监督执纪规范化建设，健全法规制度，规范工作流程，牢固树立法治意识、程序意识、证据意识，依规依纪依法行使纪律检查权。\r\n\r\n　　第五十条 党的纪律检查委员会必须接受最严格的约束和监督，在同级党委和上级纪委的领导、监督下强化自我监督，自觉接受党的组织和党员的监督。建立完善监督检查、审查调查、案件监督管理、案件审理相互协调、相互制约的工作机制，发挥内设干部监督机构、机关纪委等作用，加大监管和自我净化力度，坚决防治“灯下黑”。\r\n\r\n　　党的纪律检查委员会应当自觉接受民主监督、群众监督、舆论监督等各方面监督。任何单位和个人对纪检机关、纪检干部的违纪违法行为，有权提出检举、控告。\r\n\r\n　　第五十一条 严格执行纪检干部打听案情、过问案件、说情干预问题报告制度，有关情况应当登记备案。\r\n\r\n　　纪检干部发现审查组工作人员未经批准接触被审查人、涉案人员及其特定关系人，或者存在交往情形的，应当及时报告并登记备案。\r\n\r\n　　第五十二条 办理纪检事项的纪检干部存在可能影响事项公正处理情形的，应当主动申请回避，被审查人、检举控告人以及其他有关人员也有权要求其回避。\r\n\r\n　　第五十三条 纪检干部应当严格执行保密制度，不准私自留存、隐匿、查阅、摘抄、复制、携带问题线索和涉案资料，严禁泄露审查工作情况。\r\n\r\n　　纪检干部离职的，应当严格遵守有关离职后从业限制的规定，三年内不得从事与纪律检查工作相关的职业。\r\n\r\n　　第五十四条 建立健全安全责任制，严格防范发生审查安全事故。组织开展经常性检查和不定期抽查，发现问题及时督促整改。\r\n\r\n　　第五十五条 纪检干部有以案谋私、跑风漏气、滥用职权以及其他违规违纪违法行为的，必须严肃查处；构成犯罪的，依法追究刑事责任。\r\n\r\n　　纪检机关及其领导干部履行职责过程中失职失责造成严重后果或者恶劣影响的，应当严肃问责。\r\n\r\n第八章 附则\r\n\r\n　　第五十六条 新疆生产建设兵团党的各级纪律检查委员会，党的地区纪律检查委员会和相当于地区纪委的其他纪律检查委员会，党组（党委）纪检组（纪委），纪律检查委员，参照执行本条例。\r\n\r\n　　第五十七条 中央军事委员会可以根据本条例，制定相关规定。\r\n\r\n　　第五十八条 本条例由中央纪律检查委员会负责解释。\r\n\r\n　　第五十九条 本条例自发布之日起施行。', '工作条例', '委员会', '2022-01-04', 0);
INSERT INTO `news` VALUES (4, '《求是》杂志发表习近平总书记重要文章《在党史学习教育动员大会上的讲话》', '　4月1日出版的第7期《求是》杂志将发表中共中央总书记、国家主席、中央军委主席习近平的重要文章《在党史学习教育动员大会上的讲话》。\r\n\r\n　　文章强调，在全党开展党史学习教育，是党中央立足党的百年历史新起点、统筹中华民族伟大复兴战略全局和世界百年未有之大变局、为动员全党全国满怀信心投身全面建设社会主义现代化国家而作出的重大决策。全党同志要做到学史明理、学史增信、学史崇德、学史力行，学党史、悟思想、办实事、开新局，以昂扬姿态奋力开启全面建设社会主义现代化国家新征程，以优异成绩迎接建党一百周年！\r\n\r\n　　文章指出，开展党史学习教育意义重大。我们党历来重视党史学习教育。在庆祝我们党百年华诞的重大时刻，在“两个一百年”奋斗目标历史交汇的关键节点，在全党集中开展党史学习教育，正当其时，十分必要。在全党开展党史学习教育，是牢记初心使命、推进中华民族伟大复兴历史伟业的必然要求，是坚定信仰信念、在新时代坚持和发展中国特色社会主义的必然要求，是推进党的自我革命、永葆党的生机活力的必然要求。\r\n\r\n　　文章指出，开展党史学习教育要突出重点。第一，进一步感悟思想伟力，增强用党的创新理论武装全党的政治自觉。第二，进一步把握历史发展规律和大势，始终掌握党和国家事业发展的历史主动。第三，进一步深化对党的性质宗旨的认识，始终保持马克思主义政党的鲜明本色。第四，进一步总结党的历史经验，不断提高应对风险挑战的能力水平。第五，进一步发扬革命精神，始终保持艰苦奋斗的昂扬精神。第六，进一步增强党的团结和集中统一，确保全党步调一致向前进。\r\n\r\n　　文章指出，在全党开展党史学习教育要务求实效。全党要高度重视，提高思想站位，立足实际、守正创新，高标准高质量完成学习教育各项任务。一是要加强组织领导。二是要树立正确党史观。三是要切实为群众办实事解难题。四是要注重方式方法创新。要在全社会广泛开展党史、新中国史、改革开放史、社会主义发展史宣传教育，普及党史知识，推动党史学习教育深入群众、深入基层、深入人心。', '领导讲话', '委员会', '2021-03-31', 0);
INSERT INTO `news` VALUES (6, '同志', '大撒大撒大撒', '讲话', '302', '2021-12-12', 1);
INSERT INTO `news` VALUES (7, '同志', '大撒大撒大撒', '讲话', '302', '2021-12-12', 0);
INSERT INTO `news` VALUES (8, '同志', '大撒大撒大撒', '讲话', '302', '2021-12-12', 0);
INSERT INTO `news` VALUES (9, '同志', '大撒大撒大撒', '讲话', '302', '2021-12-12', 0);

SET FOREIGN_KEY_CHECKS = 1;
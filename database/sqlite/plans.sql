/*
 Navicat Premium Dump SQL

 Source Server         : phone
 Source Server Type    : PostgreSQL
 Source Server Version : 170000 (170000)
 Source Host           : 192.168.1.3:5432
 Source Catalog        : lkxl
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 170000 (170000)
 File Encoding         : 65001

 Date: 09/12/2024 23:15:47
*/


-- ----------------------------
-- Table structure for plans
-- ----------------------------
DROP TABLE IF EXISTS "public"."plans";
CREATE TABLE "public"."plans" (
  "plan_name" varchar(255) COLLATE "pg_catalog"."default",
  "time_start" varchar(255) COLLATE "pg_catalog"."default",
  "time_end" varchar(255) COLLATE "pg_catalog"."default",
  "plan_details" varchar(255) COLLATE "pg_catalog"."default",
  "project_name" varchar(255) COLLATE "pg_catalog"."default",
  "project_details" varchar(255) COLLATE "pg_catalog"."default",
  "night_time_start" varchar(255) COLLATE "pg_catalog"."default",
  "night_time_end" varchar(255) COLLATE "pg_catalog"."default",
  "project_finish_percent" varchar(255) COLLATE "pg_catalog"."default",
  "day_of_week" int4,
  "book_name" varchar(255) COLLATE "pg_catalog"."default",
  "book_content" varchar(255) COLLATE "pg_catalog"."default",
  "major_in" varchar(255) COLLATE "pg_catalog"."default",
  "project_month" varchar(255) COLLATE "pg_catalog"."default",
  "project_year" varchar(255) COLLATE "pg_catalog"."default",
  "relax_item" varchar(255) COLLATE "pg_catalog"."default",
  "relax_item_foregin" varchar(255) COLLATE "pg_catalog"."default",
  "type_of_learn" varchar(255) COLLATE "pg_catalog"."default",
  "type_detail" varchar(255) COLLATE "pg_catalog"."default",
  "standard_learn" varchar(255) COLLATE "pg_catalog"."default",
  "update_time" varchar(255) COLLATE "pg_catalog"."default",
  "book_page" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of plans
-- ----------------------------
INSERT INTO "public"."plans" VALUES ('军事学', '18:00', '19:00', '战争论学习', '战争模拟游戏开发', '军事仿真系统', '03:30', '04:00', '10%', 7, 'On War_Carl von Clausewitz, Beatrice Heuser_67664', '战争论', 'Ti', '12', '2024', '小木虫', 'ResearchGate', 'C', '理科', '仿真系统增加一个新的主题', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('语音学', '07:00', '08:00', '通过语音学学习音标', 'IPA语音学习', 'IPA学习', '16:00', '18:00', '10%', 5, 'A Course in Phonetics by Peter Ladefoged, Keith J', '语音学课程', 'Si', '12', '2024', '微波', 'Twitter(X)', 'B', '语言学习', '完成一个音调学习', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('词汇和形态学', '07:00', '08:00', '通过形态学学习词汇', 'Coca高频词汇形态学', 'Coca最低级单词形态研究', '16:00', '18:00', '10%', 1, 'Understanding Morphology', '理解形态学', 'Si', '12', '2024', '微波', 'Twitter(X)', 'B', '语言学习', '完成20-30个单词的形态变形研究', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('句法学', '07:00', '08:00', '通过句法学学习语法', 'Goodreads书目语法树', '红楼梦翻译英文', '16:00', '18:00', '10%', 2, 'Andrew Carnie - Syntax_ A Generative Introduction', '生成式语法', 'Si', '12', '2024', '微波', 'Twitter(X)', 'B', '语言学习', '翻译1/10回', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('哲学', '08:00', '09:00', '哲学导论', '信息哲学大问题回答', '大问题问题信息化回答', '23:30', '00:00', '10%', 7, 'Solomon, Robert C._Higgins, Kathleen Marie - The Big questions_ a short introduction to philosophy-Wadsworth_Cengage Learning (2014)', '信息哲学加入历史——本体论问题', 'Ni', '12', '2024', '小红书', 'Facebook', 'C', '文科', '回答3个信息哲学问题', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('人工智能', '09:00', '12:00', '人工智能理论学习', '搜索算法', 'MiniGrid搜索算法开发', '00:00', '01:30', '10%', 6, 'Artificial Intelligence A Modern Approach, Global Edition', '人工智能算法学习', 'Te', '12', '2024', '知乎', 'Qoura', 'A', '工作相关理论', '完成一个MiniGrid任务', '2024-12-09', '89');
INSERT INTO "public"."plans" VALUES ('时尚和设计', '19:00', '20:00', '基础的时尚和审美', 'vouge时尚理论', '根据vouge和自己的身材形状看衣服', '16:00', '18:00', '10%', 5, 'The Triumph of Individual S_ (Z-Library)', '个性', 'Se', '12', '2024', '抖音', 'TikTok', 'B', '家务', '能够定位人的身材和衣服', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('烹饪学', '19:00', '20:00', '烹饪基础学习', '烹饪', '专业厨师器具分析', '16:00', '18:00', '10%', 4, 'The Professional Chef, 9th_ (Z-Library)-1', '专业的厨师', 'Se', '12', '2024', '抖音', 'TikTok', 'B', '家务', '分清食物的反应和器皿', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('建筑学和室内设计', '19:00', '20:00', '建筑学学习', '室内设计计划', 'MC建筑设计', '16:00', '18:00', '10%', 3, 'Introduction to Architectur_ (Z-Library)-1', '建筑学导论', 'Se', '12', '2024', '抖音', 'TikTok', 'B', '家务', 'MC进行室内改造的设计图', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('运动生理学', '06:00', '07:00', '通过运动生理学规划运动例如跑步', '跑步', 'Born to Run书籍内容', '22:30', '23:00', '10%', 2, 'Physiology of Sport and Exe_ (Z-Library)', '运动的生理基础', 'Se', '12', '2024', '喜马拉雅', 'Spotify', 'B', '锻炼', '完成15分钟跑步', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('运动训练学', '06:00', '07:00', '通过运动训练学来优化自己的训练节奏', '力量训练', 'Starting Strength书籍内容', '22:30', '23:00', '10%', 3, 'Science and practice of str_ (Z-Library)', '运动训练', 'Se', '12', '2024', '喜马拉雅', 'Spotify', 'B', '锻炼', '完成15分钟力量训练', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('语义学', '07:00', '08:00', '通过语义学学习语言的运用规则', '豆瓣中文书籍翻译', '饥饿游戏翻译', '16:00', '18:00', '10%', 3, 'semantics', '语义学', 'Si', '12', '2024', '微波', 'Twitter(X)', 'B', '语言学习', '完成1页翻译', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('语用学', '07:00', '08:00', '通过语用学学习语言的具体应用', 'pocketCast听力', 'yourmomanddad电台听力和语用研究', '16:00', '18:00', '10%', 4, 'Pragmatics', '语用学', 'Si', '12', '2024', '微波', 'Twitter(X)', 'B', '语言学习', '完成15分钟一集的研究', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('财务管理', '19:00', '20:00', '财务管理', '财务计划', '福布斯头部富豪收支表', '16:00', '18:00', '10%', 7, 'fundamentals of corporate fInance', '企业金融基础', 'Se', '12', '2024', '抖音', 'TikTok', 'B', '家务', '赚钱方向的发掘', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('植物学和农林牧渔', '19:00', '20:00', '园艺', '园艺设计计划', 'Rodale’s Basic Organic Gardening A Beginner’s Guide to Starting a Healthy Garden书籍园艺内容', '16:00', '18:00', '10%', 6, 'Raven Biology of Plants (Ray F. Evert, Susan E. E', '植物学', 'Se', '12', '2024', '抖音', 'TikTok', 'B', '家务', '发掘新的园艺植物和自己的方向', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('运动营养学', '06:00', '07:00', '通过运动营养学规划饮食', '美国膳食指南', 'Mypalfit营养规划', '22:30', '23:00', '10%', 5, 'Nancy Clarks Sports Nutriti_ (Z-Library)', '护士的运动营养学', 'Se', '12', '2024', '喜马拉雅', 'Spotify', 'B', '锻炼', '完成饮食计划调整', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('运动技能学', '06:00', '07:00', '通过运动技能学学习在运动中学会额外的技能例如HIT', 'HIT', 'HIIT: High Intensity Interval Training Explained书籍内容', '22:30', '23:00', '10%', 4, 'Skill Acquisition in Sport_ (Z-Library)', 'HIT运动指南', 'Se', '12', '2024', '喜马拉雅', 'Spotify', 'B', '锻炼', '完成15分钟HIT', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('运动心理学', '06:00', '07:00', '通过运动心理学来获得健康的心理例如冥想', '冥想', 'The Miracle of Mindfulness书籍内容', '22:30', '23:00', '10%', 6, 'Foundations of Sport and Exercise Psychology', '运动的心理基础', 'Se', '12', '2024', '喜马拉雅', 'Spotify', 'B', '锻炼', '完成15分钟冥想', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('运动康复学', '06:00', '07:00', '通过运动康复学预防运动中的伤病例如瑜伽', '瑜伽', 'yoga the heart of yoga书籍内容', '22:30', '23:00', '10%', 7, 'Therapeutic Exercise Founda_ (Z-Library)', '康复性运动', 'Se', '12', '2024', '喜马拉雅', 'Spotify', 'B', '锻炼', '完成15分钟瑜伽', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('社会语言学', '07:00', '08:00', '通过社会语言学学习语言的变化', '中美方言研究', 'Atlas of North American Eng_ (Z-Library)书籍学习', '16:00', '18:00', '10%', 6, 'An Introduction to Sociolin_ (Z-Library)', '社会语言学介绍', 'Si', '12', '2024', '微波', 'Twitter(X)', 'B', '语言学习', '完成一种方言对比', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('心理与神经语言学', '07:00', '08:00', '通过心理与神经语言学学习语言的结构', '第一语言和第二语言习得', 'english file英语学习', '16:00', '18:00', '10%', 7, 'The Cambridge Handbook of P_ (Z-Library)', '剑桥心理语言学', 'Si', '12', '2024', '微波', 'Twitter(X)', 'B', '语言学习', '完成一课', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('前端开发', '09:00', '12:00', '页面的前端开发', '个人计划前端页面开发', '完成基础功能并根据书中所述引入图片', '00:00', '01:30', '10%', 5, 'HTML and CSS_ Design and Build Websites_Jon Ducke', '前端页面开发', 'Te', '12', '2024', '知乎', 'Qoura', 'A', '工作相关理论', '前端页面开发增加一个功能点', '2024-12-09', '94');
INSERT INTO "public"."plans" VALUES ('产品经理', '09:00', '12:00', '产品经理的市场调研', 'ProductHunt产品发现', 'Wordware项目设计', '00:00', '01:30', '10%', 4, '(NEW)Inspired How To Create Products Customers Love  ', '产品策划案', 'Te', '12', '2024', '知乎', 'Qoura', 'A', '工作相关理论', '产品经理的策划案文档更新一章', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('自动化运维和管理计划和工具使用', '09:00', '12:00', '企业级自动化运维工具的使用以及日常开发的管理', 'Android测试容器化', 'Docker和qemu在termux上的替代品', '00:00', '01:30', '10%', 3, 'The DevOps Handbook How to_ (Z-Library)', '运维实战手册', 'Te', '12', '2024', '知乎', 'Qoura', 'A', '工作相关理论', '找到一个新的工具', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('游戏开发与图形学实战', '13:00', '18:00', '游戏开发', 'Godot游戏开发', 'Godot开发游戏史上的经典游戏——太空大战体验设计', '01:30', '03:00', '10%', 7, '(NEW)The Art of Game Design, 3rd_ (Z-Library)', '游戏开发与设计', 'Te', '12', '2024', '知乎', 'Qoura', 'A', '工作相关实践', 'Metacritic游戏策划案产出', '2024-12-09', '67');
INSERT INTO "public"."plans" VALUES ('政治学', '12:00', '13:00', '政治学新闻的查看和研究', 'Reuters新闻', '本周政治新闻分析', '22:30', '23:00', '10%', 3, '(NEW)The Oxford Handbook of Political Science (Oxford Handbooks of Political Science)', '剑桥政治科学手册', 'Fe', '12', '2024', 'b站', 'youtube', 'B', '社交', '发掘一个新的研究话题', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('商业和金融', '12:00', '13:00', '商业届最新进展和学习', 'investing.com新闻', '本周商业新闻分析', '22:30', '23:00', '10%', 2, 'Foundation of Global Financial Markets and Institutions', '全球金融市场', 'Fe', '12', '2024', 'b站', 'youtube', 'B', '社交', '发掘一个新的投资方向', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('UI设计', '13:00', '18:00', '产品经理的实战设计', 'Penpot的UI设计', 'PenPot设计自用产品的UI', '01:30', '03:00', '10%', 4, 'The Design of Everyday Things', '日常事物中的设计', 'Te', '12', '2024', '知乎', 'Qoura', 'A', '工作相关实践', 'PenPot设计自用产品的UI', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('自动化运维和管理脚本', '13:00', '18:00', '通过脚本自动化同步自己的日常开发工作和运维', 'Python自动化日常开发', '通过Shell和Ansible进行日常开发的自动化', '01:30', '03:00', '10%', 3, '(NEW)Linux 3 books in 1  Linux for Beginners + Linux Command Lines and Shell Scripting + Linux Security and Administration', 'Linux Shell基础', 'Te', '12', '2024', '知乎', 'Qoura', 'A', '工作相关实践', '简化一个日常开发的功能', '2024-12-09', '67');
INSERT INTO "public"."plans" VALUES ('科学和研究', '12:00', '13:00', '科学界最新进展以及科研学习', 'ScienceDaily新闻', '本周科研项目学习', '22:30', '23:00', '10%', 1, '(NEW)The Craft of Research', '如何做研究', 'Fe', '12', '2024', 'b站', 'youtube', 'B', '社交', '发掘一个新的研究方向', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('APP开发', '13:00', '18:00', '页面的Android化', 'Androidrank,org灵感来源Kotlin页面开发', '上午的页面用Kotlin进行Android化', '01:30', '03:00', '10%', 5, 'Kotlin in Action (Dmitry Je_ (Z-Library)', 'Android应用开发', 'Te', '12', '2024', '知乎', 'Qoura', 'A', '工作相关实践', '使得某一个功能更加适配Android', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('Python与数据挖掘', '13:00', '18:00', '学习python数据挖掘来发现隐藏的需求', 'Python自动化日常开发个人助理', 'Python日常更新和清理的自动化', '01:30', '03:00', '10%', 6, 'Automate the Boring Stuff w_ (Z-Library)', '数据挖掘、分析、统计', 'Te', '12', '2024', '知乎', 'Qoura', 'A', '工作相关实践', '简化某个日常任务', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('电影和摄影', '21:00', '22:30', '从摄影到电影的拍摄', '摄影的角度', '摄影作品', '03:30', '04:00', '10%', 7, 'The photograh’s eyes', '摄影师之眼', 'Fi', '12', '2024', '豆瓣', 'IMDB', 'D', '艺术', '500px第一摄影', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('Java中间件引入', '13:00', '18:00', 'Java开发后端的架构设计', 'Java中间件引入和开发', '根据数据密集型架构的要求设计架构', '01:30', '03:00', '10%', 1, 'Designing Data-Intensive Applications', '设计数据密集型架构', 'Te', '12', '2024', '知乎', 'Qoura', 'A', '工作相关实践', '添加某个中间件', '2024-12-09', '67');
INSERT INTO "public"."plans" VALUES ('爬虫和数据分析', '13:00', '18:00', '通过python爬取其余网站数据进行分析', 'Python自动化爬取similarweb各大网站数据', 'Google自动爬虫和Youtube自动爬虫', '01:30', '03:00', '10%', 2, 'Mastering Selenium WebDriver', '数据挖掘、分析、统计', 'Te', '12', '2024', '知乎', 'Qoura', 'A', '工作相关实践', '增加某个网站爬虫', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('人力行政和家务', '19:00', '20:00', '家务的规划', '家务计划', '家务计划——清洁', '16:00', '18:00', '10%', 2, '(NEW)Home Comforts The Art and S_ (Z-Library)', '舒适的家', 'Se', '12', '2024', '抖音', 'TikTok', 'B', '家务', '完成一件待办家务', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('医学', '19:00', '20:00', '医学和疾病的预防', '清洁计划', '自我清洁计划之洗脸', '16:00', '18:00', '10%', 1, 'Gray''s Anatomy for Students (Fourth Edition)', '格氏解剖学', 'Se', '12', '2024', '抖音', 'TikTok', 'B', '家务', '自我清洁计划的确定并分配时间', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('游戏开发与图形学基础', '09:00', '12:00', '计算机图形学', 'Android坐标系统开发', '开发Andorid应用完成书中WPF相关功能——Android坐标系统', '00:00', '01:30', '10%', 7, 'Computer Graphics Principles and Practice', '计算机图形学', 'Te', '12', '2024', '知乎', 'Qoura', 'A', '工作相关理论', '完成书上一章功能搭建', '2024-12-09', '86');
INSERT INTO "public"."plans" VALUES ('自动化测试', '09:00', '12:00', '通过优秀的网站测试来增加自己网站的功能和测试', '补充后台单元测试并完善', '单元测试编写和通过', '00:00', '01:30', '10%', 2, 'Software Testing A Craftsma_ (Z-Library)', '自动测试理论', 'Te', '12', '2024', '知乎', 'Qoura', 'A', '工作相关理论', '完成本周代码的测试', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('JavaSpringboot后端开发', '09:00', '12:00', '页面后端的功能集中开发', 'alternativeto灵感来源计划功能开发', 'Netflix功能加入，即电影下载和在线观看', '00:00', '01:30', '10%', 1, 'core-java-vol-ii-advanced-features-12th-edition-s--annas-archive--zlib-21106011', 'Java核心思想', 'Te', '12', '2024', '知乎', 'Qoura', 'A', '工作相关理论', '完成一个新的功能点', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('技术', '12:00', '13:00', '开发届最新技术进展和学习', 'InfoQ新闻', '本周技术项目学习', '22:30', '23:00', '10%', 4, '(NEW)Code Complete  _Steve McConnell_1170911_zhel', '代码大全', 'Fe', '12', '2024', 'b站', 'youtube', 'B', '社交', '发掘一个新的研究方向', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('艺术学', '08:00', '09:00', '艺术史', '艺术史基础绘画', 'Kitra(手机Sketchbook)画画', '23:30', '00:00', '10%', 6, 'Gardner’s Art Through the A_ (Z-Library)-1', '艺术史第一章史前', 'Ni', '12', '2024', '小红书', 'Facebook', 'C', '文科', 'Fundamental of draw书上的标准和艺术史的参考画出一个最简单的艺术画', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('管理学', '08:00', '09:00', '管理学导论', '财富第一名企业研究', '沃尔玛企业文化研究', '23:30', '00:00', '10%', 1, 'Management ', '管理学第三章企业文化', 'Ni', '12', '2024', '小红书', 'Facebook', 'C', '文科', '富甲美国书籍研究', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('社会学', '08:00', '09:00', '普通社会学', '中美文化研究', 'american society 书籍美国社会文化研究', '23:30', '00:00', '10%', 3, 'Sociology (16th Edition)', '社会学理论', 'Ni', '12', '2024', '小红书', 'Facebook', 'C', '文科', '研究一个中美社会现象差异', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('心理学', '08:00', '09:00', '心理学导论', '分析心理学基础', '分析心理学与普通心理学接洽', '23:30', '00:00', '10%', 4, ' Psychology and life', '普通心理学', 'Ni', '12', '2024', '小红书', 'Facebook', 'C', '文科', '根据心理学本章主题找到分析心理学对应的理论', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('经济学', '08:00', '09:00', '微观经济学', '政府财报', '政府财务报告微观经济分析', '23:30', '00:00', '10%', 5, 'Principles of Economics', '曼昆经济学导论', 'Ni', '12', '2024', '小红书', 'Facebook', 'C', '文科', '根据微观经济学当前主题找到财报', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('法学', '08:00', '09:00', '目前是法理学的学习', '中美法律对比', '中美侵权法和刑法对比', '23:30', '00:00', '10%', 2, 'Lloyd’s Introduction to Jur', '美国法理学', 'Ni', '12', '2024', '小红书', 'Facebook', 'C', '文科', '根据法理学当前主题对比中美法律', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('音乐', '21:00', '22:30', '乐理', '音乐创作', '音乐创作BandLab', '03:30', '04:00', '10%', 1, 'Tonal Harmony ', '调性与和声', 'Fi', '12', '2024', '豆瓣', 'IMDB', 'D', '艺术', 'BillBoard第一音乐', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('社交媒体', '12:00', '13:00', '社交媒体新闻的查看和研究', 'SocialBlade社交媒体趋势搜索', 'FaceBook账号研究', '22:30', '23:00', '10%', 5, '(NEW)Social Media Communication_ (Z-Library)', '社交媒体传播学', 'Fe', '12', '2024', 'b站', 'youtube', 'B', '社交', '发掘一个新的热点话题', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('动画和漫画', '21:00', '22:30', '动漫鉴赏和分镜', '动漫的分镜设计', 'Fundamental of draw画画', '03:30', '04:00', '10%', 3, 'Drawn to Life 20 Golden Yea_ (Z-Library)', '绘画生命', 'Fi', '12', '2024', '豆瓣', 'IMDB', 'D', '艺术', 'Mal第一漫画分镜', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('历史', '12:00', '13:00', '世界简史', '历史学论坛和聊天', '世界史事件论坛研究和查询', '22:30', '23:00', '10%', 6, '(NEW)The Penguin History of the World (6th edition)', '企鹅世界史', 'Fe', '12', '2024', 'b站', 'youtube', 'B', '社交', '发掘当前主题时期的历史的论坛', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('算法和数据结构', '20:00', '21:00', '算法学习和开发', '算法全实践', '排序算法', '03:30', '04:00', '10%', 4, 'Introduction to Algorithms_ (Z-Library)', '算法导论', 'Ne', '12', '2024', '贴吧', 'Reddit', 'B', '计算机底层原理', '算法时间空间复杂度分析', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('文学', '21:00', '22:30', '文学理论', '文学写作', 'Notion创作', '03:30', '04:00', '10%', 2, 'Literary Theory an introduction', '文学理论', 'Fi', '12', '2024', '豆瓣', 'IMDB', 'D', '艺术', 'The Norton Anthology of World Literature文学史', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('计算机网络', '20:00', '21:00', '计算机网络系统学习和搭建', '计算机组网', '自制网络交换拓扑', '03:30', '04:00', '10%', 3, 'Computer networking  top down', '计算机网络自顶向下方法', 'Ne', '12', '2024', '贴吧', 'Reddit', 'B', '计算机底层原理', '拓扑结构搭建', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('理论计算机科学', '20:00', '21:00', '形式语言与自动机', '自动机实验', '设计自动机', '03:30', '04:00', '10%', 7, ' Introduction to the Theory of Computation', '可计算型导论', 'Ne', '12', '2024', '贴吧', 'Reddit', 'B', '计算机底层原理', '自动机功能点开发', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('数据库和云计算', '20:00', '21:00', '重新设计数据库', '自制数据库', '设计数据库的存储', '03:30', '04:00', '10%', 6, 'Database System Concepts (7th Edition)_Abraham Si', '数据库系统概念', 'Ne', '12', '2024', '贴吧', 'Reddit', 'B', '计算机底层原理', '数据库功能点开发', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('编译原理和计算机语言设计', '20:00', '21:00', '重新设计编程语言', '自制编程语言', 'flex和bison设计编译器', '03:30', '04:00', '10%', 5, 'Compilers: Principles, Techniques, and Tools', '编译原理', 'Ne', '12', '2024', '贴吧', 'Reddit', 'B', '计算机底层原理', '编译器功能点开发', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('雕塑', '21:00', '22:30', '现代雕塑和三维建模', '三维建模基础', 'Blender 3D Noob to Pro (David Millet, Arthur Tombs, Louie Monday etc.) (Z-Library) (1)书籍内容学习建模', '03:30', '04:00', '10%', 4, 'Sculpture Materials, Techni_ (Z-Library)', '雕塑的材料技术和其他', 'Fi', '12', '2024', '豆瓣', 'IMDB', 'D', '艺术', 'ArtStation年度雕塑完成进度', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('舞蹈', '21:00', '22:30', '现代舞和编舞', '舞蹈学习', '现代舞学习', '03:30', '04:00', '10%', 5, 'Dance Composition A Practical Guide to Creative Success in Dance Making (Performance Books) (Jacqueline M. Smith-Autard) (Z-Library)', '编舞理论', 'Fi', '12', '2024', '豆瓣', 'IMDB', 'D', '艺术', 'Wod世界舞蹈大赛舞蹈学习', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('戏剧', '21:00', '22:30', '表演理论', '经典电视剧表演', '戏剧表演学习——电视剧绝命毒师', '03:30', '04:00', '10%', 6, 'The Empty Space A Book Abou_ (Z-Library)', '空的空间', 'Fi', '12', '2024', '豆瓣', 'IMDB', 'D', '艺术', '托尼奖戏剧表演', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('地理', '12:00', '13:00', '自然地理学学习', '地理学纪录片', '世界地理基础学习和观赏', '22:30', '23:00', '10%', 7, 'Physical geography the glob_ (Z-Library)', '自然地理学', 'Fe', '12', '2024', 'b站', 'youtube', 'B', '社交', '看完一个新的和本周主题相关的纪录片', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('生物学', '18:00', '19:00', '普通生物学', '普通生物学模拟', '生物分类学', '03:30', '04:00', '10%', 6, 'Campbell Biology', '坎贝尔生物学', 'Ti', '12', '2024', '小木虫', 'ResearchGate', 'C', '理科', '找到一种新的生物类别', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('化学', '18:00', '19:00', '普通化学', '普通化学模拟', '原子结构仿真', '03:30', '04:00', '10%', 4, 'Chemistry The Central Science, 14th Edition', '化学中心科学', 'Ti', '12', '2024', '小木虫', 'ResearchGate', 'C', '理科', '增加一个新的原子', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('工程学', '18:00', '19:00', '工程力学', '工程力学模拟', '受力分析仿真', '03:30', '04:00', '10%', 1, 'Engineering Mechanics Combined Statics & Dynamics (12th Edition)', '集合论证明最基础的四个逻辑', 'Ti', '12', '2024', '小木虫', 'ResearchGate', 'C', '理科', '通过仿真多做5个受力分析', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('数学', '18:00', '19:00', '现代数学概论', '数学模拟', '通过coq完成数学证明', '03:30', '04:00', '10%', 2, 'The Princeton companion to mathematics_Timothy Go', '普林斯顿数学指南', 'Ti', '12', '2024', '小木虫', 'ResearchGate', 'C', '理科', '证明一个数学概念', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('物理', '18:00', '19:00', '普通物理学', '物理学模拟', '运动学仿真', '03:30', '04:00', '10%', 3, 'Fundamentals of Physics by David Halliday, Robert', '基础物理学', 'Ti', '12', '2024', '小木虫', 'ResearchGate', 'C', '理科', '通过仿真多做5个运动分析', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('天文学', '18:00', '19:00', '普通天文学', '天文学模拟', '球面天文学仿真', '03:30', '04:00', '10%', 5, 'Fundamental Astronomy (H. K_ (Z-Library)', '基础天文学', 'Ti', '12', '2024', '小木虫', 'ResearchGate', 'C', '理科', '球面天文学分析仿真功能点', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('计算机操作系统', '20:00', '21:00', '重新设计操作系统', '自制操作系统', '自制操作系统中断模拟', '03:30', '04:00', '10%', 2, 'Opearing System Concepts', '操作系统概念', 'Ne', '12', '2024', '贴吧', 'Reddit', 'B', '计算机底层原理', '新功能点开发', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('计算机组成原理', '20:00', '21:00', '重新设计计算机', '自制CPU', 'Verilog by Example书籍内容设计计算机CPU', '03:30', '04:00', '10%', 1, 'Computer Oraganization and Design', '计算机组成和设计', 'Ne', '12', '2024', '贴吧', 'Reddit', 'B', '计算机底层原理', '新功能点开发', '2024-12-09', '1');
INSERT INTO "public"."plans" VALUES ('运动解剖学', '06:00', '07:00', '通过运动解剖学优化自己的锻炼动作例如普拉提', '普拉提呼吸法', ' Pilates Anatomy书籍内容', '22:30', '23:00', '10%', 1, 'Anatomy of Movement (Blandine Calais-Germain) (Z-Library) ', '运动的解剖', 'Se', '12', '2024', '喜马拉雅', 'Spotify', 'B', '锻炼', '完成15分钟普拉提', '2024-12-09', '1');

-- ----------------------------
-- Records of label_type
-- ----------------------------
INSERT INTO label_type VALUES ('0', '自定义标签', '说明: 自定义标签');
INSERT INTO label_type VALUES ('1', '学习程度', '说明: 学习程度');
INSERT INTO label_type VALUES ('2', '重点级别', '说明: 重点级别');
INSERT INTO label_type VALUES ('3', '难点级别', '说明: 难点级别');
INSERT INTO label_type VALUES ('4', '侧重点', '说明: 侧重点');
INSERT INTO label_type VALUES ('5', '学习进度', '说明: 学习进度');

-- ----------------------------
-- Records of label_tag
-- ----------------------------
INSERT INTO label_tag VALUES ('1', '1', null, '掌握', 'ZW', '说明: 掌握', null, '1');
INSERT INTO label_tag VALUES ('10', '1', null, '理解', 'LJ', '说明: 理解', null, '2');
INSERT INTO label_tag VALUES ('11', '1', null, '不熟练', 'BSL', '说明: 不熟练', null, '3');
INSERT INTO label_tag VALUES ('12', '1', null, '不理解', 'BLJ', '说明: 不理解', null, '4');
INSERT INTO label_tag VALUES ('13', '2', null, 'A级重点', 'ZDA', '说明: A级重点', null, '1');
INSERT INTO label_tag VALUES ('14', '2', null, 'B级重点', 'ZDB', '说明: B级重点', null, '2');
INSERT INTO label_tag VALUES ('15', '2', null, 'C级重点', 'ZDC', '说明: C级重点', null, '3');
INSERT INTO label_tag VALUES ('16', '3', null, 'A级难点', 'NDA', '说明: A级难点', null, '1');
INSERT INTO label_tag VALUES ('17', '3', null, 'B级难点', 'NDB', '说明: B级难点', null, '2');
INSERT INTO label_tag VALUES ('18', '3', null, 'C级难点', 'NDC', '说明: C级难点', null, '3');
INSERT INTO label_tag VALUES ('2', '4', null, '语法', 'YF', '说明: 语法', null, '1');
INSERT INTO label_tag VALUES ('3', '4', null, '算法逻辑', 'LJSF', '说明: 算法逻辑', null, '2');
INSERT INTO label_tag VALUES ('4', '4', null, '设计', 'SJ', '说明: 设计', null, '3');
INSERT INTO label_tag VALUES ('5', '4', null, '方法论', 'FFL', '说明: 方法论', null, '4');
INSERT INTO label_tag VALUES ('6', '4', null, '项目', 'XM', '说明: 项目', null, '5');
INSERT INTO label_tag VALUES ('7', '5', null, '计划学习', 'JHXX', '说明: 计划学习', null, '1');
INSERT INTO label_tag VALUES ('8', '5', null, '暂停学习', 'XTXX', '说明: 暂停学习', null, '2');
INSERT INTO label_tag VALUES ('9', '5', null, '再看一次', 'ZKYC', '说明: 再看一次', null, '3');

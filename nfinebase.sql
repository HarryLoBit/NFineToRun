/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : nfinebase

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-05 11:18:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_dbbackup
-- ----------------------------
DROP TABLE IF EXISTS `sys_dbbackup`;
CREATE TABLE `sys_dbbackup` (
  `F_Id` varchar(50) NOT NULL,
  `F_BackupType` varchar(50) DEFAULT NULL,
  `F_DbName` varchar(50) DEFAULT NULL,
  `F_FileName` varchar(50) DEFAULT NULL,
  `F_FileSize` varchar(50) DEFAULT NULL,
  `F_FilePath` varchar(500) DEFAULT NULL,
  `F_BackupTime` datetime DEFAULT NULL,
  `F_SortCode` int(11) DEFAULT NULL,
  `F_DeleteMark` bit(1) DEFAULT NULL,
  `F_EnabledMark` bit(1) DEFAULT NULL,
  `F_Description` varchar(500) DEFAULT NULL,
  `F_CreatorTime` datetime DEFAULT NULL,
  `F_CreatorUserId` varchar(50) DEFAULT NULL,
  `F_LastModifyTime` datetime DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) DEFAULT NULL,
  `F_DeleteTime` datetime DEFAULT NULL,
  `F_DeleteUserId` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dbbackup
-- ----------------------------
INSERT INTO `sys_dbbackup` VALUES ('13cb1974-589f-4322-b55f-9e6449a80129', '1', 'NFineBase', '201710161024334513.bak', '3.30 MB', '/Resource/DbBackup/201710161024334513.bak', '2018-01-09 10:33:01', null, null, '', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for sys_filterip
-- ----------------------------
DROP TABLE IF EXISTS `sys_filterip`;
CREATE TABLE `sys_filterip` (
  `F_Id` varchar(50) NOT NULL,
  `F_Type` bit(1) DEFAULT NULL,
  `F_StartIP` varchar(50) DEFAULT NULL,
  `F_EndIP` varchar(50) DEFAULT NULL,
  `F_SortCode` int(11) DEFAULT NULL,
  `F_DeleteMark` bit(1) DEFAULT NULL,
  `F_EnabledMark` bit(1) DEFAULT NULL,
  `F_Description` varchar(500) DEFAULT NULL,
  `F_CreatorTime` datetime DEFAULT NULL,
  `F_CreatorUserId` varchar(50) DEFAULT NULL,
  `F_LastModifyTime` datetime DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) DEFAULT NULL,
  `F_DeleteTime` datetime DEFAULT NULL,
  `F_DeleteUserId` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_filterip
-- ----------------------------

-- ----------------------------
-- Table structure for sys_items
-- ----------------------------
DROP TABLE IF EXISTS `sys_items`;
CREATE TABLE `sys_items` (
  `F_Id` varchar(50) NOT NULL,
  `F_ParentId` varchar(50) DEFAULT NULL,
  `F_EnCode` varchar(50) DEFAULT NULL,
  `F_FullName` varchar(50) DEFAULT NULL,
  `F_IsTree` bit(1) DEFAULT NULL,
  `F_Layers` int(11) DEFAULT NULL,
  `F_SortCode` int(11) DEFAULT NULL,
  `F_DeleteMark` bit(1) DEFAULT NULL,
  `F_EnabledMark` bit(1) DEFAULT NULL,
  `F_Description` varchar(500) DEFAULT NULL,
  `F_CreatorTime` datetime DEFAULT NULL,
  `F_CreatorUserId` varchar(50) DEFAULT NULL,
  `F_LastModifyTime` datetime DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) DEFAULT NULL,
  `F_DeleteTime` datetime DEFAULT NULL,
  `F_DeleteUserId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_items
-- ----------------------------
INSERT INTO `sys_items` VALUES ('77070117-3F1A-41BA-BF81-B8B85BF10D5E', '0', 'Sys_Items', '通用字典', '\0', '1', '1', '\0', '', null, '2018-01-09 10:40:35', null, '2018-01-09 10:40:35', null, '2018-01-09 10:40:35', null);
INSERT INTO `sys_items` VALUES ('9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'OrganizeCategory', '机构分类', '\0', '2', '2', '\0', '', null, '2018-01-09 10:41:50', null, '2018-01-09 10:41:50', null, '2018-01-09 10:41:50', null);
INSERT INTO `sys_items` VALUES ('D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'RoleType', '角色类型', '\0', '2', '3', '\0', '', null, '2018-01-09 10:41:57', null, '2018-01-09 10:41:57', null, '2018-01-09 10:41:57', null);
INSERT INTO `sys_items` VALUES ('0DF5B725-5FB8-487F-B0E4-BC563A77EB04', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'DbType', '数据库类型', '\0', '2', '4', '\0', '', null, '2018-01-09 10:42:03', null, '2018-01-09 10:42:03', null, '2018-01-09 10:42:03', null);
INSERT INTO `sys_items` VALUES ('9a7079bd-0660-4549-9c2d-db5e8616619f', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'DbLogType', '系统日志', null, null, '16', null, '', null, '2018-01-09 10:42:07', null, '2018-01-09 10:42:07', null, '2018-01-09 10:42:07', null);
INSERT INTO `sys_items` VALUES ('954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'AuditState', '审核状态', '\0', '2', '6', '\0', '', null, '2018-01-09 10:42:10', null, '2018-01-09 10:42:10', null, '2018-01-09 10:42:10', null);
INSERT INTO `sys_items` VALUES ('2748F35F-4EE2-417C-A907-3453146AAF67', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'Certificate', '证件名称', '\0', '2', '7', '\0', '', null, '2018-01-09 10:42:13', null, '2018-01-09 10:42:13', null, '2018-01-09 10:42:13', null);
INSERT INTO `sys_items` VALUES ('00F76465-DBBA-484A-B75C-E81DEE9313E6', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'Education', '学历', '\0', '2', '8', '\0', '', null, '2018-01-09 10:42:19', null, '2018-01-09 10:42:19', null, '2018-01-09 10:42:19', null);
INSERT INTO `sys_items` VALUES ('FA7537E2-1C64-4431-84BF-66158DD63269', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '101', '婚姻', '\0', '2', '12', '\0', '', null, '2018-01-09 10:44:33', null, '2018-01-09 10:44:33', null, '2018-01-09 10:44:33', null);
INSERT INTO `sys_items` VALUES ('8CEB2F71-026C-4FA6-9A61-378127AE7320', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '102', '生育', '\0', '2', '13', '\0', '', null, '2018-01-09 10:44:33', null, '2018-01-09 10:44:33', null, '2018-01-09 10:44:33', null);
INSERT INTO `sys_items` VALUES ('15023A4E-4856-44EB-BE71-36A106E2AA59', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '103', '民族', '\0', '2', '14', '\0', '', null, '2018-01-09 10:44:33', null, '2018-01-09 10:44:33', null, '2018-01-09 10:44:33', null);
INSERT INTO `sys_items` VALUES ('BDD797C3-2323-4868-9A63-C8CC3437AEAA', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '104', '性别', '\0', '2', '15', '\0', '', null, '2018-01-09 10:44:33', null, '2018-01-09 10:44:33', null, '2018-01-09 10:44:33', null);

-- ----------------------------
-- Table structure for sys_itemsdetail
-- ----------------------------
DROP TABLE IF EXISTS `sys_itemsdetail`;
CREATE TABLE `sys_itemsdetail` (
  `F_Id` varchar(50) NOT NULL,
  `F_ItemId` varchar(50) DEFAULT NULL,
  `F_ParentId` varchar(50) DEFAULT NULL,
  `F_ItemCode` varchar(50) DEFAULT NULL,
  `F_ItemName` varchar(50) DEFAULT NULL,
  `F_SimpleSpelling` varchar(500) DEFAULT NULL,
  `F_IsDefault` bit(1) DEFAULT NULL,
  `F_Layers` int(11) DEFAULT NULL,
  `F_SortCode` int(11) DEFAULT NULL,
  `F_DeleteMark` bit(1) DEFAULT NULL,
  `F_EnabledMark` bit(1) DEFAULT NULL,
  `F_Description` varchar(500) DEFAULT NULL,
  `F_CreatorTime` datetime DEFAULT NULL,
  `F_CreatorUserId` varchar(50) DEFAULT NULL,
  `F_LastModifyTime` datetime DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) DEFAULT NULL,
  `F_DeleteTime` datetime DEFAULT NULL,
  `F_DeleteUserId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_itemsdetail
-- ----------------------------
INSERT INTO `sys_itemsdetail` VALUES ('B97BD7F5-B212-40C1-A1F7-DD9A2E63EEF2', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', null, 'Group', '集团', null, null, null, '1', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('2C3715AC-16F7-48FC-AB40-B0931DB1E729', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', null, 'Area', '区域', null, null, null, '2', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('D082BDB9-5C34-49BF-BD51-4E85D7BFF646', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', null, 'Company', '公司', null, null, null, '3', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('2B540AC5-6E64-4688-BB60-E0C01DFA982C', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', null, 'SubCompany', '子公司', null, null, null, '4', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('A64EBB80-6A24-48AF-A10E-B6A532C32CA6', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', null, 'Department', '部门', null, null, null, '5', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('D1F439B9-D80E-4547-9EF0-163391854AB5', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', null, 'SubDepartment', '子部门', null, null, null, '6', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('19EE595A-E775-409D-A48F-B33CF9F262C7', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', null, 'WorkGroup', '小组', null, '\0', null, '7', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('e5079bae-a8c0-4209-9019-6a2b4a3a7dac', 'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', null, '1', '系统角色', null, '\0', null, '1', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('04aba88d-f09b-46c6-bd90-a38471399b0e', 'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', null, '2', '业务角色', null, '\0', null, '2', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('cc6daa5c-a71c-4b2c-9a98-336bc3ee13c8', 'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', null, '3', '其他角色', null, '\0', null, '3', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('7a6d1bc4-3ec7-4c57-be9b-b4c97d60d5f6', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', null, '1', '草稿', null, '\0', null, '1', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('ce340c73-5048-4940-b86e-e3b3d53fdb2c', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', null, '2', '提交', null, '\0', null, '2', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('41053517-215d-4e11-81cd-367c0e9578d7', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', null, '3', '通过', null, '\0', null, '3', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('e1979a4f-7fc1-42b9-a0e2-52d7059e8fb9', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', null, '4', '待审', null, '\0', null, '4', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('63acf96d-6115-4d76-a994-438f59419aad', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', null, '5', '退回', null, '\0', null, '5', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('8b7b38bf-07c5-4f71-a853-41c5add4a94e', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', null, '6', '完成', null, '\0', null, '6', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('49b68663-ad01-4c43-b084-f98e3e23fee8', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', null, '7', '废弃', null, '\0', null, '7', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('fa6c1873-888c-4b70-a2cc-59fccbb22078', '0DF5B725-5FB8-487F-B0E4-BC563A77EB04', null, 'SqlServer', 'SqlServer', null, '\0', null, '1', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('27e85cb8-04e7-447b-911d-dd1e97dfab83', '0DF5B725-5FB8-487F-B0E4-BC563A77EB04', null, 'Oracle', 'Oracle', null, '\0', null, '2', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('34a642b2-44d4-485f-b3fc-6cce24f68b0f', '0DF5B725-5FB8-487F-B0E4-BC563A77EB04', null, 'MySql', 'MySql', null, '\0', null, '3', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('1950efdf-8685-4341-8d2c-ac85ac7addd0', '00F76465-DBBA-484A-B75C-E81DEE9313E6', null, '1', '小学', null, '\0', null, '1', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('433511a9-78bd-41a0-ab25-e4d4b3423055', '00F76465-DBBA-484A-B75C-E81DEE9313E6', null, '2', '初中', null, '\0', null, '2', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('acb128a6-ff63-4e25-b1e8-0a336ed3ab18', '00F76465-DBBA-484A-B75C-E81DEE9313E6', null, '3', '高中', null, '\0', null, '3', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('a4974810-d88d-4d54-82cc-fd779875478f', '00F76465-DBBA-484A-B75C-E81DEE9313E6', null, '4', '中专', null, '\0', null, '4', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('486a82e3-1950-425e-b2ce-b5d98f33016a', '00F76465-DBBA-484A-B75C-E81DEE9313E6', null, '5', '大专', null, '\0', null, '5', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('34222d46-e0c6-446e-8150-dbefc47a1d5f', '00F76465-DBBA-484A-B75C-E81DEE9313E6', null, '6', '本科', null, '\0', null, '6', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('3f280e2b-92f6-466c-8cc3-d7c8ff48cc8d', '00F76465-DBBA-484A-B75C-E81DEE9313E6', null, '7', '硕士', null, '\0', null, '7', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('930b8de2-049f-4753-b9fd-87f484911ee4', '00F76465-DBBA-484A-B75C-E81DEE9313E6', null, '8', '博士', null, '\0', null, '8', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('355ad7a4-c4f8-4bd3-9c72-ff07983da0f0', '00F76465-DBBA-484A-B75C-E81DEE9313E6', null, '9', '其他', null, '\0', null, '9', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('5d6def0e-e2a7-48eb-b43c-cc3631f60dd7', 'BDD797C3-2323-4868-9A63-C8CC3437AEAA', null, '1', '男', null, '\0', null, '1', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('822baf7c-abdb-4257-9b78-1f550806f544', 'BDD797C3-2323-4868-9A63-C8CC3437AEAA', null, '0', '女', null, '\0', null, '2', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('738edf2a-d59f-4992-97ef-d847db23bcb8', 'FA7537E2-1C64-4431-84BF-66158DD63269', null, '1', '已婚', null, '\0', null, '1', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('a7c4aba2-a891-4558-9b0a-bd7a1100a645', 'FA7537E2-1C64-4431-84BF-66158DD63269', null, '2', '未婚', null, '\0', null, '2', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('f9609400-7caf-49af-ae3c-7671a9292fb3', 'FA7537E2-1C64-4431-84BF-66158DD63269', null, '3', '离异', null, '\0', null, '3', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('a6f271f9-8653-4c5c-86cf-4cd00324b3c3', 'FA7537E2-1C64-4431-84BF-66158DD63269', null, '4', '丧偶', null, '\0', null, '4', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('7c1135be-0148-43eb-ae49-62a1e16ebbe3', 'FA7537E2-1C64-4431-84BF-66158DD63269', null, '5', '其他', null, '\0', null, '5', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('582e0b66-2ee9-4885-9f0c-3ce3ebf96e12', '8CEB2F71-026C-4FA6-9A61-378127AE7320', null, '1', '已育', null, '\0', null, '1', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('de2167f3-40fe-4bf7-b8cb-5b1c554bad7a', '8CEB2F71-026C-4FA6-9A61-378127AE7320', null, '2', '未育', null, '\0', null, '2', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('9b6a2225-6138-4cf2-9845-1bbecdf9b3ed', '8CEB2F71-026C-4FA6-9A61-378127AE7320', null, '3', '其他', null, '\0', null, '3', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('49300258-1227-4b85-b6a2-e948dbbe57a4', '15023A4E-4856-44EB-BE71-36A106E2AA59', null, '汉族', '汉族', null, '\0', null, '1', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('d69cb819-2bb3-4e1d-9917-33b9a439233d', '2748F35F-4EE2-417C-A907-3453146AAF67', null, '1', '身份证', null, '\0', null, '1', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('4c2f2428-2e00-4336-b9ce-5a61f24193f6', '2748F35F-4EE2-417C-A907-3453146AAF67', null, '2', '士兵证', null, '\0', null, '2', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('48c4e0f5-f570-4601-8946-6078762db3bf', '2748F35F-4EE2-417C-A907-3453146AAF67', null, '3', '军官证', null, '\0', null, '3', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('0096ad81-4317-486e-9144-a6a02999ff19', '2748F35F-4EE2-417C-A907-3453146AAF67', null, '4', '护照', null, '\0', null, '4', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('ace2d5e8-56d4-4c8b-8409-34bc272df404', '2748F35F-4EE2-417C-A907-3453146AAF67', null, '5', '其它', null, '\0', null, '5', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('795f2695-497a-4f5e-ab1d-706095c1edb9', '9a7079bd-0660-4549-9c2d-db5e8616619f', null, 'Other', '其他', null, '\0', null, '0', null, '', null, '2018-01-09 10:47:57', null, '2018-01-09 10:47:57', null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('643209c8-931b-4641-9e04-b8bdd11800af', '9a7079bd-0660-4549-9c2d-db5e8616619f', null, 'Login', '登录', null, '\0', null, '1', null, '', null, '2018-01-09 10:47:57', null, '2018-01-09 10:47:57', null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('3c884a03-4f34-4150-b134-966387f1de2a', '9a7079bd-0660-4549-9c2d-db5e8616619f', null, 'Exit', '退出', null, '\0', null, '2', null, '', null, '2018-01-09 10:47:57', null, '2018-01-09 10:47:57', null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('ccc8e274-75da-4eb8-bed0-69008ab7c41c', '9a7079bd-0660-4549-9c2d-db5e8616619f', null, 'Visit', '访问', null, '\0', null, '3', null, '', null, '2018-01-09 10:47:57', null, '2018-01-09 10:47:57', null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('e545061c-93fd-4ca2-ab29-b43db9db798b', '9a7079bd-0660-4549-9c2d-db5e8616619f', null, 'Create', '新增', null, '\0', null, '4', null, '', null, '2018-01-09 10:47:57', null, '2018-01-09 10:47:57', null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('a13ccf0d-ac8f-44ac-a522-4a54edf1f0fa', '9a7079bd-0660-4549-9c2d-db5e8616619f', null, 'Delete', '删除', null, '\0', null, '5', null, '', null, '2018-01-09 10:47:57', null, '2018-01-09 10:47:57', null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('392f88a8-02c2-49eb-8aed-b2acf474272a', '9a7079bd-0660-4549-9c2d-db5e8616619f', null, 'Update', '修改', null, '\0', null, '6', null, '', null, '2018-01-09 10:47:57', null, '2018-01-09 10:47:57', null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('24e39617-f04e-4f6f-9209-ad71e870e7c6', '9a7079bd-0660-4549-9c2d-db5e8616619f', null, 'Submit', '提交', null, '\0', null, '7', null, '', null, '2018-01-09 10:47:57', null, '2018-01-09 10:47:57', null, null, null);
INSERT INTO `sys_itemsdetail` VALUES ('7fc8fa11-4acf-409a-a771-aaf1eb81e814', '9a7079bd-0660-4549-9c2d-db5e8616619f', null, 'Exception', '异常', null, '\0', null, '8', null, '', null, '2018-01-09 10:47:57', null, '2018-01-09 10:47:57', null, null, null);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `F_Id` varchar(50) NOT NULL,
  `F_Date` datetime DEFAULT NULL,
  `F_Account` varchar(50) DEFAULT NULL,
  `F_NickName` varchar(50) DEFAULT NULL,
  `F_Type` varchar(50) DEFAULT NULL,
  `F_IPAddress` varchar(50) DEFAULT NULL,
  `F_IPAddressName` varchar(50) DEFAULT NULL,
  `F_ModuleId` varchar(50) DEFAULT NULL,
  `F_ModuleName` varchar(50) DEFAULT NULL,
  `F_Result` bit(1) DEFAULT NULL,
  `F_Description` varchar(500) DEFAULT NULL,
  `F_CreatorTime` datetime DEFAULT NULL,
  `F_CreatorUserId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('fa0e0f27-89a5-4c57-b8f1-43eb16f44b17', '2018-01-09 11:27:47', 'admin', 'admin', 'Login', '::1', '', null, '系统登录', '\0', '登录失败，验证码错误，请重新输入', '2018-01-09 11:28:00', null);
INSERT INTO `sys_log` VALUES ('d1e54ec8-be61-4033-babb-0df5f0e24263', '2018-01-09 11:28:25', 'admin', 'admin', 'Login', '::1', '', null, '系统登录', '\0', '登录失败，密码不正确，请重新输入', '2018-01-09 11:28:29', null);
INSERT INTO `sys_log` VALUES ('f11254d7-45f5-4e82-9e1f-38b746e4b455', '2018-01-09 11:29:33', 'admin', '超级管理员', 'Login', '::1', '', null, '系统登录', '', '登录成功', '2018-01-09 11:29:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_log` VALUES ('b70ed453-fff7-4528-9dd7-0403bd9faeaf', '2018-01-09 11:30:33', 'admin', '超级管理员', 'Exit', '::1', '', null, '系统登录', '', '安全退出系统', '2018-01-09 11:30:34', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_log` VALUES ('d3258c8e-856f-4dfc-bd7c-e9e3a4cedae6', '2018-01-09 11:30:46', 'administrator', '何蓝', 'Login', '::1', '', null, '系统登录', '', '登录成功', '2018-01-09 11:30:49', '93022204-41b3-4bfb-8ce2-217cdbbe5ebc');
INSERT INTO `sys_log` VALUES ('85f217f7-feb6-48dd-ad80-122e83771627', '2018-01-09 11:31:39', 'administrator', '何蓝', 'Exit', '::1', '', null, '系统登录', '', '安全退出系统', '2018-01-09 11:31:39', '93022204-41b3-4bfb-8ce2-217cdbbe5ebc');
INSERT INTO `sys_log` VALUES ('44c780dc-88bf-4c05-b911-ef65cfca884c', '2018-01-09 11:31:47', 'admin', '超级管理员', 'Login', '::1', '', null, '系统登录', '', '登录成功', '2018-01-09 11:31:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');

-- ----------------------------
-- Table structure for sys_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module` (
  `F_Id` varchar(50) NOT NULL,
  `F_ParentId` varchar(50) DEFAULT NULL,
  `F_Layers` int(11) DEFAULT NULL,
  `F_EnCode` varchar(50) DEFAULT NULL,
  `F_FullName` varchar(50) DEFAULT NULL,
  `F_Icon` varchar(50) DEFAULT NULL,
  `F_UrlAddress` varchar(500) DEFAULT NULL,
  `F_Target` varchar(50) DEFAULT NULL,
  `F_IsMenu` bit(1) DEFAULT NULL,
  `F_IsExpand` bit(1) DEFAULT NULL,
  `F_IsPublic` bit(1) DEFAULT NULL,
  `F_AllowEdit` bit(1) DEFAULT NULL,
  `F_AllowDelete` bit(1) DEFAULT NULL,
  `F_SortCode` int(11) DEFAULT NULL,
  `F_DeleteMark` bit(1) DEFAULT NULL,
  `F_EnabledMark` bit(1) DEFAULT NULL,
  `F_Description` varchar(500) DEFAULT NULL,
  `F_CreatorTime` datetime DEFAULT NULL,
  `F_CreatorUserId` varchar(50) DEFAULT NULL,
  `F_LastModifyTime` datetime DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) DEFAULT NULL,
  `F_DeleteTime` datetime DEFAULT NULL,
  `F_DeleteUserId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_module
-- ----------------------------
INSERT INTO `sys_module` VALUES ('e72c75d0-3a69-41ad-b220-13c9a62ec788', '73FD1267-79BA-4E23-A152-744AF73117E9', null, null, '数据备份', null, '/SystemSecurity/DbBackup/Index', 'iframe', '', '\0', '\0', '\0', '\0', '1', null, '', null, '2018-01-09 10:53:51', null, '2018-01-09 10:53:51', null, null, null);
INSERT INTO `sys_module` VALUES ('462027E0-0848-41DD-BCC3-025DCAE65555', '0', '1', null, '系统管理', 'fa fa-gears', null, 'expand', '\0', '', '\0', '\0', '\0', '2', '\0', '', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('73FD1267-79BA-4E23-A152-744AF73117E9', '0', '1', null, '系统安全', 'fa fa-desktop', null, 'expand', '\0', '', '\0', '\0', '\0', '3', '\0', '', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', '0', '1', null, '统计报表', 'fa fa-bar-chart-o', 'fa fa-bar-chart-o', 'expand', '\0', '', '\0', '\0', '\0', '4', '\0', '', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('9F56840F-DF92-4936-A48C-8F65A39291A2', '0', '1', null, '常用示例', 'fa fa-tags', null, 'expand', '\0', '', '\0', '\0', '\0', '5', '\0', '', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('a3a4742d-ca39-42ec-b95a-8552a6fae579', '73FD1267-79BA-4E23-A152-744AF73117E9', null, null, '访问控制', null, '/SystemSecurity/FilterIP/Index', 'iframe', '', '\0', '\0', '\0', '\0', '2', null, '', null, '2018-01-09 10:53:51', null, '2018-01-09 10:53:51', null, null, null);
INSERT INTO `sys_module` VALUES ('64A1C550-2C61-4A8C-833D-ACD0C012260F', '462027E0-0848-41DD-BCC3-025DCAE65555', '2', null, '系统菜单', null, '/SystemManage/Module/Index', 'iframe', '', '\0', '\0', '\0', '\0', '7', '\0', '', '测试', null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('38CA5A66-C993-4410-AF95-50489B22939C', '462027E0-0848-41DD-BCC3-025DCAE65555', '2', null, '用户管理', null, '/SystemManage/User/Index', 'iframe', '', '\0', '\0', '\0', '\0', '4', '\0', '', null, null, null, '2018-01-09 10:53:51', null, null, null);
INSERT INTO `sys_module` VALUES ('252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '462027E0-0848-41DD-BCC3-025DCAE65555', '2', null, '机构管理', null, '/SystemManage/Organize/Index', 'iframe', '', '\0', '\0', '\0', '\0', '1', '\0', '', null, null, null, '2018-01-09 10:53:51', '93022204-41b3-4bfb-8ce2-217cdbbe5ebc', null, null);
INSERT INTO `sys_module` VALUES ('91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '462027E0-0848-41DD-BCC3-025DCAE65555', '2', null, '角色管理', null, '/SystemManage/Role/Index', 'iframe', '', '\0', '\0', '\0', '\0', '2', '\0', '', null, null, null, '2018-01-09 10:53:51', null, null, null);
INSERT INTO `sys_module` VALUES ('337A4661-99A5-4E5E-B028-861CACAF9917', 'af0f9f70-95eb-478d-9391-fd9a15a085a7', '2', null, '区域管理', null, '/SystemManage/Area/Index', 'iframe', '', '\0', '\0', '\0', '\0', '5', '\0', '', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('423A200B-FA5F-4B29-B7B7-A3F5474B725F', '462027E0-0848-41DD-BCC3-025DCAE65555', '2', null, '数据字典', null, '/SystemManage/ItemsData/Index', 'iframe', '', '\0', '\0', '\0', '\0', '6', '\0', '', null, null, null, '2018-01-09 10:53:51', null, null, null);
INSERT INTO `sys_module` VALUES ('F298F868-B689-4982-8C8B-9268CBF0308D', '462027E0-0848-41DD-BCC3-025DCAE65555', '2', null, '岗位管理', null, '/SystemManage/Duty/Index', 'iframe', '', '\0', '\0', '\0', '\0', '3', '\0', '', null, null, null, '2018-01-09 10:53:51', null, null, null);
INSERT INTO `sys_module` VALUES ('96EE855E-8CD2-47FC-A51D-127C131C9FB9', '73FD1267-79BA-4E23-A152-744AF73117E9', '2', null, '系统日志', null, '/SystemSecurity/Log/Index', 'iframe', '', '\0', '\0', '\0', '\0', '3', '\0', '', null, null, null, '2018-01-09 10:53:51', null, null, null);
INSERT INTO `sys_module` VALUES ('df9920e0-ba33-4e36-a911-ef08c6ea77ea', '51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', null, null, '饼图', null, '/ReportManage/Highcharts/Sample7', 'iframe', '', '\0', '\0', '\0', '\0', '12', null, '', null, '2018-01-09 10:53:51', null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('3A95BBC6-CB5B-4438-869F-5F7B738E2568', null, null, null, '散点图', null, null, 'iframe', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_module` VALUES ('49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', '73FD1267-79BA-4E23-A152-744AF73117E9', '2', null, '服务器监控', null, '/SystemSecurity/ServerMonitoring/Index', 'iframe', '', '\0', '\0', '\0', '\0', '4', '\0', '', null, null, null, '2018-01-09 10:53:51', null, null, null);
INSERT INTO `sys_module` VALUES ('F2DAD50B-95DF-48F7-8638-BA503B539143', '51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', '2', null, '折线图', null, '/ReportManage/Highcharts/Sample1', 'iframe', '', '\0', '\0', '\0', '\0', '1', '\0', '', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('0EDF1DDB-CA17-4D08-AA25-914FE4E13324', '51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', '2', null, '曲线图', null, '/ReportManage/Highcharts/Sample2', 'iframe', '', '\0', '\0', '\0', '\0', '2', '\0', '', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('AD4BC418-B66E-48C7-BC13-81590056CD15', null, null, null, '气泡图', null, null, 'iframe', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_module` VALUES ('C3D12056-D906-4D8B-8B9C-954942742BDE', '51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', '2', null, '面积图', null, '/ReportManage/Highcharts/Sample3', 'iframe', '', '\0', '\0', '\0', '\0', '4', '\0', '', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('B3BF41E1-0299-4EFE-BA76-A7377AC81B38', '51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', '2', null, '柱状图', null, '/ReportManage/Highcharts/Sample4', 'iframe', '', '\0', '\0', '\0', '\0', '5', '\0', '', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('af0f9f70-95eb-478d-9391-fd9a15a085a7', '0', null, null, '基础功能', 'glyphicon glyphicon-th-large', null, 'expand', '\0', '', '\0', '\0', '\0', '7', null, '', null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('4dcd63f4-12b8-404d-8bc3-9759d7eda010', 'af0f9f70-95eb-478d-9391-fd9a15a085a7', null, null, '新闻资讯', null, '/PublicBusines/News/Index', 'iframe', '', '\0', '\0', '', '', '1', null, '', null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('822E2523-5105-4AE0-BF48-62459D3641F6', '9F56840F-DF92-4936-A48C-8F65A39291A2', '2', null, '外部邮件', null, '/ExampleManage/SendMail/Index', 'iframe', '', '\0', '\0', '\0', '\0', '2', '\0', '', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('7B959522-BE45-4747-B89D-592C7F3987A5', '9F56840F-DF92-4936-A48C-8F65A39291A2', '2', null, '短信工具', null, '/ExampleManage/SendMessages/Index', 'iframe', '', '\0', '\0', '\0', '\0', '3', '\0', '', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('AF34B824-439E-4365-99CC-C1D30514D869', '9F56840F-DF92-4936-A48C-8F65A39291A2', '2', null, '二维码生成', null, '/ExampleManage/BarCode/Index', 'iframe', '', '\0', '\0', '\0', '\0', '4', '\0', '', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('D2ECB516-4CB7-49B1-B536-504382115DD2', '9F56840F-DF92-4936-A48C-8F65A39291A2', '2', null, '打印测试', null, '/ExampleManage/Print/Index', 'iframe', '', '\0', '\0', '\0', '\0', '5', '\0', '', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('39E97B05-7B6F-4069-9972-6F9643BC3042', '9F56840F-DF92-4936-A48C-8F65A39291A2', '2', null, '电子签章', null, '/ExampleManage/Signet/Index', 'iframe', '', '\0', '\0', '\0', '\0', '6', '\0', '', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('91425AF9-F762-43AF-B784-107D23FFDC85', '51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', null, null, '模拟时钟', null, '/ReportManage/Highcharts/Sample5', 'iframe', '', '\0', '\0', '\0', '\0', '11', null, '\0', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('7858E329-16FC-49F4-93A1-11E2E7EF2998', '51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', null, null, '仪表盘', null, '/ReportManage/Highcharts/Sample6', 'iframe', '', '\0', '\0', '\0', '\0', '12', null, '\0', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('54E9D12D-C039-4F01-A6FE-810A147D31D5', '51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', null, null, '漏斗图', null, '/ReportManage/Highcharts/Sample11', 'iframe', '', '\0', '\0', '\0', '\0', '16', null, '\0', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_module` VALUES ('ACDBD633-99A0-4BEF-B67C-3A5B41E7C1FD', '51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', null, null, '蜡烛图', null, '/ReportManage/Highcharts/Sample12', 'iframe', '', '\0', '\0', '\0', '\0', '17', null, '\0', null, null, null, '2018-01-09 10:53:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);

-- ----------------------------
-- Table structure for sys_modulebutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_modulebutton`;
CREATE TABLE `sys_modulebutton` (
  `F_Id` varchar(50) NOT NULL,
  `F_ModuleId` varchar(50) DEFAULT NULL,
  `F_ParentId` varchar(50) DEFAULT NULL,
  `F_Layers` int(11) DEFAULT NULL,
  `F_EnCode` varchar(50) DEFAULT NULL,
  `F_FullName` varchar(50) DEFAULT NULL,
  `F_Icon` varchar(50) DEFAULT NULL,
  `F_Location` int(11) DEFAULT NULL,
  `F_JsEvent` varchar(50) DEFAULT NULL,
  `F_UrlAddress` varchar(500) DEFAULT NULL,
  `F_Split` bit(1) DEFAULT NULL,
  `F_IsPublic` bit(1) DEFAULT NULL,
  `F_AllowEdit` bit(1) DEFAULT NULL,
  `F_AllowDelete` bit(1) DEFAULT NULL,
  `F_SortCode` int(11) DEFAULT NULL,
  `F_DeleteMark` bit(1) DEFAULT NULL,
  `F_EnabledMark` bit(1) DEFAULT NULL,
  `F_Description` varchar(500) DEFAULT NULL,
  `F_CreatorTime` datetime DEFAULT NULL,
  `F_CreatorUserId` varchar(50) DEFAULT NULL,
  `F_LastModifyTime` datetime DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) DEFAULT NULL,
  `F_DeleteTime` datetime DEFAULT NULL,
  `F_DeleteUserId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_modulebutton
-- ----------------------------
INSERT INTO `sys_modulebutton` VALUES ('9FD543DB-C5BB-4789-ACFF-C5865AFB032C', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', '1', 'NF-add', '新增菜单', null, '1', 'btn_add()', '/SystemManage/Module/Form', '\0', '\0', '\0', '\0', '1', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('E29FCBA7-F848-4A8B-BC41-A3C668A9005D', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', '1', 'NF-edit', '修改菜单', null, '2', 'btn_edit()', '/SystemManage/Module/Form', '\0', '\0', '\0', '\0', '2', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('85F5212F-E321-4124-B155-9374AA5D9C10', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', '1', 'NF-delete', '删除菜单', null, '2', 'btn_delete()', '/SystemManage/Module/DeleteForm', '\0', '\0', '\0', '\0', '3', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('D4FCAFED-7640-449E-80B7-622DDACD5012', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', '1', 'NF-Details', '查看菜单', null, '2', 'btn_details()', '/SystemManage/Module/Details', '', '\0', '\0', '\0', '4', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('FD3D073C-4F88-467A-AE3B-CDD060952CE6', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', '1', 'NF-modulebutton', '按钮管理', null, '2', 'btn_modulebutton()', '/SystemManage/ModuleButton/Index', '\0', '\0', null, null, '5', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('4bb19533-8e81-419b-86a1-7ee56bf1dd45', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', '1', 'NF-delete', '删除机构', null, '2', 'btn_delete()', '/SystemManage/Organize/DeleteForm', '\0', '\0', '\0', '\0', '3', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('709a4a7b-4d98-462d-b47c-351ef11db06f', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', '1', 'NF-Details', '查看机构', null, '2', 'btn_details()', '/SystemManage/Organize/Details', '\0', '\0', '\0', '\0', '4', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('91be873e-ccb7-434f-9a3b-d312d6d5798a', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', '1', 'NF-edit', '修改机构', null, '2', 'btn_edit()', '/SystemManage/Organize/Form', '\0', '\0', '\0', '\0', '2', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('cd65e50a-0bea-45a9-b82e-f2eacdbd209e', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', '1', 'NF-add', '新建机构', null, '1', 'btn_add()', '/SystemManage/Organize/Form', '\0', '\0', '\0', '\0', '1', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('239077ff-13e1-4720-84e1-67b6f0276979', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', '1', 'NF-delete', '删除角色', null, '2', 'btn_delete()', '/SystemManage/Role/DeleteForm', '\0', '\0', '\0', '\0', '3', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('5d708d9d-6ebe-40ea-8589-e3efce9e74ec', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', '1', 'NF-add', '新建角色', null, '1', 'btn_add()', '/SystemManage/Role/Form', '\0', '\0', '\0', '\0', '1', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('f93763ff-51a1-478d-9585-3c86084c54f3', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', '1', 'NF-Details', '查看角色', null, '2', 'btn_details()', '/SystemManage/Role/Details', '\0', '\0', '\0', '\0', '4', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('ffffe7f8-900c-413a-9970-bee7d6599cce', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', '1', 'NF-edit', '修改角色', null, '2', 'btn_edit()', '/SystemManage/Role/Form', '\0', '\0', '\0', '\0', '2', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('13c9a15f-c50d-4f09-8344-fd0050f70086', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', '1', 'NF-add', '新建岗位', null, '1', 'btn_add()', '/SystemManage/Duty/Form', '\0', '\0', '\0', '\0', '1', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('88f7b3a8-fd6d-4f8e-a861-11405f434868', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', '1', 'NF-Details', '查看岗位', null, '2', 'btn_details()', '/SystemManage/Duty/Details', '\0', '\0', '\0', '\0', '4', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('8a9993af-69b2-4d8a-85b3-337745a1f428', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', '1', 'NF-delete', '删除岗位', null, '2', 'btn_delete()', '/SystemManage/Duty/DeleteForm', '\0', '\0', '\0', '\0', '3', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('e75e4efc-d461-4334-a764-56992fec38e6', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', '1', 'NF-edit', '修改岗位', null, '2', 'btn_edit()', '/SystemManage/Duty/Form', '\0', '\0', '\0', '\0', '2', '\0', '', null, null, null, null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('14617a4f-bfef-4bc2-b943-d18d3ff8d22f', '38CA5A66-C993-4410-AF95-50489B22939C', '0', '1', 'NF-delete', '删除用户', null, '2', 'btn_delete()', '/SystemManage/User/DeleteForm', '\0', '\0', '\0', '\0', '3', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('4727adf7-5525-4c8c-9de5-39e49c268349', '38CA5A66-C993-4410-AF95-50489B22939C', '0', '1', 'NF-edit', '修改用户', null, '2', 'btn_edit()', '/SystemManage/User/Form', '\0', '\0', '\0', '\0', '2', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('74eecdfb-3bee-405d-be07-27a78219c179', '38CA5A66-C993-4410-AF95-50489B22939C', '0', '1', 'NF-add', '新建用户', null, '1', 'btn_add()', '/SystemManage/User/Form', '\0', '\0', '\0', '\0', '1', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('abfdff21-8ebf-4024-8555-401b4df6acd9', '38CA5A66-C993-4410-AF95-50489B22939C', '0', '1', 'NF-Details', '查看用户', null, '2', 'btn_details()', '/SystemManage/User/Details', '', '\0', '\0', '\0', '4', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('38e39592-6e86-42fb-8f72-adea0c82cbc1', '38CA5A66-C993-4410-AF95-50489B22939C', '0', null, 'NF-revisepassword', '密码重置', null, '2', 'btn_revisepassword()', '/SystemManage/User/RevisePassword', '', '\0', '\0', '\0', '5', null, '', null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('15362a59-b242-494a-bc6e-413b4a63580e', '38CA5A66-C993-4410-AF95-50489B22939C', '0', null, 'NF-disabled', '禁用', null, '2', 'btn_disabled()', '/SystemManage/User/DisabledAccount', '\0', '\0', '\0', '\0', '6', null, '', null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('2a8f5342-5eb7-491c-a1a9-a2631d8eb5d6', '38CA5A66-C993-4410-AF95-50489B22939C', '0', null, 'NF-enabled', '启用', null, '2', 'btn_enabled()', '/SystemManage/User/EnabledAccount', '\0', '\0', '\0', '\0', '7', null, '', null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('48afe7b3-e158-4256-b50c-cd0ee7c6dcc9', '337A4661-99A5-4E5E-B028-861CACAF9917', '0', '1', 'NF-add', '新建区域', null, '1', 'btn_add()', '/SystemManage/Area/Form', '\0', '\0', '\0', '\0', '1', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('89d7a69d-b953-4ce2-9294-db4f50f2a157', '337A4661-99A5-4E5E-B028-861CACAF9917', '0', '1', 'NF-edit', '修改区域', null, '2', 'btn_edit()', '/SystemManage/Area/Form', '\0', '\0', '\0', '\0', '2', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('8c7013a9-3682-4367-8bc6-c77ca89f346b', '337A4661-99A5-4E5E-B028-861CACAF9917', '0', '1', 'NF-delete', '删除区域', null, '2', 'btn_delete()', '/SystemManage/Area/DeleteForm', '\0', '\0', '\0', '\0', '3', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('0d777b07-041a-4205-a393-d1a009aaafc7', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', '1', 'NF-edit', '修改字典', null, '2', 'btn_edit()', '/SystemManage/ItemsData/Form', '\0', '\0', '\0', '\0', '3', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('104bcc01-0cfd-433f-87f4-29a8a3efb313', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', '1', 'NF-add', '新建字典', null, '1', 'btn_add()', '/SystemManage/ItemsData/Form', '\0', '\0', '\0', '\0', '1', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('1ee1c46b-e767-4532-8636-936ea4c12003', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', '1', 'NF-delete', '删除字典', null, '2', 'btn_delete()', '/SystemManage/ItemsData/DeleteForm', '\0', '\0', '\0', '\0', '4', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('82f162cb-beb9-4a79-8924-cd1860e26e2e', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', '1', 'NF-Details', '查看字典', null, '2', 'btn_details()', '/SystemManage/ItemsData/Details', '\0', '\0', '\0', '\0', '5', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('4b876abc-1b85-47b0-abc7-96e313b18ed8', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', null, 'NF-itemstype', '分类管理', null, '1', 'btn_itemstype()', '/SystemManage/ItemsType/Index', '\0', '\0', '\0', '\0', '2', null, '', null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null, null, null);
INSERT INTO `sys_modulebutton` VALUES ('0f0596f6-aa50-4df0-ad8e-af867cb4a9de', 'e72c75d0-3a69-41ad-b220-13c9a62ec788', '0', '1', 'NF-delete', '删除备份', null, '2', 'btn_delete()', '/SystemSecurity/DbBackup/DeleteForm', '\0', '\0', '\0', '\0', '2', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('41862743-f703-4b6d-be54-08d253eb0ebc', 'e72c75d0-3a69-41ad-b220-13c9a62ec788', '0', '1', 'NF-add', '新建备份', null, '1', 'btn_add()', '/SystemSecurity/DbBackup/Form', '\0', '\0', '\0', '\0', '1', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('aed66cfb-d78e-43d4-9987-c714546be7eb', 'e72c75d0-3a69-41ad-b220-13c9a62ec788', '0', '1', 'NF-download', '下载备份', null, '2', 'btn_download()', '/SystemSecurity/DbBackup/DownloadBackup', '\0', '\0', '\0', '\0', '3', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('329c0326-ce68-4a24-904d-aade67a90fc7', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', '1', 'NF-Details', '查看策略', null, '2', 'btn_details()', '/SystemSecurity/FilterIP/Details', '\0', '\0', '\0', '\0', '4', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('8379135e-5b13-4236-bfb1-9289e6129034', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', '1', 'NF-delete', '删除策略', null, '2', 'btn_delete()', '/SystemSecurity/FilterIP/DeleteForm', '\0', '\0', '\0', '\0', '3', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('aaf58c1b-4af2-4e5f-a3e4-c48e86378191', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', '1', 'NF-edit', '修改策略', null, '2', 'btn_edit()', '/SystemSecurity/FilterIP/Form', '\0', '\0', '\0', '\0', '2', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('d4074121-0d4f-465e-ad37-409bbe15bf8a', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', '1', 'NF-add', '新建策略', null, '1', 'btn_add()', '/SystemSecurity/FilterIP/Form', '\0', '\0', '\0', '\0', '1', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('3a35c662-a356-45e4-953d-00ebd981cad6', '96EE855E-8CD2-47FC-A51D-127C131C9FB9', '0', '1', 'NF-removelog', '清空日志', null, '1', 'btn_removeLog()', '/SystemSecurity/Log/RemoveLog', '\0', '\0', '\0', '\0', '1', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('18873ca0-b6ae-440f-b950-228b61de6b0c', '4dcd63f4-12b8-404d-8bc3-9759d7eda010', '0', '1', 'NF-add', '添加新闻', null, '1', 'btn_add()', '/PublicBusines/News/Form', '\0', '\0', '\0', '\0', '1', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('5f79ac28-ae44-4014-ab93-5ab21a8f93e4', '4dcd63f4-12b8-404d-8bc3-9759d7eda010', '0', '1', 'NF-edit', '编辑新闻', null, '2', 'btn_edit()', '/PublicBusines/News/Form', '\0', '\0', '\0', '\0', '2', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_modulebutton` VALUES ('d4640776-eeb1-404e-909e-fc532c56d430', '4dcd63f4-12b8-404d-8bc3-9759d7eda010', '0', '1', 'NF-delete', '删除新闻', null, '2', 'btn_delete()', '/PublicBusines/News/DeleteForm', '\0', '\0', '\0', '\0', '3', '\0', '', null, null, null, '2018-01-09 10:56:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);

-- ----------------------------
-- Table structure for sys_moduleforminstance
-- ----------------------------
DROP TABLE IF EXISTS `sys_moduleforminstance`;
CREATE TABLE `sys_moduleforminstance` (
  `F_Id` varchar(50) NOT NULL,
  `F_FormId` varchar(50) NOT NULL,
  `F_ObjectId` varchar(50) DEFAULT NULL,
  `F_InstanceJson` varchar(20000) DEFAULT NULL,
  `F_SortCode` int(11) DEFAULT NULL,
  `F_CreatorTime` datetime DEFAULT NULL,
  `F_CreatorUserId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_moduleforminstance
-- ----------------------------

-- ----------------------------
-- Table structure for sys_news
-- ----------------------------
DROP TABLE IF EXISTS `sys_news`;
CREATE TABLE `sys_news` (
  `F_Id` varchar(50) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `intro` varchar(2000) DEFAULT NULL,
  `F_CreatorTime` datetime DEFAULT NULL,
  `F_CreatorUserId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_news
-- ----------------------------

-- ----------------------------
-- Table structure for sys_organize
-- ----------------------------
DROP TABLE IF EXISTS `sys_organize`;
CREATE TABLE `sys_organize` (
  `F_Id` varchar(50) NOT NULL,
  `F_ParentId` varchar(50) DEFAULT NULL,
  `F_Layers` int(11) DEFAULT NULL,
  `F_EnCode` varchar(50) DEFAULT NULL,
  `F_FullName` varchar(50) DEFAULT NULL,
  `F_ShortName` varchar(50) DEFAULT NULL,
  `F_CategoryId` varchar(50) DEFAULT NULL,
  `F_ManagerId` varchar(50) DEFAULT NULL,
  `F_TelePhone` varchar(20) DEFAULT NULL,
  `F_MobilePhone` varchar(20) DEFAULT NULL,
  `F_WeChat` varchar(50) DEFAULT NULL,
  `F_Fax` varchar(20) DEFAULT NULL,
  `F_Email` varchar(50) DEFAULT NULL,
  `F_AreaId` varchar(50) DEFAULT NULL,
  `F_Address` varchar(500) DEFAULT NULL,
  `F_AllowEdit` bit(1) DEFAULT NULL,
  `F_AllowDelete` bit(1) DEFAULT NULL,
  `F_SortCode` int(11) DEFAULT NULL,
  `F_DeleteMark` bit(1) DEFAULT NULL,
  `F_EnabledMark` bit(1) DEFAULT NULL,
  `F_Description` varchar(500) DEFAULT NULL,
  `F_CreatorTime` datetime DEFAULT NULL,
  `F_CreatorUserId` varchar(50) DEFAULT NULL,
  `F_LastModifyTime` datetime DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) DEFAULT NULL,
  `F_DeleteTime` datetime DEFAULT NULL,
  `F_DeleteUserId` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_organize
-- ----------------------------
INSERT INTO `sys_organize` VALUES ('c4e299cb-203c-4886-a541-73b28785a641', '0', null, '001', '某年公司', null, 'Group', '何蓝', null, '13829282111', 'wx_awdkaiuwj91jza', null, null, null, null, null, null, null, null, '', '珠联璧合', '2018-01-09 10:58:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null, null, null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `F_Id` varchar(50) NOT NULL,
  `F_OrganizeId` varchar(50) DEFAULT NULL,
  `F_Category` int(11) DEFAULT NULL,
  `F_EnCode` varchar(50) DEFAULT NULL,
  `F_FullName` varchar(50) DEFAULT NULL,
  `F_Type` varchar(50) DEFAULT NULL,
  `F_AllowEdit` bit(1) DEFAULT NULL,
  `F_AllowDelete` bit(1) DEFAULT NULL,
  `F_SortCode` int(11) DEFAULT NULL,
  `F_DeleteMark` bit(1) DEFAULT NULL,
  `F_EnabledMark` bit(1) DEFAULT NULL,
  `F_Description` varchar(500) DEFAULT NULL,
  `F_CreatorTime` datetime DEFAULT NULL,
  `F_CreatorUserId` varchar(50) DEFAULT NULL,
  `F_LastModifyTime` datetime DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) DEFAULT NULL,
  `F_DeleteTime` datetime DEFAULT NULL,
  `F_DeleteUserId` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('F0A2B36F-35A7-4660-B46C-D4AB796591EB', '5AB270C0-5D33-4203-A54F-4552699FDA3C', '1', 'administrators', '超级管理员', '1', '', '', '1', '\0', '', null, '2018-01-09 10:58:46', null, '2018-01-09 10:58:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null);
INSERT INTO `sys_role` VALUES ('4cde04cf-a83a-46c8-be63-e79298c5d221', 'c4e299cb-203c-4886-a541-73b28785a641', '1', '10001', '一级管理员', '1', '', '', '1', null, '', '厉害了', null, null, null, null, null, null);
INSERT INTO `sys_role` VALUES ('21fc3ad7-bc8e-4a48-baf6-cd0bcf26c7ca', 'c4e299cb-203c-4886-a541-73b28785a641', '2', '10001', 'CEO', null, '', '', '1', null, '', null, '2018-01-09 10:58:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null, null, null);

-- ----------------------------
-- Table structure for sys_roleauthorize
-- ----------------------------
DROP TABLE IF EXISTS `sys_roleauthorize`;
CREATE TABLE `sys_roleauthorize` (
  `F_Id` varchar(50) NOT NULL,
  `F_ItemType` int(11) DEFAULT NULL,
  `F_ItemId` varchar(50) DEFAULT NULL,
  `F_ObjectType` int(11) DEFAULT NULL,
  `F_ObjectId` varchar(50) DEFAULT NULL,
  `F_SortCode` int(11) DEFAULT NULL,
  `F_CreatorTime` datetime DEFAULT NULL,
  `F_CreatorUserId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_roleauthorize
-- ----------------------------
INSERT INTO `sys_roleauthorize` VALUES ('09af5852-9cbb-455f-a248-196dddce83ef', '1', '38CA5A66-C993-4410-AF95-50489B22939C', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('0c3f96ac-87a0-4fc2-bdbc-c9355d6c7a50', '2', 'aed66cfb-d78e-43d4-9987-c714546be7eb', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('0cfa0905-2d36-47e4-8b7f-40fa949a7162', '2', '329c0326-ce68-4a24-904d-aade67a90fc7', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('100f3882-d619-411d-85ff-84489616456a', '2', 'cd65e50a-0bea-45a9-b82e-f2eacdbd209e', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('14772779-5044-43c8-93eb-4e75ac62eb55', '2', 'f93763ff-51a1-478d-9585-3c86084c54f3', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('27f705aa-0bf1-41a5-a80e-b84c5ae217e5', '1', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('28c4ab0d-fdfe-4dd5-8d3e-c1bdb73a2ce7', '2', '0d777b07-041a-4205-a393-d1a009aaafc7', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('291e0dcf-eb92-44eb-be34-3b2a1575ceb7', '2', 'aaf58c1b-4af2-4e5f-a3e4-c48e86378191', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('2aaeb915-6db0-4573-9b4c-e566817c516a', '2', '14617a4f-bfef-4bc2-b943-d18d3ff8d22f', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('2ada1d3e-4d26-4967-985d-48ae922ffa70', '2', '8a9993af-69b2-4d8a-85b3-337745a1f428', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('3071e344-74f7-418f-9fb1-760cd4400b03', '2', 'd4074121-0d4f-465e-ad37-409bbe15bf8a', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('32906f31-45d7-48a2-9cae-809142994adc', '2', '9FD543DB-C5BB-4789-ACFF-C5865AFB032C', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('34f6a989-4656-4989-85b5-6418e8f86195', '2', '0f0596f6-aa50-4df0-ad8e-af867cb4a9de', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('36a9f899-d930-4f8e-b965-f4cb35ea8805', '2', '48afe7b3-e158-4256-b50c-cd0ee7c6dcc9', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('3a52db78-efd1-46d3-b6d8-e2926b4e3cc8', '1', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('3dacd50b-fd83-4ea2-9330-1350b583ca0c', '2', 'e75e4efc-d461-4334-a764-56992fec38e6', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('430c1245-4610-49c6-a787-91b947c414cb', '2', '8c7013a9-3682-4367-8bc6-c77ca89f346b', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('4952eeda-85b7-4666-acc1-5cda2628447b', '1', '462027E0-0848-41DD-BCC3-025DCAE65555', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('49f42788-cdfb-45f4-abbc-0ffef55f08fb', '1', '4dcd63f4-12b8-404d-8bc3-9759d7eda010', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('4a6655ff-8704-44f2-99c8-01fc5399c359', '2', '91be873e-ccb7-434f-9a3b-d312d6d5798a', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('4c8b6334-d903-4a79-b7c0-df722bc137d8', '2', 'D4FCAFED-7640-449E-80B7-622DDACD5012', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('4cead764-415d-4431-9181-f99157d10d18', '2', 'ffffe7f8-900c-413a-9970-bee7d6599cce', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('5a6089ed-2b96-41e6-96c1-973cb1458121', '1', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('5c9908ec-b52b-416f-8f1f-bf511edb4fec', '2', 'FD3D073C-4F88-467A-AE3B-CDD060952CE6', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('5d8bd4c3-5513-4cfc-b845-4c0bbbcc4b98', '2', '5f79ac28-ae44-4014-ab93-5ab21a8f93e4', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('66d3f337-0e65-428c-97b8-5dc1c344cfb4', '2', '88f7b3a8-fd6d-4f8e-a861-11405f434868', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('6dc0d993-86ff-4008-8fc8-e3bb9dfcff36', '1', '66608caa-0d82-49dc-95f2-241ab525173d', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('6de2ee6a-5cd1-43d0-9045-a575cb46e105', '2', 'c723d705-0ea2-493c-b5f2-543b99a4e925', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('6ebf9788-e9de-4dda-96e4-2b05b068e55b', '1', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('711419bf-7b5f-40c1-a0ea-cc2d08bd9a42', '2', '89d7a69d-b953-4ce2-9294-db4f50f2a157', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('7280c268-ff5e-4364-98ad-876ae196ec9e', '2', '239077ff-13e1-4720-84e1-67b6f0276979', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('7891eea2-f8ae-493c-af37-4ca1cf0301ad', '2', '4bb19533-8e81-419b-86a1-7ee56bf1dd45', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('796439d2-c0b8-4d16-9c98-4eb3fed0381a', '2', '4b876abc-1b85-47b0-abc7-96e313b18ed8', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('8cb98de8-f463-4c48-a4a3-692d8a1d968c', '1', '337A4661-99A5-4E5E-B028-861CACAF9917', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('903e5faa-c96f-4155-9d2b-e3094c45551c', '2', '15362a59-b242-494a-bc6e-413b4a63580e', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('9714cc3b-25cf-4159-88e6-048e81be15f4', '1', 'F298F868-B689-4982-8C8B-9268CBF0308D', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('979660ec-914f-495b-9fbb-a4c4e370e50e', '2', '709a4a7b-4d98-462d-b47c-351ef11db06f', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('a1a5701f-a216-43cb-9247-cfd7f3de25f6', '1', '73FD1267-79BA-4E23-A152-744AF73117E9', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('a2247584-cef2-44dd-beda-5824d9ea1dc2', '2', '38e39592-6e86-42fb-8f72-adea0c82cbc1', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('a2bd83ab-8491-489e-88c4-82c1d29ce42b', '2', 'abfdff21-8ebf-4024-8555-401b4df6acd9', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('a32459d0-73f5-4397-bc7e-3fab2812af4a', '2', '74eecdfb-3bee-405d-be07-27a78219c179', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('aae9a993-f828-41d7-a903-2191c638bb0a', '2', '8379135e-5b13-4236-bfb1-9289e6129034', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('afa2cc52-2599-49c5-a541-fec1a35e7192', '2', '82f162cb-beb9-4a79-8924-cd1860e26e2e', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('b04af711-a4f7-4797-befc-9d2eef0744bd', '2', '3a35c662-a356-45e4-953d-00ebd981cad6', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('bcfbdb33-6af7-430e-80ce-08ff1c4c8749', '2', '104bcc01-0cfd-433f-87f4-29a8a3efb313', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('bf26ae65-a2c5-41b8-9e6e-1b51748dcb8a', '2', '85F5212F-E321-4124-B155-9374AA5D9C10', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('c0a4af4e-e01f-40bf-bfe7-d27e5bae6406', '2', '41862743-f703-4b6d-be54-08d253eb0ebc', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('cb1559dd-c714-474b-a8bc-2c098dca23e1', '2', '4727adf7-5525-4c8c-9de5-39e49c268349', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('cf9de753-4ca1-4499-b979-564ce5771b49', '2', '5d708d9d-6ebe-40ea-8589-e3efce9e74ec', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('d5a0ce16-e575-43c3-8fb2-686487ae1444', '1', 'af0f9f70-95eb-478d-9391-fd9a15a085a7', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('dd80f9a6-01f7-4e16-90e3-abb38f3b0ca8', '1', '49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('de0eea88-e115-439b-a3ca-9dbf6d37613b', '2', 'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('e8127175-0dde-4e81-844b-5dcd59be9fa9', '1', '96EE855E-8CD2-47FC-A51D-127C131C9FB9', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('e95a2492-cc31-433a-8754-f21bd9c1161f', '2', '18873ca0-b6ae-440f-b950-228b61de6b0c', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('eafe0e88-e172-4ab7-9065-27b2366b86ce', '1', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('eba4b511-5eed-4b5c-9d01-8f16e0d4c2d9', '2', '1ee1c46b-e767-4532-8636-936ea4c12003', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('ee7cd65c-9aff-4234-9753-2e8f51c5aea7', '2', '13c9a15f-c50d-4f09-8344-fd0050f70086', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('f0e93b04-dfbd-481b-b632-3b8241cd77b5', '2', '2a8f5342-5eb7-491c-a1a9-a2631d8eb5d6', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);
INSERT INTO `sys_roleauthorize` VALUES ('f6e894d8-fe02-4d42-adaf-c42012e1dfc5', '1', 'e72c75d0-3a69-41ad-b220-13c9a62ec788', '1', '4cde04cf-a83a-46c8-be63-e79298c5d221', null, null, null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `F_Id` varchar(50) NOT NULL,
  `F_Account` varchar(50) DEFAULT NULL,
  `F_RealName` varchar(50) DEFAULT NULL,
  `F_NickName` varchar(50) DEFAULT NULL,
  `F_HeadIcon` varchar(50) DEFAULT NULL,
  `F_Gender` bit(1) DEFAULT NULL,
  `F_Birthday` datetime DEFAULT NULL,
  `F_MobilePhone` varchar(20) DEFAULT NULL,
  `F_Email` varchar(50) DEFAULT NULL,
  `F_WeChat` varchar(50) DEFAULT NULL,
  `F_ManagerId` varchar(50) DEFAULT NULL,
  `F_SecurityLevel` int(11) DEFAULT NULL,
  `F_Signature` varchar(500) DEFAULT NULL,
  `F_OrganizeId` varchar(50) DEFAULT NULL,
  `F_DepartmentId` varchar(500) DEFAULT NULL,
  `F_RoleId` varchar(500) DEFAULT NULL,
  `F_DutyId` varchar(500) DEFAULT NULL,
  `F_IsAdministrator` bit(1) DEFAULT NULL,
  `F_SortCode` int(11) DEFAULT NULL,
  `F_DeleteMark` bit(1) DEFAULT NULL,
  `F_EnabledMark` bit(1) DEFAULT NULL,
  `F_Description` varchar(500) DEFAULT NULL,
  `F_CreatorTime` datetime DEFAULT NULL,
  `F_CreatorUserId` varchar(50) DEFAULT NULL,
  `F_LastModifyTime` datetime DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) DEFAULT NULL,
  `F_DeleteTime` datetime DEFAULT NULL,
  `F_DeleteUserId` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'admin', '超级管理员', '超级管理员', null, '', null, '13600000000', null, null, null, null, null, '5AB270C0-5D33-4203-A54F-4552699FDA3C', '554C61CE-6AE0-44EB-B33D-A462BE7EB3E1', null, null, '\0', null, '\0', '', '系统内置账户', '2018-01-09 11:00:23', null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('93022204-41b3-4bfb-8ce2-217cdbbe5ebc', 'administrator', '何蓝', null, null, '\0', null, null, 'helan@Mr.com', null, null, null, null, 'c4e299cb-203c-4886-a541-73b28785a641', 'c4e299cb-203c-4886-a541-73b28785a641', '4cde04cf-a83a-46c8-be63-e79298c5d221', '21fc3ad7-bc8e-4a48-baf6-cd0bcf26c7ca', '', null, null, '', '董事长', '2018-01-09 11:00:23', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', null, null, null, null);

-- ----------------------------
-- Table structure for sys_userlogon
-- ----------------------------
DROP TABLE IF EXISTS `sys_userlogon`;
CREATE TABLE `sys_userlogon` (
  `F_Id` varchar(50) NOT NULL,
  `F_UserId` varchar(50) DEFAULT NULL,
  `F_UserPassword` varchar(50) DEFAULT NULL,
  `F_UserSecretkey` varchar(50) DEFAULT NULL,
  `F_AllowStartTime` datetime DEFAULT NULL,
  `F_AllowEndTime` datetime DEFAULT NULL,
  `F_LockStartDate` datetime DEFAULT NULL,
  `F_LockEndDate` datetime DEFAULT NULL,
  `F_FirstVisitTime` datetime DEFAULT NULL,
  `F_PreviousVisitTime` datetime DEFAULT NULL,
  `F_LastVisitTime` datetime DEFAULT NULL,
  `F_ChangePasswordDate` datetime DEFAULT NULL,
  `F_MultiUserLogin` bit(1) DEFAULT NULL,
  `F_LogOnCount` int(11) DEFAULT NULL,
  `F_UserOnLine` bit(1) DEFAULT NULL,
  `F_Question` varchar(50) DEFAULT NULL,
  `F_AnswerQuestion` varchar(500) DEFAULT NULL,
  `F_CheckIPAddress` bit(1) DEFAULT NULL,
  `F_Language` varchar(50) DEFAULT NULL,
  `F_Theme` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_userlogon
-- ----------------------------
INSERT INTO `sys_userlogon` VALUES ('9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '44c35ab35cb0603e90d168642ca51fb6', '57d3031d6fc4a34d', null, null, null, null, null, '2018-01-09 11:29:33', '2018-01-09 11:31:46', null, null, '112', null, null, null, null, null, null);
INSERT INTO `sys_userlogon` VALUES ('93022204-41b3-4bfb-8ce2-217cdbbe5ebc', '93022204-41b3-4bfb-8ce2-217cdbbe5ebc', '14c174d130677e0e4defa4a8fd966bda', 'f11728c69f6ec2f7', null, null, null, null, null, '2018-01-09 11:00:29', '2018-01-09 11:30:45', null, null, '7', null, null, null, null, null, null);

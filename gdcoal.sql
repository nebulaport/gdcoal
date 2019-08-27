/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : gdcoal

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-08-22 15:35:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `fultbpurchasingcancel`
-- ----------------------------
DROP TABLE IF EXISTS `fultbpurchasingcancel`;
CREATE TABLE `fultbpurchasingcancel` (
  `CANCLEAPPLYID` varchar(36) NOT NULL,
  `PURCHAPPLYID` varchar(36) DEFAULT NULL,
  `OPERDATE` varchar(14) DEFAULT NULL,
  `AUTOID` decimal(8,0) DEFAULT NULL,
  `OPERUSER` varchar(64) DEFAULT NULL,
  `CREATEUSER` varchar(64) DEFAULT NULL,
  `CREATEDATE` varchar(14) DEFAULT NULL,
  `CREATEUSERID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTCODE` varchar(64) DEFAULT NULL,
  `CANCELNAME` varchar(64) DEFAULT NULL,
  `CANCELDATE` varchar(14) DEFAULT NULL,
  `CANCELSTATE` decimal(8,0) DEFAULT NULL,
  `EXECUTEID` varchar(64) DEFAULT NULL,
  `CANCELREASON` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`CANCLEAPPLYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='燃料采购计划作废';

-- ----------------------------
-- Records of fultbpurchasingcancel
-- ----------------------------
INSERT INTO `fultbpurchasingcancel` VALUES ('0030d04f-3151-4874-b7d0-675af3f4f419', null, null, null, null, null, '20191010', null, null, null, 'AAA78', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('011d79be-38a6-4c3c-b6d5-a7f7b47f45ef', null, null, null, null, null, '20191010', null, null, null, 'AAA11', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('01a6c8c7-2bb7-4875-a97e-62f240040fe1', null, null, null, null, null, '20191010', null, null, null, 'AAA20', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('059298f5-d2a3-4ba3-813d-37061a9a5831', null, null, null, null, null, '20191010', null, null, null, 'AAA15', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('0b613373-bc47-42c0-897c-812689085e2b', null, null, null, null, null, '20191010', null, null, null, 'AAA90', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('0d3e9499-de73-4908-9995-592709fac35a', null, null, null, null, null, '20191010', null, null, null, 'AAA57', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('0f11a6a7-5d31-4d43-ac4d-755a8948cd30', null, null, null, null, null, '20191010', null, null, null, 'AAA27', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('174e2cc2-6831-48da-9dcd-b616ed8378cf', null, null, null, null, null, '20191010', null, null, null, 'AAA1', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('1cf558b6-6064-4a3e-a642-34f3d82216d7', null, null, null, null, null, '20191010', null, null, null, 'AAA70', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('25e9d64d-4b03-4527-9e25-f7c91a47b078', null, null, null, null, null, '20191010', null, null, null, 'AAA52', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('266432e4-c45d-4371-88cd-0c48525f042c', null, null, null, null, null, '20191010', null, null, null, 'AAA19', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('291a2f80-0612-4f44-b5ca-cbec0835d8bd', null, null, null, null, null, '20191010', null, null, null, 'AAA99', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('29d83767-e052-4d43-b9c6-e7e244c3ed46', null, null, null, null, null, '20191010', null, null, null, 'AAA46', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('2c9f9539-af13-4834-ad3d-6b3f46f468e4', null, null, null, null, null, '20191010', null, null, null, 'AAA38', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('2f4bd164-5289-49ba-bc3c-61cb76deac19', null, null, null, null, null, '20191010', null, null, null, 'AAA28', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('31f5e947-f99f-4e5d-80d7-d31d5a25769a', null, null, null, null, null, '20191010', null, null, null, 'AAA17', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('34bb83fa-dbdd-40d1-8555-12ed41fb3309', null, null, null, null, null, '20191010', null, null, null, 'AAA91', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('34f3bffb-0506-4249-a02a-677a8e3a7e59', null, null, null, null, null, '20191010', null, null, null, 'AAA84', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('36b2a94a-d0b1-40ff-b121-ece9d2c73ae7', null, null, null, null, null, '20191010', null, null, null, 'AAA3', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('3ad7d548-7646-446d-997a-ecf16527ec54', null, null, null, null, null, '20191010', null, null, null, 'AAA23', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('3c392a50-b4d1-40eb-8356-f2bbed47e9f0', null, null, null, null, null, '20191010', null, null, null, 'AAA21', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('3f43d6ae-0ccc-48e4-8d3a-3a69c1d9d2f1', null, null, null, null, null, '20191010', null, null, null, 'AAA87', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('4086b955-5161-4d7d-85e1-3b0f1cc5dff4', null, null, null, null, null, '20191010', null, null, null, 'AAA75', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('43279ad5-21c2-496b-bbe4-56a4171f2032', null, null, null, null, null, '20191010', null, null, null, 'AAA73', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('44911991-6d55-4920-8fa8-38034b65133c', null, null, null, null, null, '20191010', null, null, null, 'AAA0', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('495eb82b-2df4-4d1e-a309-5a22ed23bf7b', null, null, null, null, null, '20191010', null, null, null, 'AAA47', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('4a4d5c9d-58cf-43aa-94e6-0d5ec91d869c', null, null, null, null, null, '20191010', null, null, null, 'AAA26', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('4d668e3e-fa89-49a7-b34f-b0b9e5e69f33', null, null, null, null, null, '20191010', null, null, null, 'AAA42', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('4db3362b-1bce-4e72-b9a5-479c2b7e683b', null, null, null, null, null, '20191010', null, null, null, 'AAA80', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('51f889ee-5d1a-4eef-a000-cbed90e39c0e', null, null, null, null, null, '20191010', null, null, null, 'AAA83', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('52c2a993-33ce-4508-9d22-59ff0b298560', null, null, null, null, null, '20191010', null, null, null, 'AAA48', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('547a046e-e4c6-467b-94d2-a5d9170058e7', null, null, null, null, null, '20191010', null, null, null, 'AAA66', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('55e37efb-0af6-419e-ae86-1a749e01f0ab', null, null, null, null, null, '20191010', null, null, null, 'AAA98', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('560f788e-7e69-4122-ba31-da9b3bcfb907', null, null, null, null, null, '20191010', null, null, null, 'AAA72', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('56219afd-cd60-4a24-a3c7-f87b16a4b380', null, null, null, null, null, '20191010', null, null, null, 'AAA4', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('56309bdd-bbd2-41b0-aa45-10502859c3e2', null, null, null, null, null, '20191010', null, null, null, 'AAA8', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('5a181ee6-f6d4-4b99-a70e-1ffa8914b179', null, null, null, null, null, '20191010', null, null, null, 'AAA77', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('5ce27445-2232-4fe6-b28d-01190e9ee222', null, null, null, null, null, '20191010', null, null, null, 'AAA41', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('5f07c5c3-9fcf-4d5d-a762-7ae0ac61467d', null, null, null, null, null, '20191010', null, null, null, 'AAA12', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('61f62d31-60f3-4fbb-bc9b-6a7392770d20', null, null, null, null, null, '20191010', null, null, null, 'AAA32', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('64f7ab86-7c33-4757-90fb-4663b12310f4', null, null, null, null, null, '20191010', null, null, null, 'AAA85', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('667a6745-9b8f-4549-98e5-2d2733df5862', null, null, null, null, null, '20191010', null, null, null, 'AAA71', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('69a5fe46-bf68-436c-b03f-ae8e60d96398', null, null, null, null, null, '20191010', null, null, null, 'AAA53', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('6b79b875-9fcb-42f9-babd-54f60ebc3c16', null, null, null, null, null, '20191010', null, null, null, 'AAA33', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('6df337f3-d1f4-4a45-9a5c-c6a3c5685fc6', null, null, null, null, null, '20191010', null, null, null, 'AAA69', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('70d4f846-015b-483f-b85f-b02bdf2b8005', null, null, null, null, null, '20191010', null, null, null, 'AAA36', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('725ab5da-afc0-4828-9568-d5a34a17f3b8', null, null, null, null, null, '20191010', null, null, null, 'AAA64', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('7a1cd5fc-a3ae-4734-a51e-4e8390e7b50a', null, null, null, null, null, '20191010', null, null, null, 'AAA65', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('80061680-5518-4ac2-b0b4-89d5802803bc', null, null, null, null, null, '20191010', null, null, null, 'AAA22', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('802bf300-044c-4a95-a043-dce4647ed398', null, null, null, null, null, '20191010', null, null, null, 'AAA44', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('80c52350-a935-488a-95f2-60c9fa3bedf5', null, null, null, null, null, '20191010', null, null, null, 'AAA63', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('81fa2f9d-b2a8-4b74-928e-206a22111738', null, null, null, null, null, '20191010', null, null, null, 'AAA9', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('86d1658d-769b-41d7-ad1b-f5444fd094c9', null, null, null, null, null, '20191010', null, null, null, 'AAA25', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('873e3c06-e67c-4bb8-a814-3acad386a930', null, null, null, null, null, '20191010', null, null, null, 'AAA49', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('8938d2c0-abd1-4dd1-8609-b45e0821ee84', null, null, null, null, null, '20191010', null, null, null, 'AAA86', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('8a736d19-8df8-416c-ac84-75f707d5da7f', null, null, null, null, null, '20191010', null, null, null, 'AAA58', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('8d10a8b1-6224-4bb1-adfa-dd0158574904', null, null, null, null, null, '20191010', null, null, null, 'AAA81', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('9141003a-7970-4324-bd7c-7c0edd257b7b', null, null, null, null, null, '20191010', null, null, null, 'AAA39', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('92a686a7-e93b-47f7-90eb-81303226f941', null, null, null, null, null, '20191010', null, null, null, 'AAA2', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('95db68fa-44a1-4e22-a47f-0c48c9a956c5', null, null, null, null, null, '20191010', null, null, null, 'AAA54', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('97ecfb23-b1f6-4983-ae57-79a2865c91c3', null, null, null, null, null, '20191010', null, null, null, 'AAA51', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('98ac0a10-b0f1-4db1-a23a-22ce830195ed', null, null, null, null, null, '20191010', null, null, null, 'AAA92', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('9d822ac8-f58a-41c2-a441-7683b49b3c65', null, null, null, null, null, '20191010', null, null, null, 'AAA7', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('a277a19b-ee91-4811-95fc-f3fa34ab1499', null, null, null, null, null, '20191010', null, null, null, 'AAA10', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('a77b6bf5-cc72-4897-946e-fc25ac6d361f', null, null, null, null, null, '20191010', null, null, null, 'AAA74', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('ad08c884-c999-4c94-9dc6-72681197e78d', null, null, null, null, null, '20191010', null, null, null, 'AAA34', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('aed0a6ea-ed14-4820-91aa-f7e13e32eab9', null, null, null, null, null, '20191010', null, null, null, 'AAA79', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('b3fa9b3d-e859-4b66-87b5-ab1679d787f7', null, null, null, null, null, '20191010', null, null, null, 'AAA45', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('b6097826-c818-4f03-b349-c0597a87abdb', null, null, null, null, null, '20191010', null, null, null, 'AAA88', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('b77f08bc-ce8a-4e0f-8eab-b82f59ec4201', null, null, null, null, null, '20191010', null, null, null, 'AAA97', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('b985f34f-e872-47f1-ae43-4381c9b9faac', null, null, null, null, null, '20191010', null, null, null, 'AAA62', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('babfe3fc-8aa5-4383-86af-d282473f3c86', null, null, null, null, null, '20191010', null, null, null, 'AAA82', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('bb636d7f-8ea0-42a3-b7c2-5055cf7f4f99', null, null, null, null, null, '20191010', null, null, null, 'AAA95', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('c1aedc30-8538-424a-9777-8bae789cd359', null, null, null, null, null, '20191010', null, null, null, 'AAA40', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('c1b21cf7-5de3-4ec9-ab4f-639863972014', null, null, null, null, null, '20191010', null, null, null, 'AAA14', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('c2ce7ae0-6eca-4379-8abc-2bd1dc78ec34', null, null, null, null, null, '20191010', null, null, null, 'AAA61', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('c4427e9e-d4db-48c4-8e2e-4325cd14e6aa', null, null, null, null, null, '20191010', null, null, null, 'AAA43', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('c4fa3cc6-84b2-46df-ac33-facd61d59627', null, null, null, null, null, '20191010', null, null, null, 'AAA30', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('c8269a76-790b-4b32-9a53-beaf446b837f', null, null, null, null, null, '20191010', null, null, null, 'AAA5', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('cb3d86a3-c12a-4c23-8dc4-b44eeb9fe2ab', null, null, null, null, null, '20191010', null, null, null, 'AAA67', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('cbaba5a0-add4-4057-8134-8e6107404c7e', null, null, null, null, null, '20191010', null, null, null, 'AAA29', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('cff23877-e9c8-4008-924f-1121caa9a978', null, null, null, null, null, '20191010', null, null, null, 'AAA24', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('d21d93f9-80c4-4f82-ab57-51538f2c3b13', null, null, null, null, null, '20191010', null, null, null, 'AAA18', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('d3b9c2e2-4aa1-4137-9c3b-9f99f2f24356', null, null, null, null, null, '20191010', null, null, null, 'AAA76', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('da00c0be-5cfe-46bb-8f88-157244168f7c', null, null, null, null, null, '20191010', null, null, null, 'AAA0', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('da2b7e8c-c5cd-4053-99fd-f618ebffd17f', null, null, null, null, null, '20191010', null, null, null, 'AAA55', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('ddc0d129-0dc1-44cf-ab1a-49f306aaaf93', null, null, null, null, null, '20191010', null, null, null, 'AAA60', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('df83c93c-e7c8-4152-b885-9695e7ea1dd3', null, null, null, null, null, '20191010', null, null, null, 'AAA59', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('e031f671-02ca-452d-9b16-6099873bdf40', null, null, null, null, null, '20191010', null, null, null, 'AAA56', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('e0b2aae2-bb17-466a-a178-807fe6b20d94', null, null, null, null, null, '20191010', null, null, null, 'AAA35', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('ef9639a7-6ffc-4147-a594-a3ffdf089e03', null, null, null, null, null, '20191010', null, null, null, 'AAA6', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('f0161a55-29e4-40ae-9d79-e7d958908b8c', null, null, null, null, null, '20191010', null, null, null, 'AAA93', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('f114d066-a50b-4665-905d-ae80b2bcafaa', null, null, null, null, null, '20191010', null, null, null, 'AAA94', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('f1a5ca13-58f6-415d-8bea-df7e71ea9c25', null, null, null, null, null, '20191010', null, null, null, 'AAA37', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('f23a03de-0641-464a-9a13-bc149c222aff', null, null, null, null, null, '20191010', null, null, null, 'AAA13', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('f346c612-eefc-40d7-97b5-f86fb33c9a48', null, null, null, null, null, '20191010', null, null, null, 'AAA68', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('f65c7ca0-ab51-46aa-9b45-5869ace56261', null, null, null, null, null, '20191010', null, null, null, 'AAA96', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('f8bc9e30-bc50-4230-b876-a10225acb449', null, null, null, null, null, '20191010', null, null, null, 'AAA50', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('fb89a460-fbeb-4d99-a1b0-ebda86343cb6', null, null, null, null, null, '20191010', null, null, null, 'AAA31', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('fd22cf01-49d0-451b-af08-c5044cd3d70a', null, null, null, null, null, '20191010', null, null, null, 'AAA16', null, null, null, null);
INSERT INTO `fultbpurchasingcancel` VALUES ('ff83c140-fbb7-4fc1-9e8f-30086faed6d8', null, null, null, null, null, '20191010', null, null, null, 'AAA89', null, null, null, null);

-- ----------------------------
-- Table structure for `pt_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `pt_attachment`;
CREATE TABLE `pt_attachment` (
  `ID` varchar(64) NOT NULL,
  `ATTACHMENT_NAME` varchar(200) DEFAULT NULL,
  `UPLOAD_DATE` datetime DEFAULT NULL,
  `UPLOAD_IP` varchar(64) DEFAULT NULL,
  `ATTACHMENT_SIZE` decimal(8,0) DEFAULT NULL,
  `ATTACHMENT_URL` varchar(200) DEFAULT NULL,
  `ATTACHMENT_TYPE` varchar(64) DEFAULT NULL,
  `BELONGID` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件地址表';

-- ----------------------------
-- Records of pt_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `pt_bondcontractdetail`
-- ----------------------------
DROP TABLE IF EXISTS `pt_bondcontractdetail`;
CREATE TABLE `pt_bondcontractdetail` (
  `detailId` varchar(64) NOT NULL COMMENT ' 明细id',
  `coalType` varchar(100) DEFAULT NULL COMMENT '煤种',
  `purchaseNum` double(15,2) DEFAULT NULL COMMENT '采购数量万吨',
  `CalorificNum` double(15,2) DEFAULT NULL COMMENT '热卡值',
  `Createdate` varchar(8) DEFAULT NULL COMMENT '创建时间',
  `createUser` varchar(64) DEFAULT NULL COMMENT '创建人',
  `Contract_no` varchar(64) DEFAULT NULL COMMENT ' 合同编号',
  PRIMARY KEY (`detailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='长协交易合同信息明细表';

-- ----------------------------
-- Records of pt_bondcontractdetail
-- ----------------------------
INSERT INTO `pt_bondcontractdetail` VALUES ('0fc7b9cd-68b9-48fc-a403-dcc3095b7001', 'WY:WY1', '9.00', '0.10', '20190813', '101', 'CMP-1565688424630');
INSERT INTO `pt_bondcontractdetail` VALUES ('102b531c-1f9d-4747-9c7d-ea166663c9cf', 'WY:WY1', '1.00', '2.00', '20190814', '101', 'CMP-1565772011800');
INSERT INTO `pt_bondcontractdetail` VALUES ('29269313-1bb2-4f78-a5d7-55e0caf10d98', 'YM:JM', '1.00', '0.60', '20190813', '101', 'CMP-1565683426640');
INSERT INTO `pt_bondcontractdetail` VALUES ('40b23e2c-d4f7-4bb5-bbe3-16f703ebc71d', 'WY:WY1', '1.00', '2.00', '20190814', '101', 'CMP-1565772011800');
INSERT INTO `pt_bondcontractdetail` VALUES ('5b6b72c9-cf51-4060-a709-89d42e83751d', 'WY:WY1', '12.00', '32.00', '20190813', '101', 'CMP-1565683237383');
INSERT INTO `pt_bondcontractdetail` VALUES ('8f97653c-2d87-4926-9c25-0a32a6460eb8', 'WY:WY1', '12.00', '12.00', '20190813', '101', 'CMP-1565683237383');
INSERT INTO `pt_bondcontractdetail` VALUES ('d5b9c9c1-98d0-4c2f-ab7d-a00d1d595bbe', 'WY:WY1', '12.00', '0.80', '20190813', '101', 'CMP-1565679983088');
INSERT INTO `pt_bondcontractdetail` VALUES ('d83a8cd4-0aab-4025-982b-baa5f9b7025d', 'HY:HY2', '2.00', '0.80', '20190813', '101', 'CMP-1565683426640');
INSERT INTO `pt_bondcontractdetail` VALUES ('dd4a7c08-8019-4f3e-ad79-ab48cd8a2872', 'WY:WY1', '12.00', '1.09', '20190813', '101', 'CMP-1565687788601');
INSERT INTO `pt_bondcontractdetail` VALUES ('f0f6f42c-fb28-4a8a-a043-4185f4836c0e', 'HY:HY2', '120.00', '1.90', '20190813', '101', 'CMP-1565679983088');

-- ----------------------------
-- Table structure for `pt_bondcontractsupplement`
-- ----------------------------
DROP TABLE IF EXISTS `pt_bondcontractsupplement`;
CREATE TABLE `pt_bondcontractsupplement` (
  `supplementID` varchar(64) NOT NULL COMMENT '协议id',
  `SupplementDesc` varchar(100) DEFAULT NULL COMMENT ' 协议摘要',
  `uploadDate` varchar(8) DEFAULT NULL COMMENT '上传日期',
  `supplementFileName` varchar(100) DEFAULT NULL COMMENT '附件名称',
  `supplementFileURL` varchar(200) DEFAULT NULL COMMENT '附件存储地址',
  `uploadUser` varchar(64) DEFAULT NULL COMMENT '上传人',
  `Contract_no` varchar(64) DEFAULT NULL COMMENT '合同编号',
  PRIMARY KEY (`supplementID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='长协交易补充协议信息表';

-- ----------------------------
-- Records of pt_bondcontractsupplement
-- ----------------------------
INSERT INTO `pt_bondcontractsupplement` VALUES ('12', '补充协议', '19991010', null, null, '101', 'A-20190708104735');
INSERT INTO `pt_bondcontractsupplement` VALUES ('1566200163207', '补充信息', '20190819', '1566200179249.pdf', 'D:/bondCtract/support', '101', 'A-20190708104735');
INSERT INTO `pt_bondcontractsupplement` VALUES ('1566200187622', 'qwe', '20190819', '1566200197459.pdf', 'D:/bondCtract/support', '101', 'A-20190708104735');
INSERT INTO `pt_bondcontractsupplement` VALUES ('1566201224084', 'www', '20190819', '1566201232277.pdf', 'D:/bondCtract/support', '101', 'A-20190708104735');
INSERT INTO `pt_bondcontractsupplement` VALUES ('1566202475280', 'rweewe', '20190819', '1566202490403.pdf', 'D:/bondCtract/support', '101', 'A-20190708104735');
INSERT INTO `pt_bondcontractsupplement` VALUES ('1566202521910', 'ww', '20190819', '1566202523374.pdf', 'D:/bondCtract/support', '101', 'CMP-1565679983088');
INSERT INTO `pt_bondcontractsupplement` VALUES ('1566203158588', '补充协议信息', '20190819', '1566203168201.pdf', 'D:/bondCtract/support', '101', 'A-20190708135856');
INSERT INTO `pt_bondcontractsupplement` VALUES ('1566203177337', '补充协议', '20190819', '1566203185263.pdf', 'D:/bondCtract/support', '101', 'A-20190708135856');
INSERT INTO `pt_bondcontractsupplement` VALUES ('1566203575828', 'rrrr', '20190819', '1566203583082.pdf', 'D:/bondCtract/support', '101', 'CMP-1565679983088');
INSERT INTO `pt_bondcontractsupplement` VALUES ('1566204348380', '123', '20190819', '1566204353046.pdf', 'D:/bondCtract/support', '101', 'CMP-1565683237383');
INSERT INTO `pt_bondcontractsupplement` VALUES ('1566204413793', '123', '20190819', '1566204414740.pdf', 'D:/bondCtract/support', '101', 'CMP-1565688424630');
INSERT INTO `pt_bondcontractsupplement` VALUES ('1566204532584', '123', '20190819', '1566204537256.pdf', 'D:/bondCtract/support', '101', 'CMP-1565687788601');
INSERT INTO `pt_bondcontractsupplement` VALUES ('1566206620021', '3ee', '20190819', '1566206634736.xls', 'D:/bondCtract/support', '101', 'CMP-1565687788601');

-- ----------------------------
-- Table structure for `pt_bondcontracttab`
-- ----------------------------
DROP TABLE IF EXISTS `pt_bondcontracttab`;
CREATE TABLE `pt_bondcontracttab` (
  `Contract_no` varchar(64) NOT NULL COMMENT '交易合同编号',
  `Sign_date` varchar(8) DEFAULT NULL COMMENT '签署日期',
  `Pt_userNo` varchar(64) NOT NULL COMMENT '采购方（甲方）',
  `SUPPLIERID` varchar(64) NOT NULL COMMENT '供应商（乙方）',
  `TranSportType` varchar(1) NOT NULL COMMENT '运输方式(1,火车，2空运 )',
  `checkType` varchar(1) NOT NULL COMMENT '验收方式(1,现场验收)',
  `DeliverStart_date` varchar(8) NOT NULL COMMENT '交货开始时间',
  `DeliverEnd_date` varchar(8) NOT NULL COMMENT '交货结束时间',
  `CreateUser` varchar(64) DEFAULT NULL COMMENT '创建人',
  `createDate` varchar(8) DEFAULT NULL COMMENT '创建时间',
  `modUser` varchar(64) DEFAULT NULL COMMENT '修改人',
  `modDate` varchar(8) DEFAULT NULL COMMENT '修改时间',
  `contractFilename` varchar(100) DEFAULT NULL COMMENT '合同附件名称',
  `contractURL` varchar(200) DEFAULT NULL COMMENT '合同附件地址',
  `Remark` text COMMENT '备注',
  `status` varchar(1) DEFAULT NULL COMMENT '1草稿，2已经提交，3已完成',
  PRIMARY KEY (`Contract_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='长协交易合同信息表';

-- ----------------------------
-- Records of pt_bondcontracttab
-- ----------------------------
INSERT INTO `pt_bondcontracttab` VALUES ('A-20190708104735', '', 'JONES', '101', '1', '1', '20190709', '20190702', null, null, null, null, '1562554079487.jpg', 'D:/bondcractFiles', '12312321312wewqewqe', '2');
INSERT INTO `pt_bondcontracttab` VALUES ('A-20190708135856', '', 'EEERW', '101', '1', '1', '20190701', '20190701', '1001', '20190708', null, null, null, null, '', '2');
INSERT INTO `pt_bondcontracttab` VALUES ('B-20190708114437', '', 'QWE', '102', '1', '1', '20190708', '20190702', '1001', '20190708', null, null, '1562557495416.jpg', 'D:/bondcractFiles', '', '1');
INSERT INTO `pt_bondcontracttab` VALUES ('CMP-1565679983088', '20190808', '101', '1', '2', '2', '20190807', '20190816', '101', '20190813', null, null, null, null, '                    ', '2');
INSERT INTO `pt_bondcontracttab` VALUES ('CMP-1565683237383', '', '101', '4', '2', '2', '20190801', '20190822', '101', '20190813', null, null, '1565683263653.pdf', 'D:/bondCract', '                    ', '2');
INSERT INTO `pt_bondcontracttab` VALUES ('CMP-1565683426640', '20190808', '101', '3', '2', '2', '20190815', '20190822', '101', '20190813', null, null, '1565683470214.pdf', 'D:/bondCract', '                    ', '2');
INSERT INTO `pt_bondcontracttab` VALUES ('CMP-1565687788601', '20190702', '101', '3', '2', '2', '20190711', '20190813', '101', '20190813', null, null, '1565687826326.pdf', 'D:/bondCract', '       ', '1');
INSERT INTO `pt_bondcontracttab` VALUES ('CMP-1565688424630', '20190801', '101', '2', '1', '1', '20190712', '20190814', '101', '20190813', null, null, null, 'D:/bondCract', '                    ', '1');
INSERT INTO `pt_bondcontracttab` VALUES ('CMP-1565772011800', '20190807', '101', '3', '2', '1', '20190705', '20190807', '101', '20190814', null, null, '1565772060343.docx', 'D:/bondCract', '                    ', '1');

-- ----------------------------
-- Table structure for `pt_department`
-- ----------------------------
DROP TABLE IF EXISTS `pt_department`;
CREATE TABLE `pt_department` (
  `ID` varchar(36) NOT NULL,
  `ORGAN_UUID` varchar(255) DEFAULT NULL,
  `AGENCY_ID` varchar(32) DEFAULT NULL,
  `BRANCH_CODE` varchar(32) DEFAULT NULL,
  `BRANCH_NAME` varchar(50) DEFAULT NULL,
  `BRANCH_TYPE` varchar(32) DEFAULT NULL,
  `BELONG_CENTER` varchar(32) DEFAULT NULL,
  `BEWRITE` varchar(200) DEFAULT NULL,
  `ESTATE` char(1) DEFAULT NULL,
  `MODIFIERID` varchar(32) DEFAULT NULL,
  `MODTIME` varchar(14) DEFAULT NULL,
  `COMMITERID` varchar(32) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL,
  `FLAG` char(1) DEFAULT NULL,
  `VERSION` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='国电部门';

-- ----------------------------
-- Records of pt_department
-- ----------------------------
INSERT INTO `pt_department` VALUES ('093996127af94a6cad548d18539dd365', '23', null, null, '电厂验收部2', '电厂侧2', '华龙分中心', '                                                                        \r\n                    \r\n                    \r\n                    ', 'N', null, null, null, '1', '1', '1');
INSERT INTO `pt_department` VALUES ('1', '10', '1', '1', '部门1', '类型1', '无', '无', 'Y', '101', '201909091010', '101', '0', '1', '1');
INSERT INTO `pt_department` VALUES ('2de4e724e19542f580052a776bf43033', '12', null, null, '联合', '分公司联合会', '', '', 'N', null, null, null, '0', '1', '1');
INSERT INTO `pt_department` VALUES ('30e76c3fa5444f3b9c6a026265c195f5', '539f426e-56be-473a-ac1c-e3b4b6b1a0a2', null, null, '电厂部门1', '业务', '无', '', 'N', null, null, null, '1', '1', '1');
INSERT INTO `pt_department` VALUES ('d06e6e8d4c3248cf8fb64330e4a0537e', 'bdb6c1b0-4eb1-4f0f-88e4-0af2beeeed17', null, null, '人社部', 'HR', '集团大客户中心', '', 'N', null, null, null, '0', '1', '1');

-- ----------------------------
-- Table structure for `pt_menu_directory`
-- ----------------------------
DROP TABLE IF EXISTS `pt_menu_directory`;
CREATE TABLE `pt_menu_directory` (
  `ID` varchar(32) NOT NULL COMMENT '菜单目录id（树型结构层级编码）',
  `DIR_CODE` varchar(32) DEFAULT NULL COMMENT '菜单目录编号',
  `DIR_NAME` varchar(100) DEFAULT NULL COMMENT '菜单目录名称',
  `DIR_LEVEL_NUMBER` decimal(2,0) DEFAULT NULL COMMENT '菜单目录级数',
  `DIR_TYPE` char(1) DEFAULT NULL COMMENT '菜单目录类型：0，业务；1，系统；2，实施；4，集成；5，Demo',
  `RESOURCE_ID` varchar(32) DEFAULT NULL COMMENT '菜单资源id',
  `PARENT_ID` varchar(32) DEFAULT NULL COMMENT '父目录id',
  `ISITEM` char(1) NOT NULL DEFAULT '1' COMMENT '明细否：0 非明细；1 明细',
  `DIR_ORDER` decimal(9,0) DEFAULT NULL COMMENT '菜单目录顺序号',
  `STATUS` char(1) DEFAULT NULL COMMENT '是否删除：0 是；1 否',
  `FLAG` char(1) DEFAULT NULL COMMENT '启/停状态：0 停用；1 启用',
  `MENU_GROUP_ID` varchar(32) DEFAULT NULL COMMENT '菜单类别id',
  `LOCALE` varchar(32) NOT NULL DEFAULT 'zh_CN' COMMENT '当前国际化标志',
  `RES_UUID` varchar(255) DEFAULT NULL,
  `REALID` varchar(32) DEFAULT NULL COMMENT 'id',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单目录表';

-- ----------------------------
-- Records of pt_menu_directory
-- ----------------------------
INSERT INTO `pt_menu_directory` VALUES ('1', '1', '系统信息管理', '1', '1', '1', '0', '1', '1', '1', '1', null, 'zh_CN', '1', null);
INSERT INTO `pt_menu_directory` VALUES ('10', '10', '资源信息管理', '2', '1', '7', '1', '1', '6', '1', '1', null, 'zh_CN', '7', null);
INSERT INTO `pt_menu_directory` VALUES ('11', '11', '菜单目录管理', '2', '1', '8', '1', '1', '7', '1', '1', null, 'zh_CN', '8', null);
INSERT INTO `pt_menu_directory` VALUES ('12', '12', '待办中心管理', '2', '1', '10', '2', '1', '1', '1', '1', null, 'zh_CN', '10', null);
INSERT INTO `pt_menu_directory` VALUES ('13', '13', '采购审批管理', '2', '1', '11', '2', '1', '2', '1', '1', null, 'zh_CN', '11', null);
INSERT INTO `pt_menu_directory` VALUES ('14', '14', '采购执行管理', '2', '1', '12', '2', '1', '3', '1', '1', null, 'zh_CN', '12', null);
INSERT INTO `pt_menu_directory` VALUES ('15', '15', '保证金明细', '2', '1', '14', '3', '1', '1', '1', '1', null, 'zh_CN', '14', null);
INSERT INTO `pt_menu_directory` VALUES ('16', '16', '长协交易查询', '2', '1', '16', '4', '1', '1', '1', '1', null, 'zh_CN', '16', null);
INSERT INTO `pt_menu_directory` VALUES ('17', '17', '长协交易创建', '2', '1', '17', '4', '1', '2', '1', '1', null, 'zh_CN', '17', null);
INSERT INTO `pt_menu_directory` VALUES ('18', '18', '采购申请管理', '1', '1', '18', '0', '1', '5', '1', '1', null, 'zh_CN', '18', null);
INSERT INTO `pt_menu_directory` VALUES ('19', '19', '采购需求创建', '2', '1', '19', '18', '1', '1', '1', '1', null, 'zh_CN', '19', null);
INSERT INTO `pt_menu_directory` VALUES ('2', '2', '会员中心', '1', '0', '9', '0', '1', '2', '1', '1', null, 'zh_CN', '9', null);
INSERT INTO `pt_menu_directory` VALUES ('20', '20', '采购申请信息', '2', '1', '20', '18', '1', '2', '1', '1', null, 'zh_CN', '20', null);
INSERT INTO `pt_menu_directory` VALUES ('3', '3', '保证金管理', '1', '0', '13', '0', '1', '3', '1', '1', null, 'zh_CN', '13', null);
INSERT INTO `pt_menu_directory` VALUES ('4', '4', '长协交易管理', '1', '0', '15', '0', '1', '4', '1', '1', null, 'zh_CN', '15', null);
INSERT INTO `pt_menu_directory` VALUES ('5', '5', '组织机构管理', '2', '1', '3', '1', '1', '1', '1', '1', null, 'zh_CN', '3', null);
INSERT INTO `pt_menu_directory` VALUES ('6', '6', '部门信息管理', '2', '1', '2', '1', '1', '2', '1', '1', null, 'zh_CN', '2', null);
INSERT INTO `pt_menu_directory` VALUES ('7', '7', '岗位信息管理', '2', '1', '4', '1', '1', '3', '1', '1', null, 'zh_CN', '4', null);
INSERT INTO `pt_menu_directory` VALUES ('8', '8', '用户信息管理', '2', '1', '5', '1', '1', '4', '1', '1', null, 'zh_CN', '5', null);
INSERT INTO `pt_menu_directory` VALUES ('9', '9', '角色信息管理', '2', '1', '6', '1', '1', '5', '1', '1', null, 'zh_CN', '6', null);

-- ----------------------------
-- Table structure for `pt_organ`
-- ----------------------------
DROP TABLE IF EXISTS `pt_organ`;
CREATE TABLE `pt_organ` (
  `ORGAN_UUID` varchar(255) NOT NULL,
  `ORGAN_CODE` varchar(32) DEFAULT NULL,
  `ORGAN_NAME` varchar(32) CHARACTER SET gb2312 DEFAULT NULL,
  `ORGAN_TYPE` varchar(16) CHARACTER SET gb2312 DEFAULT NULL,
  `IN_USE` varchar(1) DEFAULT NULL,
  `PARENT_UUID` varchar(255) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL COMMENT '是否删除',
  `MODIFIERID` varchar(32) DEFAULT NULL COMMENT '创建人ID',
  `MODTIME` varchar(14) DEFAULT NULL COMMENT '创建时间',
  `DESCRIPTION` varchar(400) DEFAULT NULL COMMENT '描述',
  `account_code` varchar(128) DEFAULT NULL COMMENT '资金账户code',
  PRIMARY KEY (`ORGAN_UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织机构';

-- ----------------------------
-- Records of pt_organ
-- ----------------------------
INSERT INTO `pt_organ` VALUES ('0', '539f426e56be473aac1ce3b4b6b1a0a1', '国电集团', '集团', 'Y', null, '1', '101', '20190814193541', '北京昌平区分公司(地址已修改)', null);
INSERT INTO `pt_organ` VALUES ('10', '10', '东北公司', '分（子）公司', 'Y', '0', '0', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('11', '11', '双鸭山电厂', '电厂', 'Y', '10', '0', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('12', '12', '双辽电厂', '电厂', 'Y', '10', '0', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('123', '123', '辽宁节能环保', '电厂', 'Y', '10', '0', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('13', '13', '康平电厂\r\n康平电厂', '电厂', 'Y', '10', '0', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('14', '14', '江南热电', '电厂', 'Y', '20', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('15', '15', '沈阳热电', '电厂', 'Y', '10', '0', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('17', '17', '哈尔滨热电', '电厂', 'Y', '10', '0', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('18', '18', '宝庆电厂', '电厂', 'Y', '10', '0', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('19', '19', '山东公司', '分(子)公司', 'Y', '0', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('2', '2', '怀安热电', '电厂', 'Y', '539f426e-56be-473a-ac1c-e3b4b6b1a0a2', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('20', '20', '广东公司', '分(子)公司', 'Y', '0', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('21', '21', '泰安热电', '电厂', 'Y', '19', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('22', '22', '湖南公司', '分(子)公司', 'Y', '0', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('23', '23', '石横电厂', '电厂', 'Y', '19', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('24', '24', '聊城电厂', '电厂', 'Y', '19', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('25', '25', '肇庆热电', '电厂', 'Y', '19', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('26', '26', '菏泽电厂', '电厂', 'Y', '19', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('27', '27', '蓬莱电厂', '电厂', 'Y', '19', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('28', '28', '费县电厂', '电厂', 'Y', '19', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('29', '29', '哈尔滨热电', '电厂', 'Y', '10', '0', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('3', '3', '承德热电', '电厂', 'Y', '539f426e-56be-473a-ac1c-e3b4b6b1a0a2', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('30', '30', '龙华公司', '分(子)公司', 'Y', '0', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('31', '31', '龙华延吉热电', '电厂', 'Y', '30', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('32', '32', '龙华长春热一', '电厂', 'Y', '30', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('3e51020d-9bb3-4308-8a0f-6196e7143d80', '3e51020d9bb343088a0f6196e7143d80', '河南电力', '分公司', 'Y', '0', '1', '101', '20190816091955', '', null);
INSERT INTO `pt_organ` VALUES ('4', '4', '霍州电厂', '电厂', 'Y', '539f426e-56be-473a-ac1c-e3b4b6b1a0a2', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('5', '5', '龙山电厂', '电厂', 'Y', '539f426e-56be-473a-ac1c-e3b4b6b1a0a2', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('539f426e-56be-473a-ac1c-e3b4b6b1a0a2', '539f426e56be473aac1ce3b4b6b1a0a2', '华北分公司', '分(子)公司', 'Y', '0', '1', '101', '20190810094040', '无', null);
INSERT INTO `pt_organ` VALUES ('6', '6', '太一电厂', '电厂', 'Y', '539f426e-56be-473a-ac1c-e3b4b6b1a0a2', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('7', '7', '榆次热电', '电厂', 'Y', '539f426e-56be-473a-ac1c-e3b4b6b1a0a2', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('8', '8', '衡丰电厂', '电厂', 'Y', '539f426e-56be-473a-ac1c-e3b4b6b1a0a2', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('9', '9', '滨海热电', '电厂', 'Y', '539f426e-56be-473a-ac1c-e3b4b6b1a0a2', '1', null, null, null, null);
INSERT INTO `pt_organ` VALUES ('9d5bcad8-3561-4128-984f-2a34771e7ceb', '9d5bcad835614128984f2a34771e7ceb', '南京分公司', '分工公司', 'Y', '0', '1', '101', '20190815165533', '', null);
INSERT INTO `pt_organ` VALUES ('bdb6c1b0-4eb1-4f0f-88e4-0af2beeeed17', 'bdb6c1b04eb14f0f88e40af2beeeed17', '测试组织-1', '测试-1', 'Y', '0', '1', '101', '20190815164028', '', null);
INSERT INTO `pt_organ` VALUES ('e03d5f60-7498-4e2d-bdb9-e81e992a4ade', 'e03d5f6074984e2dbdb9e81e992a4ade', '牡丹江热电', '电厂', 'Y', '10', '0', '101', '20190815095305', '', null);

-- ----------------------------
-- Table structure for `pt_organ_post`
-- ----------------------------
DROP TABLE IF EXISTS `pt_organ_post`;
CREATE TABLE `pt_organ_post` (
  `POST_UUID` varchar(128) NOT NULL COMMENT '编号',
  `POST_CODE` varchar(128) DEFAULT NULL COMMENT '岗位编号',
  `ORGAN_UUID` varchar(128) DEFAULT NULL COMMENT '人员编号',
  PRIMARY KEY (`POST_UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='职位岗位表';

-- ----------------------------
-- Records of pt_organ_post
-- ----------------------------

-- ----------------------------
-- Table structure for `pt_res`
-- ----------------------------
DROP TABLE IF EXISTS `pt_res`;
CREATE TABLE `pt_res` (
  `RES_UUID` varchar(255) NOT NULL,
  `ID` varchar(32) DEFAULT NULL COMMENT '菜单类别id',
  `RES_ID` varchar(32) DEFAULT NULL,
  `RES_NAME` varchar(32) DEFAULT NULL,
  `RES_URL` varchar(256) DEFAULT NULL,
  `RES_TYPE` varchar(255) DEFAULT NULL,
  `PARENT_UUID` varchar(255) DEFAULT NULL,
  `RES_ORDER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RES_UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源表';

-- ----------------------------
-- Records of pt_res
-- ----------------------------
INSERT INTO `pt_res` VALUES ('1', '1', '1', '系统信息管理', 'javascript:void(0)', null, null, null);
INSERT INTO `pt_res` VALUES ('10', '10', '10', '待办中心管理', 'check/toDo?pageNow=1', null, null, null);
INSERT INTO `pt_res` VALUES ('11', '11', '11', '采购审批管理', 'check/selectPurchapplyPage?pageNow=1', null, null, null);
INSERT INTO `pt_res` VALUES ('12', '12', '12', '采购执行管理', 'execute/selectApplydetailPage?pageNow=1', null, null, null);
INSERT INTO `pt_res` VALUES ('13', '13', '13', '保证金管理', 'javascript:void(0)', null, null, null);
INSERT INTO `pt_res` VALUES ('14', '14', '14', '保证金明细', '#', null, null, null);
INSERT INTO `pt_res` VALUES ('15', '15', '15', '长协交易管理', 'javascript:void(0)', null, null, null);
INSERT INTO `pt_res` VALUES ('16', '16', '16', '长协交易查询', 'bondCtractManager/selectBondCtractMessage?pageNow=1', null, null, null);
INSERT INTO `pt_res` VALUES ('17', '17', '17', '长协交易创建', 'bondCtractManager/loadAddBondCtractPage', null, null, null);
INSERT INTO `pt_res` VALUES ('18', '18', '18', '采购申请管理', 'javascript:void(0)', null, null, null);
INSERT INTO `pt_res` VALUES ('19', '19', '19', '采购需求创建', 'tFultbtemplateManager/loadCreateTFultbtemplate', null, null, null);
INSERT INTO `pt_res` VALUES ('2', '2', '2', '部门信息管理', 'sys/selectDepartmentPage?pageNow=1', null, null, null);
INSERT INTO `pt_res` VALUES ('20', '20', '20', '采购审请信息', 'tFultbtemplateManager/loadTFultbtemplate', null, null, null);
INSERT INTO `pt_res` VALUES ('3', '3', '3', '组织机构信息管理', 'sys/selectOrganPage?pageNow=1', null, null, null);
INSERT INTO `pt_res` VALUES ('4', '4', '4', '岗位信息管理', 'sys/selectPtRRoleOrganPage?pageNow=1', null, null, null);
INSERT INTO `pt_res` VALUES ('5', '5', '5', '用户信息管理', '#', null, null, null);
INSERT INTO `pt_res` VALUES ('6', '6', '6', '角色信息管理', 'sys/selectRolePage?pageNow=1', null, null, null);
INSERT INTO `pt_res` VALUES ('7', '7', '7', '资源信息管理', '#', null, null, null);
INSERT INTO `pt_res` VALUES ('8', '8', '8', '菜单目录管理', 'sys/loadMenuMangerPage', null, null, null);
INSERT INTO `pt_res` VALUES ('9', '9', '9', '会员中心', 'javascript:void(0)', null, null, null);

-- ----------------------------
-- Table structure for `pt_role`
-- ----------------------------
DROP TABLE IF EXISTS `pt_role`;
CREATE TABLE `pt_role` (
  `ROLE_UUID` varchar(255) NOT NULL,
  `ROLE_ID` varchar(32) DEFAULT NULL,
  `ROLE_NAME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ROLE_UUID`),
  UNIQUE KEY `AK_KEY_2_PT_ROLE` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pt_role
-- ----------------------------
INSERT INTO `pt_role` VALUES ('81d1fec704ec4a6395ae0d498ce87289', '81d1fec704ec4a6395ae0d498ce87289', '电厂管理人员');
INSERT INTO `pt_role` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '12312312', '电厂监察人员');

-- ----------------------------
-- Table structure for `pt_role_res`
-- ----------------------------
DROP TABLE IF EXISTS `pt_role_res`;
CREATE TABLE `pt_role_res` (
  `ROLE_UUID` varchar(255) NOT NULL COMMENT '角色id',
  `ID` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单目录id（树型结构层级编码）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色资源配置';

-- ----------------------------
-- Records of pt_role_res
-- ----------------------------
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '1');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '2');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '3');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '4');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '5');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '6');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '7');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '8');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '9');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '10');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '11');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '12');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '13');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '14');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '15');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '16');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '17');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '18');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '19');
INSERT INTO `pt_role_res` VALUES ('83b980bd-8b2a-4f1c-92de-26ddef5724a2', '20');
INSERT INTO `pt_role_res` VALUES ('81d1fec704ec4a6395ae0d498ce87289', '2');
INSERT INTO `pt_role_res` VALUES ('81d1fec704ec4a6395ae0d498ce87289', '3');
INSERT INTO `pt_role_res` VALUES ('81d1fec704ec4a6395ae0d498ce87289', '4');
INSERT INTO `pt_role_res` VALUES ('81d1fec704ec4a6395ae0d498ce87289', '12');
INSERT INTO `pt_role_res` VALUES ('81d1fec704ec4a6395ae0d498ce87289', '13');
INSERT INTO `pt_role_res` VALUES ('81d1fec704ec4a6395ae0d498ce87289', '14');
INSERT INTO `pt_role_res` VALUES ('81d1fec704ec4a6395ae0d498ce87289', '15');
INSERT INTO `pt_role_res` VALUES ('81d1fec704ec4a6395ae0d498ce87289', '16');
INSERT INTO `pt_role_res` VALUES ('81d1fec704ec4a6395ae0d498ce87289', '17');
INSERT INTO `pt_role_res` VALUES ('81d1fec704ec4a6395ae0d498ce87289', '18');
INSERT INTO `pt_role_res` VALUES ('81d1fec704ec4a6395ae0d498ce87289', '19');
INSERT INTO `pt_role_res` VALUES ('81d1fec704ec4a6395ae0d498ce87289', '20');

-- ----------------------------
-- Table structure for `pt_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `pt_role_user`;
CREATE TABLE `pt_role_user` (
  `USER_UUID` varchar(255) NOT NULL,
  `ROLE_UUID` varchar(255) NOT NULL,
  PRIMARY KEY (`ROLE_UUID`,`USER_UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色配置';

-- ----------------------------
-- Records of pt_role_user
-- ----------------------------
INSERT INTO `pt_role_user` VALUES ('2', '81d1fec704ec4a6395ae0d498ce87289');
INSERT INTO `pt_role_user` VALUES ('1', '83b980bd-8b2a-4f1c-92de-26ddef5724a2');

-- ----------------------------
-- Table structure for `pt_r_role_organ`
-- ----------------------------
DROP TABLE IF EXISTS `pt_r_role_organ`;
CREATE TABLE `pt_r_role_organ` (
  `DUTYID` varchar(32) NOT NULL COMMENT '岗位ID',
  `NAME` varchar(255) DEFAULT NULL,
  `ORGAN_UUID` varchar(255) DEFAULT NULL COMMENT '组织ID',
  `ROLE_UUID` varchar(255) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`DUTYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='岗位表（角色和单位的挂接）';

-- ----------------------------
-- Records of pt_r_role_organ
-- ----------------------------
INSERT INTO `pt_r_role_organ` VALUES ('35ddfc4684b94e5990496613e39e79f2', '监管岗位', '0', '83b980bd-8b2a-4f1c-92de-26ddef5724a2');
INSERT INTO `pt_r_role_organ` VALUES ('385d2e0b6f994124a9638d3b1cea3721', '监管岗位2', '0', '83b980bd-8b2a-4f1c-92de-26ddef5724a2');
INSERT INTO `pt_r_role_organ` VALUES ('554bf8800a64436f835e4a4087c313d0', '监管岗位', '0', '83b980bd-8b2a-4f1c-92de-26ddef5724a2');
INSERT INTO `pt_r_role_organ` VALUES ('57c736a3e4ae44779902c47629067d14', '监管岗位', '0', '83b980bd-8b2a-4f1c-92de-26ddef5724a2');
INSERT INTO `pt_r_role_organ` VALUES ('5bccf004bb1b45bbacbe3882c45da27a', '哈哈部门', '9d5bcad8-3561-4128-984f-2a34771e7ceb', '83b980bd-8b2a-4f1c-92de-26ddef5724a2');
INSERT INTO `pt_r_role_organ` VALUES ('6657db809c49472a8e03a56d3415a105', 'BU', '0', '83b980bd-8b2a-4f1c-92de-26ddef5724a2');
INSERT INTO `pt_r_role_organ` VALUES ('96e4852bae99470abc10bb2e123909e3', '监管岗位', '0', '83b980bd-8b2a-4f1c-92de-26ddef5724a2');
INSERT INTO `pt_r_role_organ` VALUES ('a76d17bd103f4e548fa026370815e0bb', '监管岗位', '0', '83b980bd-8b2a-4f1c-92de-26ddef5724a2');
INSERT INTO `pt_r_role_organ` VALUES ('eeae450ebab74ea49fea71f192baa575', '监管岗位', '0', '83b980bd-8b2a-4f1c-92de-26ddef5724a2');

-- ----------------------------
-- Table structure for `pt_r_user_duty_org`
-- ----------------------------
DROP TABLE IF EXISTS `pt_r_user_duty_org`;
CREATE TABLE `pt_r_user_duty_org` (
  `USER_DUTYID` varchar(32) NOT NULL,
  `USER_UUID` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `DUTYID` varchar(32) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`USER_DUTYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户、岗位对应表';

-- ----------------------------
-- Records of pt_r_user_duty_org
-- ----------------------------

-- ----------------------------
-- Table structure for `pt_user`
-- ----------------------------
DROP TABLE IF EXISTS `pt_user`;
CREATE TABLE `pt_user` (
  `USER_UUID` varchar(255) NOT NULL,
  `ID` varchar(32) DEFAULT NULL,
  `USERNAME` varchar(32) DEFAULT NULL COMMENT '登录名',
  `PASSWORD` varchar(32) DEFAULT NULL COMMENT '密码',
  `EMAIL` varchar(32) DEFAULT NULL,
  `MOBILE` varchar(255) DEFAULT NULL,
  `ENABLED` decimal(1,0) DEFAULT NULL,
  `ACCOUNT_NON_EXPIRED` decimal(1,0) DEFAULT NULL,
  `CREDENTIALS_NON_EXPIRED` decimal(1,0) DEFAULT NULL,
  `ACCOUNT_NON_LOCKED` decimal(1,0) DEFAULT NULL,
  `ORGAN_UUID` varchar(64) DEFAULT NULL COMMENT '机构ID',
  `NICE_NAME` varchar(64) DEFAULT NULL COMMENT '姓名',
  `IS_ADMIN` decimal(1,0) DEFAULT NULL,
  `MAXIMUMSESSIONS` decimal(1,0) DEFAULT '1' COMMENT '1',
  `REGISTERDATE` varchar(14) DEFAULT NULL COMMENT '注册日期',
  `LASTLOGINTIME` varchar(14) DEFAULT NULL COMMENT '最近登陆时间',
  `PWDQUE` varchar(128) DEFAULT NULL COMMENT '密保问题',
  `PWDANS` varchar(128) DEFAULT NULL COMMENT '密保答案',
  `REMARK` varchar(512) DEFAULT NULL COMMENT '备注',
  `DEPID` varchar(32) DEFAULT NULL COMMENT '部门ID',
  `STATUS` char(1) NOT NULL COMMENT '是否删除',
  `MODTIME` varchar(14) DEFAULT NULL COMMENT '操作时间',
  `MODIFIERID` varchar(32) DEFAULT NULL COMMENT '操作人ID',
  `IS_SUM` decimal(1,0) DEFAULT NULL COMMENT '是否阳光用户（0否1是）',
  PRIMARY KEY (`USER_UUID`),
  KEY `AK_Key_2` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台管理用户';

-- ----------------------------
-- Records of pt_user
-- ----------------------------
INSERT INTO `pt_user` VALUES ('1', '1', 'admin', '9268a2522313521ffda71e86124dda6b', null, null, null, null, null, null, '30e76c3fa5444f3b9c6a026265c195f5', '王彪', '1', '1', null, null, null, null, null, null, '1', null, null, '1');
INSERT INTO `pt_user` VALUES ('2', '2', 'admin100', '9268a2522313521ffda71e86124dda6b', null, null, null, null, null, null, '093996127af94a6cad548d18539dd365', '李波', '0', '1', null, null, null, null, null, null, '1', null, null, null);

-- ----------------------------
-- Table structure for `sys_menu_group`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_group`;
CREATE TABLE `sys_menu_group` (
  `ID` varchar(32) NOT NULL COMMENT '菜单类别id',
  `CODE` varchar(32) DEFAULT NULL COMMENT '菜单类别编号',
  `NAME` varchar(50) DEFAULT NULL COMMENT '菜单类别名称',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单类别表';

-- ----------------------------
-- Records of sys_menu_group
-- ----------------------------

-- ----------------------------
-- Table structure for `t_account`
-- ----------------------------
DROP TABLE IF EXISTS `t_account`;
CREATE TABLE `t_account` (
  `account_id` varchar(128) NOT NULL COMMENT '账户ID',
  `account_code` varchar(128) DEFAULT NULL COMMENT '账户code',
  `Total_account` decimal(8,0) DEFAULT NULL COMMENT '总账户',
  `Balance_Account` decimal(8,0) DEFAULT NULL COMMENT '可用余额',
  `Freeze_Account` decimal(8,0) DEFAULT NULL COMMENT '冻结账户',
  `ORGAN_CODE` varchar(128) DEFAULT NULL COMMENT '组织机构编码',
  `Membership_fees` decimal(8,0) DEFAULT NULL COMMENT '会员费',
  `bid_account` decimal(8,0) DEFAULT NULL COMMENT '投标保证金',
  `performance_account` decimal(8,0) DEFAULT NULL COMMENT ' 履约保证金',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资金账户保证金账户';

-- ----------------------------
-- Records of t_account
-- ----------------------------

-- ----------------------------
-- Table structure for `t_fulblacklist`
-- ----------------------------
DROP TABLE IF EXISTS `t_fulblacklist`;
CREATE TABLE `t_fulblacklist` (
  `BLACKID` varchar(36) NOT NULL,
  `ID` varchar(36) DEFAULT NULL,
  `ORGAN_CODE` varchar(64) DEFAULT NULL COMMENT '申请注册的组织机构代码',
  `SUPPLIERID` varchar(64) DEFAULT NULL COMMENT '供应商ID',
  `CREATEUSER` varchar(64) DEFAULT NULL COMMENT '申请人',
  `CREATEDATE` varchar(14) DEFAULT NULL COMMENT '申请日期',
  `BLACKREASON` varchar(512) DEFAULT NULL COMMENT '列入黑名单原因',
  `FLOWSTATE` decimal(8,0) DEFAULT NULL COMMENT '审核状态(0,电厂申请，1分公司审核通过，2集团审核通过，3分公司驳回，4集团驳回）',
  `REMARK` varchar(512) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`BLACKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商黑名单审核信息';

-- ----------------------------
-- Records of t_fulblacklist
-- ----------------------------

-- ----------------------------
-- Table structure for `t_fulblacklist_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `t_fulblacklist_attachment`;
CREATE TABLE `t_fulblacklist_attachment` (
  `ATTACHMENT_ID` decimal(11,0) NOT NULL,
  `BLACKID` varchar(36) DEFAULT NULL,
  `ATTACHMENT_PATH` varchar(255) NOT NULL COMMENT '附件路径',
  `ATTACHMENT_NAME` varchar(100) NOT NULL COMMENT '附件名称',
  `FILENAME` varchar(100) DEFAULT NULL COMMENT '文件名',
  `DOWNLOAD_COUNT` decimal(11,0) NOT NULL DEFAULT '0' COMMENT '下载次数',
  `UPLOADDATE` varchar(14) DEFAULT NULL COMMENT '上传日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='黑名单附件';

-- ----------------------------
-- Records of t_fulblacklist_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `t_fultbbelongelectric`
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbbelongelectric`;
CREATE TABLE `t_fultbbelongelectric` (
  `ID` varchar(36) NOT NULL,
  `SUPPLIERID` varchar(64) DEFAULT NULL COMMENT '供应商ID',
  `ORGANIZATIONCODE` varchar(64) DEFAULT NULL COMMENT '供应商组织机构代码',
  `ORGAN_CODE` varchar(64) DEFAULT NULL COMMENT '申请注册的组织机构代码',
  `OPERDATE` varchar(14) DEFAULT NULL,
  `OPERUSER` varchar(64) DEFAULT NULL,
  `CREATEUSER` varchar(64) DEFAULT NULL COMMENT '申请人',
  `CREATEDATE` varchar(14) DEFAULT NULL COMMENT '申请日期',
  `CREATEUSERID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTCODE` varchar(64) DEFAULT NULL,
  `DCORGAN_CODE` varchar(64) DEFAULT NULL COMMENT '审核人所在单位编码',
  `DCVERIFYMAN` varchar(64) DEFAULT NULL COMMENT '审核人',
  `DCVERIFYTIME` varchar(14) DEFAULT NULL COMMENT '审核时间',
  `DCVERIFYSTATE` varchar(64) DEFAULT NULL COMMENT '审核结果',
  `GSORGAN_CODE` varchar(64) DEFAULT NULL COMMENT '分公司单位编码',
  `VERIFYMAN` varchar(64) DEFAULT NULL COMMENT '分公司审核人',
  `VERIFYTIME` datetime DEFAULT NULL COMMENT '分公司审核时间',
  `VERIFYSTATE` varchar(64) DEFAULT NULL COMMENT '分公司审核结果',
  `BLACKLISTSTATE` decimal(8,0) DEFAULT NULL COMMENT '黑名单状态(1表示黑名单）',
  `BLACKREASON` varchar(512) DEFAULT NULL COMMENT '列入黑名单原因',
  `REMARK` varchar(512) DEFAULT NULL COMMENT '备注',
  `FLOWSTATE` decimal(8,0) DEFAULT NULL COMMENT '审核状态(0,申请，1电厂审核通过，2分公司通过，3分公司驳回）',
  `SUPPLIERTYPE` varchar(2) DEFAULT NULL COMMENT '供应商类型（1临时供应商，2一般供应商，3内部供应商，4重点供应商）',
  `COMPANYID` varchar(64) DEFAULT NULL,
  `GSORGANID` varchar(64) DEFAULT NULL,
  `GSVERIFYMAN` varchar(64) DEFAULT NULL,
  `GSVERIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商注册审核信息';

-- ----------------------------
-- Records of t_fultbbelongelectric
-- ----------------------------

-- ----------------------------
-- Table structure for `t_fultbpurchasingapply`
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbpurchasingapply`;
CREATE TABLE `t_fultbpurchasingapply` (
  `PURCHAPPLYID` varchar(36) NOT NULL,
  `USER_UUID` varchar(255) NOT NULL,
  `TEMPLATEID` varchar(36) DEFAULT NULL,
  `OPERDATE` varchar(14) DEFAULT NULL,
  `AUTOID` decimal(10,0) DEFAULT NULL,
  `OPERUSER` varchar(64) DEFAULT NULL,
  `CREATEUSER` varchar(64) DEFAULT NULL,
  `CREATEDATE` varchar(14) DEFAULT NULL,
  `CREATEUSERID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTCODE` varchar(64) DEFAULT NULL,
  `PERMITSTATUS` varchar(16) DEFAULT NULL,
  `BILLNUMBER` varchar(64) DEFAULT NULL,
  `DATAFROM` varchar(16) DEFAULT NULL,
  `DATAFROMNAME` varchar(64) DEFAULT NULL,
  `WRITERNAME` varchar(64) DEFAULT NULL,
  `WRITERACCOUNT` varchar(64) DEFAULT NULL,
  `WRITERDEPARTID` varchar(64) DEFAULT NULL,
  `WRITERDEPARTNAME` varchar(64) DEFAULT NULL,
  `WRITEDATE` varchar(14) DEFAULT NULL,
  `JHTIME` varchar(14) DEFAULT NULL,
  `JHTIME_END` varchar(14) DEFAULT NULL,
  `COALTYPE` varchar(64) DEFAULT NULL,
  `QTY` decimal(19,5) DEFAULT NULL,
  `QTY_END` decimal(19,5) DEFAULT NULL,
  `YUNSHU_MODE` varchar(64) DEFAULT NULL,
  `JIAOHUO_MODE` varchar(64) DEFAULT NULL,
  `YANSHOU_MODE` varchar(64) DEFAULT NULL,
  `JIESUAN_MODE` varchar(64) DEFAULT NULL,
  `TYPE_1` varchar(64) DEFAULT NULL,
  `TYPE_2` varchar(64) DEFAULT NULL,
  `TYPE_3` varchar(64) DEFAULT NULL,
  `TYPE_4` varchar(64) DEFAULT NULL,
  `TYPE_5` varchar(64) DEFAULT NULL,
  `TYPE_6` varchar(64) DEFAULT NULL,
  `TYPE_7` varchar(64) DEFAULT NULL,
  `TYPE_8` varchar(64) DEFAULT NULL,
  `REMARK` varchar(2000) DEFAULT NULL,
  `SIGNNAME` varchar(64) DEFAULT NULL,
  `SIGNACCOUNT` varchar(64) DEFAULT NULL,
  `JHTIME2` varchar(14) DEFAULT NULL,
  `TYPE_32` varchar(64) DEFAULT NULL,
  `CREATEBYAH` varchar(16) DEFAULT NULL,
  `IS_FB` varchar(16) DEFAULT NULL,
  `SOURCE` varchar(32) DEFAULT NULL,
  `APPLYSTATE` varchar(64) DEFAULT NULL COMMENT '申请状态',
  `EXECUTESTATE` varchar(64) DEFAULT NULL COMMENT '报批状态',
  `EXECUTEID` varchar(36) DEFAULT NULL,
  `APPLYSTATENUM` varchar(36) DEFAULT NULL COMMENT '申请开始为0,正在审批1,结束为2',
  `EXECUTESTATENUM` varchar(36) DEFAULT NULL COMMENT '报批开始为0,正在审批1,结束为2',
  `EXECUTECASE` varchar(1024) DEFAULT NULL COMMENT '执行情况',
  `ISOUTER` varchar(36) DEFAULT NULL COMMENT '是否是外部数据',
  `TYPE` varchar(36) DEFAULT NULL COMMENT '公开0，邀请1',
  `MAXLIMITPRICE` varchar(64) DEFAULT NULL COMMENT '最高限价',
  `PAYMODE` varchar(2000) DEFAULT NULL,
  `TYPE_323` varchar(64) DEFAULT NULL,
  `TYPE_333` varchar(64) DEFAULT NULL,
  `MAXREMARK` varchar(1024) DEFAULT NULL,
  `TYPE_11` varchar(64) DEFAULT NULL COMMENT '干基基准高位发热量',
  `TYPE_12` varchar(64) DEFAULT NULL COMMENT '干基基准全水分',
  `TYPE_14` varchar(64) DEFAULT NULL COMMENT '干基基准全硫',
  `TYPE_16` varchar(64) DEFAULT NULL COMMENT '干基基准灰分',
  `COALCLASS` varchar(64) DEFAULT NULL,
  `KGJ_1` varchar(64) DEFAULT NULL COMMENT '空干基水分',
  `KGJ_2` varchar(64) DEFAULT NULL COMMENT '空干基全硫',
  `KGJ_3` varchar(64) DEFAULT NULL COMMENT '空干基挥发分(小)',
  `KGJ_4` varchar(64) DEFAULT NULL COMMENT '空干基挥发分(大)',
  PRIMARY KEY (`PURCHAPPLYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='燃料采购计划申请单';

-- ----------------------------
-- Records of t_fultbpurchasingapply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_fultbpurchasingapply2`
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbpurchasingapply2`;
CREATE TABLE `t_fultbpurchasingapply2` (
  `PURCHAPPLYID` varchar(36) NOT NULL,
  `USER_UUID` varchar(255) NOT NULL,
  `TEMPLATEID` varchar(36) DEFAULT NULL,
  `OPERDATE` varchar(14) DEFAULT NULL,
  `AUTOID` decimal(10,0) DEFAULT NULL,
  `OPERUSER` varchar(64) DEFAULT NULL,
  `CREATEUSER` varchar(64) DEFAULT NULL,
  `CREATEDATE` varchar(14) DEFAULT NULL,
  `CREATEUSERID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTCODE` varchar(64) DEFAULT NULL,
  `PERMITSTATUS` varchar(16) DEFAULT NULL,
  `BILLNUMBER` varchar(64) DEFAULT NULL,
  `DATAFROM` varchar(16) DEFAULT NULL,
  `DATAFROMNAME` varchar(64) DEFAULT NULL,
  `WRITERNAME` varchar(64) DEFAULT NULL,
  `WRITERACCOUNT` varchar(64) DEFAULT NULL,
  `WRITERDEPARTID` varchar(64) DEFAULT NULL,
  `WRITERDEPARTNAME` varchar(64) DEFAULT NULL,
  `WRITEDATE` varchar(14) DEFAULT NULL,
  `JHTIME` varchar(14) DEFAULT NULL,
  `JHTIME_END` varchar(14) DEFAULT NULL,
  `COALTYPE` varchar(64) DEFAULT NULL,
  `QTY` decimal(19,5) DEFAULT NULL,
  `QTY_END` decimal(19,5) DEFAULT NULL,
  `YUNSHU_MODE` varchar(64) DEFAULT NULL,
  `JIAOHUO_MODE` varchar(64) DEFAULT NULL,
  `YANSHOU_MODE` varchar(64) DEFAULT NULL,
  `JIESUAN_MODE` varchar(64) DEFAULT NULL,
  `TYPE_1` varchar(64) DEFAULT NULL,
  `TYPE_2` varchar(64) DEFAULT NULL,
  `TYPE_3` varchar(64) DEFAULT NULL,
  `TYPE_4` varchar(64) DEFAULT NULL,
  `TYPE_5` varchar(64) DEFAULT NULL,
  `TYPE_6` varchar(64) DEFAULT NULL,
  `TYPE_7` varchar(64) DEFAULT NULL,
  `TYPE_8` varchar(64) DEFAULT NULL,
  `REMARK` varchar(2000) DEFAULT NULL,
  `SIGNNAME` varchar(64) DEFAULT NULL,
  `SIGNACCOUNT` varchar(64) DEFAULT NULL,
  `JHTIME2` varchar(14) DEFAULT NULL,
  `TYPE_32` varchar(64) DEFAULT NULL,
  `CREATEBYAH` varchar(16) DEFAULT NULL,
  `IS_FB` varchar(16) DEFAULT NULL,
  `SOURCE` varchar(32) DEFAULT NULL,
  `APPLYSTATE` varchar(64) DEFAULT NULL COMMENT '申请状态',
  `EXECUTESTATE` varchar(64) DEFAULT NULL COMMENT '报批状态',
  `EXECUTEID` varchar(36) DEFAULT NULL,
  `APPLYSTATENUM` varchar(36) DEFAULT NULL COMMENT '申请开始为0,正在审批1,结束为2',
  `EXECUTESTATENUM` varchar(36) DEFAULT NULL COMMENT '报批开始为0,正在审批1,结束为2',
  `EXECUTECASE` varchar(1024) DEFAULT NULL COMMENT '执行情况',
  `ISOUTER` varchar(36) DEFAULT NULL COMMENT '是否是外部数据',
  `TYPE` varchar(36) DEFAULT NULL COMMENT '公开0，邀请1',
  `MAXLIMITPRICE` varchar(64) DEFAULT NULL COMMENT '最高限价',
  `PAYMODE` varchar(2000) DEFAULT NULL,
  `TYPE_323` varchar(64) DEFAULT NULL,
  `TYPE_333` varchar(64) DEFAULT NULL,
  `MAXREMARK` varchar(1024) DEFAULT NULL,
  `TYPE_11` varchar(64) DEFAULT NULL COMMENT '干基基准高位发热量',
  `TYPE_12` varchar(64) DEFAULT NULL COMMENT '干基基准全水分',
  `TYPE_14` varchar(64) DEFAULT NULL COMMENT '干基基准全硫',
  `TYPE_16` varchar(64) DEFAULT NULL COMMENT '干基基准灰分',
  `COALCLASS` varchar(64) DEFAULT NULL,
  `KGJ_1` varchar(64) DEFAULT NULL COMMENT '空干基水分',
  `KGJ_2` varchar(64) DEFAULT NULL COMMENT '空干基全硫',
  `KGJ_3` varchar(64) DEFAULT NULL COMMENT '空干基挥发分(小)',
  `KGJ_4` varchar(64) DEFAULT NULL COMMENT '空干基挥发分(大)',
  PRIMARY KEY (`PURCHAPPLYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='燃料采购计划申请单2(后台管理)';

-- ----------------------------
-- Records of t_fultbpurchasingapply2
-- ----------------------------

-- ----------------------------
-- Table structure for `t_fultbpurchasingapplydetail`
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbpurchasingapplydetail`;
CREATE TABLE `t_fultbpurchasingapplydetail` (
  `APPLYDETAILID` varchar(36) NOT NULL,
  `PURCHAPPLYID` varchar(36) DEFAULT NULL,
  `SUPPLIERID` varchar(64) DEFAULT NULL,
  `USER_UUID` varchar(255) DEFAULT NULL,
  `OPERDATE` varchar(14) DEFAULT NULL,
  `AUTOID` decimal(8,0) DEFAULT NULL,
  `OPERUSER` varchar(64) DEFAULT NULL,
  `CREATEUSER` varchar(64) DEFAULT NULL,
  `CREATEDATE` varchar(14) DEFAULT NULL,
  `CREATEUSERID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTCODE` varchar(64) DEFAULT NULL,
  `PURCHASINGAPPLYID` varchar(64) DEFAULT NULL,
  `QTY` decimal(19,5) DEFAULT NULL,
  `QTY_END` decimal(19,5) DEFAULT NULL,
  `QCALMIN` decimal(19,5) DEFAULT NULL,
  `FEEDBACK` varchar(1024) DEFAULT NULL,
  `REMARK` varchar(1024) DEFAULT NULL,
  `LINKTEL` varchar(64) DEFAULT NULL,
  `PERMITSTATUS` varchar(64) DEFAULT NULL,
  `BJTIME` varchar(14) DEFAULT NULL,
  `IS_ZB` varchar(64) DEFAULT NULL,
  `JB_NAME` varchar(64) DEFAULT NULL,
  `JD_NAME` varchar(64) DEFAULT NULL,
  `SP_NAME` varchar(64) DEFAULT NULL,
  `LOCALPLACE` varchar(1024) DEFAULT NULL,
  `HASMODIFIED` decimal(8,0) DEFAULT '0',
  `IS_BJ` varchar(10) DEFAULT NULL,
  `ORGANIZATIONCODE` varchar(64) DEFAULT NULL,
  `ISCHECKEDBYFGS` varchar(64) DEFAULT NULL COMMENT '是否被分公司选中',
  `ISCHECKEDBYDC` varchar(64) DEFAULT NULL COMMENT '是否被电厂选中',
  `ZBQTY` varchar(64) DEFAULT NULL,
  `ZBPRICE` varchar(64) DEFAULT NULL,
  `LASTBJDATE` varchar(14) DEFAULT NULL COMMENT '最后一次报价时间',
  `SENDPORT` varchar(1024) DEFAULT NULL,
  `LF` decimal(19,5) DEFAULT NULL,
  `PRICEMIN` varchar(64) DEFAULT NULL,
  `FARE` varchar(64) DEFAULT NULL,
  `HFF` float DEFAULT NULL,
  `HFF_END` float DEFAULT NULL,
  `ASH` float DEFAULT NULL,
  `QSF` float DEFAULT NULL,
  PRIMARY KEY (`APPLYDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='燃料采购计划供应商报价';

-- ----------------------------
-- Records of t_fultbpurchasingapplydetail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_fultbsupplier`
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbsupplier`;
CREATE TABLE `t_fultbsupplier` (
  `SUPPLIERID` varchar(64) NOT NULL,
  `MEMBERTYPEID` varchar(36) DEFAULT NULL COMMENT '类型ID',
  `USER_UUID` varchar(255) DEFAULT NULL,
  `CREATEUSER` varchar(64) DEFAULT NULL COMMENT '创建人',
  `CREATEDATE` varchar(14) DEFAULT NULL COMMENT '创建日期',
  `OPERUSER` varchar(64) DEFAULT NULL COMMENT '修改人',
  `OPERDATE` varchar(14) DEFAULT NULL COMMENT '修改日期',
  `NAME` varchar(64) DEFAULT NULL COMMENT '供应商名称',
  `CODE` varchar(64) DEFAULT NULL COMMENT '供应商编号',
  `SHORTNAME` varchar(64) DEFAULT NULL COMMENT '供应商简称',
  `CORPORATION` varchar(64) DEFAULT NULL COMMENT '法人代表',
  `FINANCING` decimal(19,5) DEFAULT NULL COMMENT '注册资金',
  `LICENCE` varchar(64) DEFAULT NULL COMMENT '经营执照编号',
  `COALLICENCE` varchar(64) DEFAULT NULL COMMENT '经营许可证编号',
  `TAXCODE` varchar(64) DEFAULT NULL COMMENT '税务登记证代码',
  `LINKMAN` varchar(64) DEFAULT NULL COMMENT '联系人',
  `LINKTEL` varchar(64) DEFAULT NULL COMMENT '联系电话',
  `FAXCODE` varchar(64) DEFAULT NULL COMMENT '传真号码',
  `ADDRESS` varchar(256) DEFAULT NULL COMMENT '联系地址',
  `POSTALCODE` varchar(64) DEFAULT NULL COMMENT '邮政编码',
  `ISSTOP` decimal(10,0) DEFAULT NULL COMMENT '是否停用',
  `CREDITLEVEL` varchar(64) DEFAULT NULL COMMENT '信誉等级',
  `NORDER` decimal(10,0) DEFAULT NULL COMMENT '顺序号',
  `ORGANIZATIONCODE` varchar(64) DEFAULT NULL COMMENT '组织机构代码',
  `CONEMAIL` varchar(64) DEFAULT NULL COMMENT '联系人Email',
  `EXP_LAIN` varchar(2000) DEFAULT NULL COMMENT '特别说明',
  `REGISTERPLACE` varchar(256) DEFAULT NULL COMMENT '公司注册地',
  `CORPORATIONIDENTITY` varchar(64) DEFAULT NULL COMMENT '法人代表身份证',
  `OPENBANK` varchar(256) DEFAULT NULL COMMENT '开户银行',
  `BANKACCOUNT` varchar(256) DEFAULT NULL COMMENT '银行账号',
  `COALSOURCE` varchar(2000) DEFAULT NULL COMMENT '煤源存放地点、数量、质量',
  `TRANSPORTMODE` varchar(2000) DEFAULT NULL COMMENT '运输方式及保障能力',
  `INTRODUCE` varchar(2000) DEFAULT NULL COMMENT '供应商介绍',
  `ACHIEVEMENT` varchar(2000) DEFAULT NULL COMMENT '供应商业绩',
  `TIMES` decimal(8,0) DEFAULT NULL COMMENT '次数',
  `CLICKLOGINTIME` varchar(14) DEFAULT NULL,
  `NCLICKLOGINTIME` varchar(14) DEFAULT NULL,
  `AUTOID` decimal(10,0) DEFAULT NULL,
  `SUPPLIERKIND` varchar(64) DEFAULT NULL COMMENT '备用字段',
  `PASSWORD` varchar(64) DEFAULT NULL COMMENT '密码',
  `LASTLOGINTIME` varchar(64) DEFAULT NULL COMMENT '最近登陆时间',
  `STEPNUMBER` decimal(10,0) DEFAULT NULL COMMENT '注册到第几步',
  `CREATEUSERID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTCODE` varchar(64) DEFAULT NULL,
  `MINESPECIALCOST` decimal(19,5) DEFAULT NULL,
  `RAILCARRIAGE` decimal(19,5) DEFAULT NULL,
  `DATAFROM` varchar(64) DEFAULT NULL,
  `IS_FB` varchar(16) DEFAULT NULL,
  `PT_AUDIT` varchar(2) DEFAULT NULL COMMENT '是否通过(平台审核：0否，1是，默认为0)',
  `IS_CAAUTH` varchar(2) DEFAULT NULL COMMENT '是否通过CA认证（0否，1是，默认为0）',
  PRIMARY KEY (`SUPPLIERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商基本信息';

-- ----------------------------
-- Records of t_fultbsupplier
-- ----------------------------
INSERT INTO `t_fultbsupplier` VALUES ('1', null, null, null, null, null, null, '中房集团新余供应链有限公司东平分公司', null, 'A', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_fultbsupplier` VALUES ('101', null, null, null, null, null, null, '河北xx集团', null, 'DS', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_fultbsupplier` VALUES ('2', null, null, null, null, null, null, '湖北鸿之邦商贸有限公司', null, 'B', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_fultbsupplier` VALUES ('3', null, null, null, null, null, null, '四川晋淼煤业有限公司', null, 'C', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_fultbsupplier` VALUES ('4', null, null, null, null, null, null, '成都市广茂物流有限责任公司', null, 'D', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_fultbsupplier` VALUES ('5', null, null, null, null, null, null, '萧县润兴能源有限公司', null, 'E', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_fultbsupplier` VALUES ('6', null, null, null, null, null, null, '安徽乾亨贸易有限公司', null, 'F', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_fultbtemplate`
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbtemplate`;
CREATE TABLE `t_fultbtemplate` (
  `TEMPLATEID` varchar(36) NOT NULL,
  `OPERDATE` varchar(14) DEFAULT NULL,
  `AUTOID` decimal(10,0) DEFAULT NULL,
  `OPERUSER` varchar(64) DEFAULT NULL,
  `CREATEUSER` varchar(64) DEFAULT NULL,
  `CREATEDATE` varchar(14) DEFAULT NULL,
  `CREATEUSERID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTCODE` varchar(64) DEFAULT NULL,
  `PERMITSTATUS` varchar(64) DEFAULT NULL,
  `BILLNUMBER` varchar(64) DEFAULT NULL,
  `DATAFROM` varchar(16) DEFAULT NULL,
  `DATAFROMNAME` varchar(64) DEFAULT NULL,
  `WRITERNAME` varchar(64) DEFAULT NULL,
  `WRITERACCOUNT` varchar(64) DEFAULT NULL,
  `WRITERDEPARTID` varchar(64) DEFAULT NULL,
  `WRITERDEPARTNAME` varchar(64) DEFAULT NULL,
  `WRITEDATE` varchar(14) DEFAULT NULL,
  `JHTIME` varchar(14) DEFAULT NULL,
  `JHTIME_END` varchar(14) DEFAULT NULL,
  `COALTYPE` varchar(64) DEFAULT NULL,
  `QTY` decimal(19,5) DEFAULT NULL,
  `QTY_END` decimal(19,5) DEFAULT NULL,
  `YUNSHU_MODE` varchar(64) DEFAULT NULL,
  `JIAOHUO_MODE` varchar(64) DEFAULT NULL,
  `YANSHOU_MODE` varchar(64) DEFAULT NULL,
  `JIESUAN_MODE` varchar(64) DEFAULT NULL,
  `TYPE_1` varchar(64) DEFAULT NULL,
  `TYPE_2` varchar(64) DEFAULT NULL,
  `TYPE_3` varchar(64) DEFAULT NULL,
  `TYPE_4` varchar(64) DEFAULT NULL,
  `TYPE_5` varchar(64) DEFAULT NULL,
  `TYPE_6` varchar(64) DEFAULT NULL,
  `TYPE_7` varchar(64) DEFAULT NULL,
  `TYPE_8` varchar(64) DEFAULT NULL,
  `REMARK` varchar(1024) DEFAULT NULL,
  `SIGNNAME` varchar(64) DEFAULT NULL,
  `SIGNACCOUNT` varchar(64) DEFAULT NULL,
  `JHTIME2` varchar(14) DEFAULT NULL,
  `TYPE_32` varchar(64) DEFAULT NULL,
  `CREATEBYAH` varchar(16) DEFAULT NULL,
  `IS_FB` varchar(16) DEFAULT NULL,
  `SOURCE` varchar(32) DEFAULT NULL,
  `TYPE` varchar(36) DEFAULT NULL,
  `TYPE_323` varchar(64) DEFAULT NULL,
  `TYPE_333` varchar(64) DEFAULT NULL,
  `MAXREMARK` varchar(1024) DEFAULT NULL,
  `TYPE_11` varchar(64) DEFAULT NULL,
  `TYPE_12` varchar(64) DEFAULT NULL,
  `TYPE_14` varchar(64) DEFAULT NULL,
  `TYPE_16` varchar(64) DEFAULT NULL,
  `COALCLASS` varchar(64) DEFAULT NULL,
  `KGJ_1` varchar(64) DEFAULT NULL COMMENT '空干基水分',
  `KGJ_2` varchar(64) DEFAULT NULL COMMENT '空干基全硫',
  `KGJ_3` varchar(64) DEFAULT NULL COMMENT '空干基挥发分(小)',
  `KGJ_4` varchar(64) DEFAULT NULL COMMENT '空干基挥发分(大)',
  PRIMARY KEY (`TEMPLATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='燃料采购申请单模版';

-- ----------------------------
-- Records of t_fultbtemplate
-- ----------------------------

-- ----------------------------
-- Table structure for `t_fultbwinbidding`
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbwinbidding`;
CREATE TABLE `t_fultbwinbidding` (
  `BIDID` varchar(36) NOT NULL,
  `APPLYDETAILID` varchar(36) DEFAULT NULL COMMENT '供应商报价ID',
  `PURCHAPPLYID` varchar(36) NOT NULL COMMENT '采购单ID',
  `SUPPLIERID` varchar(64) DEFAULT NULL COMMENT '供应商ID',
  `USER_UUID` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `OPERDATE` varchar(14) DEFAULT NULL,
  `AUTOID` decimal(10,0) DEFAULT NULL,
  `OPERUSER` varchar(64) DEFAULT NULL,
  `CREATEUSER` varchar(64) DEFAULT NULL,
  `CREATEDATE` varchar(14) DEFAULT NULL,
  `CREATEUSERID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTID` varchar(64) DEFAULT NULL,
  `CREATEUSERDEPTCODE` varchar(64) DEFAULT NULL,
  `ORGANCODE` varchar(64) DEFAULT NULL,
  `ZBQTY` varchar(64) DEFAULT NULL COMMENT '中标数量（默认为最后一次报价数量）',
  `ZBPRICE` varchar(64) DEFAULT NULL COMMENT '中标价格（默认为最后一次报价价格）',
  `IS_BID` varchar(2) DEFAULT NULL COMMENT '是否中标（0否，1是，默认为0）',
  PRIMARY KEY (`BIDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='中标信息';

-- ----------------------------
-- Records of t_fultbwinbidding
-- ----------------------------

-- ----------------------------
-- Table structure for `t_supgradeitem_data`
-- ----------------------------
DROP TABLE IF EXISTS `t_supgradeitem_data`;
CREATE TABLE `t_supgradeitem_data` (
  `ID` varchar(32) NOT NULL COMMENT '标识',
  `SUPPLIERID` varchar(36) DEFAULT NULL,
  `TIME_TYPE_ID` varchar(10) DEFAULT NULL COMMENT '时间类型:日,周,月,季,年',
  `ITEM_ID` varchar(32) DEFAULT NULL,
  `TIME_ID` double(19,0) DEFAULT NULL,
  `ITEM_CODE` varchar(50) DEFAULT NULL COMMENT '本编码可以从标准指标编码选择，也可自己添加，只代表指标编码，不冠前缀',
  `SYS_RES_CODE` varchar(200) DEFAULT NULL COMMENT '机构编码',
  `BUYERCODE` varchar(32) DEFAULT NULL COMMENT '采购商编码',
  `ITEM_VALUE_FACT` varchar(50) DEFAULT NULL COMMENT '实际值',
  `ITEM_VALUE_REPORT` varchar(50) DEFAULT NULL COMMENT '上报值',
  `ITEM_VALUE_APPROVE` varchar(50) DEFAULT NULL COMMENT '审批值',
  `STATE_ID` double(2,0) DEFAULT NULL COMMENT '1：草稿状态 (保存)2：初始状态 (提交)3:  前期修改状态 (提交后到上报时间点前的修改状态)4:  后期修改状态 (上报时间点后的修改状态)',
  `VERSION_ID` double(4,0) DEFAULT NULL,
  `FILL_IN_PERSON` varchar(32) DEFAULT NULL,
  `DATE_ID` varchar(14) DEFAULT NULL COMMENT '日期标识',
  `END_UPDATE_DATE` varchar(14) DEFAULT NULL,
  `REMARKS` varchar(100) DEFAULT NULL COMMENT '备注',
  `AUDITING_FLAG` varchar(1) DEFAULT NULL COMMENT '审核标志',
  `REPORT_SET` varchar(32) DEFAULT NULL COMMENT '上报类型:1-不上报，2-上报集团，3-上报分公司，4-上报集团和分公司',
  `IS_GS_CHECK` varchar(10) DEFAULT NULL COMMENT '是否公司审核：1：是，分公司审核；0：否，分公司不审核',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商评级数据 \r\n供应商评级数据明细表（每月评一次）';

-- ----------------------------
-- Records of t_supgradeitem_data
-- ----------------------------

-- ----------------------------
-- Table structure for `t_suppliergrade`
-- ----------------------------
DROP TABLE IF EXISTS `t_suppliergrade`;
CREATE TABLE `t_suppliergrade` (
  `GRADEID` varchar(32) NOT NULL COMMENT '主键',
  `GRADE_NAME` varchar(128) DEFAULT NULL COMMENT '名称',
  `SORT` decimal(10,0) DEFAULT NULL COMMENT '排序',
  `REMARK` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`GRADEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商等级\r\n存储供应商等级分类数据（重要供应商、一般供应商、临时供应商等）';

-- ----------------------------
-- Records of t_suppliergrade
-- ----------------------------

-- ----------------------------
-- Table structure for `t_suppliergradeitem`
-- ----------------------------
DROP TABLE IF EXISTS `t_suppliergradeitem`;
CREATE TABLE `t_suppliergradeitem` (
  `ITEM_ID` varchar(32) NOT NULL COMMENT '指标标识',
  `ITEM_CODE` varchar(50) NOT NULL COMMENT '指标代码',
  `ITEM_NAME` varchar(128) DEFAULT NULL COMMENT '指标名称',
  `PRECISION_Num` double(8,0) DEFAULT NULL COMMENT '精度',
  `SORT` double(10,0) DEFAULT NULL COMMENT '排序',
  `WEIGHT` double(6,2) DEFAULT NULL COMMENT '权重',
  `REMARK` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商评级指标\r\n存储供应商评级相关权重指标';

-- ----------------------------
-- Records of t_suppliergradeitem
-- ----------------------------

-- ----------------------------
-- Table structure for `t_watrr_account`
-- ----------------------------
DROP TABLE IF EXISTS `t_watrr_account`;
CREATE TABLE `t_watrr_account` (
  `watera_account_id` varchar(128) NOT NULL COMMENT '流水账ID',
  `account_id` varchar(128) DEFAULT NULL COMMENT '账户ID',
  `watera_account_code` varchar(128) DEFAULT NULL COMMENT '流水账code',
  `organ_code` varchar(128) DEFAULT NULL COMMENT '单位_code',
  `opt_member` varchar(128) DEFAULT NULL COMMENT '操作人',
  `opt_time` varchar(14) DEFAULT NULL COMMENT '操作时间',
  `account` decimal(8,0) DEFAULT NULL COMMENT '金额',
  `type` varchar(2) DEFAULT NULL COMMENT '缴纳类型(1入账2出账)',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `remittance_type` varchar(128) DEFAULT NULL COMMENT '汇款方式',
  `remittance_time` varchar(14) DEFAULT NULL COMMENT '汇款时间',
  PRIMARY KEY (`watera_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户流水帐(现金缴纳和退还)';

-- ----------------------------
-- Records of t_watrr_account
-- ----------------------------

-- ----------------------------
-- Table structure for `t_watrr_earnest_account`
-- ----------------------------
DROP TABLE IF EXISTS `t_watrr_earnest_account`;
CREATE TABLE `t_watrr_earnest_account` (
  `T_WATRR_earnest_ACCOUNT` varchar(128) NOT NULL COMMENT '流水账ID',
  `account_id` varchar(128) DEFAULT NULL COMMENT '账户ID',
  `PURCHAPPLYID` varchar(36) DEFAULT NULL,
  `T_WATRR_earnest_ACCOUNT_code` varchar(128) DEFAULT NULL COMMENT '流水账code',
  `organ_code` varchar(128) DEFAULT NULL COMMENT '操作单位',
  `opt_member` varchar(128) DEFAULT NULL COMMENT '操作人',
  `opt_time` varchar(14) DEFAULT NULL COMMENT '时间',
  `ACCOUNT` varchar(14) DEFAULT NULL COMMENT '金额',
  `type` varchar(16) DEFAULT NULL COMMENT '操作种类（1.冻结，2解冻）',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `option_remark` varchar(500) DEFAULT NULL COMMENT '操作说明',
  PRIMARY KEY (`T_WATRR_earnest_ACCOUNT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户流水帐(平台保证金虚拟账户冻结和解冻)';

-- ----------------------------
-- Records of t_watrr_earnest_account
-- ----------------------------

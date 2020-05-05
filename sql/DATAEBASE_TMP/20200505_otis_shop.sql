-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2020-05-05 11:46:12
-- 服务器版本： 10.4.11-MariaDB
-- PHP 版本： 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `otis_shop`
--

-- --------------------------------------------------------

--
-- 表的结构 `items`
--

CREATE TABLE `items` (
  `itemId` int(11) NOT NULL COMMENT '流水號',
  `itemName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名稱',
  `itemImg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品照片路徑',
  `colorid` tinyint(20) DEFAULT NULL COMMENT '產品顏色',
  `itemsbrand` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '產品品牌',
  `itemstype` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '產品類型',
  `itemPrice` int(11) NOT NULL COMMENT '商品價格',
  `itemQty` int(255) NOT NULL COMMENT '商品數量',
  `itemsales` int(255) NOT NULL DEFAULT 1 COMMENT '銷售量',
  `itemsstar` tinyint(10) NOT NULL DEFAULT 1 COMMENT '產品評分',
  `itemstoreNumber` int(10) DEFAULT NULL COMMENT '賣場與商品對應編號',
  `itemscontent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '產品備註',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '新增時間',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品列表';

--
-- 转存表中的数据 `items`
--

INSERT INTO `items` (`itemId`, `itemName`, `itemImg`, `colorid`, `itemsbrand`, `itemstype`, `itemPrice`, `itemQty`, `itemsales`, `itemsstar`, `itemstoreNumber`, `itemscontent`, `created_at`, `updated_at`) VALUES
(1, 'HD 450BT\n', '1.png', 8, 'SENNHEISER', '2', 7000, 200, 10, 5, 0, '全新的 HD 450BT. 造就絕佳的無線音色表現。', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'HD 350BT', '2.png', 8, 'SENNHEISER', '2', 4000, 100, 5, 5, 0, '在旅途中或在家中，都能透過 HD 350BT. 享受絕佳的無線音頻。', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'PXC 550-II Wireless', '3.png', 8, 'SENNHEISER', '2', 11000, 150, 5, 5, 0, '新款PXC 550-II無線耳機，優美的聲音質量，更出色的出行體驗。', '0000-00-00 00:00:00', '2020-05-05 17:41:51'),
(4, 'MOMENTUM Wireless', '4.png', 8, 'SENNHEISER', '2', 14000, 100, 10, 5, 0, '新款MOMENTUM Wireless無線耳機，人性化設計，優越聲音品質。', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'PXC 550 Wireless', '5.png', 8, 'SENNHEISER', '2', 8000, 50, 5, 5, 0, 'Sennheiser PXC 550 Wireless將每一次旅程變成一流的體驗', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'HD4.40BT', '6.png', 8, 'SENNHEISER', '2', 4000, 100, 50, 5, 0, '新推出的Sennheiser HD4.40BT無線耳機提供了高質量的無線聲音信號', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'MOMENTUM 2 Wireless Black', '7.png', 8, 'SENNHEISER', '2', 12500, 100, 20, 5, 0, '獨家主動降噪技術為你帶來頂尖的聲學表現。', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'MOMENTUM On-Ear Wireless\n', '8.png', 8, 'SENNHEISER', '2', 16000, 50, 10, 5, 0, '同時支援藍牙?無線科技 及混合式主動降噪技術', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'RS 195\n', '9.png', 8, 'SENNHEISER', '2', 19500, 50, 5, 5, 0, '有了RS 195，你可重新體驗音樂帶來的無窮樂趣', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'RS 185', '10.png', 8, 'SENNHEISER', '2', 15000, 50, 10, 5, 0, '能手動調節聲音精確度的耳筒系統，高要求用家的無線選擇。', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'RS 175-U\n', '11.png', 8, 'SENNHEISER', '2', 12000, 100, 30, 5, 0, '有著震撼低頻和環迴立體聲的耳筒系統，更有趣的家居影音體驗!', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'MM 450-X TRAVEL', '12.png', 8, 'SENNHEISER', '2', 17500, 50, 10, 5, 0, '由於封閉式耳罩設計加強了被動降噪功能，你可以安心地聽音樂，而不用擔心打擾周圍的乘客', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'HD 400S\n', '13.png', 8, 'SENNHEISER', '1', 3000, 1000, 150, 5, 0, '能方便地播放音樂和接聽電話，紮實的折疊設計讓這款耳機不僅堅固耐用', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'HD 300\n', '14.png', 8, 'SENNHEISER', '1', 2500, 500, 50, 5, 0, '換能器單元確保了聲音保持良好的平衡，以及強勁有力的動感低頻響應。', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'HD 660 S Apogee', '15.png', 8, 'SENNHEISER', '1', 13500, 100, 20, 5, 0, 'Apogee Groove提供的一款USB DAC（數位類比轉換器）及耳機放大器', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'HD 300 PRO\n', '16.png', 8, 'SENNHEISER', '1', 8900, 50, 10, 5, 0, 'HD 300 PRO監聽耳機最新研發的聲學系統，確保其能夠提供一個自然中性、細膩精確的聲音播放', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'HD 660S\n', '17.png', 8, 'SENNHEISER', '1', 14900, 50, 20, 5, 0, 'Sennheiser的新型HD 660S是充滿激情的發燒友的理想開放式動態耳機。', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'HD 820\n', '18.png', 8, 'SENNHEISER', '1', 75000, 20, 5, 5, 0, '能夠以Hi–Fi級的質量欣賞音樂節目。配置了獨特的玻璃材質換能器外殼，以實現小共振', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'HD 206\n', '19.png', 8, 'SENNHEISER', '1', 2000, 100, 60, 5, 0, ' 是一款封閉動圈式立體聲耳機，適合預算有限的音樂愛好者，具有聲音重放有力、環境噪聲衰減性能出色、佩戴舒適等特點。', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'HD4.50BTNC', '20.png', 8, 'SENNHEISER', '2', 5300, 100, 30, 5, 0, 'Sennheiser的NoiseGard主動降噪，夠保證你在任何環境中安靜也能夠聆聽和欣賞自己的音樂。', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'HD 4.40BT\n', '21.png', 8, 'SENNHEISER', '2', 3200, 100, 50, 5, 0, '這款後腔封閉式包耳設計的無線耳機採用了藍牙4.0技術和aptX兼容技術，能夠傳輸真正的高保真聲音信號', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'HD 598 Cs', '22.png', 8, 'SENNHEISER', '1', 5500, 80, 20, 5, 0, 'Sennheiser HD 5系列在各個方面都提供高質量和價值。採用Sennheiser專屬換能器技術', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'HD200PRO', '23.png', 8, 'SENNHEISER', '1', 4000, 200, 50, 5, 0, ' HD 200 PRO 能夠為每一種監聽需求和資金預算需求提供細膩強勁的聲音監聽', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'PXC480', '24.png', 8, 'SENNHEISER', '1', 7300, 100, 20, 5, 0, '具有完美設計的這款旅行系列頭戴耳麥凝聚了Sennheiser在聲音和音頻技術上的品質體現', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'HD 559', '25.png', 8, 'SENNHEISER', '1', 6100, 50, 10, 5, 0, '插入具有開放包耳式設計以及高級Sennheiser換能器系統的HD 559，它將為你帶來卓越的聲音體驗', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'HD 569', '26.png', 8, 'SENNHEISER', '1', 7300, 100, 20, 5, 0, '採用封閉包耳式設計的HD 569為家庭娛樂領域帶來靈活選項。它提供了一個細節豐富而清晰的低音，', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'HD 579', '27.png', 9, 'SENNHEISER', '1', 6000, 50, 10, 5, 0, 'HD 579提供高端性能，為家庭娛樂帶來近乎高保真的聲音水平', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'HD 599', '28.png', 3, 'SENNHEISER', '1', 6500, 50, 5, 5, 0, '當代設計既富有吸引力，也符合人體工學。對於那些帶著發現探索精神去聽音樂的人來說', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'HD 4.30', '29.png', 9, 'SENNHEISER', '1', 2900, 60, 10, 5, 0, '堅固的折疊設計讓這款耳機堅固緊湊，能夠隨身攜帶', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'HD 800 S', '30.png', 8, 'SENNHEISER', '1', 61000, 20, 5, 5, 0, 'HD 800 作為一代經典，它不但提供自然的聲音和真實的細節', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'ATH-PDG1a', 'ATH-PDG1a_.jpg', 1, 'audio-technica', '1', 5000, 137, 123, 3, 0, '遊戲專用耳機麥克風組 體驗廣闊空間感的開放音色 令人置身於遊戲世界中的開放式電競用耳機', '2020-05-04 23:14:00', '2020-05-04 23:14:00'),
(32, 'ATH-G1', 'ATH-G1_b.jpg', 8, 'audio-technica', '1', 6000, 56, 395, 3, 0, '遊戲專用耳機麥克風組 承繼針對專業取向的耳機與麥克風的設計概念 出乎想像的深入遊戲體驗', '2020-05-05 23:14:00', '2020-05-05 23:14:00'),
(33, 'ATH-G1WL', 'ATH-G1WL.jpg', 8, 'audio-technica', '2', 9900, 98, 279, 3, 0, '遊戲專用無線耳機麥克風組 承繼針對專業取向的耳機與麥克風的設計概念 出乎想像的深入遊戲體驗', '2020-05-06 23:14:00', '2020-05-06 23:14:00'),
(34, 'ATH-AWKT', 'ATH-AWKT.jpg', 8, 'audio-technica', '1', 54700, 137, 395, 3, 0, '沉浸於黑檀演奏的優雅樂音 傳統的木製機殼耳機', '2020-05-07 23:14:00', '2020-05-07 23:14:00'),
(35, 'ATH-AWAS', 'ATH-AWAS.jpg', 1, 'audio-technica', '1', 38900, 56, 123, 3, 0, '墜入淺田櫻的自然聲響之中 革新的木製機殼耳機', '2020-05-08 23:14:00', '2020-05-08 23:14:00'),
(36, 'ATH-L5000', 'ATH-L5000_img01_550.jpg', 3, 'audio-technica', '1', 138500, 98, 279, 3, 0, '聲音與皮革， 匠人極致工藝的傳奇聯名再次降臨。', '2020-05-09 23:14:00', '2020-05-09 23:14:00'),
(37, 'ATH-W5000', 'ATH-W5000_550.jpg', 8, 'audio-technica', '1', 39800, 137, 123, 3, 0, '機殼採用音響特性非常優越的天然條紋黑檀木材', '2020-05-10 23:14:00', '2020-05-10 23:14:00'),
(38, 'ATH-A2000Z', 'ATH-A2000Z.jpg', 7, 'audio-technica', '1', 27500, 56, 395, 3, 0, '密閉式動圈型耳機 創造純淨至高音樂空間的一時之選', '2020-05-11 23:14:00', '2020-05-11 23:14:00'),
(39, 'ATH-A1000Z', 'ATH-A1000Z.jpg', 1, 'audio-technica', '1', 17500, 98, 279, 3, 0, '密閉式動圈型耳機 前往未知的感動 精緻的聲音與重現力', '2020-05-12 23:14:00', '2020-05-12 23:14:00'),
(40, 'ATH-A900Z', 'ATH-A900Z.jpg', 5, 'audio-technica', '1', 8750, 137, 395, 3, 0, '密閉式動圈型耳機 細微之處也毫無遺漏 呈現聲音的全貌', '2020-05-13 23:14:00', '2020-05-13 23:14:00'),
(41, 'ATH-A500Z', 'ATH-A500Z.jpg', 8, 'audio-technica', '1', 4750, 56, 123, 3, 0, '密閉式動圈型耳機 纖細而豐富 傳統的監聽聲響', '2020-05-14 23:14:00', '2020-05-14 23:14:00'),
(42, 'ATH-ANC500BT', 'ATH-ANC500BT_BK_03.jpg', 8, 'audio-technica', '2', 4000, 98, 279, 3, 0, '無線抗噪耳機 獨創主動式抗噪技術與藍牙無線技術，能有效隔絕環境噪音。', '2020-05-15 23:14:00', '2020-05-15 23:14:00'),
(43, 'ATH-WS330BT', 'ATH-WS330BT_BK.jpg', 8, 'audio-technica', '2', 4200, 137, 123, 3, 0, '輕薄機身與厚實的低音 每天都想聆聽的 無線×耳罩式耳機', '2020-05-16 23:14:00', '2020-05-16 23:14:00'),
(44, 'ATH-AP2000Ti', 'ATH-AP2000Ti_550.jpg', 8, 'audio-technica', '1', 46000, 56, 395, 3, 0, '連寂靜之處亦描繪於耳畔， 高精細度原音重現。', '2020-05-17 23:14:00', '2020-05-17 23:14:00'),
(45, 'ATH-SR50', 'ATH-SR50_550.jpg', 8, 'audio-technica', '1', 6100, 98, 279, 3, 0, '讓你隨時隨處 體驗高解析音質的絕佳聽感', '2020-05-18 23:14:00', '2020-05-18 23:14:00'),
(46, 'ATH-MSR7SE', 'ATH-MSR7SE_550.jpg', 5, 'audio-technica', '1', 9980, 137, 395, 3, 0, '承襲 MSR7 優異聲音表現，加以強化的限定版機種', '2020-05-19 23:14:00', '2020-05-19 23:14:00'),
(47, 'ATH-MSR7', 'ATH-MSR7_BK.jpg', 8, 'audio-technica', '2', 10000, 56, 123, 3, 0, '集結獨創的音響技術 鉅細靡遺傳遞真實音色的高解析度', '2020-05-20 23:14:00', '2020-05-20 23:14:00'),
(48, 'ATH-SR9', 'SR9_2_1.jpg', 7, 'audio-technica', '1', 20000, 98, 279, 3, 0, '繼往開來的獨家音響設計，實現純正的高解析音質播放', '2020-05-21 23:14:00', '2020-05-21 23:14:00'),
(49, 'ATH-AR5_BK', 'AR5_BK.jpg', 8, 'audio-technica', '1', 5600, 137, 123, 3, 0, '高解析音質播放，忠實重現原音', '2020-05-22 23:14:00', '2020-05-22 23:14:00'),
(50, 'ATH-AR5_RD', 'AR5_RD.jpg', 1, 'audio-technica', '1', 5600, 56, 395, 3, 0, '高解析音質播放，忠實重現原音', '2020-05-23 23:14:00', '2020-05-23 23:14:00'),
(51, 'ATH-AR3_RD', 'ATH-AR3_RD_1.jpg', 1, 'audio-technica', '1', 2400, 98, 279, 3, 0, '播放鮮明聲響的高音質表現', '2020-05-24 23:14:00', '2020-05-24 23:14:00'),
(52, 'ATH-AR3_BL', 'ATH-AR3_BL_1.jpg', 5, 'audio-technica', '1', 2400, 137, 395, 3, 0, '播放鮮明聲響的高音質表現', '2020-05-25 23:14:00', '2020-05-25 23:14:00'),
(53, 'ATH-AR3_BK', 'ATH-AR3_BK_1.jpg', 8, 'audio-technica', '1', 2400, 56, 123, 3, 0, '播放鮮明聲響的高音質表現', '2020-05-26 23:14:00', '2020-05-26 23:14:00'),
(54, 'ATH-AR3_WH', 'ATH-AR3_WH_1.jpg', 9, 'audio-technica', '1', 2400, 98, 279, 3, 0, '播放鮮明聲響的高音質表現', '2020-05-27 23:14:00', '2020-05-27 23:14:00'),
(55, 'ATH-AR1_RD', 'AR1_RD_1_1.jpg', 1, 'audio-technica', '1', 1600, 137, 123, 3, 0, '輕量&小型化仍具備強而有力音效', '2020-05-28 23:14:00', '2020-05-28 23:14:00'),
(56, 'ATH-AR1_BL', 'AR1_BL_1_1.jpg', 5, 'audio-technica', '1', 1600, 56, 395, 3, 0, '輕量&小型化仍具備強而有力音效', '2020-05-29 23:14:00', '2020-05-29 23:14:00'),
(57, 'ATH-AR1_BK', 'AR1_BK_1_1.jpg', 8, 'audio-technica', '1', 1600, 98, 279, 3, 0, '輕量&小型化仍具備強而有力音效', '2020-05-30 23:14:00', '2020-05-30 23:14:00'),
(58, 'ATH-AR1_WH', 'AR1_WH_1_1.jpg', 9, 'audio-technica', '1', 1600, 137, 395, 3, 0, '輕量&小型化仍具備強而有力音效', '2020-05-31 23:14:00', '2020-05-31 23:14:00'),
(59, 'ATH-S100iS_BBL', 'ATH-S100iS_BBL_550.jpg', 5, 'audio-technica', '1', 1200, 56, 123, 3, 0, '最適合上街使用的單邊出線風格 可體驗通話與操作樂趣的智慧型手機支援機種', '2020-06-01 23:14:00', '2020-06-01 23:14:00'),
(60, 'ATH-S100iS_BGR', 'ATH-S100iS_BGR_550.jpg', 3, 'audio-technica', '1', 1200, 98, 279, 3, 0, '最適合上街使用的單邊出線風格 可體驗通話與操作樂趣的智慧型手機支援機種', '2020-06-02 23:14:00', '2020-06-02 23:14:00');

-- --------------------------------------------------------

--
-- 表的结构 `items_color`
--

CREATE TABLE `items_color` (
  `coid` tinyint(20) NOT NULL COMMENT '顏色號碼',
  `colorname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '顏色名字',
  `colorunicode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '顏色代碼'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='顏色區分表';

--
-- 转存表中的数据 `items_color`
--

INSERT INTO `items_color` (`coid`, `colorname`, `colorunicode`) VALUES
(1, '真朱红', '#AB3B3A'),
(2, '黄丹橘', '#F05E1C'),
(3, '花葉黃', '#FFC408'),
(4, '青丹綠', '#516E41'),
(5, '千草藍', '#255359'),
(6, '桔梗紫', '#6A4C9C'),
(7, '胡粉白', '#BDC0BA'),
(8, '碳呂黑', '#0C0C0C'),
(9, '單純白', '#fff');

-- --------------------------------------------------------

--
-- 表的结构 `items_type`
--

CREATE TABLE `items_type` (
  `typeid` tinyint(10) NOT NULL COMMENT '類型編號',
  `typename` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '類型名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='類型表';

--
-- 转存表中的数据 `items_type`
--

INSERT INTO `items_type` (`typeid`, `typename`) VALUES
(1, '有線耳罩式'),
(2, '無線耳罩式'),
(3, '有線入耳式'),
(4, '無線入耳式'),
(5, '有線耳道式'),
(6, '無線耳道式'),
(7, '有線耳塞式'),
(8, '無線耳塞式'),
(9, '有線耳掛式'),
(10, '無線耳掛式');

-- --------------------------------------------------------

--
-- 表的结构 `manager`
--

CREATE TABLE `manager` (
  `mid` int(11) NOT NULL COMMENT '流水號',
  `managername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理者名稱',
  `pwd` char(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理者密碼',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `managericon` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理者頭像',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '新增時間',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='使用者資料表';

--
-- 转存表中的数据 `manager`
--

INSERT INTO `manager` (`mid`, `managername`, `pwd`, `name`, `managericon`, `created_at`, `updated_at`) VALUES
(1, 'otis', 'bf92921799879f0614f259d5dd2ee97f403939db', 'otis_test', '', '2020-04-24 11:05:38', '2020-04-24 11:06:20');

-- --------------------------------------------------------

--
-- 表的结构 `multiple_images`
--

CREATE TABLE `multiple_images` (
  `multipleImageId` int(11) NOT NULL COMMENT '流水號',
  `multipleImageImg` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '圖片名稱',
  `itemId` int(11) NOT NULL COMMENT '商品編號',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '新增時間',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品圖片';

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL COMMENT '訂單編號',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '買家帳號',
  `itemId` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品編號',
  `paymentTypeId` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '付款方式',
  `payment` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '等待付款' COMMENT '付款狀態',
  `delivery` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '未出貨' COMMENT '配送狀態',
  `orderRemark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '訂單備註',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '新增時間',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='結帳資料表';

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`orderId`, `username`, `itemId`, `paymentTypeId`, `payment`, `delivery`, `orderRemark`, `created_at`, `updated_at`) VALUES
(1, 's012', '7', '1', '已付款', '已出貨', '', '2020-04-27 00:05:48', '2020-05-04 22:38:40'),
(2, 's003', '6', '2', '已付款', '已出貨', '', '2020-04-27 00:15:18', '2020-05-04 22:37:27'),
(3, 's013', '7', '3', '已付款', '已出貨', '請送到大樓管理員室', '2020-04-27 00:17:33', '2020-05-04 22:37:29'),
(4, 's013', '8', '1', '已付款', '已出貨', '', '2020-04-28 11:26:23', '2020-05-04 22:37:31'),
(5, 's001', '7', '2', '已付款', '已出貨', '', '2020-04-28 14:34:17', '2020-05-04 22:38:42'),
(6, 's019', '6', '3', '已付款', '已出貨', '送達時請來電 0905-123-123', '2020-04-28 15:25:15', '2020-05-04 13:52:51'),
(7, 's002', '7', '1', '已付款', '已出貨', '', '2020-04-29 10:10:53', '2020-05-04 13:53:13'),
(8, 's009', '8', '2', '已付款', '已出貨', '', '2020-04-29 10:11:23', '2020-05-04 13:53:16'),
(9, 's015', '9', '3', '已付款', '已出貨', '', '2020-04-29 10:16:07', '2020-05-04 13:53:20'),
(10, 's010', '7', '1', '已付款', '已出貨', '如果無法正常出貨請告知', '2020-04-29 15:26:28', '2020-05-04 22:38:43'),
(11, 's011', '6', '2', '等待付款', '未出貨', '', '2020-04-29 17:14:25', '2020-05-04 22:37:39'),
(12, 's002', '7', '3', '等待付款', '未出貨', '', '2020-04-29 17:24:23', '2020-05-04 22:37:42'),
(13, 's004', '8', '1', '等待付款', '未出貨', '白天到貨請來電:24220101', '2020-04-29 17:25:28', '2020-05-04 22:37:45'),
(14, 's014', '9', '2', '等待付款', '未出貨', '', '2020-04-29 17:26:10', '2020-05-04 22:37:49'),
(15, 's005', '7', '3', '等待付款', '未出貨', '無人請送管理室', '2020-05-01 14:55:06', '2020-05-04 22:38:37'),
(16, 's013', '6', '1', '等待付款', '未出貨', '', '2020-05-01 14:55:24', '2020-05-04 13:53:58'),
(17, 's015', '7', '2', '等待付款', '未出貨', '', '2020-05-01 14:55:37', '2020-05-04 13:54:01'),
(18, 's003', '8', '3', '等待付款', '未出貨', '請在晚上送達', '2020-05-01 14:55:52', '2020-05-04 13:54:09'),
(19, 's007', '9', '1', '等待付款', '未出貨', '', '2020-05-01 14:55:58', '2020-05-04 13:54:12'),
(20, 's001', '7', '3', '等待付款', '未出貨', '', '2020-05-01 15:13:22', '2020-05-04 22:38:35');

-- --------------------------------------------------------

--
-- 表的结构 `payment_types`
--

CREATE TABLE `payment_types` (
  `paymentTypeId` int(11) NOT NULL COMMENT '流水號',
  `paymentTypeName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '付款方式名稱',
  `paymentTypeImg` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '付款方式圖片名稱',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '新增時間',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='付款方式';

--
-- 转存表中的数据 `payment_types`
--

INSERT INTO `payment_types` (`paymentTypeId`, `paymentTypeName`, `paymentTypeImg`, `created_at`, `updated_at`) VALUES
(1, '宅配', '', '2020-04-27 00:04:35', '2020-05-04 22:28:08'),
(2, '店到店', '', '2020-04-27 00:04:49', '2020-05-04 22:28:11'),
(3, '貨到付款', '', '2020-05-04 22:28:01', '2020-05-04 22:30:32');

-- --------------------------------------------------------

--
-- 表的结构 `stores`
--

CREATE TABLE `stores` (
  `storeId` int(11) NOT NULL COMMENT '商場編號',
  `storeName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商場名稱',
  `storeLogo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商場圖片',
  `storeDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商場介紹',
  `storeItemsId` tinyint(10) DEFAULT NULL COMMENT '賣場商品編號',
  `storeOpened` tinyint(10) NOT NULL DEFAULT 1 COMMENT '商場權限',
  `createTime` datetime NOT NULL DEFAULT current_timestamp() COMMENT '新增時間',
  `updateTime` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `stores`
--

INSERT INTO `stores` (`storeId`, `storeName`, `storeLogo`, `storeDescription`, `storeItemsId`, `storeOpened`, `createTime`, `updateTime`) VALUES
(1, '小豬豬耳機專賣店', '', '小豬豬耳機專賣店,真誠歡迎你！', 1, 1, '2020-05-01 17:27:13', '2020-05-04 22:52:32'),
(2, '鳳梨耳機專賣店', '', '鳳梨耳機專賣店,真誠歡迎你！', 2, 1, '2020-05-01 17:27:13', '2020-05-02 03:15:22'),
(3, '小蘋果的耳機店', '20200505064543_apple.png', '小蘋果的耳機店，歡迎光臨', 13, 1, '2020-05-03 23:49:28', '2020-05-05 12:45:43'),
(4, '小凤梨的耳機店', '20200505064504_apple.png', '小凤梨的耳機店', 3, 1, '2020-05-04 10:31:25', '2020-05-05 12:45:04'),
(5, '測試', 'item_20200504150007.png', '測試', 3, 1, '2020-05-04 23:00:07', '2020-05-05 15:26:13'),
(7, '小猫耳机', 'item_20200505092947.png', '小猫耳机', 5, 1, '2020-05-05 15:29:47', '2020-05-05 15:29:47');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT '流水號',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '使用者名稱',
  `pwd` char(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '使用者密碼',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `gender` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '性別',
  `userlogo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '使用者頭像',
  `phoneNumber` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手機號碼',
  `card` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '信用卡號碼',
  `birthday` date NOT NULL COMMENT '出生年月日',
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '新增時間',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新時間',
  `isActivated` int(5) NOT NULL DEFAULT 0 COMMENT '賣家開通狀況',
  `shopopen` tinyint(1) NOT NULL DEFAULT 0 COMMENT '賣場開通狀況'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='使用者資料表';

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `pwd`, `name`, `gender`, `userlogo`, `phoneNumber`, `card`, `birthday`, `address`, `created_at`, `updated_at`, `isActivated`, `shopopen`) VALUES
(1, 's001', 'a0147258', '楊OO', '2', '20200504043557.jpg', '0955582026', '1234-5555-8448-8888', '2020-01-17', '台北市中山區林森北路1號', '2020-04-26 15:17:44', '2020-05-05 15:08:43', 1, 1),
(2, 's002', 'a0147258', '楊XX', '1', '20200501171139.jpg', '0956569420', '3334-4455-8888-8888', '2020-04-15', '台北市中山區林森北路2號', '2020-04-26 15:20:56', '2020-05-04 15:48:37', 1, 1),
(3, 's003', 'a0147258', '楊OX', '1', '20200501171150.jpg', '0928251686', '5234-5555-8888-8888', '2020-04-01', '台北市中山區林森北路3號', '2020-04-26 15:24:18', '2020-05-05 16:51:49', 1, 1),
(4, 's004', 'a0147258', '楊XO', '1', '20200501171206.jpg', '0918427269', '8834-5985-8888-8888', '2020-04-15', '台北市中山區林森北路3號', '2020-04-26 15:24:18', '2020-05-04 15:45:32', 1, 1),
(5, 's005', '0147258', '黃OO', '2', '20200504043557.jpg', '0926392143', '9934-5555-8888-8888', '2020-04-02', '台北市中山區林森北路5號', '2020-04-26 15:33:12', '2020-05-05 15:30:20', 1, 1),
(6, 's006', '0147258', '黃XX', '2', '20200501171229.jpg', '0952153427', '5534-5555-8888-8888', '2020-04-17', '台北市中山區林森北路6號', '2020-04-26 15:33:12', '2020-05-01 23:12:29', 0, 0),
(7, 's007', '0147258', '黃XO', '2', '20200501171239.jpg', '0956754756', '4434-5555-8888-8888', '2020-04-18', '台北市中山區林森北路7號', '2020-04-26 15:33:12', '2020-05-01 23:12:39', 0, 0),
(8, 's008', '0147258', '黃OX', '2', '20200501171256.jpg', '0920602202', '8834-5555-8888-8888', '2020-04-11', '台北市中山區林森北路8號', '2020-04-26 15:33:12', '2020-05-01 23:12:56', 0, 0),
(9, 's009', '258369', '白OO', '2', '20200501171309.jpg', '0970884130', '9934-5555-8888-8888', '2020-04-14', '台北市中山區林森北路9號', '2020-04-26 15:33:12', '2020-05-01 23:13:09', 0, 0),
(10, 's010', '258369', '白XX', '1', '20200501171328.jpg', '0954192057', '3334-5555-8888-8888', '2020-04-17', '台北市中山區林森北路10號', '2020-04-26 15:33:12', '2020-05-02 10:57:33', 0, 0),
(11, 's011', '258369', '白OX', '1', '20200501171349.jpg', '0987550683', '4434-5555-8888-8888', '2020-04-01', '台北市中山區林森北路11號', '2020-04-26 15:33:12', '2020-05-02 11:39:45', 0, 0),
(12, 's012', '85455', '王OO', '1', '13.jpg', '0955555789', '8834-5555-8558-8888', '2020-04-01', '台北市中山區林森北路12號', '2020-04-27 16:54:31', '2020-05-02 11:29:34', 0, 0),
(13, 's013', 'ss412', '王XX', '1', '3.jpg', '0978555333', '1234-5555-1548-2258', '2016-01-13', '台北市中山區林森北路13號', '2020-05-01 19:58:32', '2020-05-04 23:44:46', 1, 1),
(14, 's014', 'cc958', '王XO', '1', '20200501171139.jpg', '0987546892', '1234-5665-1548-2258', '2019-03-05', '台北市中山區林森北路14號', '2020-05-01 19:58:32', '2020-05-02 11:39:43', 0, 0),
(15, 's015', 'ss854', '王OX', '2', '21.jpeg', '0912333456', '4469-5555-1548-2258', '2020-05-02', '台北市中山區林森北路15號', '2020-05-01 19:58:32', '2020-05-01 23:15:23', 0, 0),
(16, 's016', 'ss722', '莊OO', '2', '20.png', '0987223555', '3384-5555-1548-2258', '2020-05-21', '台北市中山區林森北路16號', '2020-05-01 19:58:32', '2020-05-01 23:15:48', 0, 0),
(17, 's017', 'ss622', '莊XX', '2', '15.jpg', '0987456123', '1234-5445-1668-2258', '2020-05-14', '台北市中山區林森北路17號', '2020-05-01 19:58:32', '2020-05-01 23:16:18', 0, 0),
(18, 's018', 'ss335', '莊OX', '2', '18.jpg', '0984321855', '4234-7855-1548-2358', '2018-11-23', '台北市中山區林森北路18號', '2020-05-01 19:58:32', '2020-05-02 11:39:33', 0, 0),
(19, 's019', 'ss722', '莊XO', '2', '19.jpg', '0921555888', '1324-5445-1908-2668', '2020-05-28', '台北市中山區林森北路19號', '2020-05-01 19:58:32', '2020-05-02 11:39:28', 0, 0),
(20, 's020', 'aa945', '林OO', '2', '12.jpg', '0955666888', '1234-5665-1788-2258', '2020-05-03', '台北市中山區林森北路20號', '2020-05-01 19:58:32', '2020-05-02 11:39:22', 0, 0);

--
-- 转储表的索引
--

--
-- 表的索引 `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemId`);

--
-- 表的索引 `items_color`
--
ALTER TABLE `items_color`
  ADD PRIMARY KEY (`coid`);

--
-- 表的索引 `items_type`
--
ALTER TABLE `items_type`
  ADD PRIMARY KEY (`typeid`);

--
-- 表的索引 `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `username` (`managername`);

--
-- 表的索引 `multiple_images`
--
ALTER TABLE `multiple_images`
  ADD PRIMARY KEY (`multipleImageId`);

--
-- 表的索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- 表的索引 `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`paymentTypeId`);

--
-- 表的索引 `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`storeId`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `items`
--
ALTER TABLE `items`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=61;

--
-- 使用表AUTO_INCREMENT `items_color`
--
ALTER TABLE `items_color`
  MODIFY `coid` tinyint(20) NOT NULL AUTO_INCREMENT COMMENT '顏色號碼', AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `items_type`
--
ALTER TABLE `items_type`
  MODIFY `typeid` tinyint(10) NOT NULL AUTO_INCREMENT COMMENT '類型編號', AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `manager`
--
ALTER TABLE `manager`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `multiple_images`
--
ALTER TABLE `multiple_images`
  MODIFY `multipleImageId` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號';

--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT COMMENT '訂單編號', AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `paymentTypeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `stores`
--
ALTER TABLE `stores`
  MODIFY `storeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '商場編號', AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

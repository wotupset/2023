;回想モード
*start
[cm]
[clearfix]
[freeimage layer="0" page="fore"]
[freeimage layer="1"]
[layopt layer=0 visible=false]
;[clearsysvar]
;***********************************************************************************************************************
;バージョン表記　メインシナリオ、タイトル,回想とリプレイも同じバージョンに修正
[eval exp="f.version_dl = 'fanza'"]
;[eval exp="f.version_dl = 'dlsite'"]
;***********************************************************************************************************************
;変数宣言
;選択キャラクタ変数 1　莉子　2　莉菜　3　静江
[eval exp="f.select_c = 1"]
[eval exp="f.select_p = 1"]
[eval exp="f.no = 0"]
[eval exp="f.movie_no = 0"]
;[eval exp="f.ui_display ='visible'"]
[eval exp="f.ui_display = true"]
;再生配列宣言
[eval exp="f.sam_stock = ['sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg']"]

[eval exp="f.play_stock = ['black','black','black','black','black','black','black','black','black','black','black','black','black','black','black','black','black','black','black','black']"]

[eval exp="f.se0_stock = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]"]

[eval exp="f.se0_loop = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]"]

[eval exp="f.se3_stock = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]"]

[eval exp="f.stock = [0,0,0,0,0,0]"]

[eval exp="f._char = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]"]

[eval exp="f.movie_loop = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]"]

[eval exp="f.aegi_stock = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]"]

[eval exp="f.aegi_text = [0,'快感度低　遅','快感度低　普','快感度低　速','快感度中　遅','快感度中　普','快感度中　速','快感度高　遅','快感度高　普','快感度高　速']"]

;初めての場合はシステム変数に代入
[if exp="sf.movie_m == undefined"]
;セーブスロット用システム変数宣言
;■save１スロット
[eval exp="sf.sam_stock_s1 = ['sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg']]

[eval exp="sf.play_stock_s1 = ['black','black','black','black','black','black','black','black','black','black','black','black','black','black','black','black','black','black','black','black']]

[eval exp="sf.se0_stock_s1 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
[eval exp="sf.se0_loop_s1 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
[eval exp="sf.se3_stock_s1 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
[eval exp="sf.stock_s1 = [0,0,0,0,0,0]]
[eval exp="sf._char_s1 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
[eval exp="sf.movie_loop_s1 = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]]
[eval exp="sf.aegi_stock_s1 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
[eval exp="sf.movie_no_s1 = 0"]

;■save2スロット
[eval exp="sf.sam_stock_s2 = ['sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg','sam/black.jpg']]

[eval exp="sf.play_stock_s2 = ['black','black','black','black','black','black','black','black','black','black','black','black','black','black','black','black','black','black','black','black']]

[eval exp="sf.se0_stock_s2 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
[eval exp="sf.se0_loop_s2 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
[eval exp="sf.se3_stock_s2 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
[eval exp="sf.stock_s2 = [0,0,0,0,0,0]]
[eval exp="sf._char_s2 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
[eval exp="sf.movie_loop_s2 = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]]
[eval exp="sf.aegi_stock_s2 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
[eval exp="sf.movie_no_s2 = 0"]

[endif]
;初回用変数
[eval exp="sf.movie_m = true"]

*set
[cm]
[clearfix]
[fadeoutbgm time="1000"]
[stop_bgmovie time="1000"]
[bg storage="background.jpg" time="" wait="" cross="" method=""]

[layopt layer="1" visible=true]

;***********************************************************************************************************************
;-サムネイルページ
*sam_page
[cm]
[clearfix]
;現在ページ修正 莉菜ちゃん
[if exp="f.select_c == 2 && f.select_p == 8"]
[eval exp="f.select_p = 7"]
[endif]
[if exp="f.select_c == 2 && f.select_p == 9"]
[eval exp="f.select_p = 7"]
[endif]
[if exp="f.select_c == 2 && f.select_p == 10"]
[eval exp="f.select_p = 7"]
[endif]
;現在ページ修正 静江さん
[if exp="f.select_c == 3 && f.select_p == 8"]
[eval exp="f.select_p = 7"]
[endif]
[if exp="f.select_c == 3 && f.select_p == 9"]
[eval exp="f.select_p = 7"]
[endif]
[if exp="f.select_c == 3 && f.select_p == 10"]
[eval exp="f.select_p = 7"]
[endif]
;***********************************************************************************************************************
[if exp="f.select_c == 1"]

;変数f.name 　動画ファイル名　音声ファイル名　音声ループ　効果音 喘ぎ bgm
;-莉子
;--■莉子ページ1
[if exp="f.select_p == 1"]
[eval exp="f.name1 = ['mov_08_3_2']"]
[eval exp="f.name2 = ['mov_08_3_3']"]
[eval exp="f.name3 = ['mov_08_4_1']"]
[eval exp="f.name4 = ['mov_08_5_1']"]
[eval exp="f.name5 = ['mov_08_6_2']"]
[eval exp="f.name6 = ['mov_08_6_4']"]
[eval exp="f.name7 = ['mov_08_6_6']"]
[eval exp="f.name8 = ['mov_08_6_7']"]
[eval exp="f.name9 = ['mov_08_7_2']"]
[eval exp="f.name10 = ['mov_08_7_3']"]
[eval exp="f.name11 = ['mov_08_7_4']"]
[eval exp="f.name12 = ['mov_08_7_5']"]
[eval exp="f.name13 = ['mov_08_7_6']"]
[eval exp="f.name14 = ['mov_11_1_1','riko/rk11_001',0,0]"]
[eval exp="f.name15 = ['mov_11_1_2','riko/rk11_003',0,0]"]
[endif]
;--■莉子ページ2
[if exp="f.select_p == 2"]
[eval exp="f.name1 = ['mov_14_3_3']"]
[eval exp="f.name2 = ['mov_14_3_4','riko/rk23_013',1,0]"]
[eval exp="f.name3 = ['mov_14_4']"]
[eval exp="f.name4 = ['mov_14_14','riko/rk14_003',0,0]"]
[eval exp="f.name5 = ['mov_23_2']"]

[eval exp="f.name6 = ['mov_23_4','riko/rk23_009',0,0]"]
[eval exp="f.name7 = ['mov_23_6','riko/rk23_013',1,0]"]
[eval exp="f.name8 = ['mov_23_7','riko/rk23_015',0,0]"]
[eval exp="f.name9 = ['mov_23_8','riko/rk23_017',1,0]"]
[eval exp="f.name10 = ['mov_23_9','riko/rk23_017',1,0]"]

[eval exp="f.name11 = ['mov_23_10','riko/rk23_027',1,0]"]
[eval exp="f.name12 = ['mov_23_11','riko/rk23_027',1,0]"]
[eval exp="f.name13 = ['mov_23_12']"]
[eval exp="f.name14 = ['mov_23_13','riko/rk26_014',1,1]"]
[eval exp="f.name15 = ['mov_23_16','riko/rk26_016',1,1]"]
[endif]
;--■莉子ページ3
[if exp="f.select_p == 3"]
[eval exp="f.name1 = ['mov_23_14']"]
[eval exp="f.name2 = ['mov_23_15']"]
[eval exp="f.name3 = ['mov_23_17','riko/rk26_018',0,0]"]
[eval exp="f.name4 = ['mov_31_1','riko/rk31_012_2',1,0]"]
[eval exp="f.name5 = ['mov_31_2']"]

[eval exp="f.name6 = ['mov_31_3','riko/rk31_017_2',1,0]"]
[eval exp="f.name7 = ['mov_31_4']"]
[eval exp="f.name8 = ['mov_31_5','riko/Shining_dream',1,0]"]
[eval exp="f.name9 = ['mov_32_1','riko/rk31_025',1,0]"]
[eval exp="f.name10 = ['mov_32_2']"]

[eval exp="f.name11 = ['mov_32_3','riko/rk31_028',1,2]"]
[eval exp="f.name12 = ['mov_32_4']"]
[eval exp="f.name13 = ['mov_33_1','riko/rk33_007',1,0]"]
[eval exp="f.name14 = ['mov_36_2','riko/rk36_013',1,0]"]
[eval exp="f.name15 = ['mov_36_3','riko/rk36_013',1,0]"]
[endif]
;--■莉子ページ4
[if exp="f.select_p == 4"]
[eval exp="f.name1 = ['mov_36_4']"]
[eval exp="f.name2 = ['mov_36_5','riko/rk36_019',1,3]"]
[eval exp="f.name3 = ['mov_36_6']"]
[eval exp="f.name4 = ['mov_68_1','riko/rk68_001',0,0]"]
[eval exp="f.name5 = ['mov_68_2','riko/rk68_003',0,0]"]

[eval exp="f.name6 = ['mov_68_4','riko/rk68_007',0,0]"]
[eval exp="f.name7 = ['mov_68_5','riko/rk68_010',0,0]"]
[eval exp="f.name8 = ['mov_68_11','black',0,2,5]"]
[eval exp="f.name9 = ['mov_68_12','black',0,2,5]"]
[eval exp="f.name10 =['mov_68_14','black',0,2,5]"]

[eval exp="f.name11 = ['mov_68_15','black',0,2,5]"]
[eval exp="f.name12 = ['mov_68_16','black',0,2,5]"]
[eval exp="f.name13 = ['mov_68_17','black',0,2,5]"]
[eval exp="f.name14 = ['mov_68_18','black',0,2,5]"]
[eval exp="f.name15 = ['mov_68_19','black',0,2,5]"]
[endif]
;--■莉子ページ5
[if exp="f.select_p == 5"]
[eval exp="f.name1 = ['mov_68_20','black',0,2,5]"]
[eval exp="f.name2 = ['mov_68_21','black',0,2,5]"]
[eval exp="f.name3 = ['mov_68_31','riko/rk36_021',1,0]"]
[eval exp="f.name4 = ['mov_68_32','riko/rk36_021',1,0]"]
[eval exp="f.name5 = ['mov_68_33','riko/rk36_021',1,0]"]

[eval exp="f.name6 = ['mov_68_34','riko/rk36_021',1,0]"]
[eval exp="f.name7 = ['mov_68_35','riko/rk36_021',1,0]"]
[eval exp="f.name8 = ['mov_68_23','black',0,2,5]"]
[eval exp="f.name9 = ['mov_68_24','black',0,2,5]"]
[eval exp="f.name10 = ['mov_68_25','black',0,2,5]"]

[eval exp="f.name11 = ['mov_68_26','black',0,2,5]"]
[eval exp="f.name12 = ['mov_68_50','black',0,2,5]"]
[eval exp="f.name13 = ['mov_68_40']"]
[eval exp="f.name14 = ['mov_68_41']"]
[eval exp="f.name15 = ['mov_68_42']"]
[endif]

;--■莉子ページ6
[if exp="f.select_p == 6"]
[eval exp="f.name1 = ['mov_68_61','black',0,2,5]"]
[eval exp="f.name2 = ['mov_68_62','black',0,2,5]"]
[eval exp="f.name3 = ['mov_68_63','black',0,2,5]"]
[eval exp="f.name4 = ['mov_68_63_3']"]
[eval exp="f.name5 = ['mov_68_64','riko/rk36_021',1,0]"]

[eval exp="f.name6 = ['mov_68_43']"]
[eval exp="f.name7 = ['mov_68_44']"]
[eval exp="f.name8 = ['mov_84_9','riko/rk26_006',0,0]"]
[eval exp="f.name9 = ['mov_84_7','riko/rk26_020',1,1]"]
[eval exp="f.name10 = ['mov_84_8']"]

[eval exp="f.name11 = ['mov_65_17','riko/rk65_024',1]"]
[eval exp="f.name12 = ['mov_65_19','riko/rk65_024',1]"]
[eval exp="f.name13 = ['mov_65_20','riko/rk65_024',1]"]
[eval exp="f.name14 = ['mov_65_21','riko/rk65_027',1,2]"]
[eval exp="f.name15 = ['mov_65_22','riko/rk65_027',1,3]"]
[endif]

;--■莉子ページ7
[if exp="f.select_p == 7"]
[eval exp="f.name1 = ['mov_65_24']"]
[eval exp="f.name2 = ['mov_65_25','riko/rk65_028',1]"]
[eval exp="f.name3 = ['mov_84_1']"]
[eval exp="f.name4 = ['mov_84_20']"]
[eval exp="f.name5 = ['mov_84_21']"]

[eval exp="f.name6 = ['mov_14_18','riko/rk14_024_2',0,5]"]
[eval exp="f.name7 = ['mov_14_19','riko/rk14_027_2',0,5]"]
[eval exp="f.name8 = ['mov_14_20','riko/rk14_024_1',0,5]"]
[eval exp="f.name9 = ['mov_14_21','riko/rk14_024_1',0,5]"]
[eval exp="f.name10 = ['mov_11_4_1','riko/rk11_002',0,0]"]

[eval exp="f.name11 = ['mov_30_09','riko/rk30_011',1,2]"]
[eval exp="f.name12 = ['mov_30_11','riko/rk30_012',1,0]"]
[eval exp="f.name13 = ['mov_33_4','riko/rk33_010_1',1,1]"]
[eval exp="f.name14 = ['mov_33_7']"]
[eval exp="f.name15 = ['mov_33_8','riko/rk33_020',1,1]"]
[endif]

;--■莉子ページ8
[if exp="f.select_p == 8"]
[eval exp="f.name1 = ['mov_33_9']"]
[eval exp="f.name2 = ['mov_33_10','riko/rk36_021',1]"]
[eval exp="f.name3 = ['mov_33_11','riko/rk36_021',1]"]
[eval exp="f.name4 = ['mov_33_12']"]
[eval exp="f.name5 = ['mov_34_7','riko/rk34_006',1,0]"]

[eval exp="f.name6 = ['mov_34_8']"]
[eval exp="f.name7 = ['mov_34_9','riko/rk34_006',1]"]
[eval exp="f.name8 = ['mov_34_10']"]
[eval exp="f.name9 = ['mov_38_15']"]
[eval exp="f.name10 = ['mov_38_16']"]

[eval exp="f.name11 = ['mov_38_19','black',0,5]"]
[eval exp="f.name12 = ['mov_38_20']"]
[eval exp="f.name13 = ['mov_38_21']"]
[eval exp="f.name14 = ['mov_38_22','riko/rk38_013',1,6]"]
[eval exp="f.name15 = ['mov_38_23','riko/rk38_014',1,6]"]
[endif]

;--■莉子ページ9
[if exp="f.select_p == 9"]
[eval exp="f.name1 = ['mov_38_24','riko/rk38_015',1,7]"]
[eval exp="f.name2 = ['mov_38_25']"]
[eval exp="f.name3 = ['mov_38_26','riko/rk36_021',1,5]"]
[eval exp="f.name4 = ['mov_38_27']"]
[eval exp="f.name5 = ['mov_58_3','riko/rk58_008',1,3]"]

[eval exp="f.name6 = ['mov_58_5','riko/rk58_009',1,3]"]
[eval exp="f.name7 = ['mov_58_7']"]
[eval exp="f.name8 = ['mov_58_8','riko/rk58_011',1,0]"]
[eval exp="f.name9 = ['mov_68_70']"]
[eval exp="f.name10 = ['mov_68_71']"]

[eval exp="f.name11 = ['mov_68_72','riko/rk36_021',1,0]"]
;***********************************************************************************************************************
;fanza
[if exp="f.version_dl == 'fanza'"]
 [eval exp="f.name12 = ['mov_65_48']"]
 [eval exp="f.name13 = ['mov_65_52']"]
 [eval exp="f.name14 = ['mov_65_51']"]
 [eval exp="f.name15 = ['mov_65_34','riko/rk102_015',1,1]"]
[endif]
;***********************************************************************************************************************
;DLsite
[if exp="f.version_dl == 'dlsite'"]
 [eval exp="f.name12 = ['mov_65_53']"]
 [eval exp="f.name13 = ['mov_65_42']"]
 [eval exp="f.name14 = ['mov_65_45']"]
 [eval exp="f.name15 = ['mov_65_43']"]
[endif]
;***********************************************************************************************************************
[endif]

;--■莉子ページ10
[if exp="f.select_p == 10"]

;***********************************************************************************************************************
;fanza
[if exp="f.version_dl == 'fanza'"]
 [eval exp="f.name1 = ['mov_65_35','riko/rk68_028',1,2]"]
 [eval exp="f.name2 = ['mov_65_35_2','riko/rk68_028',1,2]"]
 [eval exp="f.name3 = ['mov_65_36','riko/rk68_028',1,2]"]
 [eval exp="f.name4 = ['mov_65_37']"]
 [eval exp="f.name5 = ['mov_65_38','riko/rk65_028',1,0]"]

 [eval exp="f.name6 = ['black']"]
 [eval exp="f.name7 = ['black']"]
[endif]
;***********************************************************************************************************************
;DLsite
[if exp="f.version_dl == 'dlsite'"]
 [eval exp="f.name1 = ['mov_65_44']"]
 [eval exp="f.name2 = ['mov_65_46']"]
 [eval exp="f.name3 = ['mov_65_28','riko/rk101_014',1,1]"]
 [eval exp="f.name4 = ['mov_65_29','riko/rk68_028',1,2]"]
 [eval exp="f.name5 = ['mov_65_30','riko/rk68_031',1,3]"]

 [eval exp="f.name6 = ['mov_65_32']"]
 [eval exp="f.name7 = ['mov_65_33','riko/rk65_028',1,0]"]
[endif]
;***********************************************************************************************************************

[eval exp="f.name8 = ['black']"]
[eval exp="f.name9 = ['black']"]
[eval exp="f.name10 = ['black']"]

[eval exp="f.name11 = ['black']"]
[eval exp="f.name12 = ['black']"]
[eval exp="f.name13 = ['black']"]
[eval exp="f.name14 = ['black']"]
[eval exp="f.name15 = ['black']"]
[endif]

[endif]

;-莉菜
[if exp="f.select_c == 2"]
;--■莉菜ページ1
[if exp="f.select_p == 1"]
[eval exp="f.name1 = ['mov_09_4_1']"]
[eval exp="f.name2 = ['mov_09_4_2']"]
[eval exp="f.name3 = ['mov_09_4_3']"]
[eval exp="f.name4 = ['mov_09_5_1']"]
[eval exp="f.name5 = ['mov_09_5_2']"]

[eval exp="f.name6 = ['mov_09_5_3']"]
[eval exp="f.name7 = ['mov_09_6_1']"]
[eval exp="f.name8 = ['mov_09_6_3']"]
[eval exp="f.name9 = ['mov_09_7_1']"]
[eval exp="f.name10 = ['mov_09_7_3']"]

[eval exp="f.name11 = ['mov_12_1_1','rina/rn12_001',0,0,0]"]
[eval exp="f.name12 = ['mov_12_1_2','rina/rn12_003',0,0,0]"]
[eval exp="f.name13 = ['mov_15_1_1']"]
[eval exp="f.name14 = ['mov_15_2_1']"]
[eval exp="f.name15 = ['mov_15_3_1']"]
[endif]
;--■莉菜ページ2
[if exp="f.select_p == 2"]
[eval exp="f.name1 = ['mov_24_2_1','rina/rn24_019',1,0,0]"]
[eval exp="f.name2 = ['mov_24_3_1','rina/rn24_024_2',1,0,0]"]
[eval exp="f.name3 = ['mov_24_4_1','rina/rn24_021',1,0,0]"]
[eval exp="f.name4 = ['mov_24_5_1','rina/rn24_024_2',1,0,0]"]
[eval exp="f.name5 = ['mov_24_6_1','rina/rn24_026',1,0,0]"]

[eval exp="f.name6 = ['mov_24_7']"]
[eval exp="f.name7 = ['mov_24_8','rina/rn24_024_2',1,0,0]"]
[eval exp="f.name8 = ['mov_24_9','rina/rn24_032',1,1,0]"]
[eval exp="f.name9 = ['mov_24_10','rina/rn24_033',1,2,0]"]
[eval exp="f.name10 = ['mov_24_11']"]

[eval exp="f.name11 = ['mov_24_13']"]
[eval exp="f.name12 = ['mov_24_12','rina/rn24_036',1,0,0]"]
[eval exp="f.name13 = ['mov_41_1','rina/rn41_007',1,0,0]"]
[eval exp="f.name14 = ['mov_41_2','rina/rn41_009',1,1,0]"]
[eval exp="f.name15 = ['mov_41_3','rina/rn41_010',1,0,0]"]
[endif]
;--■莉菜ページ3
[if exp="f.select_p == 3"]
[eval exp="f.name1 = ['mov_42_1','rina/rn42_009',1,0,0]"]
[eval exp="f.name2 = ['mov_42_2']"]
[eval exp="f.name3 = ['mov_42_3','rina/rn42_011',1,2,0]"]
[eval exp="f.name4 = ['mov_42_4']"]
[eval exp="f.name5 = ['mov_43_1','rina/rn43_006',1,2,0]"]

[eval exp="f.name6 = ['mov_43_2']"]
[eval exp="f.name7 = ['mov_43_3','rina/rn43_007',1,2,0]"]
[eval exp="f.name8 = ['mov_43_4']"]
[eval exp="f.name9 = ['mov_46_1']"]
[eval exp="f.name10 = ['mov_46_2']"]

[eval exp="f.name11 = ['mov_46_3','rina/rn46_019',1,2,0]"]
[eval exp="f.name12 = ['mov_46_4']"]
[eval exp="f.name13 = ['mov_69_3','rina/rn69_001',1,0,0]"]
[eval exp="f.name14 = ['mov_69_1','rina/rn69_005',1,0,0]"]
[eval exp="f.name15 = ['mov_69_2','rina/rn69_011',1,0,0]"]
[endif]
;--■莉菜ページ4
[if exp="f.select_p == 4"]
[eval exp="f.name1 = ['mov_69_10','black',0,2,5]"]
[eval exp="f.name2 = ['mov_69_11','black',0,2,5]"]
[eval exp="f.name3 = ['mov_69_12','black',0,2,5]"]
[eval exp="f.name4 = ['mov_69_13','black',0,2,5]"]
[eval exp="f.name5 = ['mov_69_14','black',0,2,5]"]

[eval exp="f.name6 = ['mov_69_15','black',0,2,5]"]
[eval exp="f.name7 = ['mov_69_16','black',0,2,5]"]
[eval exp="f.name8 = ['mov_69_17','black',0,2,5]"]
[eval exp="f.name9 = ['mov_69_18','black',0,2,5]"]
[eval exp="f.name10 = ['mov_69_19','black',0,2,5]"]

[eval exp="f.name11 = ['mov_69_50','black',0,2,5]"]
[eval exp="f.name12 = ['mov_69_30','rina/rn46_020',1,0,0]"]
[eval exp="f.name13 = ['mov_69_31','rina/rn46_020',1,0,0]"]
[eval exp="f.name14 = ['mov_69_32','rina/rn46_020',1,0,0]"]
[eval exp="f.name15 = ['mov_69_33','rina/rn46_020',1,0,0]"]
[endif]
;--■莉菜ページ5
[if exp="f.select_p == 5"]
[eval exp="f.name1 = ['mov_69_34','rina/rn46_020',1,0,0]"]
[eval exp="f.name2 = ['mov_69_40']"]
[eval exp="f.name3 = ['mov_69_41']"]
[eval exp="f.name4 = ['mov_69_42']"]
[eval exp="f.name5 = ['mov_69_43']"]

[eval exp="f.name6 = ['mov_69_44']"]
[eval exp="f.name7 = ['mov_66_14']"]
[eval exp="f.name8 = ['mov_66_17']"]
[eval exp="f.name9 = ['mov_66_20','rina/rn66_026',1]"]
[eval exp="f.name10 = ['mov_66_18','rina/rn66_040',1,2]"]

[eval exp="f.name11 = ['mov_66_19']"]
[eval exp="f.name12 = ['mov_85_1']"]
[eval exp="f.name13 = ['mov_85_3']"]
[eval exp="f.name14 = ['mov_85_4']"]
[eval exp="f.name15 = ['mov_15_16']"]
[endif]
;--■莉菜ページ6
[if exp="f.select_p == 6"]
[eval exp="f.name1 = ['mov_15_17']"]
[eval exp="f.name2 = ['mov_15_18','rina/rn15_023',1,5]"]
[eval exp="f.name3 = ['mov_15_19','rina/rn15_025',1,6]"]
[eval exp="f.name4 = ['mov_15_20','rina/rn15_025',1,8]"]
[eval exp="f.name5 = ['mov_15_21','black',0,5]"]

[eval exp="f.name6 = ['mov_15_22','rina/rn15_029_1',1,5]"]
[eval exp="f.name7 = ['mov_44_7','rina/rn44_007',1,0]"]
[eval exp="f.name8 = ['mov_44_13','rina/rn44_016',1,0]"]
[eval exp="f.name9 = ['mov_48_15']"]
[eval exp="f.name10 = ['mov_48_16']"]

[eval exp="f.name11 = ['mov_48_17']"]
[eval exp="f.name12 = ['mov_48_19','rina/rn48_014',1,5]"]
[eval exp="f.name13 = ['mov_48_20','rina/rn48_014',1,6]"]
[eval exp="f.name14 = ['mov_48_21','black',0,5]"]
[eval exp="f.name15 = ['mov_48_23','rina/rn48_031',1,6]"]
[endif]

;--■莉菜ページ7
[if exp="f.select_p == 7"]
[eval exp="f.name1 = ['mov_48_24','rina/rn48_031',1,6]"]
[eval exp="f.name2 = ['mov_48_25','rina/rn48_032',1,7]"]
[eval exp="f.name3 = ['mov_48_26']"]
[eval exp="f.name4 = ['mov_48_27','rina/rn48_033',1,5]"]
[eval exp="f.name5 = ['mov_48_28']"]

[eval exp="f.name6 = ['mov_69_52','black',0,2,5]"]
[eval exp="f.name7 = ['mov_69_53','black',0,2,5]"]
[eval exp="f.name8 = ['mov_69_54','black',0,2,5]"]
[eval exp="f.name9 = ['mov_69_60']"]
[eval exp="f.name10 = ['mov_69_61']"]

[eval exp="f.name11 = ['mov_69_62','rina/rn46_020',1,0]"]
[eval exp="f.name12 = ['black']"]
[eval exp="f.name13 = ['black']"]
[eval exp="f.name14 = ['black']"]
[eval exp="f.name15 = ['black']"]
[endif]

[endif]

;-静江
[if exp="f.select_c == 3"]
;--■静江ページ1
[if exp="f.select_p == 1"]
[eval exp="f.name1 = ['mov_10_3_1','sizue/sz10_006',1,0,0]"]
[eval exp="f.name2 = ['mov_10_4_1','sizue/sz10_007',0,0,0]"]
[eval exp="f.name3 = ['mov_10_5_1','sizue/sz10_009',0,0,0]"]
[eval exp="f.name4 = ['mov_10_5_2','sizue/sz10_010',0,0,0]"]
[eval exp="f.name5 = ['mov_10_6_1']"]

[eval exp="f.name6 = ['mov_10_6_3']"]
[eval exp="f.name7 = ['mov_13_1_1','sizue/sz13_001',0,0,0]"]
[eval exp="f.name8 = ['mov_13_1_2','sizue/sz13_003',0,0,0]"]
[eval exp="f.name9 = ['mov_16_1_1']"]
[eval exp="f.name10 = ['mov_16_2_1','sizue/sz16_005_1',0,0,0]"]

[eval exp="f.name11 = ['mov_16_3_1']"]
[eval exp="f.name12 = ['mov_25_1','sizue/sz25_021',1,0,0]"]
[eval exp="f.name13 = ['mov_25_3','sizue/sz25_024',1,0,0]"]
[eval exp="f.name14 = ['mov_25_4','sizue/sz25_026',0,0,0]"]
[eval exp="f.name15 = ['mov_25_5','sizue/sz25_029',1,0,0]"]
[endif]
;--■静江ページ2
[if exp="f.select_p == 2"]
[eval exp="f.name1 = ['mov_25_6']"]
[eval exp="f.name2 = ['mov_25_7','sizue/sz25_035',1,2,0]"]
[eval exp="f.name3 = ['mov_25_8','sizue/sz25_036',1,2,0]"]
[eval exp="f.name4 = ['mov_25_9']"]
[eval exp="f.name5 = ['mov_25_10']"]

[eval exp="f.name6 = ['mov_25_11','sizue/sz25_040',1,0,0]"]
[eval exp="f.name7 = ['mov_25_12']"]
[eval exp="f.name8 = ['mov_25_13']"]
[eval exp="f.name9 = ['mov_52_1']"]
[eval exp="f.name10 = ['mov_52_2']"]

[eval exp="f.name11 = ['mov_52_5']"]
[eval exp="f.name12 = ['mov_52_6']"]
[eval exp="f.name13 = ['mov_53_1','sizue/sz53_007_1',1,0,0]"]
[eval exp="f.name14 = ['mov_53_2']"]
[eval exp="f.name15 = ['mov_53_3','sizue/sz53_014',1,2,0]"]
[endif]
;--■静江ページ3
[if exp="f.select_p == 3"]
[eval exp="f.name1 = ['mov_53_4']"]
[eval exp="f.name2 = ['mov_55_1']"]
[eval exp="f.name3 = ['mov_55_2']"]
[eval exp="f.name4 = ['mov_55_3','sizue/sz55_011',1,2,0]"]
[eval exp="f.name5 = ['mov_55_4']"]

[eval exp="f.name6 = ['mov_70_1','sizue/sz70_005',0,0,0]"]
[eval exp="f.name7 = ['mov_70_2','sizue/sz70_006',0,0,0]"]
[eval exp="f.name8 = ['mov_70_10','black',0,2,5]"]
[eval exp="f.name9 = ['mov_70_11','black',0,2,5]"]
[eval exp="f.name10 = ['mov_70_12','black',0,2,5]"]

[eval exp="f.name11 = ['mov_70_13','black',0,2,5]"]
[eval exp="f.name12 = ['mov_70_14','black',0,2,5]"]
[eval exp="f.name13 = ['mov_70_15','black',0,2,5]"]
[eval exp="f.name14 = ['mov_70_16','black',0,2,5]"]
[eval exp="f.name15 = ['mov_70_17','black',0,2,5]"]
[endif]
;--■静江ページ4
[if exp="f.select_p == 4"]
[eval exp="f.name1 = ['mov_70_18','black',0,2,5]"]
[eval exp="f.name2 = ['mov_70_19','black',0,2,5]"]
[eval exp="f.name3 = ['mov_70_50','black',0,2,5]"]
[eval exp="f.name4 = ['mov_70_30','sizue/sz55_012_1',1,0,0]"]
[eval exp="f.name5 = ['mov_70_31','sizue/sz55_012_1',1,0,0]"]

[eval exp="f.name6 = ['mov_70_32','sizue/sz55_012_1',1,0,0]"]
[eval exp="f.name7 = ['mov_70_33','sizue/sz55_012_1',1,0,0]"]
[eval exp="f.name8 = ['mov_70_34','sizue/sz55_012_1',1,0,0]"]
[eval exp="f.name9 = ['mov_70_40']"]
[eval exp="f.name10 = ['mov_70_41']"]

[eval exp="f.name11 = ['mov_70_42']"]
[eval exp="f.name12 = ['mov_70_43']"]
[eval exp="f.name13 = ['mov_70_44']"]
[eval exp="f.name14 = ['mov_67_12']"]
[eval exp="f.name15 = ['mov_67_13','sizue/sz67_021',1]"]
[endif]
;--■静江ページ5
[if exp="f.select_p == 5"]
[eval exp="f.name1 = ['mov_67_15','sizue/sz67_022',0]"]
[eval exp="f.name2 = ['mov_67_16','sizue/sz67_025',1,2]"]
[eval exp="f.name3 = ['mov_67_17']"]
[eval exp="f.name4 = ['mov_86_1']"]
[eval exp="f.name5 = ['mov_86_3']"]

[eval exp="f.name6 = ['mov_86_4']"]
[eval exp="f.name7 = ['mov_16_14','sizue/sz16_023',0,5]"]
[eval exp="f.name8 = ['mov_16_15','black',0,5]"]
[eval exp="f.name9 = ['mov_16_16','sizue/sz16_025_1',1,5]"]
[eval exp="f.name10 = ['mov_16_17','black',0,5]"]

[eval exp="f.name11 = ['mov_16_18','black',0,5]"]
[eval exp="f.name12 = ['mov_54_2_2','sizue/sz54_004',1,4]"]
[eval exp="f.name13 = ['mov_54_3','sizue/sz54_004',1,4]"]
[eval exp="f.name14 = ['mov_54_4','sizue/sz54_004',1,4]"]
[eval exp="f.name15 = ['mov_54_6','sizue/sz54_004',1,4]"]
[endif]

;--■静江ページ6
[if exp="f.select_p == 6"]
[eval exp="f.name1 = ['mov_56_2']"]
[eval exp="f.name2 = ['mov_56_3']"]
[eval exp="f.name3 = ['mov_56_4']"]
[eval exp="f.name4 = ['mov_56_5']"]
[eval exp="f.name5 = ['mov_56_7']"]

[eval exp="f.name6 = ['mov_56_9','sizue/sz70_016',1,3]"]
[eval exp="f.name7 = ['mov_56_13']"]
[eval exp="f.name8 = ['mov_56_10']"]
[eval exp="f.name9 = ['mov_56_11','sizue/sz55_012_1',1]"]
[eval exp="f.name10 = ['mov_57_5']"]

[eval exp="f.name11 = ['mov_57_6','black',0,5]"]
[eval exp="f.name12 = ['mov_57_7','black',0,5]"]
[eval exp="f.name13 = ['mov_57_8','sizue/sz57_010',0,5]"]
[eval exp="f.name14 = ['mov_57_9','sizue/sz57_011',0,5]"]
[eval exp="f.name15 = ['mov_57_10','sizue/sz57_014',0,5]"]
[endif]

;--■静江ページ7
[if exp="f.select_p == 7"]
[eval exp="f.name1 = ['mov_57_11']"]
[eval exp="f.name2 = ['mov_57_12','black',0,6]"]
[eval exp="f.name3 = ['mov_57_14','sizue/sz57_016',1,7]"]
[eval exp="f.name4 = ['mov_57_15','sizue/sz57_016',1,7]"]
[eval exp="f.name5 = ['mov_57_16','black',0,5]"]

[eval exp="f.name6 = ['mov_57_17','sizue/sz57_017_1',1,5]"]
[eval exp="f.name7 = ['mov_60_3','sizue/sz60_004',1,0]"]
[eval exp="f.name8 = ['mov_60_4','sizue/sz61_009',1,3]"]
[eval exp="f.name9 = ['mov_60_6']"]
[eval exp="f.name10 = ['mov_70_51','black',0,2,5]"]

[eval exp="f.name11 = ['mov_70_52','black',0,2,5]"]
[eval exp="f.name12 = ['mov_70_53','black',0,2,5]"]
[eval exp="f.name13 = ['mov_70_60']"]
[eval exp="f.name14 = ['mov_70_61']"]
[eval exp="f.name15 = ['mov_70_63','sizue/sz61_011',1,0]"]
[endif]
[endif]



;***********************************************************************************************************************
;-キャラクターボタン表示
*kyara_button
;■莉子
[if exp="f.select_c != 1"]
[button graphic="button/b_riko.png" target="sam_page"  x="500" y="10" exp="f.select_c = 1" enterimg="button/b_riko_h.png" clickse="se/se_maoudamashii_system21.ogg"]
[else]
[button graphic="button/b_riko_c.png" target="sam_page"  x="500" y="10"]
[endif]
;■莉菜
[if exp="f.select_c != 2"]
[button graphic="button/b_rina.png" target="sam_page"  x="750" y="10" exp="f.select_c = 2" enterimg="button/b_rina_h.png" clickse="se/se_maoudamashii_system21.ogg"]
[else]
[button graphic="button/b_rina_c.png" target="sam_page"  x="750" y="10"]
[endif]
;■静江
[if exp="f.select_c != 3"]
[button graphic="button/b_sizue.png" target="sam_page"  x="1000" y="10" exp="f.select_c = 3" enterimg="button/b_sizue_h.png" clickse="se/se_maoudamashii_system21.ogg"]
[else]
[button graphic="button/b_sizue_c.png" target="sam_page"  x="1000" y="10"]
[endif]

;***********************************************************************************************************************
;-ページ切り替えボタン
;■1ページ目
[if exp="f.select_p != 1"]
[button graphic="button/b_1.png" target="*sam_page"  x="460" y="90" exp="f.select_p = 1" enterimg="button/b_1_h.png" clickse="se/se_maoudamashii_system21.ogg"]
[else]
[button graphic="button/b_1_c.png" target="*sam_page"  x="460" y="90" exp="f.select_p = 1"]
[endif]
;■２ページ目
[if exp="f.select_p != 2"]
[button graphic="button/b_2.png" target="*sam_page"  x="540" y="90" exp="f.select_p = 2" enterimg="button/b_2_h.png" clickse="se/se_maoudamashii_system21.ogg"]
[else]
[button graphic="button/b_2_c.png" target="*sam_page"  x="540" y="90" exp="f.select_p = 2"]
[endif]
;■3ページ目
[if exp="f.select_p != 3"]
[button graphic="button/b_3.png" target="*sam_page"  x="620" y="90" exp="f.select_p = 3" enterimg="button/b_3_h.png" clickse="se/se_maoudamashii_system21.ogg"]
[else]
[button graphic="button/b_3_c.png" target="*sam_page"  x="620" y="90" exp="f.select_p = 3"]
[endif]
;■４ページ目
[if exp="f.select_p != 4"]
[button graphic="button/b_4.png" target="*sam_page"  x="700" y="90" exp="f.select_p = 4" enterimg="button/b_4_h.png" clickse="se/se_maoudamashii_system21.ogg"]
[else]
[button graphic="button/b_4_c.png" target="*sam_page"  x="700" y="90" exp="f.select_p = 4"]
[endif]
;■5ページ目
;[if exp="f.select_c == 1 || f.select_c == 2"]
 [if exp="f.select_p != 5"]
  [button graphic="button/b_5.png" target="*sam_page"  x="780" y="90" exp="f.select_p = 5" enterimg="button/b_5_h.png" clickse="se/se_maoudamashii_system21.ogg"]
  [else]
  [button graphic="button/b_5_c.png" target="*sam_page"  x="780" y="90" exp="f.select_p = 5"]
 [endif]
;[endif]

;■6ページ目
;[if exp="f.select_c == 1 || f.select_c == 2"]
 [if exp="f.select_p != 6"]
  [button graphic="button/b_6.png" target="*sam_page"  x="860" y="90" exp="f.select_p = 6" enterimg="button/b_6_h.png" clickse="se/se_maoudamashii_system21.ogg"]
  [else]
  [button graphic="button/b_6_c.png" target="*sam_page"  x="860" y="90" exp="f.select_p = 6"]
 [endif]
;[endif]

;■7ページ目
;[if exp="f.select_c == 1 || f.select_c == 2"]
 [if exp="f.select_p != 7"]
  [button graphic="button/b_7.png" target="*sam_page"  x="940" y="90" exp="f.select_p = 7" enterimg="button/b_7_h.png" clickse="se/se_maoudamashii_system21.ogg"]
  [else]
  [button graphic="button/b_7_c.png" target="*sam_page"  x="940" y="90" exp="f.select_p = 7"]
 [endif]
;[endif]

;■8ページ目
[if exp="f.select_c == 1"]
 [if exp="f.select_p != 8"]
  [button graphic="button/b_8.png" target="*sam_page"  x="1020" y="90" exp="f.select_p = 8" enterimg="button/b_8_h.png" clickse="se/se_maoudamashii_system21.ogg"]
  [else]
  [button graphic="button/b_8_c.png" target="*sam_page"  x="1020" y="90" exp="f.select_p = 8"]
 [endif]
[endif]

;■9ページ目
[if exp="f.select_c == 1"]
 [if exp="f.select_p != 9"]
  [button graphic="button/b_9.png" target="*sam_page"  x="1100" y="90" exp="f.select_p = 9" enterimg="button/b_9_h.png" clickse="se/se_maoudamashii_system21.ogg"]
  [else]
  [button graphic="button/b_9_c.png" target="*sam_page"  x="1100" y="90" exp="f.select_p = 9"]
 [endif]
[endif]

;■10ページ目
[if exp="f.select_c == 1"]
 [if exp="f.select_p != 10"]
  [button graphic="button/b_10.png" target="*sam_page"  x="1180" y="90" exp="f.select_p = 10" enterimg="button/b_10_h.png" clickse="se/se_maoudamashii_system21.ogg"]
  [else]
  [button graphic="button/b_10_c.png" target="*sam_page"  x="1180" y="90" exp="f.select_p = 10"]
 [endif]
[endif]

;***********************************************************************************************************************
;-サムネイル表示
*sam_display
;■1
[eval exp="f.sam1 ='sam/'+f.name1[0]+'.jpg'"]
[button graphic=&f.sam1 target="*movie_stock"  x="240" y="150" exp="f.stock = [f.name1[0],f.name1[1],f.name1[2],f.name1[3],f.name1[4],f.select_c]" clickse="se/se_maoudamashii_system49.ogg]
[eval exp="f.sam2 ='sam/'+f.name2[0]+'.jpg'"]
[button graphic=&f.sam2 target="*movie_stock"  x="440" y="150" exp="f.stock = [f.name2[0],f.name2[1],f.name2[2],f.name2[3],f.name2[4],f.select_c]" clickse="se/se_maoudamashii_system49.ogg]
[eval exp="f.sam3 ='sam/'+f.name3[0]+'.jpg'"]
[button graphic=&f.sam3 target="*movie_stock"  x="640" y="150" exp="f.stock = [f.name3[0],f.name3[1],f.name3[2],f.name3[3],f.name3[4],f.select_c]" clickse="se/se_maoudamashii_system49.ogg]
[eval exp="f.sam4 ='sam/'+f.name4[0]+'.jpg'"]
[button graphic=&f.sam4 target="*movie_stock"  x="840" y="150" exp="f.stock = [f.name4[0],f.name4[1],f.name4[2],f.name4[3],f.name4[4],f.select_c]" clickse="se/se_maoudamashii_system49.ogg]
[eval exp="f.sam5 ='sam/'+f.name5[0]+'.jpg'"]
[button graphic=&f.sam5 target="*movie_stock"  x="1040" y="150" exp="f.stock =[f.name5[0],f.name5[1],f.name5[2],f.name5[3],f.name5[4],f.select_c]" clickse="se/se_maoudamashii_system49.ogg]
;■2
[eval exp="f.sam6 ='sam/'+f.name6[0]+'.jpg'"]
[button graphic=&f.sam6 target="*movie_stock"  x="240" y="285" exp="f.stock = [f.name6[0],f.name6[1],f.name6[2],f.name6[3],f.name6[4],f.select_c]" clickse="se/se_maoudamashii_system49.ogg]
[eval exp="f.sam7 ='sam/'+f.name7[0]+'.jpg'"]
[button graphic=&f.sam7 target="*movie_stock"  x="440" y="285" exp="f.stock = [f.name7[0],f.name7[1],f.name7[2],f.name7[3],f.name7[4],f.select_c]" clickse="se/se_maoudamashii_system49.ogg]
[eval exp="f.sam8 ='sam/'+f.name8[0]+'.jpg'"]
[button graphic=&f.sam8 target="*movie_stock"  x="640" y="285" exp="f.stock = [f.name8[0],f.name8[1],f.name8[2],f.name8[3],f.name8[4],f.select_c]" clickse="se/se_maoudamashii_system49.ogg]
[eval exp="f.sam9 ='sam/'+f.name9[0]+'.jpg'"]
[button graphic=&f.sam9 target="*movie_stock"  x="840" y="285" exp="f.stock = [f.name9[0],f.name9[1],f.name9[2],f.name9[3],f.name9[4],f.select_c]" clickse="se/se_maoudamashii_system49.ogg]
[eval exp="f.sam10 ='sam/'+f.name10[0]+'.jpg'"]
[button graphic=&f.sam10 target="*movie_stock"  x="1040" y="285" exp="f.stock = [f.name10[0],f.name10[1],f.name10[2],f.name10[3],f.name10[4],f.select_c]" clickse="se/se_maoudamashii_system49.ogg]
;■3
[eval exp="f.sam11 ='sam/'+f.name11[0]+'.jpg'"]
[button graphic=&f.sam11 target="*movie_stock"  x="240" y="420" exp="f.stock = [f.name11[0],f.name11[1],f.name11[2],f.name11[3],f.name11[4],f.select_c]" clickse="se/se_maoudamashii_system49.ogg]
[eval exp="f.sam12 ='sam/'+f.name12[0]+'.jpg'"]
[button graphic=&f.sam12 target="*movie_stock"  x="440" y="420" exp="f.stock = [f.name12[0],f.name12[1],f.name12[2],f.name12[3],f.name12[4],f.select_c]" clickse="se/se_maoudamashii_system49.ogg]
[eval exp="f.sam13 ='sam/'+f.name13[0]+'.jpg'"]
[button graphic=&f.sam13 target="*movie_stock"  x="640" y="420" exp="f.stock = [f.name13[0],f.name13[1],f.name13[2],f.name13[3],f.name13[4],f.select_c]" clickse="se/se_maoudamashii_system49.ogg]
[eval exp="f.sam14 ='sam/'+f.name14[0]+'.jpg'"]
[button graphic=&f.sam14 target="*movie_stock"  x="840" y="420" exp="f.stock = [f.name14[0],f.name14[1],f.name14[2],f.name14[3],f.name14[4],f.select_c]" clickse="se/se_maoudamashii_system49.ogg]
[eval exp="f.sam15 ='sam/'+f.name15[0]+'.jpg'"]
[button graphic=&f.sam15 target="*movie_stock"  x="1040" y="420" exp="f.stock = [f.name15[0],f.name15[1],f.name15[2],f.name15[3],f.name15[4],f.select_c]" clickse="se/se_maoudamashii_system49.ogg]

;***********************************************************************************************************************
*sam_stock
;-下段サムネイル表示
[if exp="f.no == 0"]
[button graphic=&f.sam_stock[0] target="*s_loop"  x="140" y="575" exp="f.up = 0" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[1] target="*s_loop"  x="340" y="575" exp="f.up = 1" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[2] target="*s_loop"  x="540" y="575" exp="f.up = 2" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[3] target="*s_loop"  x="740" y="575" exp="f.up = 3" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[4] target="*s_loop"  x="940" y="575" exp="f.up = 4" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[endif]
[if exp="f.no == 1"]
[button graphic=&f.sam_stock[5] target="*s_loop"  x="140" y="575" exp="f.up = 5" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[6] target="*s_loop"  x="340" y="575" exp="f.up = 6" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[7] target="*s_loop"  x="540" y="575" exp="f.up = 7" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[8] target="*s_loop"  x="740" y="575" exp="f.up = 8" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[9] target="*s_loop"  x="940" y="575" exp="f.up = 9" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[endif]
[if exp="f.no == 2"]
[button graphic=&f.sam_stock[10] target="*s_loop"  x="140" y="575" exp="f.up = 10" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[11] target="*s_loop"  x="340" y="575" exp="f.up = 11" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[12] target="*s_loop"  x="540" y="575" exp="f.up = 12" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[13] target="*s_loop"  x="740" y="575" exp="f.up = 13" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[14] target="*s_loop"  x="940" y="575" exp="f.up = 14" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[endif]
[if exp="f.no == 3"]
[button graphic=&f.sam_stock[15] target="*s_loop"  x="140" y="575" exp="f.up = 15" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[16] target="*s_loop"  x="340" y="575" exp="f.up = 16" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[17] target="*s_loop"  x="540" y="575" exp="f.up = 17" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[18] target="*s_loop"  x="740" y="575" exp="f.up = 18" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[button graphic=&f.sam_stock[19] target="*s_loop"  x="940" y="575" exp="f.up = 19" clickse="se/se_maoudamashii_system49.ogg" hint="クリックでループ回数増加"]
[endif]

;***********************************************************************************************************************
;下段サムネイルページ切り替えボタン
[if exp="f.no != 0"]
[button graphic="button/b_1.png" target="*sam_page"  x="10" y="575" exp="f.no = 0" enterimg="button/b_1_h.png" clickse="se/se_maoudamashii_system21.ogg"]
[else]
[button graphic="button/b_1_c.png" target="*sam_page"  x="10" y="575" exp="f.no = 0"]
[endif]

[if exp="f.no != 1"]
[button graphic="button/b_2.png" target="*sam_page"  x="70" y="575" exp="f.no = 1" enterimg="button/b_2_h.png" clickse="se/se_maoudamashii_system21.ogg"]
[else]
[button graphic="button/b_2_c.png" target="*sam_page"  x="70" y="575" exp="f.no = 1"]
[endif]

[if exp="f.no != 2"]
[button graphic="button/b_3.png" target="*sam_page"  x="10" y="635" exp="f.no = 2" enterimg="button/b_3_h.png" clickse="se/se_maoudamashii_system21.ogg"]
[else]
[button graphic="button/b_3_c.png" target="*sam_page"  x="10" y="635" exp="f.no = 2"]
[endif]
[if exp="f.no != 3"]
[button graphic="button/b_4.png" target="*sam_page"  x="70" y="635" exp="f.no = 3" enterimg="button/b_4_h.png" clickse="se/se_maoudamashii_system21.ogg"]
[else]
[button graphic="button/b_4_c.png" target="*sam_page"  x="70" y="635" exp="f.no = 3"]
[endif]

;***********************************************************************************************************************
;-ループ再生回数描写
[free layer="1" name="loop"]

;[if exp="f.no ==0"]
[eval exp="f.loop_k = f.no * 5 + 0 ]
[eval exp="tf.no_t = 'ループ回数　　'+f.movie_loop[f.loop_k]+'回'"]
[ptext layer="1" name="loop"  text=&tf.no_t x="160" y="545" vertical="" size="18" shadow="0x000000"]
[eval exp="f.loop_k = f.no * 5 + 1 ]
[eval exp="tf.no_t = 'ループ回数　　'+f.movie_loop[f.loop_k]+'回'"]
[ptext layer="1" name="loop"  text=&tf.no_t x="360" y="545" vertical="" size="18" shadow="0x000000"]
[eval exp="f.loop_k = f.no * 5 + 2 ]
[eval exp="tf.no_t = 'ループ回数　　'+f.movie_loop[f.loop_k]+'回'"]
[ptext layer="1" name="loop"  text=&tf.no_t x="560" y="545" vertical="" size="18" shadow="0x000000"]
[eval exp="f.loop_k = f.no * 5 + 3 ]
[eval exp="tf.no_t = 'ループ回数　　'+f.movie_loop[f.loop_k]+'回'"]
[ptext layer="1" name="loop"  text=&tf.no_t x="760" y="545" vertical="" size="18" shadow="0x000000"]
[eval exp="f.loop_k = f.no * 5 + 4 ]
[eval exp="tf.no_t = 'ループ回数　　'+f.movie_loop[f.loop_k]+'回'"]
[ptext layer="1" name="loop"  text=&tf.no_t x="960" y="545" vertical="" size="18" shadow="0x000000"]
;[endif]


;***********************************************************************************************************************
;-喘ぎ声選択ボタン
[eval exp="f.a_up = 0"]
;■1番
[eval exp="f.aegi_t = f.no * 5 + 0 ]
[if exp="f.aegi_stock[f.aegi_t] != 0 && f.aegi_stock[f.aegi_t] != null"]
[button graphic="button/left.png" x="135" y="678" target="*aegi_down" exp="f.a_up = f.no * 5 + 0" clickse="se/se_maoudamashii_system21.ogg"]
[button graphic="button/right.png" x="285" y="678" target="*aegi_up" exp="f.a_up =  f.no * 5 + 0" clickse="se/se_maoudamashii_system21.ogg"]
[endif]
;■2番
[eval exp="f.aegi_t = f.no * 5 + 1 ]
[if exp="f.aegi_stock[f.aegi_t] != 0 && f.aegi_stock[f.aegi_t] != null"]
[button graphic="button/left.png" x="335" y="678" target="*aegi_down" exp="f.a_up =  f.no * 5 + 1" clickse="se/se_maoudamashii_system21.ogg"]
[button graphic="button/right.png" x="485" y="678" target="*aegi_up" exp="f.a_up =  f.no * 5 + 1" clickse="se/se_maoudamashii_system21.ogg"]
[endif]
;■3番
[eval exp="f.aegi_t = f.no * 5 + 2 ]
[if exp="f.aegi_stock[f.aegi_t] != 0 && f.aegi_stock[f.aegi_t] != null"]
[button graphic="button/left.png" x="535" y="678" target="*aegi_down" exp="f.a_up =  f.no * 5 + 2" clickse="se/se_maoudamashii_system21.ogg"]
[button graphic="button/right.png" x="685" y="678" target="*aegi_up" exp="f.a_up =  f.no * 5 + 2" clickse="se/se_maoudamashii_system21.ogg"]
[endif]
;■4番
[eval exp="f.aegi_t = f.no * 5 + 3 ]
[if exp="f.aegi_stock[f.aegi_t] != 0 && f.aegi_stock[f.aegi_t] != null"]
[button graphic="button/left.png" x="735" y="678" target="*aegi_down" exp="f.a_up =  f.no * 5 + 3" clickse="se/se_maoudamashii_system21.ogg"]
[button graphic="button/right.png" x="885" y="678" target="*aegi_up" exp="f.a_up =  f.no * 5 + 3" clickse="se/se_maoudamashii_system21.ogg"]
[endif]
;■5番
[eval exp="f.aegi_t = f.no * 5 + 4 ]
[if exp="f.aegi_stock[f.aegi_t] != 0 && f.aegi_stock[f.aegi_t] != null"]
[button graphic="button/left.png" x="935" y="678" target="*aegi_down" exp="f.a_up =  f.no * 5 + 4" clickse="se/se_maoudamashii_system21.ogg"]
[button graphic="button/right.png" x="1085" y="678" target="*aegi_up" exp="f.a_up =  f.no * 5 + 4" clickse="se/se_maoudamashii_system21.ogg"]
[endif]

;***********************************************************************************************************************
;-喘ぎ声選択描写
[eval exp="f.aegi_t = f.no * 5 + 0 ]
[ptext layer="1" name="loop"  text=&f.aegi_text[f.aegi_stock[f.aegi_t]] x="175" y="689" vertical="" size="18" shadow="0x000000"]
[eval exp="f.aegi_t = f.no * 5 + 1 ]
[ptext layer="1" name="loop"  text=&f.aegi_text[f.aegi_stock[f.aegi_t]] x="375" y="689" vertical="" size="18" shadow="0x000000"]
[eval exp="f.aegi_t = f.no * 5 + 2 ]
[ptext layer="1" name="loop"  text=&f.aegi_text[f.aegi_stock[f.aegi_t]] x="575" y="689" vertical="" size="18" shadow="0x000000"]
[eval exp="f.aegi_t = f.no * 5 + 3 ]
[ptext layer="1" name="loop"  text=&f.aegi_text[f.aegi_stock[f.aegi_t]] x="775" y="689" vertical="" size="18" shadow="0x000000"]
[eval exp="f.aegi_t = f.no * 5 + 4 ]
[ptext layer="1" name="loop"  text=&f.aegi_text[f.aegi_stock[f.aegi_t]] x="975" y="689" vertical="" size="18" shadow="0x000000"]

;***********************************************************************************************************************
;-再生ボタン
*play_button
[if exp="f.sam_stock[0] != 'sam/black.jpg'"]
[button graphic="button/b_play.png" target="*play_movie"  x="1160" y="575" enterimg="button/b_play_h.png" clickse="se/se_maoudamashii_system46.ogg"]
[else]
[button graphic="button/b_play_c.png" target="*sam_page"  x="1160" y="575" ]
[endif]
[button graphic="button/b_cm.png" target="*movie_clear"  x="1160" y="615" enterimg="button/b_cm_h.png" clickse="se/se_maoudamashii_system21.ogg"]
[button graphic="button/b_title.png" target=""  x="1160" y="655" role="title" enterimg="button/b_title_h.png" clickse="se/se_maoudamashii_system21.ogg"]

;***********************************************************************************************************************
;-セーブボタン
[button graphic="button/b_save1.png" target="*save1"  x="10" y="450" enterimg="button/b_save1_h.png" clickse="se/se_maoudamashii_system21.ogg"]
[button graphic="button/b_save2.png" target="*save2"  x="10" y="500" enterimg="button/b_save2_h.png" clickse="se/se_maoudamashii_system21.ogg"]
;-ロードボタン
[button graphic="button/b_load1.png" target="*load1"  x="110" y="450" enterimg="button/b_load1_h.png" clickse="se/se_maoudamashii_system21.ogg"]
[button graphic="button/b_load2.png" target="*load2"  x="110" y="500" enterimg="button/b_load2_h.png" clickse="se/se_maoudamashii_system21.ogg"]

[s]

;***********************************************************************************************************************
;セーブ１処理
*save1
[dialog type="confirm" text="セーブの上書きをしますか？" target="*save1_yes"  target_cancel="*save1_no"]
*save1_yes
[iscript]
sf.sam_stock_s1 = f.sam_stock.concat();
sf.sam_stock_s1 = f.sam_stock.concat();
sf.play_stock_s1 = f.play_stock.concat();
sf.se0_stock_s1 = f.se0_stock.concat();
sf.se0_loop_s1 = f.se0_loop.concat();
sf.se3_stock_s1 = f.se3_stock.concat();
sf.stock_s1 = f.stock.concat();
sf._char_s1 = f._char.concat();
sf.movie_loop_s1 = f.movie_loop.concat();
sf.aegi_stock_s1 = f.aegi_stock.concat();
[endscript]
[eval exp="sf.movie_no_s1 = f.movie_no"]
*save1_no
[jump target="*sam_page"]
;***********************************************************************************************************************
;セーブ2処理
*save2
[dialog type="confirm" text="セーブの上書きをしますか？" target="*save2_yes"  target_cancel="*save2_no"]
*save2_yes
[iscript]
sf.sam_stock_s2 = f.sam_stock.concat();
sf.sam_stock_s2 = f.sam_stock.concat();
sf.play_stock_s2 = f.play_stock.concat();
sf.se0_stock_s2 = f.se0_stock.concat();
sf.se0_loop_s2 = f.se0_loop.concat();
sf.se3_stock_s2 = f.se3_stock.concat();
sf.stock_s2 = f.stock.concat();
sf._char_s2 = f._char.concat();
sf.movie_loop_s2 = f.movie_loop.concat();
sf.aegi_stock_s2 = f.aegi_stock.concat();
[endscript]
[eval exp="sf.movie_no_s2 = f.movie_no"]
*save2_no
[jump target="*sam_page"]
;***********************************************************************************************************************
;ロード１処理
*load1

[iscript]
f.sam_stock = sf.sam_stock_s1.concat();
f.play_stock = sf.play_stock_s1.concat();
f.se0_stock = sf.se0_stock_s1.concat();
f.se0_loop = sf.se0_loop_s1.concat();
f.se3_stock = sf.se3_stock_s1.concat();
f.stock = sf.stock_s1.concat();
f._char = sf._char_s1.concat();
f.movie_loop = sf.movie_loop_s1.concat();
f.aegi_stock = sf.aegi_stock_s1.concat();
[endscript]
[eval exp="f.movie_no = sf.movie_no_s1"]

[jump target="*sam_page"]
;***********************************************************************************************************************
;ロード2処理
*load2

[iscript]
f.sam_stock = sf.sam_stock_s2.concat();
f.play_stock = sf.play_stock_s2.concat();
f.se0_stock = sf.se0_stock_s2.concat();
f.se0_loop = sf.se0_loop_s2.concat();
f.se3_stock = sf.se3_stock_s2.concat();
f.stock = sf.stock_s2.concat();
f._char = sf._char_s2.concat();
f.movie_loop = sf.movie_loop_s2.concat();
f.aegi_stock = sf.aegi_stock_s2.concat();
[endscript]
[eval exp="f.movie_no = sf.movie_no_s2"]

[jump target="*sam_page"]
;***********************************************************************************************************************
;-喘ぎ声選択
*aegi_up
[eval exp="f.aegi_stock[f.a_up] = f.aegi_stock[f.a_up] + 1"]
[if exp="f.aegi_stock[f.a_up] == 10"]
[eval exp="f.aegi_stock[f.a_up] = 9"]
[endif]
[jump target="*sam_page"]
;***********************************************************************************************************************
;-喘ぎ声選択
*aegi_down
[eval exp="f.aegi_stock[f.a_up] = f.aegi_stock[f.a_up] - 1"]

[if exp="f._char[f.a_up] == 1 || f._char[f.a_up] == 2"]
 [if exp="f.aegi_stock[f.a_up] == 0"]
  [eval exp="f.aegi_stock[f.a_up] = 1"]
 [endif]
[endif]

[if exp="f._char[f.a_up] == 3"]
 [if exp="f.aegi_stock[f.a_up] == 3"]
  [eval exp="f.aegi_stock[f.a_up] = 4"]
 [endif]
[endif]

[jump target="*sam_page"]
;***********************************************************************************************************************
;再生ループ回数
*s_loop
[if exp="f.sam_stock[f.up] != 'sam/black.jpg'"]
[eval exp="f.movie_loop[f.up] = f.movie_loop[f.up] + 1"]
[if exp="f.movie_loop[f.up] == 10"]
[eval exp="f.movie_loop[f.up] = 1"]
[endif]
[endif]
[jump target="*sam_page"]
;***********************************************************************************************************************
;ムービーストック
*movie_stock
;動画がblack の場合キャンセル
[if exp="f.stock[0] != 'black'"]
;ページ修正
[if exp="f.movie_no <= 4"]
[eval exp="f.no = 0"]
[endif]

[if exp="f.movie_no >= 5 && f.movie_no <=9"]
[eval exp="f.no = 1"]
[endif]

[if exp="f.movie_no >= 10 && f.movie_no <=14"]
[eval exp="f.no = 2"]
[endif]

[if exp="f.movie_no >= 15 && f.movie_no <=20"]
[eval exp="f.no = 3"]
[endif]

[if exp="f.movie_no == 20"]
[eval exp="f.movie_no = 19"]
[endif]

[eval exp="f.sam_stock[f.movie_no] = 'sam/' + f.stock[0] + '.jpg'"]
[eval exp="f.play_stock[f.movie_no] = f.stock[0] + '.webm'"]
[eval exp="f.se0_stock[f.movie_no] = f.stock[1] + '.ogg'"]
[eval exp="f.se0_loop[f.movie_no] = f.stock[2]"]
[eval exp="f.se3_stock[f.movie_no] = f.stock[3]]
[eval exp="f.aegi_stock[f.movie_no]  = f.stock[4]"]
[eval exp="f._char[f.movie_no]  = f.stock[5]"]

[eval exp="f.movie_no = f.movie_no + 1"]

[endif]

[jump target="*sam_page"]

;***********************************************************************************************************************
;クリア
*movie_clear

[eval exp="f.movie_no = f.movie_no - 1"]
[eval exp="f.sam_stock[f.movie_no] = 'sam/black.jpg'"]
[eval exp="f.play_stock[f.movie_no]  = 'black'"]
[eval exp="f.se0_stock[f.movie_no]  = 0"]
[eval exp="f.se0_loop[f.movie_no]  = 0"]
[eval exp="f.se3_stock[f.movie_no]  = 0"]
[eval exp="f.aegi_stock[f.movie_no]  = 0"]
[eval exp="f.movie_loop[f.movie_no] = 1]
[eval exp="f._char[f.movie_no]  = 0"]

[if exp="f.movie_no == 21"]
[eval exp="f.movie_no = 20"]
[endif]

;ページ修正
[if exp="f.movie_no <= 4"]
[eval exp="f.no = 0"]
[endif]

[if exp="f.movie_no >= 5 && f.movie_no <=9"]
[eval exp="f.no = 1"]
[endif]

[if exp="f.movie_no >= 10 && f.movie_no <=14"]
[eval exp="f.no = 2"]
[endif]

[if exp="f.movie_no >= 15 && f.movie_no <=20"]
[eval exp="f.no = 3"]
[endif]

[if exp="f.movie_no == -1"]
[eval exp="f.movie_no = 0"]
[endif]

[jump target="*sam_page"]

;***********************************************************************************************************************
;-動画再生
*play_movie
[freeimage layer="1"]
[cm]
[clearfix]
[bg storage="black.png" time="1000"]
[eval exp="f.play_loop = 0"]

;***********************************************************************************************************************
;-ＵＩボタン配置
[html]
<body>
<div id="button_next">
  <img src="./data/image/button/m_s.png" style="visibility:visible; position: absolute; left: 1220px; top: 10px"/> 
</div>
<div id="button_back">
  <img src="./data/image/button/m_b.png" style="visibility:visible; position: absolute; left: 1060px; top: 10px"/>
</div>
<div id="button_return">
  <img src="./data/image/button/m_h.png" style="visibility:visible; position: absolute; left: 1145px; top: 10px"/>
</div>
</body>
[endhtml]

;***********************************************************************************************************************
*play
[if exp="f.play_stock[f.play_loop] == 'black'"]
[eval exp="f.play_loop = 0"]
[endif]

[eval exp="f.kaisuu = 1"]

;***********************************************************************************************************************
;-音声再生
;通常音声
*voice
[if exp="f.se0_loop[f.play_loop] == 0"]
[playse storage="&f.se0_stock[f.play_loop]" buf="0" loop="false"]
[endif]
[if exp="f.se0_loop[f.play_loop] == 1"]
[playse storage="&f.se0_stock[f.play_loop]" buf="0" loop="true"]
[endif]
;喘ぎ音声
;■莉子
[if exp="f._char[f.play_loop]  == 1"]
;快感低
  ;遅い
  [if exp="f.aegi_stock[f.play_loop] == 1]
   [playse storage="riko/rk68_014.ogg" buf="0" loop="false"]
  [endif]  
  ;普通
  [if exp="f.aegi_stock[f.play_loop] == 2]
   [playse storage="riko/rk68_015.ogg" buf="0" loop="false"]
   [endif] 
  ;速い
  [if exp="f.aegi_stock[f.play_loop] == 3]
   [playse storage="riko/rk68_016.ogg" buf="0" loop="false"]
  [endif] 
;快感中
  ;遅い
  [if exp="f.aegi_stock[f.play_loop] == 4]
   [playse storage="riko/rk68_018.ogg" buf="0" loop="false"]
  [endif] 
  ;普通
  [if exp="f.aegi_stock[f.play_loop] == 5]
   [playse storage="riko/rk68_021.ogg" buf="0" loop="false"]
  [endif] 
  ;速い
   [if exp="f.aegi_stock[f.play_loop] == 6]
  [playse storage="riko/rk68_024.ogg" buf="0" loop="false"]
  [endif] 
;快感高
  ;遅い
  [if exp="f.aegi_stock[f.play_loop] == 7]
   [playse storage="riko/rk68_028.ogg" buf="0" loop="false"]
  [endif] 
  ;普通
  [if exp="f.aegi_stock[f.play_loop] == 8]
   [playse storage="riko/rk68_030.ogg" buf="0" loop="false"]
  [endif] 
  ;速い
  [if exp="f.aegi_stock[f.play_loop] == 9]
   [playse storage="riko/rk68_031.ogg" buf="0" loop="false"]
  [endif]
[endif] 
;■莉菜
[if exp="f._char[f.play_loop]  == 2"]
;快感低
  ;遅い
  [if exp="f.aegi_stock[f.play_loop] == 1]
   [playse storage="rina/rn69_014.ogg" buf="0" loop="false"]
  [endif]  
  ;普通
  [if exp="f.aegi_stock[f.play_loop] == 2]
   [playse storage="rina/rn69_015.ogg" buf="0" loop="false"]
   [endif] 
  ;速い
  [if exp="f.aegi_stock[f.play_loop] == 3]
   [playse storage="rina/rn69_016.ogg" buf="0" loop="false"]
  [endif] 
;快感中
  ;遅い
  [if exp="f.aegi_stock[f.play_loop] == 4]
   [playse storage="rina/rn69_018.ogg" buf="0" loop="false"]
  [endif] 
  ;普通
  [if exp="f.aegi_stock[f.play_loop] == 5]
   [playse storage="rina/rn69_021.ogg" buf="0" loop="false"]
  [endif] 
  ;速い
   [if exp="f.aegi_stock[f.play_loop] == 6]
  [playse storage="rina/rn69_024.ogg" buf="0" loop="false"]
  [endif] 
;快感高
  ;遅い
  [if exp="f.aegi_stock[f.play_loop] == 7]
   [playse storage="rina/rn69_027.ogg" buf="0" loop="false"]
  [endif] 
  ;普通
  [if exp="f.aegi_stock[f.play_loop] == 8]
   [playse storage="rina/rn69_028.ogg" buf="0" loop="false"]
  [endif] 
  ;速い
  [if exp="f.aegi_stock[f.play_loop] == 9]
   [playse storage="rina/rn69_030.ogg" buf="0" loop="false"]
  [endif]
[endif] 
;■静江
[if exp="f._char[f.play_loop]  == 3"]
;快感低
  ;遅い
  [if exp="f.aegi_stock[f.play_loop] == 1]
   [playse storage="sizue/sz70_012.ogg" buf="0" loop="false"]
  [endif]  
  ;普通
  [if exp="f.aegi_stock[f.play_loop] == 2]
   [playse storage="sizue/sz70_012.ogg" buf="0" loop="false"]
   [endif] 
  ;速い
  [if exp="f.aegi_stock[f.play_loop] == 3]
   [playse storage="sizue/sz70_012.ogg" buf="0" loop="false"]
  [endif] 
;快感中
  ;遅い
  [if exp="f.aegi_stock[f.play_loop] == 4]
   [playse storage="sizue/sz70_012.ogg" buf="0" loop="false"]
  [endif] 
  ;普通
  [if exp="f.aegi_stock[f.play_loop] == 5]
   [playse storage="sizue/sz70_015.ogg" buf="0" loop="false"]
  [endif] 
  ;速い
   [if exp="f.aegi_stock[f.play_loop] == 6]
  [playse storage="sizue/sz70_018.ogg" buf="0" loop="false"]
  [endif] 
;快感高
  ;遅い
  [if exp="f.aegi_stock[f.play_loop] == 7]
   [playse storage="sizue/sz70_021.ogg" buf="0" loop="false"]
  [endif] 
  ;普通
  [if exp="f.aegi_stock[f.play_loop] == 8]
   [playse storage="sizue/sz70_022.ogg" buf="0" loop="false"]
  [endif] 
  ;速い
  [if exp="f.aegi_stock[f.play_loop] == 9]
   [playse storage="sizue/sz70_024.ogg" buf="0" loop="false"]
  [endif]
[endif] 
;***********************************************************************************************************************
;効果音
*sound
[if exp="f.se3_stock[f.play_loop] == 1"]
[playse storage="se/kutyu01.ogg" buf="3" loop="true"]
[endif]

[if exp="f.se3_stock[f.play_loop] == 2"]
[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
[endif]

[if exp="f.se3_stock[f.play_loop] == 3"]
[playse storage="se/kutyu03.ogg" buf="3" loop="true"]
[endif]

;４　ローター
[if exp="f.se3_stock[f.play_loop] == 4"]
[playse storage="se/rotor.ogg" buf="3" loop="true"]
[endif]
;５　水の音
[if exp="f.se3_stock[f.play_loop] == 5"]
[playbgm storage="bass2.ogg" loop="true"]
[endif]
;6　水の音 くちゅ音　中
[if exp="f.se3_stock[f.play_loop] == 6"]
[playbgm storage="bass2.ogg" loop="true"]
[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
[endif]
;7　水の音　くちゅ音　速
[if exp="f.se3_stock[f.play_loop] == 7"]
[playbgm storage="bass2.ogg" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop="true"]
[endif]
;8　水の音　くちゅ音　遅
[if exp="f.se3_stock[f.play_loop] == 8"]
[playbgm storage="bass2.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop="true"]
[endif]

;***********************************************************************************************************************
;■動画再生
*play_loop
[bgmovie storage="&f.play_stock[f.play_loop]" loop="false"]



[iscript]
$("#button_next").click(function () {
TYRANO.kag.ftag.startTag("jump",{target:"*next"});
});
$("#button_back").click(function () {
TYRANO.kag.ftag.startTag("jump",{target:"*back"});
});
$("#button_return").click(function () {
TYRANO.kag.ftag.startTag("jump",{target:"*return"});
});
$(window).keydown(function(e){
if(e.keyCode ==81) {
TYRANO.kag.ftag.startTag("jump",{target:"*return"});
} });
$(window).keydown(function(e){
if(e.keyCode ==88) {
TYRANO.kag.ftag.startTag("jump",{target:"*next"});
} });
$(window).keydown(function(e){
if(e.keyCode ==90) {
TYRANO.kag.ftag.startTag("jump",{target:"*back"});
} });
$(window).keydown(function(e){
if(e.keyCode ==39) {
TYRANO.kag.ftag.startTag("jump",{target:"*next"});
} });
$(window).keydown(function(e){
if(e.keyCode ==37) {
TYRANO.kag.ftag.startTag("jump",{target:"*back"});
} });
$(window).keydown(function(e){
if(e.keyCode ==32) {
TYRANO.kag.ftag.startTag("jump",{target:"*last_movie"});
} });
$(window).keydown(function(e){
if(e.keyCode ==68) {
//document.getElementById('button_next').style.visibility = 'hidden';
$("#button_next").hide();
$("#button_back").hide();
$("#button_return").hide();
//f.ui_display = false;
} });
$(window).keydown(function(e){
if(e.keyCode ==69) {
//document.getElementById('button_next').style.visibility = 'visible';
$("#button_next").show();
$("#button_back").show();
$("#button_return").show();
//f.ui_display = true;
} });
[endscript]

[wait_bgmovie]


*next_p
;***********************************************************************************************************************
;同一動画ループ処理
[if exp="f.movie_loop[f.play_loop] > f.kaisuu"]
[eval exp="f.kaisuu = f.kaisuu + 1"]
[jump storage="" target="*play_loop"]
[endif]
[eval exp="f.play_loop = f.play_loop + 1"]

[if exp="f.play_loop == 20"]
[eval exp="f.play_loop = 0"]
[endif]

;***********************************************************************************************************************
;音声停止
[stopse buf="0"]
[stopse buf="3"]
[stopbgm]

[jump target="*play"]

;***********************************************************************************************************************
;次の動画に進む
*next

[stop_bgmovie time="1000"]

[stopse buf="0"]
[stopse buf="3"]
[eval exp="f.play_loop = f.play_loop + 1"]
[if exp="f.play_loop == 20"]
[eval exp="f.play_loop = 0"]
[endif]
[jump target="*play"]
;***********************************************************************************************************************
;前の動画に戻る
*back
[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[eval exp="f.play_loop = f.play_loop - 1"]
[if exp="f.play_loop == -1"]
[eval exp="f.play_loop = 0"]
[endif]
[jump target="*play"]
;***********************************************************************************************************************
;最初に戻る
*return
[iscript]
 $(window).off("keydown"); 
[endscript]
[stop_bgmovie time="1000"]
[wait time="500"]
[stopse buf="0"]
[stopse buf="3"]
[jump target="*set"]

;***********************************************************************************************************************
;最後の動画にジャンプ
*last_movie
[eval exp="tf.last_loop = 19"]
*last_loop
[if exp="f.sam_stock[tf.last_loop] != 'sam/black.jpg'"]
 [eval exp="f.play_loop = tf.last_loop"]
 [cm]
 [stop_bgmovie time="1000"]
 [stopse buf="0"]
 [stopse buf="3"]
 [jump target="*play"]
[endif]

[eval exp="tf.last_loop = tf.last_loop - 1"]

[jump target="*last_loop"]



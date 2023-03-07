;初期設定シナリオ

*start

[cm]
[clearfix]
[start_keyconfig]


;メニューボタンの表示
;@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=0 top=560 width=1280 height=160 page=fore frame="message_frame/message_frame_03_text.png" visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="30" marginl="150" marginr="150" marginb="30"]


;メッセージウィンドウの表示
;@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=24 x=70 y=580 shadow="0x000000"]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;-このゲームで登場するキャラクターを宣言
;--桜子キャラクタ登録
[chara_new  name="sakurako" storage="chara/sakurako/sakurako_stand_00.png" jname="桜子"  ]
;キャラクターの表情登録
[chara_face name="sakurako" face="niko" storage=chara/sakurako/sakurako_stand_01.png"]

[chara_face name="sakurako" face="akireru" storage=chara/sakurako/sakurako_stand_10.png"]
[chara_face name="sakurako" face="akireru02" storage=chara/sakurako/sakurako_stand_14.png"]
[chara_face name="sakurako" face="akireru03" storage=chara/sakurako/sakurako_stand_13.png"]

[chara_face name="sakurako" face="okori" storage=chara/sakurako/sakurako_stand_03.png"]
[chara_face name="sakurako" face="okori02" storage=chara/sakurako/sakurako_stand_04.png"]
[chara_face name="sakurako" face="okori03" storage=chara/sakurako/sakurako_stand_05.png"]

[chara_face name="sakurako" face="niya" storage=chara/sakurako/sakurako_stand_12.png"]

[chara_face name="sakurako" face="panchi01" storage=chara/sakurako/sakurako_stand_06.png"]
[chara_face name="sakurako" face="panchi02" storage=chara/sakurako/sakurako_stand_07.png"]
[chara_face name="sakurako" face="panchi03" storage=chara/sakurako/sakurako_stand_08.png"]
[chara_face name="sakurako" face="panchi04" storage=chara/sakurako/sakurako_stand_09.png"]

[chara_face name="sakurako" face="akubi" storage=chara/sakurako/sakurako_stand_18.png"]
[chara_face name="sakurako" face="akubi02" storage=chara/sakurako/sakurako_stand_15.png"]
[chara_face name="sakurako" face="akubi03" storage=chara/sakurako/sakurako_stand_16.png"]

[chara_face name="sakurako" face="tobi01" storage=chara/sakurako/sakurako_stand_17.png"]
[chara_face name="sakurako" face="tobi02" storage=chara/sakurako/sakurako_stand_22.png"]
[chara_face name="sakurako" face="tobi03" storage=chara/sakurako/sakurako_stand_23.png"]
[chara_face name="sakurako" face="tobi04" storage=chara/sakurako/sakurako_stand_27.png"]

[chara_face name="sakurako" face="keri01" storage=chara/sakurako/sakurako_stand_25.png"]

[chara_face name="sakurako" face="mahou01" storage=chara/sakurako/sakurako_stand_24.png"]

[chara_face name="sakurako" face="kobusi01" storage=chara/sakurako/sakurako_stand_19.png"]
[chara_face name="sakurako" face="kobusi02" storage=chara/sakurako/sakurako_stand_20.png"]
[chara_face name="sakurako" face="kobusi03" storage=chara/sakurako/sakurako_stand_21.png"]
[chara_face name="sakurako" face="kobusi04" storage=chara/sakurako/sakurako_stand_26.png"]

[chara_face name="sakurako" face="tereru" storage=chara/sakurako/sakurako_stand_11.png"]

[chara_face name="sakurako" face="talk00" storage=chara/sakurako/img_07_kaiwa_00.png"]
[chara_face name="sakurako" face="talk01" storage=chara/sakurako/img_07_kaiwa_01.png"]
[chara_face name="sakurako" face="talk02" storage=chara/sakurako/img_07_kaiwa_02.png"]
[chara_face name="sakurako" face="talk03" storage=chara/sakurako/img_07_kaiwa_03.png"]
[chara_face name="sakurako" face="talk04" storage=chara/sakurako/img_07_kaiwa_04.png"]
[chara_face name="sakurako" face="talk05" storage=chara/sakurako/img_07_kaiwa_05.png"]
[chara_face name="sakurako" face="talk06" storage=chara/sakurako/img_07_kaiwa_06.png"]
[chara_face name="sakurako" face="talk07" storage=chara/sakurako/img_07_kaiwa_07.png"]

[chara_face name="sakurako" face="yakyuu00" storage=chara/sakurako/yakyuu_00.png"]
[chara_face name="sakurako" face="yakyuu01" storage=chara/sakurako/yakyuu_01.png"]
[chara_face name="sakurako" face="yakyuu02" storage=chara/sakurako/yakyuu_02.png"]
[chara_face name="sakurako" face="yakyuu03" storage=chara/sakurako/yakyuu_03.png"]
[chara_face name="sakurako" face="yakyuu04" storage=chara/sakurako/yakyuu_04.png"]
[chara_face name="sakurako" face="yakyuu05" storage=chara/sakurako/yakyuu_05.png"]
[chara_face name="sakurako" face="yakyuu06" storage=chara/sakurako/yakyuu_06.png"]
[chara_face name="sakurako" face="yakyuu07" storage=chara/sakurako/yakyuu_07.png"]


;-初期変数登録
;--主人公
;主人公体力
[eval exp="f.hp = 50"]
;主人公精力
[eval exp="f.energy = 50"]
;主人公我慢強さ
[eval exp="f.patience = 100"]
;主人公所持金
[eval exp="f.money = 0"]
;一緒にいる人
;⓪桜子　①莉子　②莉菜　③静江 ④莉子莉菜　⑤莉子静江　⑥莉菜静江
[eval exp="f.partner =　0"]

;--莉子
;莉子好感度
[eval exp="f.riko_f = 10"]
;莉子愛情度
[eval exp="f.riko_i = 0"]
;莉子エッチ度
[eval exp="f.riko_h = 0"]

;--莉菜
;莉菜好感度
[eval exp="f.rina_f = 10"]
;莉菜愛情度
[eval exp="f.rina_i = 0"]
;莉菜エッチ度
[eval exp="f.rina_h = 0"]

;--静江
;静江好感度
[eval exp="f.sizue_f = 10"]
;静江愛情度
[eval exp="f.sizue_i = 0"]
;静江エッチ度
[eval exp="f.sizue_h = 50"]

;愛情度　 0以上 恋人状態
;         1-4　喧嘩状態

;日付
[eval exp="f.day = 1"]

;曜日
[eval exp="f.oneweek =0"]
[eval exp="f.week =[]"]
[eval exp="f.week[0] = '月曜日'"]
[eval exp="f.week[1] = '火曜日'"]
[eval exp="f.week[2] = '水曜日'"]
[eval exp="f.week[3] = '木曜日'"]
[eval exp="f.week[4] = '金曜日'"]
[eval exp="f.week[5] = '土曜日'"]
[eval exp="f.week[6] = '日曜日'"]

;エンディング
[eval exp="f.ending = 0"]
;v1.03セーブデータ
[eval exp="f.save_v = 1.03"]
[return]
;デバッグ用ジャンプタグ-----------------------------
;[jump storage=openingday.ks target=*自室 ]
;[jump storage=main.ks ]
;

;@jump storage="op.ks"

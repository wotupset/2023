;カフェ

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;桜子消去
#
[chara_hide name="sakurako"]
[playbgm storage="osyare.ogg" loop="true"]
@bg storage ="cafe.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.cafe_fast == undefined"]
#
カフェにやってきた[p]
静江さんがいるかな？[p]

[eval exp="f.cafe_fast = true"]
[else]
#
カフェにやってきた[p]
[endif]


;-キャラクター判別
;配列変数 f.cafe_day を日付で判別
;0 桜子　１　莉子　２　莉菜　３　静江
[if exp="f.cafe_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_cafe"]
[return]
[endif]

;莉子
[if exp="f.cafe_day[f.day] == 1"]
[jump target="*riko_cafe"]
[endif]

;莉菜
[if exp="f.cafe_day[f.day] == 2"]
[jump target="*rina_cafe"]
[endif]

;静江
[if exp="f.cafe_day[f.day] == 3"]
[jump target="*sizue_cafe"]
[endif]

;二人
[if exp="f.cafe_day[f.day] == 4"]
[jump target="*futari_cafe"]
[endif]

;-カフェイベント　静江-----------------------------------------------------------------------------------------
*sizue_cafe

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_sizue_goout"]

;--①
[if exp="f.sizue_cafe == undefined || f.sizue_cafe == 1"]
#
[bg storage="cafe/img19_02.png" time="1000"]
あっ、静江さんがいる[r]
静江さ～ん[p]
#静江
[playse storage="sizue/sz19_007.ogg" buf="0"]
お兄ちゃん、どうしたの？[p]
#
通りかかったら静江さんみかけたので[p]
#静江
[playse storage="sizue/sz19_008.ogg" buf="0"]
うふふ、何か飲んでいく？おごってあげる[p]
#
本当ですか？頂きます[p]

雑談して一緒に帰った[p]

[eval exp="tf.place = 1"]
;静江さん好感度UP
[sizue_f]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_cafe = 1"]
[return]
[endif]

;-二人------------------------------------------------------
*futari_cafe
#
[bg storage="cafe/img18_10.png" time="1000"]
二人でお茶ですか？[p]
#静江
[playse storage="sizue/sz19_009.ogg" buf="0"]
莉菜ちゃんに見つかっちゃったのよ[p]
[playse storage="sizue/sz19_010.ogg" buf="0"]
お兄ちゃんも何か飲んでいく？[p]

;静江さん好感度UP
[sizue_f]
;莉菜ちゃん好感度UP
[rina_f]
[eval exp="tf.place = 1"]

;パートナー静江さん莉菜ちゃん変更
[eval exp="f.partner = 6"]

[return]




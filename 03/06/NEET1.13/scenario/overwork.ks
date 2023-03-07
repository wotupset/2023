;***********************************************************************************************************************
;-過労シナリオ

*start
[cm]
[clearfix]

@bg storage ="room_day.png" time=1000
[menuwindows]
#
あれ？……クラクラする……[p]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[mask time="500"]



;■恋人状態か判別
[if exp="f.riko_lover == 2 || f.rina_lover == 2 || f.sizue_lover == 2"]
;愛情度判別にジャンプ
 [jump target="*love"]
[endif]

;***********************************************************************************************************************
;-好感度判定
[if exp="f.riko_f >= f.rina_f && f.riko_f >= f.sizue_f"]
;お見舞い判定　莉子
[eval exp="tf.omimai = 4"]
[endif]

[if exp="f.rina_f > f.riko_f && f.rina_f >= f.sizue_f"]
;お見舞い判定　莉菜
[eval exp="tf.omimai = 5"]
[endif]

[if exp="f.sizue_f > f.riko_f && f.sizue_f > f.rina_f"]
;お見舞い判定　静江
[eval exp="tf.omimai = 6"]
[endif]

;***********************************************************************************************************************
;-好感度お見舞い判別
;莉子
[if exp="tf.omimai == 4 && f.riko_f > = 30"]
;莉子お見舞い4[p]
[jump target="*riko_nursing"]
[endif]
;莉菜
[if exp="tf.omimai == 5 && f.rina_f >= 30"]
;莉菜お見舞い5[p]
[jump target="*rina_nursing"]
[endif]
;静江
[if exp="tf.omimai == 6 && f.sizue_f >= 30"]
;静江お見舞い6[p]
[jump target="*sizue_nursing"]
[endif]
[eval exp="tf.omimai =0"]
[jump target="*omimai_sakurako"]

;-愛情判別-----------------------------------------------------------------------
*love

;[if exp="f.riko_i >= f.rina_i && f.riko_i >= f.sizue_i"]
;お見舞い判定　莉子
;[eval exp="tf.omimai = 1"]
;[endif]

;[if exp="f.rina_i > f.riko_i && f.rina_i >= f.sizue_i"]
;お見舞い判定　莉菜
;[eval exp="tf.omimai = 2"]
;[endif]

;[if exp="f.sizue_i > f.riko_i && f.sizue_i > f.rina_i"]
;お見舞い判定　静江
;[eval exp="tf.omimai = 3"]
;[endif]

*omimai_loop
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

[if exp="tf.rand ==0"]
 [if exp="f.riko_lover == 2"]
 [eval exp="tf.omimai = 1"]
 [jump target="*riko_nursing2"]
 [endif]
[endif]

[if exp="tf.rand ==1"]
 [if exp="f.rina_lover == 2"]
 [eval exp="tf.omimai = 2"]
 [jump target="*rina_nursing2"]
 [endif]
[endif]

[if exp="tf.rand ==2"]
 [if exp="f.sizue_lover == 2"]
 [eval exp="tf.omimai = 3"]
 [jump target="*sizue_nursing2"]
 [endif]
[endif]

[jump target="*omimai_loop"]

;-愛情お見舞い判別---------------------------------------------------------------
;莉子
[if exp="tf.omimai == 1"]
;莉子お見舞い1
[jump target="*riko_nursing2"]
[endif]
;莉菜
[if exp="tf.omimai == 2"]
;莉菜お見舞い
[jump target="*rina_nursing2"]
[endif]
;静江
[if exp="tf.omimai == 3"]
;静江お見舞い
[jump target="*sizue_nursing2"]
[endif]
;



;全員判定以下の場合お見舞いイベント無-----------------------------------------------------
*omimai_sakurako
[if exp="tf.omimai == 0"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
[endif]

[return]

;-莉子ちゃん好感度判定-----------------------------------------------------------------------
*riko_nursing
;--好感度80以上
[if exp="f.riko_f >= 80 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
@bg storage ="nursing/img08_02.png" time=1000
#
莉子ちゃん？[p]
[playse storage="riko/rk08_005.ogg" buf="0"]
おじさん、おかゆだよ！食べられる？[r]
あ～んしてあげようか？[p]
@bg storage ="room_evening.png" time=1000
#
莉子ちゃんが看病してくれたから元気が出たぞ！[p]
[return]
[endif]

;--好感度60以上
[if exp="f.riko_f >= 60 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
@bg storage ="nursing/img08_01.png" time=1000
#
莉子ちゃん？[p]
[playse storage="riko/rk08_004.ogg" buf="0"]
大丈夫、おじさん？熱は？[p]
@bg storage ="room_evening.png" time=1000
#
莉子ちゃんが看病してくれたから元気が出たぞ！[p]

[return]
[endif]

;--好感度30以上
[if exp="f.riko_f >= 30 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
@bg storage ="nursing/img08_00.png" time=1000
#
莉子ちゃん？[p]
[playse storage="riko/rk08_003.ogg" buf="0"]
おじさん、大丈夫？何か欲しいものある？[p]
@bg storage ="room_evening.png" time=1000
#
莉子ちゃんが看病してくれたから元気が出たぞ！[p]

[return]
[endif]

;-莉菜ちゃん好感度判定-----------------------------------------------------------------------
*rina_nursing
;--好感度80以上
[if exp="f.rina_f >= 80 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
@bg storage ="nursing/img09_01.png" time=1000
#
莉菜ちゃん？[p]
[playse storage="rina/rn09_005.ogg" buf="0"]
お兄さんお粥用意しましたよ[r]
食べられますか？[p]
[playse storage="rina/rn09_005_1.ogg" buf="0"]
辛そうですね、……私が食べさせてあげます[p]
@bg storage ="room_evening.png" time=1000
#
莉菜ちゃんが看病してくれたから元気が出たぞ！[p]

[return]
[endif]

;--好感度60以上
[if exp="f.rina_f >= 60 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
@bg storage ="nursing/img09_02.png" time=1000
#
莉菜ちゃん？[p]
[playse storage="rina/rn09_004.ogg" buf="0"]
お兄さん、熱はどうですか？[r]
あ～まだ、熱いですね[p]
@bg storage ="room_evening.png" time=1000
#
莉菜ちゃんが看病してくれたから元気が出たぞ！[p]

[return]
[endif]

;--好感度30以上
[if exp="f.rina_f >= 30 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
@bg storage ="nursing/img09_00.png" time=1000
#
莉菜ちゃん？[p]
[playse storage="rina/rn09_001.ogg" buf="0"]
お兄さん、おかゆつくりました[r]
よかったら食べてください[p]
@bg storage ="room_evening.png" time=1000
#
莉菜ちゃんが看病してくれたから元気が出たぞ！[p]

[return]
[endif]

;-静江さん好感度判定-----------------------------------------------------------------------
*sizue_nursing
;--好感度80以上
[if exp="f.sizue_f >= 80 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
@bg storage ="nursing/img10_00.png" time=1000
#
静江さん？[p]
[playse storage="sizue/sz10_003.ogg" buf="0"]
あらあら、お兄ちゃん！お粥食べられる？[r]
おばさんが食べさせてあげようか？[p]
[playse storage="sizue/sz10_003_1.ogg" buf="0"]
はい！あ～ん[p]
@bg storage ="room_evening.png" time=1000
#
静江さんが看病してくれたから元気が出たぞ！[p]

[return]
[endif]

;--好感度60以上
[if exp="f.sizue_f >= 60 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
@bg storage ="nursing/img10_01.png" time=1000
#
静江さん？[p]
[playse storage="sizue/sz10_004.ogg" buf="0"]
お兄ちゃん、まだ熱があるわね～[r]
ちゃんと寝てないとだめよ！[p]
@bg storage ="room_evening.png" time=1000
#
静江さんが看病してくれたから元気が出たぞ！[p]

[return]
[endif]

;--好感度30以上
[if exp="f.sizue_f >= 30 "]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
@bg storage ="nursing/img10_02.png" time=1000
#
静江さん？[p]
[playse storage="sizue/sz10_001.ogg" buf="0"]
お兄ちゃん、どうしたの？[r]
風邪ひいちゃったのね[p]
@bg storage ="room_evening.png" time=1000
#
静江さんが看病してくれたから元気が出たぞ！[p]

[return]
[endif]

;-莉子ちゃん愛情度判定------------------------------------------------------------------------------------------------------
*riko_nursing2

;--莉子お見舞いイベント①　スカート-------------------------------------------------

[if exp="f.nursing_riko == undefined"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_3_1.webm" skip="true"]
[movie storage="mov_08_3_2.webm" skip="true"]
[movie storage="mov_08_3_3.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
莉子ちゃんのパンツ見て元気が出てきたぞ！[p]

;お見舞い胸見せフラグ
[eval exp="f.nursing_riko = 2"]

[return]
[endif]

;--莉子お見舞いイベント②　胸見せ-------------------------------------------------

[if exp="f.nursing_riko == 2"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_4_1.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
莉子ちゃんのおっぱい見たら力が出てきたぞ！[p]

;お見舞い胸見せフラグ
[eval exp="f.nursing_riko = 3"]

[return]
[endif]

;--莉子お見舞いイベント③　クパァ-------------------------------------------------

[if exp="f.nursing_riko == 3"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_5_1.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
莉子ちゃんのおかげで別の所が元気になってきた？[p]

;お見舞いクパァフラグ
[eval exp="f.nursing_riko = 4"]

[return]
[endif]

;--莉子お見舞いイベント④　足コキ-------------------------------------------------

[if exp="f.nursing_riko == 4"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_6_1.webm" skip="true"]
[movie storage="mov_08_6_2.webm" skip="true"]
[movie storage="mov_08_6_4.webm" skip="true"]
[movie storage="mov_08_6_5.webm" skip="true"]
[movie storage="mov_08_6_6.webm" skip="true"]
[movie storage="mov_08_6_7.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
莉子ちゃんが看病してくれたから元気が出た……のかな？[p]

;お見舞い足コキ１回目フラグ
[eval exp="f.nursing_riko = 5"]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[return]
[endif]

;--莉子お見舞いイベント⑤　フェラ１回目-------------------------------------------------
[if exp="f.nursing_riko == 5"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_7_1.webm" skip="true"]
[movie storage="mov_08_7_2.webm" skip="true"]
[movie storage="mov_08_7_3.webm" skip="true"]
[movie storage="mov_08_7_4.webm" skip="true"]
[bgloop mov="mov_08_7_5.webm" ]
[movie storage="mov_08_7_6.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
莉子ちゃんが看病してくれたから元気が出た……のかな？[p]

;お見舞いフェラ１回目フラグ
[eval exp="f.nursing_riko = 6"]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[return]
[endif]

;--莉子お見舞いイベント⑥　フェラ２回目以降-------------------------------------------------
[if exp="f.nursing_riko == 6"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]

[movie storage="mov_08_7_1.webm" skip="true"]
[bgloop mov="mov_08_7_5.webm" ]
[movie storage="mov_08_7_6.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
莉子ちゃんが看病してくれたから元気が出た……のかな？[p]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[return]
[endif]

;-莉菜ちゃん愛情度判定------------------------------------------------------------------------------------------------------
*rina_nursing2

;--莉菜お見舞いイベント①　胸見せ-------------------------------------------------

[if exp="f.nursing_rina == undefined"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
[bg storage ="nursing/img09_04.png" time="1000"]
#莉菜
[playse storage="rina/rn09_008.ogg" buf="0"]
風邪はどうですか？お兄さん[r]
なんか心配です[p]
#
大丈夫だよ、莉菜ちゃん[r]
安静にしていればすぐに元気になるさ[p]
でも、もっと早く元気になる方法があるんだけど……[p]
#莉菜
[playse storage="rina/rn09_009.ogg" buf="0"]
どんな方法ですか？[p]
#
それはね……[p]
莉菜ちゃんのおっぱいかな！[r]
莉菜ちゃんのおっぱいが見られればすぐに元気になるよ！[p]
[bg storage ="nursing/img09_05.png" time="500"]
#莉菜
[playse storage="rina/rn09_010.ogg" buf="0"]
ええ！[r]
……もう……お兄さんのエッチ……[p]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]
[stopse buf="0"]
[freeimage layer="base" time="500"]

[movie storage="mov_09_4_1.webm" skip="true" time="500"]
[movie storage="mov_09_4_2.webm" skip="true"]
[movie storage="mov_09_4_3.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
莉菜ちゃんのおっぱいのおかげで元気だ！！[p]

;お見舞い胸見せフラグ
[eval exp="f.nursing_rina = 2"]

[return]
[endif]

;--莉菜お見舞いイベント②　下見せ-------------------------------------------------

[if exp="f.nursing_rina == 2"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
[bg storage ="nursing/img09_06.png" time="1000"]
#莉菜
[playse storage="rina/rn09_012.ogg" buf="0"]
お兄さん、あんまり無理しないで下さいね[r]
体調はどうですか？[p]
#
うーん……いまいち元気が出ないんだ[p]
#莉菜
[playse storage="rina/rn09_013.ogg" buf="0"]
お薬もってきましょうか？[p]
#
いや……元気になる方法はわかっているんだ[p]
あそこが元気になれば心も元気になる！[p]
あそこを元気にするためにも莉菜ちゃん、お願い！[r]
莉菜ちゃんの大事な所を見せて！[p]
[bg storage ="nursing/img09_07.png" time="500"]
#莉菜
[playse storage="rina/rn09_014.ogg" buf="0"]
な！……なんでそうなるんですか！[p]
#
莉菜ちゃんのあそこが見れれば僕のあそこも元気になって風邪も一発で治るんだよ[r]
莉菜ちゃん、お願い！[p]
#莉菜
[playse storage="rina/rn09_015.ogg" buf="0"]
も～、お兄さんそんなことばっかり考えているんだから[r]
こ……今回だけですよ……[p]
#
;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]
[stopse buf="0"]
[freeimage layer="base" time="500"]

[movie storage="mov_09_5_1.webm" skip="true" time="500"]
[movie storage="mov_09_5_2.webm" skip="true"]
[menuwindows]
[bg storage ="nursing/img09_03.png" time="500"]

ありがとう、莉菜ちゃん[r]
速く元気になって莉菜ちゃんの中に挿れたい！[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]
[movie storage="mov_09_5_3.webm" skip="true" time="500"]


@bg storage ="room_evening.png" time=1000
[menuwindows]
#
莉子ちゃんのあそこが見れたから満足[p]

;お見舞い下見せフラグ
[eval exp="f.nursing_rina = 3"]

[return]
[endif]

;--莉菜お見舞いイベント③　手コキ-------------------------------------------------

[if exp="f.nursing_rina == 3"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]

[bg storage ="nursing/img09_08.png" time="1000"]
#莉菜
[playse storage="rina/rn09_017.ogg" buf="0"]
お兄さん、風邪の時は暖かくしていっぱい寝たほうがいいですよ[p]
#
いや……莉菜ちゃん、僕も寝たいんだけどね……[r]
こまったことがあって[p]
#莉菜
[playse storage="rina/rn09_018.ogg" buf="0"]
なんですか？[p]
#
ほら！これ、[r]
ここがこんなに元気だから全然眠れないんだよ[p]
[bg storage ="nursing/img09_09.png" time="1000"]
#莉菜
[playse storage="rina/rn09_019.ogg" buf="0"]
お兄さんは風邪の時もそんなことばっかりなんだから[p]
#
莉菜ちゃん！お願い！手でいいから、ねっ！[p]
#莉菜
[playse storage="rina/rn09_020.ogg" buf="0"]
しょうがないな……[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]
[freeimage layer="base" time="500"]
[playse storage="se/tekoki_oso.ogg" buf="3" loop="true"]
[bgloop mov="mov_09_6_1.webm"]
[stopse buf="3"]
[movie storage="mov_09_6_3.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
莉菜ちゃんのおかげで元気になった？[p]

;お見舞いテコキフラグ
[eval exp="f.nursing_rina = 4"]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[return]
[endif]

;--莉菜お見舞いイベント④　フェラ-------------------------------------------------

[if exp="f.nursing_rina == 4"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]

[bg storage ="nursing/img09_10.png" time="1000"]
#莉菜
[playse storage="rina/rn09_023.ogg" buf="0"]
お兄さん、また体調崩したんですか？[r]
って本当は元気なんじゃないんですか？[p]
#
そうなんだよ莉菜ちゃん！いっぱい休んで早く治したいんだけど[r]
こいつが言うことを聞いてくれないんだ[p]
お願い！莉菜ちゃん[r]
お口でこいつを鎮めてくれないかな[p]
[bg storage ="nursing/img09_11.png" time="1000"]
#莉菜
[playse storage="rina/rn09_024.ogg" buf="0"]
は～もう、お兄さんはそればっかりなんだから！[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]
[stopse buf="0"]
[freeimage layer="base" time="500"]
;[playse storage="rina/rn09_025.ogg" buf="0" loop="true"]
[bgloop mov="mov_09_7_1.webm" ]
[stopse buf="0"]
[movie storage="mov_09_7_3.webm" skip="true"]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
莉菜ちゃんのおかげで元気が出た……のかな？[p]

;お見舞いフェラフラグ
[eval exp="f.nursing_rina = 4"]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[return]
[endif]

;-静江さん愛情度判定------------------------------------------------------------------------------------------------------
*sizue_nursing2

;--静江お見舞いイベント①　キス-------------------------------------------------

[if exp="f.nursing_sizue == undefined"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]

[bg storage ="nursing/img10_03.png" time="1000"]
#静江
[playse storage="sizue/sz10_005.ogg" buf="0"]
お兄ちゃん大丈夫？[r]
元気が出るおまじないしてあげる[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]
[playse storage="sizue/sz10_006.ogg" buf="0" loop="true"]
[movie storage="mov_10_3_1.webm" skip="true"]
[stopse buf="0"]
@bg storage ="room_evening.png" time=1000
[menuwindows]
#
静江さんのキスでばっちり元気！[p]

;お見舞いキスフラグ
[eval exp="f.nursing_sizue = 2"]

[return]
[endif]

;--静江お見舞いイベント②　胸-------------------------------------------------

[if exp="f.nursing_sizue == 2"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]

[bg storage ="nursing/img10_04.png" time="1000"]
#静江
[playse storage="sizue/sz10_007.ogg" buf="0"]
あらあら、お兄ちゃん、元気ないの？[r]
これで元気になるかな？[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]
[bgloop mov="mov_10_4_1.webm" ]

@bg storage ="room_evening.png" time=1000
[menuwindows]
#
静江さんのおっぱい最高！[p]

;お見舞い胸みせフラグ
[eval exp="f.nursing_sizue = 3"]

[return]
[endif]

;--静江お見舞いイベント③　あそこ-------------------------------------------------

[if exp="f.nursing_sizue == 3"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]

[bg storage ="nursing/img10_05.png" time="1000"]
#静江
[playse storage="sizue/sz10_009.ogg" buf="0"]
かわいそう……お兄ちゃん、辛そうね[r]
でも～おばさんも辛いのよ[p]
[playse storage="sizue/sz10_009_1.ogg" buf="0"]
ほら、見て[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]
[playse storage="sizue/sz10_010.ogg" buf="0"]
[movie storage="mov_10_5_1.webm" skip="true"]
[bgloop mov="mov_10_5_2.webm" ]


@bg storage ="room_evening.png" time=1000
[menuwindows]
#
静江さんのおかげで別の所が元気になってしまった[p]

;お見舞いあそこフラグ
[eval exp="f.nursing_sizue = 4"]

[return]
[endif]

;--静江お見舞いイベント④　フェラ-------------------------------------------------

[if exp="f.nursing_sizue == 4"]
@bg storage ="room_evening.png"
[mask_off time="500"]
#
どうやら疲れすぎて倒れてしまったみたいだ[p]
?[p]
静江さん！[p]

[bg storage ="nursing/img10_06.png" time="1000"]
#静江
[playse storage="sizue/sz10_017.ogg" buf="0"]
お兄ちゃんを元気にするには、これが一番ね[p]

;メッセージボックスは非表示
@layopt layer="message" visible=false
[cm]
[clearfix]

[freeimage layer="base" time="500"]
[bgloop mov="mov_10_6_1.webm" ]
[movie storage="mov_10_6_3.webm" skip="true"]


@bg storage ="room_evening.png" time=1000
[menuwindows]
#
静江さんのおかげで元気になった？[p]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;お見舞いあそこフラグ
[eval exp="f.nursing_sizue = 4"]

[return]
[endif]


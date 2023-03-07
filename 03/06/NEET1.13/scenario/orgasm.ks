;おねだりエッチ
*start


;f.riko_orgasm  絶頂経験ありでフラグオン
;f.riko_sex エッチしたらフラグオン
;f.riko_libido 性欲 エッチしないと増加

;***********************************************************************************************************************
;おねだり判別　莉子
;f.riko_libido　8以上でおねだり
[if exp="f.riko_libido >= 8"]
[p]
[freeimage layer="2" time="0"]
[stop_bgmovie]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_58_1.webm" time="2000"]
#
あれ、莉子ちゃん[r]
どうしたの[p]
#莉子
[playse storage="riko/rk58_001.ogg" buf="0"]
おじさん……莉子、エッチしたい……[p]
#
えっ？[p]
#莉子
[playse storage="riko/rk58_002.ogg" buf="0"]
莉子、エッチしたいの！[p]
#
莉子ちゃん……[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_58_2.webm" time="2000"]
#莉子
[playse storage="riko/rk58_003.ogg" buf="0"]
ほら、おじさん……莉子、もうこんなだよ……おじさんも莉子に挿れたいでしょ？[p]
#
うん[p]
#莉子
[playse storage="riko/rk58_004.ogg" buf="0"]
莉子のオマンコに挿れたい？[p]
#
うん、挿れたい[p]
#莉子
[playse storage="riko/rk58_005.ogg" buf="0"]
おじさんのオチンチン、莉子のオマンコに挿れたい？[p]
#
挿れたい[p]
#莉子
[playse storage="riko/rk58_006.ogg" buf="0"]
そこまで言うなら、莉子がエッチしてあげる[p]
#
うん？[p]
#莉子
[playse storage="riko/rk58_007.ogg" buf="0"]
しょうがないから特別にいっぱいエッチしてあげるからね！　おじさん[p]
#
（あれ？　……まぁ、いっか）[r]
莉子お嬢様、もう我慢できません！[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[playse storage="riko/rk58_008.ogg" buf="0" loop ="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop ="true"]
[bgloop mov="mov_58_3.webm"  ti="2000"]
[playse storage="riko/rk58_009.ogg" buf="0" loop ="true"]
[bgloop mov="mov_58_5.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_58_7.webm" skip="true"]
[playse storage="riko/rk58_011.ogg" buf="0" loop ="true"]
[bgloop mov="mov_58_8.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]

[bg storage="black.png" time="1000"]
@bg storage ="room_night.png" time=1000
[menuwindows]
[uiwindows]
#
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

[call storage="sakurako.ks" target="*orgasm_sakurako"]

[return]
[endif]
;***********************************************************************************************************************
;おねだり判別　莉菜
;f.riko_libido　7以上でおねだり
[if exp="f.rina_libido >= 7"]
[p]
[freeimage layer="2" time="0"]
[stop_bgmovie]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_59_1.webm" time="2000"]
#
あれ、莉菜ちゃん！　どうしたの？[p]
#莉菜
[playse storage="rina/rn59_001.ogg" buf="0"]
お兄さん……あの……[p]
#
ん、なにかな？[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[movie storage="mov_59_2.webm" skip="true"]
[menuwindows]
[bg storage="img_59_9.png" time="1000"]
莉菜ちゃん？[p]
#莉菜
[playse storage="rina/rn59_003.ogg" buf="0"]
いつもお兄さんにいじめられてるので、今日は私がお兄さんをいじめちゃいます！[p]
#
ええ！[p]
#莉菜
[playse storage="rina/rn59_004.ogg" buf="0"]
覚悟してください！[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]
[playse storage="rina/rn59_005.ogg" buf="0" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop ="true"]
[bgloop mov="mov_59_5.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]

[movie storage="mov_59_7.webm" skip="true"]
[playse storage="rina/rn59_009.ogg" buf="0" loop="true"]
[movie storage="mov_59_8.webm" skip="true"]
[stopse buf="0"]
[bg storage="black.png" time="1000"]

@bg storage ="room_night.png" time=1000
[menuwindows]
[uiwindows]

#
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

[call storage="sakurako.ks" target="*orgasm_sakurako"]

[return]
[endif]
;***********************************************************************************************************************
;おねだり判別　静江
;f.riko_libido　6以上でおねだり
[if exp="f.sizue_libido >= 6"]
[p]
[freeimage layer="2" time="0"]
[stop_bgmovie]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_60_2.webm" time="2000"]
#
あ！　静江さん、どうしました[p]
#静江
[playse storage="sizue/sz60_001.ogg" buf="0"]
お兄ちゃん、おばさんね……もう限界なの……[p]
#
ええ！　なにがですか？[p]
#静江
[playse storage="sizue/sz60_002.ogg" buf="0"]
お兄ちゃん……もう……だめ……[p]
#
静江さん！　どうしたんですか！[p]
#静江
[playse storage="sizue/sz60_003.ogg" buf="0"]
お兄ちゃん……エッチしよ！[p]
#
えっ！[p]
[stop_bgmovie time="2000"]
[bgmovie storage="mov_60_3.webm" time="2000"]
#静江
[playse storage="sizue/sz60_004.ogg" buf="0"]
見て,おにいちゃん…おばさんのココ…もうこんななのよ!お兄ちゃんのが欲しくて[r]
グチョグチョなの…もう！　お兄ちゃんのせいよ！　おばさんをこんなにしたんだから……[p]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]
[playse storage="sizue/sz61_009.ogg" buf="0" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop ="true"]
[bgloop mov="mov_60_4.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_60_6.webm" skip="true"]

[bg storage="black.png" time="1000"]
@bg storage ="room_night.png" time=1000
[menuwindows]
[uiwindows]

;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

[call storage="sakurako.ks" target="*orgasm_sakurako"]

[return]
[endif]

;***********************************************************************************************************************
[return]

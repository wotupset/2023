;***********************************************************************************************************************
;-静江さんデート
;静江さんデートエッチ数値
;カラオケ １回目　60　　２回目　75
;遊園地   １回目　65　　２回目　80
;お祭り   １回目　70　　３回目　85
;カフェ   １回目  90
;居酒屋   １回目  90


*start
;桜子消去
#
[chara_hide name="sakurako"]
;***********************************************************************************************************************
;-ナース服判別
[if exp="tf.date_select == 8"]
[jump target="*na_su"]
[endif]
;***********************************************************************************************************************
;-バイブ判別
[if exp="tf.date_select == 9"]
[jump target="*vibrator"]
[endif]
;***********************************************************************************************************************
;-好感度80以下で断られた
[if exp="f.sizue_f < 80"]
;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz49_006.ogg" buf="0"]
お兄ちゃん、ごめんね[r]
今日これからお出かけなの[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz49_007.ogg" buf="0"]
お兄ちゃん、おばさんをからかっちゃダメよ[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz49_008.ogg" buf="0"]
うふふ、お兄ちゃんまた今度ね[p]
[endif]

[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz49_009.ogg" buf="0"]
おばさん今日は二日酔いなの……ごめんなさい[p]
[endif]

[if exp="tf.rand == 4"]
#静江
[playse storage="sizue/sz49_010.ogg" buf="0"]
おばさん、今日は用事があるのよ[p]
[endif]

#
断られてしまった[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]

;***********************************************************************************************************************
;-デートOK

;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz49_001.ogg" buf="0"]
いいわよ、お兄ちゃん[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz49_002.ogg" buf="0"]
おばさんなんかとデートなんて、いいの？[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz49_003.ogg" buf="0"]
お兄ちゃん誘ってくれるの？[p]
[endif]

[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz49_004.ogg" buf="0"]
あら、楽しそうねお兄ちゃん[p]
[endif]

[if exp="tf.rand == 4"]
#静江
[playse storage="sizue/sz49_005.ogg" buf="0"]
うふふ、お兄ちゃん、デートのお誘い？[p]
[endif]

;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

;桜子シナリオコール
[call storage="sakurako.ks" target="*sakurako_date"]

;***********************************************************************************************************************
;-場所判別
;■公園
[if exp="tf.date_select == 1"]
[jump target="*park"]
[endif]
;■ゲーセン
[if exp="tf.date_select == 2"]
[jump target="*arcade"]
[endif]
;■カフェ
[if exp="tf.date_select == 5"]
[jump target="*cafe"]
[endif]
;■カラオケ
[if exp="tf.date_select == 3"]
[jump target="*karaoke"]
[endif]
;■遊園地
[if exp="tf.date_select == 6"]
[jump target="*amusement"]
[endif]
;■お祭り
[if exp="tf.date_select == 7"]
[jump target="*maturi"]
[endif]
;■居酒屋
[if exp="tf.date_select == 11"]
[jump target="*pub"]
[endif]
;***********************************************************************************************************************
;-公園デート
*park
#
[bg storage="park_day.png" time="1000"]
[playbgm storage="haretahiha.ogg" loop="true"]
公園にやってきた！[p]

[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_51_2.webm"]

;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz51_001.ogg" buf="0"]
おにいちゃん！　ほら、ポチモン探しに行くわよ！[p]
#
こんなに暑いのに静江さんは元気だ[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz51_002.ogg" buf="0"]
毎日暑いわね～[p]
#
喉がカラカラです[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz51_004.ogg" buf="0"]
ほ～ら！　お兄ちゃん、いくわよ～[p]
#
もう体力の限界です[p]
[endif]

[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz51_005.ogg" buf="0"]
もうすぐレイドの時間ね！[p]
#
準備は万端ですよ[p]
[endif]

[if exp="tf.rand == 4"]
#静江
[playse storage="sizue/sz51_006.ogg" buf="0"]
ポチモンの卵の距離を稼ぐわよ！[r]
おにいちゃん、公園一周ね！[p]
#
まだ歩くんですか！[p]
[endif]

;公園帰宅
;静江ちゃん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[fadeoutbgm]
[stopse]

[stop_bgmovie time="1000"]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-カフェデート
*cafe
#
[bg storage="cafe.png" time="1000"]
[playbgm storage="osyare.ogg" loop="true"]
カフェにやってきた[p]

[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_54_1.webm"]

;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz54_001.ogg" buf="0"]
お兄ちゃん、ミルク入れる？[p]
#
はい、いっぱい入れてください[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz54_002.ogg" buf="0"]
こう見えてもコーヒーはブラックなのよ！[p]
#
砂糖とミルクは必須です[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz54_003.ogg" buf="0"]
このケーキ、美味しい[p]
#
美味しいですね[p]
[endif]
;***********************************************************************************************************************
;ロータープレイ
[if exp="f.item[6] == true && f.sizue_h >= 90"]
どうしようかな
[glink  color="pink" size="20"  x="950"  width="150"  y="300"  text="ローターを使う"  target="*rotor_play"]
[glink  color="pink" size="20"  x="950"  width="150"  y="400"  text="使わない"  target="*cafe_return"]
[s]
[else]
[jump target="*cafe_return"]
[endif]
*rotor_play
[eval exp="tf.rotor = 0"]
[stop_bgmovie time="1000"]
[fadeoutbgm]
#
ローターのスイッチを入れてみた！
[playse storage="sizue/sz54_004.ogg" buf="0" loop="true"]
[playse storage="se/rotor.ogg" buf="3" loop="true"]
[bgmovie storage="mov_54_2_2.webm" time="1000"]
[jump target="*rotor_play2"]
*rotor_play1
#
[if exp="tf.rotor < 0"]
[eval exp="tf.rotor = 0"]
[endif]
[if exp="tf.rotor > 3"]
[eval exp="tf.rotor = 3"]
[endif]
[stop_bgmovie time="2000"]
[if exp="tf.rotor == 0"]
[bgmovie storage="mov_54_2_2.webm" time="1000"]
[endif]
[if exp="tf.rotor == 1"]
[bgmovie storage="mov_54_3.webm" time="1000"]
[endif]
[if exp="tf.rotor == 2"]
[bgmovie storage="mov_54_6.webm" time="1000"]
[endif]
[if exp="tf.rotor == 3"]
[bgmovie storage="mov_54_4.webm" time="1000"]
[endif]
;セリフランダム--------------------------------------
*rotor_random
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[if exp="tf.rand == tf.rand_old"]
[jump target="*rotor_random"]
[endif]
[if exp="tf.rand == 0"]
[playse storage="se/rotor.ogg" buf="3" loop="true"]
#静江
[playse storage="sizue/sz54_005.ogg" buf="0"]
お兄ちゃん、だめ！
[endif]
[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz54_006.ogg" buf="0"]
もう、お兄ちゃん！！
[endif]
[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz54_007.ogg" buf="0"]
お兄ちゃん…それ以上は…
[endif]
[eval exp="tf.rand_old = tf.rand"]
;---------------------------------------------------------
[wse]
[playse storage="sizue/sz54_004.ogg" buf="0" loop="true"]
*rotor_play2
[eval exp="tf.button_y = 300"]
[if exp="tf.rotor != 3"]
[glink  color="pink" size="20"  x="950"  width="150"  y="&tf.button_y"  text="強くする"  target="*rotor_play1" exp="tf.rotor = tf.rotor + 1" ]
[eval exp="tf.button_y = tf.button_y + 100"]
[endif]
[if exp="tf.rotor != 0"]
[glink  color="pink" size="20"  x="950"  width="150"  y="&tf.button_y"  text="弱くする"  target="*rotor_play1" exp="tf.rotor = tf.rotor - 1" ]
[eval exp="tf.button_y = tf.button_y + 100"]
[endif]
[glink  color="pink" size="20"  x="950"  width="150"  y="&tf.button_y"  text="やめる"  target="*cafe_return"]
[s]
;***********************************************************************************************************************
*cafe_return
;カフェ帰宅
#
;静江さん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[stop_bgmovie time="1000"]
[bg storage="cafe.png" time="500"]
[fadeoutbgm]
[stopse buf="0"]
[stopse buf="3"]
#
カフェで３０００円使った[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-ゲーセンデート
*arcade
#
[bg storage="arcade.png" time="1000"]
[playbgm storage="dance.ogg" loop="true"]
ゲームセンターにやってきた[p]

[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_50_1.webm"]


;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz50_002.ogg" buf="0"]
ニャンタローのぬいぐるみ！[r]
お兄ちゃん取れる？[p]
#
頑張ります[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz50_003.ogg" buf="0"]
おにいちゃん！　プリクラ撮るわよ！[p]
#
いいですね！[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz50_006.ogg" buf="0"]
おにいちゃん！　すごいすごい！[p]
#
奇跡的に取れたぞ！[p]
[endif]

;ゲーセン帰宅
;静江さん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="arcade.png" time="500"]
[fadeoutbgm]
[stopse]

#
ゲーセンで２０００円使った[p]
[eval exp="f.money = f.money - 2000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]


;***********************************************************************************************************************
;-カラオケデート
*karaoke
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[playbgm storage="ways.ogg" loop="true"]
;***********************************************************************************************************************
;静江ランダム会話

[bgmovie storage="mov_52_8.webm"]
#
カラオケにやってきた[p]

;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 7)
[endscript]
[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz52_001.ogg" buf="0"]
おばさん、最近の曲あんまり知らないわよ[p]
#
僕もアニソンしか歌えないです[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz52_002.ogg" buf="0"]
おにいちゃん、何飲む？　おばさんはビール！[p]
#
コーヒーミルク砂糖入りで[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz52_003.ogg" buf="0"]
うん……お兄ちゃん、声がすてきよ……[p]
#
やった！褒められた[p]
[endif]

[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz52_004.ogg" buf="0"]
お兄ちゃん！乗ってきたから延長よ！[p]
#
いいですね[p]
[endif]

[if exp="tf.rand == 4"]
#静江
[playse storage="sizue/sz52_005.ogg" buf="0"]
ふふ、莉子ちゃんの好きな曲？　お兄ちゃんうまいわよ[p]
#
自分が好きな曲なんて言えない[p]
[endif]

[if exp="tf.rand == 5"]
#静江
[playse storage="sizue/sz52_006.ogg" buf="0"]
ピザとか食べちゃいましょうかしら！[p]
#
食べすぎですよ[p]
[endif]

[if exp="tf.rand == 6"]
#静江
[playse storage="sizue/sz52_007.ogg" buf="0"]
何歌おうかしら！[p]
#
静江さんの歌、楽しみ[p]
[endif]
;***********************************************************************************************************************
;カラオケＨ判別
[if exp="f.sizue_h >= 60 && f.karaoke_sizue_h == undefined"]
[jump target="*karaoke_h1"]
[endif]
[if exp="f.sizue_h >= 75 && f.karaoke_sizue_h == 1"]
[jump target="*karaoke_h2"]
[endif]
;***********************************************************************************************************************
;カラオケ帰宅
;静江ちゃん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="karaoke.png" time="500"]
[fadeoutbgm]
[stopse]
#
カラオケで３０００円使った[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;--カラオケＨ1
*karaoke_h1
[fadeoutbgm]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_52_5.webm" time="1000"]

[playse storage="sizue/sz52_008.ogg" buf="0"]
#静江
あらあら、お兄ちゃん[r]
こんなに大きくなっちゃって[p]
#
うぁぁ、し！静江さん……[p]
#静江
[playse storage="sizue/sz52_009.ogg" buf="0"]
お兄ちゃん、気持ちいい？[r]
お兄ちゃんの気持ちよさそうな顔、かわいい[p]
#
し、静江さん、だめですよ！　こんなところで[p]
#静江
[playse storage="sizue/sz52_010.ogg" buf="0"]
気持ちいいでしょ、お兄ちゃん！　周りはうるさいんだから[r]
いっぱい声だしちゃって大丈夫よ[p]
[playse storage="sizue/sz52_010_1.ogg" buf="0"]
おばさんが気持ちよくしてあげる[p]
#
はぁ、はぁ、静江さん……気持ちいい[p]
#静江
[playse storage="sizue/sz52_011.ogg" buf="0"]
お兄ちゃん、かわいい、気持ちいいの？[r]
いつでも出しちゃっていいのよ！ぴゅっぴゅって出しちゃっていいからね[p]
#
あぁぁ、静江さん！　だめ、でっ、出る！　あぁぁぁぁ[p]
[stop_bgmovie]
[stopse buf="0"]
[movie storage="mov_52_6.webm" skip="true"]

[stop_bgmovie time="1000"]
[bg storage="karaoke.png" time="1000"]
;カラオケ帰宅
;静江ちゃん愛情UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="2000"]
;カラオケフラグ　１
[eval exp="f.karaoke_sizue_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

#
静江さんに手抜いてもらった、気持ちよかったな[p]
カラオケで３０００円使った[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;--カラオケＨ2
*karaoke_h2
[fadeoutbgm]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[bgloop mov="mov_52_1.webm"  ti="1000"]
[movie storage="mov_52_2.webm" skip="true"]


;カラオケ帰宅
[bg storage="karaoke.png" time="1000"]
;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;カラオケフラグ　2
;[eval exp="f.karaoke_sizue_h = 1"]
[iscript]
delete f.karaoke_sizue_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
カラオケで３０００円使った[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]


;***********************************************************************************************************************
;-遊園地
*amusement
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[playbgm storage="yuuenti.ogg" loop="true"]


;***********************************************************************************************************************
;遊園地Ｈ判別
[if exp="f.sizue_h >= 65 && f.amusement_sizue_h == undefined"]
[jump target="*amusement_h1"]
[endif]
[if exp="f.sizue_h >= 80 && f.amusement_sizue_h == 1"]
[jump target="*amusement_h2"]
[endif]
;***********************************************************************************************************************
;静江ランダム会話
;ランダム数値の取り出し
*rand
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
[bgmovie storage="mov_53_7.webm"]
遊園地にやってきた[p]
#
何に乗ろうかな……[p]
よし！[p]
お化け屋敷に入って怖がる静江さんを[r]
かっこよくエスコートしよう[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_53_8.webm" time="1000"]
#静江
[playse storage="sizue/sz53_001.ogg" buf="0"]
あらあら！　お兄ちゃん怖いの？[r]
おばさんがついてるから大丈夫！[p]
#
逆にエスコートされてしまった[p]
[endif]

[if exp="tf.rand == 1"]
[bgmovie storage="mov_53_7.webm"]
遊園地にやってきた[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_53_10.webm" time="1000"]
#静江
[playse storage="sizue/sz53_002.ogg" buf="0"]
お兄ちゃん、もう一回乗るわよ！[p]
#
はい！がんばります[p]
[endif]

[if exp="tf.rand == 2"]
[bgmovie storage="mov_53_7.webm"]
遊園地にやってきた[p]
;恋人状態以外はやり直し
[if exp="f.sizue_lover  != 2"]
[jump target="*rand"]
[endif]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_53_9.webm" time="1000"]
#静江
[playse storage="sizue/sz53_006.ogg" buf="0"]
手をつなぐなんて、ちょっと照れちゃうわね！[p]
#
よし、自然に手をつなげたぞ[p]
[endif]

[if exp="tf.rand == 3"]
[bgmovie storage="mov_53_7.webm"]
遊園地にやってきた[p]
#静江
[playse storage="sizue/sz53_003.ogg" buf="0"]
こういうとこでもポチモンは捕まえなくちゃだめよ！[p]
[endif]

;遊園地帰宅
;静江ちゃん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="amusement.png" time="500"]
[fadeoutbgm]
[stopse]
#
静江さんと遊園地でいっぱい遊んで満足[p]
６０００円使った[p]
[eval exp="f.money = f.money - 6000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--遊園地Ｈ1
*amusement_h1
[bg storage="amusement.png" time="500"]
遊園地にやってきた[p]
[stop_bgmovie time="1000"]
[fadeoutbgm]
[bg storage="black.png" time="1000"]


[bgmovie storage="mov_53_1.webm" time="1000"]
#静江
[playse storage="sizue/sz53_007.ogg" buf="0"]
お兄ちゃん、おっぱい好きだもんね！[r]
おばさんのおっぱいでいっぱい気持ちよくしてあげる[p]
#
おっぱい好きです！　静江さんのおっぱい大好きです[p]
#静江
[playse storage="sizue/sz53_008.ogg" buf="0"]
お兄ちゃんのおちんちん、おっぱいに挟まれてビクンビクンしてるわよ[r]
いいの？　お兄ちゃん、おっぱいがいいの？　おっぱい気持ちいい？[p]
#
静江さん！　いいです！　静江さんのおっぱい、きもちいいです[p]
#静江
[playse storage="sizue/sz53_009.ogg" buf="0"]
お兄ちゃん、気持ち良くなってる！[r]
いい？　おっぱい、気持ちいい？[p]
[playse storage="sizue/sz53_009_1.ogg" buf="0"]
うふふ、いいのよお兄ちゃん[r]
またおちんちんからビュルル～って出しちゃっていいからね！[p]
#
静江さん！　あっあぁあああ！[p]

[stop_bgmovie time="1000"]
[stopse buf="0"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_53_2.webm" skip="true"]

;遊園地帰宅
[bg storage="amusement.png" time="1000"]
;静江ちゃん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;遊園地フラグ　１
[eval exp="f.amusement_sizue_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
静江さんのおっぱい大きかったな！[p]
気持ちよくて大満足[p]
遊園地で６０００円使った[p]
[eval exp="f.money = f.money - 6000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--遊園地Ｈ２
*amusement_h2

[bg storage="amusement.png" time="500"]
遊園地にやってきた[p]
[stop_bgmovie time="1000"]
[fadeoutbgm]
[bg storage="black.png" time="1000"]

[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgmovie storage="mov_53_3.webm" time="1000"]
#静江
[playse storage="sizue/sz53_012.ogg" buf="0"]
はぁ、はぁ、お兄ちゃん、おばさんのおまんこ、気持ちいい？[r]
おにいちゃんの好きに出し入れしていいのよ……んっ、はぁ、はぁ……[p]
#
静江さん、気持ちいいです、静江さんの中、とっても気持ちいいです！[p]
#静江
[playse storage="sizue/sz53_013.ogg" buf="0"]
んっ、あぁ、お兄ちゃん、気持ちよさそうな顔……はぁはぁ、かわいい[r]
はぁはぁ、おばさんのおまんこで、いっぱい気持ちよくなってね……んっ、はぁ、はぁ[p]
#
[playse storage="sizue/sz53_014.ogg" buf="0" loop="true"]
静江さん！　はぁ、はぁ、[p]

[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_53_4.webm" skip="true"]

;遊園地帰宅
[bg storage="amusement.png" time="1000"]
;静江ちゃん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;遊園地フラグ　１
;[eval exp="f.amusement_sizue_h = 1"]
[iscript]
delete f.amusement_sizue_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
静江さんと遊園地でいっぱい遊んで[r]
観覧車であんなことまでしたから大満足[p]
６０００円使った[p]
[eval exp="f.money = f.money - 6000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-お祭り
*maturi
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_55_8.webm"]
[playbgm storage="sitamati.ogg" loop="true"]
お祭りにやってきた[p]
;***********************************************************************************************************************
;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz55_001.ogg" buf="0"]
おばさんの浴衣姿なんて見てうれしいの？[p]
#
静江さんとても似合ってますよ[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz55_002.ogg" buf="0"]
食べ過ぎないようにしなくちゃね、ダイエット中なの[p]
#
もう結構食べてるような気がしますよ[p]
[endif]

[if exp="tf.rand == 2"]
#静江
[playse storage="sizue/sz55_003.ogg" buf="0"]
お兄ちゃん、かき氷食べる？[p]
#
いいいですね[p]
[endif]

[if exp="tf.rand == 3"]
#静江
[playse storage="sizue/sz55_004.ogg" buf="0"]
え？　何飲んでるかって、もちろんビールよ[p]
#
そうだろうと思ってました[p]
[endif]
;***********************************************************************************************************************
;お祭りＨ判別
[if exp="f.sizue_h >= 70 && f.maturi_sizue_h == undefined"]
[jump target="*maturi_h1"]
[endif]
[if exp="f.sizue_h >= 85 && f.maturi_sizue_h == 1"]
[jump target="*maturi_h2"]
[endif]
;***********************************************************************************************************************
;お祭り帰宅
;静江さん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="maturi.png" time="500"]
[fadeoutbgm]
[stopse]
#
静江さんとお祭りでいっぱい遊んで満足[p]
５０００円使った[p]
[eval exp="f.money = f.money - 5000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--お祭りＨ1
*maturi_h1
[stop_bgmovie time="1000"]
[fadeoutbgm]
[playbgm storage="night.ogg" loop="true"]
[bgmovie storage="mov_55_9.webm" time="1000"]

#静江
[playse storage="sizue/sz55_005.ogg" buf="0"]
こんなひとけの無いところに連れ来て[r]
どうするつもり！　お兄ちゃん[p]
#
えーと……それは……[p]
#静江
[playse storage="sizue/sz55_006.ogg" buf="0"]
うふふ、おいで、お兄ちゃん！　おばさんが気持ちよくしてあげる[p]
#
[fadeoutbgm]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[stopse buf="0"]
[bgloop mov="mov_55_1.webm"  ti="1000"]
[movie storage="mov_55_2.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
[eval exp="f.maturi_sizue_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
静江さんとお祭りでいっぱい遊んで[r]
浴衣でフェラまでしてくれたから大満足[p]
5０００円使った[p]
[eval exp="f.money = f.money - 5000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--お祭りＨ２
*maturi_h2
[stop_bgmovie time="1000"]
[fadeoutbgm]
[playbgm storage="night.ogg" loop="true"]
[bgmovie storage="mov_55_9.webm" time="1000"]

#静江
[playse storage="sizue/sz55_009.ogg" buf="0"]
またおばさんをひとけの無い場所に連れてきて[r]
何しようとしてるのかな？[p]
#
あ……あの[p]
#静江
[playse storage="sizue/sz55_010.ogg" buf="0"]
いいのよ、お兄ちゃん、お兄ちゃんの好きなようにして[p]

[fadeoutbgm]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[stopse buf="0"]
[playse storage="sizue/sz55_011.ogg" buf="0"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgloop mov="mov_55_3.webm"  ti="1000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_55_4.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;静江ちゃん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
;[eval exp="f.maturi_sizue_h = 1"]
[iscript]
delete f.maturi_sizue_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
静江さんとお祭りでいっぱい遊んだ[r]
浴衣姿でエッチってとても興奮するね[p]
今日は５０００円使った[p]
[eval exp="f.money = f.money - 5000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-ナース服
*na_su

;エッチ度判定
[if exp="f.sizue_h < 70"]
#
さすがにまだ言えない……[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_67_10.webm"]
#静江
[playse storage="sizue/sz67_009.ogg"]
お兄ちゃん、これ着てほしいの？[p]
#
は、はい……ぜひ[p]
#静江
[playse storage="sizue/sz67_010.ogg"]
うふふ、ナース服なんて、おにいちゃんエッチね！　いいわよ！　着てあげる[p]
#静江
[playse storage="sizue/sz67_011.ogg"]
お兄ちゃん、そんな後ろを向いてなくてもいいのよ～[p]
[stop_bgmovie]
[bgmovie storage="mov_67_11.webm"]
#静江
[playse storage="sizue/sz67_012.ogg"]
お兄ちゃん、着替えたわよ！　で、どうするのかな？[p]
#
静江さんやばいです！　とりあえずこんなポーズとか！[p]
#静江
[playse storage="sizue/sz67_013.ogg"]
こんな感じかしら！[p]
#
このポーズもおねがいします！[p]
#静江
[playse storage="sizue/sz67_014.ogg"]
うふふ！　こう？[p]
#
そうです、静江さん……エロいです！[p]
#静江
[playse storage="sizue/sz67_015.ogg"]
もう！お兄ちゃん！　お兄ちゃんが好きなのはおっぱいでしょ！[p]
[stop_bgmovie]
[bgmovie storage="mov_67_12.webm"]
#静江
[playse storage="sizue/sz67_016.ogg"]
先生！　私のおっぱい、こんなに腫れちゃってるの！　見てください！[p]
#
たしかに……こんなに大きくはれてますね！[p]
#静江
[playse storage="sizue/sz67_017.ogg"]
ほら！　もっとよく見てください、先生！　すごいドキドキしてるんですよ！　[p]
#静江
[playse storage="sizue/sz67_018.ogg"]
先生、触診してください！　大きく腫れたおっぱいを隅々まで診察してください[p]
#静江
[playse storage="sizue/sz67_019.ogg"]
先生！　お注射の準備は整ってますか？　確認しますね！[p]
#静江
[playse storage="sizue/sz67_020.ogg"]
あらあら、こんな大きなお注射が！　しっかり消毒しますね！[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="sizue/sz67_021.ogg" loop="true"]
[bgloop mov="mov_67_13.webm"  ti="2000"]
[stop_bgmovie]
[stopse buf="0"]
[bgmovie storage="mov_67_15.webm"]
[menuwindows]
#静江
[playse storage="sizue/sz67_022.ogg"]
先生……早く……お注射ください……ほら！　ここに大きいお注射を……[r]
でないと、もうがまんできないの……先生……お注射して！[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="sizue/sz67_025.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgloop mov="mov_67_16.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_67_17.webm" skip="true"]

;帰宅
;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;ナース服フラグ　１
[eval exp="f.na_su_sizue_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
[menuwindows]
#
ナース服とても興奮するね[p]
#
部屋に戻ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-バイブ
*vibrator

;エッチ度判定
[if exp="f.sizue_h < 80"]
#
さすがにまだ無理だろう……[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]

#
[cm]
[clearfix]
[freeimage layer="2" time="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]

[bgloop mov="mov_86_1.webm"  ti="2000"]
[movie storage="mov_86_3.webm" skip="true"]
[bgloop mov="mov_86_4.webm"  ti="2000"]

;帰宅
;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;バイブフラグ　１
[eval exp="f.vibrator_sizue_h = 1"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
静江さん気持ちよさそうだった[p]
#
部屋に戻ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-居酒屋
*pub
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_56_1.webm"]
[playbgm storage="roujintoneko.ogg" loop="true"]
居酒屋にやってきた[p]
;***********************************************************************************************************************
;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 2)
[endscript]

[if exp="tf.rand == 0"]
#静江
[playse storage="sizue/sz56_002.ogg" buf="0"]
うふふ、おばさん酔わせてどうするつもりなの[p]
[endif]

[if exp="tf.rand == 1"]
#静江
[playse storage="sizue/sz56_005.ogg" buf="0"]
おばさん、少し酔っちゃったかも[p]
[endif]

;***********************************************************************************************************************
;居酒屋Ｈ判別
[if exp="f.sizue_h >= 90 && f.hotel_sizue_h == undefined && f.money >= 10000"]
[jump target="*hotel_h1"]
[endif]
;***********************************************************************************************************************
;居酒屋帰宅
;静江さん好感度UP
[sizue_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="black.png" time="1000"]
[fadeoutbgm]
[stopse]
#
いっぱい飲んだな…[p]
５０００円使った[p]
[eval exp="f.money = f.money - 5000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;ホテルH1
*hotel_h1
[stopse]
[fadeoutbgm]
#
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[movie storage="mov_56_2.webm" skip="true"]
[bg storage="pub/img_56_12.png"]
[menuwindows]
#
静江さん、飲みすぎですよ！[p]
それにもうこんな時間ですよ[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_56_3.webm" skip="true"]
[menuwindows]
#
いえいえ、そんな訳ではないですよ！[p]
まだまだ一緒にいたいです[p]
[cm]
[clearfix]
[bg storage="black.png" time="1000"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_56_4.webm" skip="true"]
[bg storage="hotel/hotel.png" time="2000"]
[menuwindows]
ホテルにやってきた[p]
[bg storage="black.png" time="1000"]
[cm]
[clearfix]
[bg storage="black.png" time="1000"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_56_5.webm" skip="true"]
[bgloop mov="mov_56_7.webm"  ti="2000"]
[playse storage="sizue/sz70_016.ogg" buf="0" loop="true"]
[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
[bgloop mov="mov_56_9.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[bgloop mov="mov_56_13.webm"  ti="2000"]
[movie storage="mov_56_10.webm" skip="true" ti="200"]
[playse storage="sizue/sz55_012_1.ogg" buf="0" loop="true"]
[bgloop mov="mov_56_11.webm"  ti="2000"]
;***********************************************************************************************************************
;ホテル帰宅
[stopse]
[bg storage="hotel/hotel.png" time="2000"]
;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;ホテルフラグ　１
;[eval exp="f.maturi_sizue_h = 1"]
;[iscript]
;delete f.hoteru_sizue_h;
;[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[menuwindows]
#
静江さんとホテルでエッチなんて夢のようだ[p]
居酒屋とホテルで１００００円使った[p]
[eval exp="f.money = f.money - 10000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]


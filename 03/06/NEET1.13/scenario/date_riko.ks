;***********************************************************************************************************************
;-莉子ちゃんデート
;莉子ちゃんデートエッチ数値
;カラオケ  １回目　20　　２回目　40
;遊園地    １回目　50　　２回目　70
;漫画喫茶  １回目　30　　２回目　90
;お祭り    １回目　60　　３回目　80
;映画　　  １回目　65
;公園      １回目  95
;水着      １回目  50
;バイブ    １回目  80
;体操着    １回目  70
;ランドセル１回目  70

*start
;桜子消去
#
[chara_hide name="sakurako"]
;***********************************************************************************************************************
;-スクール水着判別
[if exp="tf.date_select == 8"]
[jump target="*mizugi"]
[endif]
;***********************************************************************************************************************
;-バイブ判別
[if exp="tf.date_select == 9"]
[jump target="*vibrator"]
[endif]
;***********************************************************************************************************************
;-体操着
[if exp="tf.date_select == 12"]
[jump target="*training_wear"]
[endif]
;***********************************************************************************************************************
;-ランドセル
[if exp="tf.date_select == 13"]
[jump target="*school_bag"]
[endif]
;***********************************************************************************************************************
;-好感度80以下で断られた
[if exp="f.riko_f < 80"]
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk28_006.ogg" buf="0"]
え～！面倒くさいからいい[r]
やめとく！[p]
[endif]

[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk28_007.ogg" buf="0"]
また今度ね[p]
[endif]

[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk28_008.ogg" buf="0"]
マリちゃんと遊ぶから！[p]
[endif]

[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk28_009.ogg" buf="0"]
今忙しいの！[p]
[endif]

[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk28_010.ogg" buf="0"]
ロリコンお断り！[p]
[endif]

#
断られてしまった[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]

[endif]
;***********************************************************************************************************************
;-デートOK

;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk28_001.ogg" buf="0"]
いいよ、行ってあげる[p]
[endif]

[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk28_002.ogg" buf="0"]
しょうがないから、付き合ってあげる[p]
[endif]

[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk28_003.ogg" buf="0"]
暇だからいいよ[p]
[endif]

[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk28_004.ogg" buf="0"]
うん、いく！[p]
[endif]

[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk28_005.ogg" buf="0"]
あ、いきたい！[p]
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
;■漫画喫茶
[if exp="tf.date_select == 4"]
[jump target="*cartooncafe"]
[endif]
;■遊園地
[if exp="tf.date_select == 6"]
[jump target="*amusement"]
[endif]
;■お祭り
[if exp="tf.date_select == 7"]
[jump target="*maturi"]
[endif]
;■映画
[if exp="tf.date_select == 10"]
[jump target="*movietheater"]
[endif]
;***********************************************************************************************************************
;-公園デート
*park
[cm]
[freeimage layer="2" time="0"]
[bg storage="park_day.png" time="1000"]
[playbgm storage="haretahiha.ogg" loop="true"]
#
公園にやってきた！[p]
;***********************************************************************************************************************
;公園エッチ判別
[if exp="f.riko_h >= 95"]
[jump target="*park_h1"]
[endif]
;***********************************************************************************************************************
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
[cm]
[clearfix]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[movie storage="mov_30_0.webm" skip="true"]
[menuwindows]
[bgmovie storage="mov_30_0_2.webm"]
[playse storage="riko/rk30_003.ogg" buf="0"]
逆上がり、うまくできないの！[p]
何でも出来る莉子ちゃんが[r]
以外にも逆上がりが出来ないとは！[p]
莉子ちゃんの逆上がりの練習に付き合った！[p]
至近距離でパンチラを堪能したのは秘密である[p]
[endif]

[if exp="tf.rand == 1"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_30_5.webm"]
……[p]
疲れた……運動不足にはきつい……[p]
#莉子
[playse storage="riko/rk30_004.ogg" buf="0"]
おじさん、もう疲れたの？[p]
運動してクタクタになった……[p]
[endif]

[if exp="tf.rand == 2"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_30_6.webm"]
莉子ちゃんスベリ台で遊んでる[p]
可愛いな！眺めてるだけで満足[p]
#莉子
[playse storage="riko/rk30_006.ogg" buf="0"]
そんなに見てたってパンチラしないからね！[p]
#
いや……十分してますから[p]
[endif]

[if exp="tf.rand == 3"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_30_7.webm"]
#莉子
[playse storage="riko/rk30_001.ogg" buf="0"]
鬼ごっこでもする？絶対通報されると思うけど[p]
#
追いかけまわしてクタクタになった[p]
[endif]

[if exp="tf.rand == 4"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_30_7.webm"]
#莉子
[playse storage="riko/rk30_005.ogg" buf="0"]
女の子ばっかり見てるでしょ！[p]
#
いやいや、莉子ちゃんしか見てないよ～[p]
[endif]


;公園帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[fadeoutbgm]
[stopse]
[stop_bgmovie time="1000"]

#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;-公園H
*park_h1

[cm]
[bg storage="black.png" time="1000"]
[clearfix]
[fadeoutbgm]
[stopse buf="0"]
[stopse buf="3"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="riko/rk30_011.ogg" buf="0" loop ="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop ="true"]
[bgloop mov="mov_30_09.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[menuwindows]
[playse storage="riko/rk30_012.ogg" buf="0" loop ="true"]
[bgmovie storage="mov_30_11.webm"]
#莉子
はぁ……はぁ……おじさんの……ばか[r]
変態……はぁ……はぁ……[p]
#
[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
;公園帰宅
[bg storage="park_day.png" time="1000"]
;莉子ちゃん愛情UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="2000"]
;公園フラグ　１
;[eval exp="f.park_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]
#
莉子ちゃんと公園エッチ、スリル満点[p]
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
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_29_2.webm"]
#莉子
[playse storage="riko/rk29_001.ogg" buf="0"]
おじさん、あれ取れる？[p]
#
クレーンゲームね[r]
よ～し、任せときな！[p]
…………[p]
やっぱり取れなかった[p]
[endif]

[if exp="tf.rand == 1"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_29_2.webm"]
#
クレーンゲームに挑戦中！[p]
おっ……いけるか！[p]
あ～…………[p]
#莉子
[playse storage="riko/rk29_005.ogg" buf="0"]
おじさん、全然だめ！[p]
#
やっぱり取れなかった[p]
[endif]

[if exp="tf.rand == 2"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_29_2.webm"]
#莉子
[playse storage="riko/rk29_006.ogg" buf="0"]
莉子のダンス中、いやらしい目でみてたでしょ！[p]
#
ん～……まぁ、否定はしないかな[p]
[endif]

[if exp="tf.rand == 3"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_29_2.webm"]
#莉子
[playse storage="riko/rk29_007.ogg" buf="0"]
おじさんプリクラ一緒に撮ってあげようか？[p]
#
ぜひお願いします！[p]
[endif]

[if exp="tf.rand == 4"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_29_2.webm"]
#莉子
[playse storage="riko/rk29_009.ogg" buf="0"]
おじさんリズム感なさそうね！[p]
#
よく言われるよ！[p]
[endif]

;ゲーセン帰宅
;莉子ちゃん好感度UP
[riko_f]
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
;-カフェデート
*cafe
#
[bg storage="cafe.png" time="1000"]
[playbgm storage="osyare.ogg" loop="true"]
カフェにやってきた[p]
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_35_1.webm"]
#莉子
[playse storage="riko/rk35_001.ogg" buf="0"]
おじさん、莉子イチゴパフェ！[p]
#
いいよ、なんでも頼みな！[p]
[endif]

[if exp="tf.rand == 1"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_35_1.webm"]
#莉子
[playse storage="riko/rk35_002.ogg" buf="0"]
莉子コーラ飲む[p]
#
コーヒーでも頼むかな[p]
[endif]

[if exp="tf.rand == 2"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_35_1.webm"]
#莉子
[playse storage="riko/rk35_003.ogg" buf="0"]
コーヒーなんて美味しいの？苦くて揉めないけど[p]
#
莉子ちゃんはお子様だからね！大人になれば味がわかるよ[r]
（ミルクと砂糖がないと飲めないけどね）[p]
[endif]

[if exp="tf.rand == 3"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_35_1.webm"]
#莉子
[playse storage="riko/rk35_004.ogg" buf="0"]
ケーキ食べていい？[p]
#
あっ自分も食べたくなってきた[p]
[endif]

[if exp="tf.rand == 4"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_35_1.webm"]
#莉子
[playse storage="riko/rk35_005.ogg" buf="0"]
お姉ちゃんには内緒ね[p]
#
あんまり食べ過ぎると莉菜ちゃんに怒られちゃうね[p]
[endif]

;ゲーセン帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[stop_bgmovie time="1000"]
[bg storage="cafe.png" time="500"]
[fadeoutbgm]
[stopse]
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
;-カラオケデート
*karaoke
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[playbgm storage="ways.ogg" loop="true"]


;■一回目
[if exp="f.karaoke_riko ==  undefined"]
#莉子
[bgmovie storage="mov_31_7.webm"]
カラオケやってきた[p]
[playse storage="riko/rk31_001.ogg" buf="0"]
おじさん、莉子のマジョカルラブリー聞かせてあげる♪[p]
[stop_bgmovie]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playbgm storage="Shining_dream.ogg" loop="true"]
[bgloop mov="mov_31_5.webm" ]
[stopbgm]
[eval exp="f.karaoke_riko = true"]
[bgmovie storage="mov_31_7.webm"]
[menuwindows]
#
莉子ちゃんの歌が聞けてだい満足である[p]
[jump target="*karaoke_return"]
[endif]
;***********************************************************************************************************************
;莉子ランダム会話
;ランダム数値の取り出し
[if exp="f.karaoke_riko_h == undefined"]
[bgmovie storage="mov_31_7.webm"]
[else]
[bgmovie storage="mov_31_9.webm"]
[endif]

カラオケやってきた[p]

[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk31_002.ogg" buf="0"]
おじさん、歌へたね！[p]
#
はうっ！……うすうすそうじゃないかと思っていたが……[p]
[endif]

[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk31_005.ogg" buf="0"]
おじさん点数低い～！[p]
#
音痴の現実が突き刺さる……[p]
[endif]

[if exp="tf.rand == 2"]
#
もうすぐ時間みたいだけど[p]
#莉子
[playse storage="riko/rk31_006.ogg" buf="0"]
延長でしょ！[p]
#
了解！[p]
[endif]

[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk31_008.ogg" buf="0"]
おじさん何その歌？知らないから止めちゃお～っと！[p]
#
はぅ……止められてしまった！僕の１８番が……[p]
[endif]

[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk31_008.ogg" buf="0"]
おじさん何その歌？知らないから止めちゃお～っと！[p]
#
はぅ……止められてしまった！僕の１８番が……[p]
[endif]
;***********************************************************************************************************************
;カラオケＨ判別
[if exp="f.riko_h >= 20 && f.karaoke_riko_h == undefined"]
[jump target="*karaoke_h1"]
[endif]
[if exp="f.riko_h >= 40 && f.karaoke_riko_h == 1"]
[jump target="*karaoke_h2"]
[endif]
;***********************************************************************************************************************
*karaoke_return
;カラオケ帰宅
;莉子ちゃん好感度UP
[riko_f]
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
[stop_bgmovie]
[fadeoutbgm]
[bgmovie storage="mov_31_1.webm"]
#莉子
[playse storage="riko/rk31_009.ogg" buf="0"]
まったく、こんな所でも子供に欲情してるんだから[r]
どうするの？　これ[p]
#
莉子ちゃん、そんなに動かしたら……[p]
#莉子
[playse storage="riko/rk31_010.ogg" buf="0"]
自分でやってって言ったんでしょ、このド変態！[p]
#
り……莉子ちゃんに……挿れたい……[p]
#莉子
[playse storage="riko/rk31_011.ogg" buf="0"]
ダメに決まってるでしょ！　こんなド変態には手で十分よ！[p]
#
莉子ちゃん……気持ちいい……[p]
#莉子
[playse storage="riko/rk31_012.ogg" buf="0"]
いく？　もういっちゃう？　子供の手でいっちゃの？　[p]
#
あっ、あぁぁぁぁ[p]
[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_31_2.webm" skip="true"]
[stop_bgmovie]
[menuwindows]
[bgmovie storage="mov_31_8.webm"]
#莉子
[playse storage="riko/rk31_013.ogg" buf="0"]
あ～あ、こんなにいっぱい出ちゃった[p]
#
;カラオケ帰宅
[bg storage="karaoke.png" time="500"]
;莉子ちゃん愛情UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="2000"]
;カラオケフラグ　１
[eval exp="f.karaoke_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

#
莉子ちゃんに手で抜いてもらった[p]
カラオケで３０００円の出費である[p]
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
[stop_bgmovie]
[fadeoutbgm]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_31_3.webm"]
#莉子
[playse storage="riko/rk31_014.ogg" buf="0"]
おじさんはカラオケボックスに来ると、オチンチン出したくなる病なんですか！[p]
#
ああっ……おっ、おじさんは莉子ちゃんに挿れたいだけだよ！[p]
#莉子
[playse storage="riko/rk31_015.ogg" buf="0"]
だめって言ってるでしょ！　おじさんなんかは子供の足でいじられてるのがちょうどいいの！[p]
#
あぁっ……何か……足もいいかも[p]
#莉子
[playse storage="riko/rk31_016.ogg" buf="0"]
そんなに莉子の足でいじめられるのがいいの？　莉子の足、気持ちいい？[p]
#
莉子ちゃんの足、きもちいい[r]
莉子ちゃんの足でもっといじめてください[p]
#莉子
[playse storage="riko/rk31_017.ogg" buf="0"]
ふふ、莉子の足でいっぱい、いじめてあげる[r]
ほ～ら、ほら!早くいっちゃいなさいよ！[p]
#
ううっ、莉子ちゃん、やばい、いっちゃう……あぁぁぁぁ！[p]
[stop_bgmovie]

[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_31_4.webm" skip="true"]
[stop_bgmovie]
[menuwindows]
;カラオケ帰宅
[bg storage="karaoke.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;カラオケフラグ　１
;[eval exp="f.karaoke_riko_h = 1"]
[iscript]
delete f.karaoke_riko_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

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
;-漫画喫茶
*cartooncafe
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_33_3.webm"]
[playbgm storage="sizukana.ogg" loop="true"]
漫画喫茶にやってきた[p]

;***********************************************************************************************************************
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk33_001.ogg" buf="0"]
おじさん、莉子コーラ！[p]
#
かしこまりました、莉子お嬢様！[p]
[endif]

[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk33_002.ogg" buf="0"]
その漫画面白い？[p]
#
面白いよ！もうちょとで読み終わるからね[p]
[endif]

[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk33_005.ogg" buf="0"]
今真剣に読んでるんだから、話しかけないで！[p]
#
怒られてしまった……[p]
[endif]

[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk33_006.ogg" buf="0"]
おじさん、速くそれ読んでよ！[r]
追いついちゃったんだから[p]
#
ちょっ、ちょっとまってよ～[p]
[endif]

[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk33_003.ogg" buf="0"]
どうせおじさん、エロ漫画とか読んでるんでしょ[p]
#
その通りです[p]
[endif]
;***********************************************************************************************************************
;漫画喫茶Ｈ判別
[if exp="f.riko_h >= 30 && f.cartooncafe_riko_h == undefined"]
[jump target="*cartooncafe_h1"]
[endif]
[if exp="f.riko_h >= 90 && f.cartooncafe_riko_h == 1"]
[jump target="*cartooncafe_h2"]
[endif]
;***********************************************************************************************************************
;漫画喫茶帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="cartooncafe.png" time="500"]
[fadeoutbgm]
[stopse]
#
漫画喫茶で３０００円使った[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--漫画喫茶Ｈ1
*cartooncafe_h1
[stop_bgmovie]
[fadeoutbgm]
[bgmovie storage="mov_33_1.webm"]
[playse storage="riko/rk33_007.ogg" buf="0" loop ="true"]
#
莉子ちゃん、気持ちいい！[p]
莉子ちゃんのオマンコがこんな目の前に！[p]
莉子ちゃんのここにおじさんのオチンチン挿れたいよ[p]
#莉子
[playse storage="riko/rk33_009.ogg" buf="0"]
だめって言ってるでしょ！また今度ね！[p]
[playse storage="riko/rk33_007.ogg" buf="0" loop ="true"]
#
ええ～……そんな～[p]

;漫画喫茶帰宅
[bg storage="cartooncafe.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stopse buf="0"]
[stop_bgmovie time="1000"]
;漫画喫茶フラグ　１
[eval exp="f.cartooncafe_riko_h = 1"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

#
漫画喫茶で３０００円使った[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
莉子ちゃんのいじわるで抜けずに帰ってきたのでムラムラである……[p]
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--漫画喫茶Ｈ2
*cartooncafe_h2
[stop_bgmovie]
[fadeoutbgm]
[bgmovie storage="mov_33_4.webm"]
[playse storage="riko/rk33_010.ogg" buf="0"]
#莉子
ほ～ら！ほら！　おじさん、莉子のココに挿れたいでしょ？[p]
#
うう……莉子ちゃん、挿れたいです[p]
#莉子
[playse storage="riko/rk33_011.ogg" buf="0"]
ふふ、でもだ～め！　挿れさせてあげない！[p]
#
そ！　そんな！　莉子ちゃん……[p]
#莉子
[playse storage="riko/rk33_012.ogg" buf="0"]
でも、先っぽが入りそうだよ！　おじさん[p]
#
ああっ……莉子ちゃん……そのまま！[p]
#莉子
[playse storage="riko/rk33_013.ogg" buf="0"]
うっそ～！　やっぱりだ～め！[p]
#
りっ、莉子ちゃ～ん……お願いします！　挿れさせてください！[p]
#莉子
[playse storage="riko/rk33_014.ogg" buf="0"]
え～何を？[p]
#
おじさんのオチンチンを挿れさせて下さい[p]
#莉子
[playse storage="riko/rk33_015.ogg" buf="0"]
どこに？[p]
#
り！　莉子ちゃんのオマンコにです！[p]
#莉子
[playse storage="riko/rk33_016.ogg" buf="0"]
う～ん……どうしようかな～[p]
#
お！　お願いします！莉子様、どうか挿れさせて下さい！[p]
#莉子
[playse storage="riko/rk33_017.ogg" buf="0"]
そこまで言うなら、しょうがないから挿れさせて、あげる[p]
[stop_bgmovie]
[cm]
[clearfix]
[stopse buf="0"]
[stopse buf="3"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_33_7.webm" skip="true"]
[movie storage="mov_33_12.webm" skip="true"]
[playse storage="riko/rk33_020.ogg" buf="0" loop ="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop ="true"]
[bgloop mov="mov_33_8.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_33_9.webm" skip="true"]
[playse storage="riko/rk36_021.ogg" buf="0" loop ="true"]
[movie storage="mov_33_10.webm" skip="true"]
[bgloop mov="mov_33_11.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]


;漫画喫茶帰宅
[bg storage="cartooncafe.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;漫画喫茶フラグ　１
;[eval exp="f.cartooncafe_riko_h = 1"]
[iscript]
delete f.cartooncafe_riko_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]


[stopse buf="0"]
[stop_bgmovie time="1000"]
[menuwindows]
#
漫画喫茶で３０００円使った[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
莉子ちゃんに責められてなんか興奮したかも……[p]
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
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]
[if exp="f.riko_h >= 50 && f.amusement_riko_h == undefined"]
[eval exp="tf.rand = 3"]
[endif]
[if exp="f.riko_h >= 70 && f.amusement_riko_h == 1"]
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[endif]

;タイトスカート
[if exp="tf.rand == 0"]
[bgmovie storage="mov_32_6.webm"]
遊園地にやってきた[p]
#
何に乗ろうかな……[p]
よし！[p]
お化け屋敷に入って怖がる莉子ちゃんを[r]
かっこよくエスコートしよう[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_32_10.webm" time="1000"]
#莉子
[playse storage="riko/rk31_019.ogg" buf="0"]
おじさん……怖いの？　莉子は……怖くないよ……[p]
#
お……おじさんだって、こっ……怖くないよ……[r]
（やばい！すげ～怖い！！）[p]
[endif]
;タイトスカート　
[if exp="tf.rand == 1"]
[bgmovie storage="mov_32_6.webm"]
遊園地にやってきた[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_32_9.webm" time="1000"]
#莉子
[playse storage="riko/rk31_021.ogg" buf="0"]
おじさん！　もう一回いくよ！[p]
#
もうクタクタだけど、そうもいってられなそうだ……[p]
[endif]
;タイトスカート
[if exp="tf.rand == 2"]
[bgmovie storage="mov_32_6.webm"]
遊園地にやってきた[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_32_7.webm" time="1000"]
#莉子
[playse storage="riko/rk31_023.ogg" buf="0"]
おじさん、大丈夫[p]
#
うう……連続ジェットコースターはさすがにきつい……[p]
[endif]
;デニムパンツ
[if exp="tf.rand == 3"]
[bg storage="amusement.png" time="500"]
遊園地にやってきた[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_32_8.webm" time="1000"]
#莉子
[playse storage="riko/rk31_022.ogg" buf="0"]
うわ～、人があんなにちっちゃい！[p]
#
莉子ちゃんの太ももにしか目がいかないな[p]
[endif]
;***********************************************************************************************************************
;遊園地Ｈ判別
[if exp="f.riko_h >= 50 && f.amusement_riko_h == undefined"]
[jump target="*amusement_h1"]
[endif]
[if exp="f.riko_h >= 70 && f.amusement_riko_h == 1"]
[jump target="*amusement_h2"]
[endif]
;***********************************************************************************************************************
;遊園地帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="amusement.png" time="500"]
[fadeoutbgm]
[stopse]
#
莉子ちゃんと遊園地でいっぱい遊んで満足[p]
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
;[bg storage="amusement.png" time="500"]
;遊園地にやってきた[p]
[bg storage="black.png" time="1000"]
[stop_bgmovie time="1000"]
[fadeoutbgm]


[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[playse storage="riko/rk31_025.ogg" buf="0" loop ="true"]
[bgloop mov="mov_32_1.webm"  ti="2000"]
[stopse buf="0"]

[movie storage="mov_32_2.webm" skip="true"]

;遊園地帰宅
[bg storage="amusement.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[fadeoutse time="500"]
[stop_bgmovie time="1000"]

;遊園地フラグ　１
[eval exp="f.amusement_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
莉子ちゃんと遊園地でいっぱい遊んで[r]
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
;--遊園地Ｈ２
*amusement_h2
;[bgmovie storage="mov_32_6.webm"]
;遊園地にやってきた[p]
[stop_bgmovie time="1000"]
[fadeoutbgm]

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="riko/rk31_028.ogg" buf="0" loop ="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop ="true"]
[bgloop mov="mov_32_3.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_32_4.webm" skip="true"]

;遊園地帰宅
[bg storage="amusement.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;遊園地フラグ　１
;[eval exp="f.amusement_riko_h = 1"]
[iscript]
delete f.amusement_riko_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
莉子ちゃんと遊園地でいっぱい遊んで[r]
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
[bgmovie storage="mov_36_12.webm"]
[playbgm storage="sitamati.ogg" loop="true"]
お祭りにやってきた[p]

;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk36_001.ogg" ]
おじさん、ヨーヨ釣りやろ！[p]
#
よーし、おじさんいっぱい吊っちゃうぞ！[p]
[endif]

[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk36_002.ogg"]
莉子、かき氷食べたい[p]
#
毎日暑いね～[p]
[endif]

[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk36_003.ogg" ]
浴衣かわいい？[p]
#
莉子ちゃんの浴衣姿可愛いよ[p]
[endif]

[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk36_004.ogg" ]
おじさん、莉子の浴衣姿、いやらしい目でみてるでしょ！[p]
#
否定はしないけど[p]
[endif]

[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk36_005.ogg"]
やきそば、じゃがばたー、たこ焼き、お好み焼き、イカ焼き、何食べよ～[p]
#
莉子ちゃん食べ過ぎ[p]
[endif]

;***********************************************************************************************************************
;お祭りＨ判別
[if exp="f.riko_h >= 60 && f.maturi_riko_h == undefined"]
[jump target="*maturi_h1"]
[endif]
[if exp="f.riko_h >= 80 && f.maturi_riko_h == 1"]
[jump target="*maturi_h2"]
[endif]
;***********************************************************************************************************************


;お祭り帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[stop_bgmovie time="1000"]
[bg storage="maturi.png" time="500"]
[fadeoutbgm]
[stopse]
#
莉子ちゃんとお祭りでいっぱい遊んで満足[p]
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
[bgmovie storage="mov_36_13.webm"]
#
莉子ちゃん、花火凄かったね！[p]
#莉子
[playse storage="riko/rk36_007_2.ogg"]
なんか、人が全然居ない所にきてるでしょ！　おじさん！[p]
#
そうかな……偶然じゃないかな！[p]
#莉子
[playse storage="riko/rk36_008.ogg"]
莉子にいやらしい事しようとしてるんでしょ！[p]
#
ええ！　ちがうよ！[p]
#莉子
[playse storage="riko/rk36_009.ogg"]
莉子が可愛いからしょうがないよね！[r]
浴衣姿の莉子に欲情してるんでしょう？[p]
#
確かに、莉子ちゃんの浴衣姿……かわいいよ[p]
#莉子
[playse storage="riko/rk36_010.ogg"]
莉子かわいい？[p]
#
うん、莉子ちゃん可愛いよ！　浴衣も似合ってるし[p]
#莉子
[playse storage="riko/rk36_011.ogg"]
そ、そう？　莉子が可愛いすぎるからしょうがないよね！[p]
#
そうだよ、莉子ちゃんが可愛すぎるから！[p]
#莉子
[playse storage="riko/rk36_012.ogg"]
じゃあ、おじさんには莉子がエッチなことしてあげる[p]
[fadeoutbgm]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[stopse buf="0"]
[movie storage="mov_36_1.webm" skip="true"]
[movie storage="mov_36_2.webm" skip="true"]
[bgloop mov="mov_36_3.webm"  ti="1000"]
[movie storage="mov_36_4.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
[eval exp="f.maturi_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
莉子ちゃんとお祭りでいっぱい遊んで[r]
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
[fadeoutbgm]
[playbgm storage="night.ogg" loop="true"]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_36_13.webm"]
#莉子
[playse storage="riko/rk36_015.ogg"]
おじさん、また人の居ない所きてるでしょ！[p]
#
そ！そうかな……たしかに周りには人が居ないな！[p]
#莉子
[playse storage="riko/rk36_016.ogg"]
おじさんそんなに莉子とエッチなことしたいの？[p]
#
それは、もちろん莉子ちゃん可愛いから……[p]
#莉子
[playse storage="riko/rk36_017.ogg"]
まったく子供の浴衣で欲情して！[r]
おじさんはどこまでロリコンなの！そんなに莉子とエッチしたい？[p]
#
し、したいです[p]
#莉子
[playse storage="riko/rk36_018.ogg"]
しょうがないからおじさんとエッチしてあげる[p]
[fadeoutbgm]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="riko/rk36_019.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]

[bgloop mov="mov_36_5.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_36_6.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
;[eval exp="f.maturi_riko_h = 1"]
[iscript]
delete f.maturi_riko_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
莉子ちゃんとお祭りでいっぱい遊んだ[r]
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
;-スクール水着
*mizugi

;エッチ度判定
[if exp="f.riko_h < 50"]
#
さすがにまだ着てくれなそうだな……[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]

#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_65_11.webm"]
#莉子
[playse storage="riko/rk65_012.ogg"]
なにこれ、スクール水着？[p]
#
そう、莉子ちゃんにそれを着てほしいんだ！[p]
#莉子
[playse storage="riko/rk65_013.ogg"]
は～……おじさんはもう筋金入りの変態だね！[r]
ロリコンの帝王って呼んであげる[p]
#
お願い莉子ちゃん！着て着て！[p]
#莉子
[playse storage="riko/rk65_014.ogg"]
しょうがないから着てあげるけど……着るだけだからね！[p]
#
[stop_bgmovie]
[cm]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_65_12.webm"]
#莉子
[playse storage="riko/rk65_015.ogg"]
どう？おじさん、莉子は何を着ても可愛いよね！[p]
#
うん、可愛いよ莉子ちゃん[p]
#莉子
[playse storage="riko/rk65_016.ogg"]
おじさん目がいやらしい……[p]
#
莉子ちゃん、ちょっと後ろ向いて、手はこうして[p]
[stop_bgmovie]
[bgmovie storage="mov_65_13.webm"]
#莉子
[playse storage="riko/rk65_017.ogg"]
ん、こう？こんな感じ[p]
#
そうそう、それそれ[p]
#莉子
[playse storage="riko/rk65_018.ogg"]
ふーん……じゃあ、こんな感じで見えたら興奮する[p]
[stop_bgmovie]
[bgmovie storage="mov_65_14.webm"]
#
は……はい[p]
#莉子
[playse storage="riko/rk65_020.ogg"]
ここをめくったらどうかな？[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[movie storage="mov_65_15.webm" skip="true"]
[bgmovie storage="mov_65_16.webm"]
[menuwindows]
#
はぁ……はぁ……莉子ちゃん触っていい？[p]
#莉子
[playse storage="riko/rk65_021.ogg"]
はっ？　ダメにきまってるでしょ！[p]
#
お願い……莉子ちゃんが可愛くて……もう我慢できないんだ！[p]
#莉子
[playse storage="riko/rk65_022.ogg"]
莉子が可愛いから我慢できないの？[p]
#
莉子ちゃんが可愛すぎて、可愛すぎて……もう我慢の限界です[p]
#莉子
[playse storage="riko/rk65_023.ogg"]
ふ～ん、じゃあ……ちょっとだけだよ……[p]

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="riko/rk65_024.ogg" loop="true"]
[bgloop mov="mov_65_17.webm"  ti="2000"]
[bgloop mov="mov_65_19.webm"  ti="2000"]
[menuwindows]
[bgmovie storage="mov_65_20.webm"]
#
莉子ちゃん、いいよね……挿れてもいいよね[p]
[stopse buf="0"]
#莉子
[playse storage="riko/rk65_025.ogg"]
はぁ、はぁ、おじさんが……[r]
どうしてもって言うなら……別に……いいよ[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="riko/rk65_027.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgloop mov="mov_65_21.webm"  ti="2000"]
[bgloop mov="mov_65_22.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_65_24.webm" skip="true"]
[playse storage="riko/rk65_028.ogg" loop="true"]
[bgloop mov="mov_65_25.webm"  ti="2000"]
[stopse buf="0"]
;帰宅
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;水着フラグ　１
[eval exp="f.mizugi_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
莉子ちゃんのスクール水着とても興奮するね[p]
#
部屋に帰ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-バイブ
*vibrator

;エッチ度判定
[if exp="f.riko_h < 80"]
#
さすがにまだ無理だろう……[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]


[cm]
[clearfix]
[freeimage layer="2" time="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]

[bgloop mov="mov_84_1.webm"  ti="2000"]
[movie storage="mov_84_20.webm" skip="true"]
[bgloop mov="mov_84_21.webm"  ti="2000"]

;帰宅
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="2000"]
;バイブフラグ　１
[eval exp="f.vibrator_riko_h = 1"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
莉子ちゃんとても気持ちよさそうだった[p]
#
部屋に帰ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-映画館デート
*movietheater
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bg storage="movietheater/img_34_11_2.png" time="500"]
[playbgm storage="asobiniikuhi.ogg" loop="true"]
映画館にやってきた[p]
[cm]
[clearfix]
[freeimage layer="2" time="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]

[movie storage="mov_34_1.webm" skip="true"]
[bgmovie storage="mov_34_2.webm"]
[menuwindows]
何の映画を見ようかな?
[glink  color="pink" size="20"  x="900"  width="200"  y="150"  text="アクション"  target="*movie_choice" exp="tf.movie_choice = 1"]
[glink  color="pink" size="20"  x="900"  width="200"  y="220"  text="恋愛"  target="*movie_choice" exp="tf.movie_choice = 2"]
[glink  color="pink" size="20"  x="900"  width="200"  y="290"  text="ドキュメンタリー"  target="*movie_choice" exp="tf.movie_choice = 3"]
[glink  color="pink" size="20"  x="900"  width="200"  y="360"  text="アニメ"  target="*movie_choice" exp="tf.movie_choice = 4"]
[glink  color="pink" size="20"  x="900"  width="200"  y="430"  text="ホラー"  target="*movie_choice" exp="tf.movie_choice = 5"]
[s]
*movie_choice
[stop_bgmovie]

;***********************************************************************************************************************
[if exp="tf.movie_choice == 1"]
[bgmovie storage="mov_34_3_3.webm" time = 2000]
アクション映画を見ている[p]
莉子ちゃん楽しそうでよかった！[p]
[endif]
[if exp="tf.movie_choice == 2"]
[bgmovie storage="mov_34_3_1.webm" time = 2000]
恋愛映画は…[p]
莉子ちゃん退屈そう[p]
[endif]
[if exp="tf.movie_choice == 3"]
[bgmovie storage="mov_34_3_4.webm" time = 2000]
ドキュメンタリーはダメそう[p]
寝ちゃってる…こんなに面白いのに[p]
[endif]
[if exp="tf.movie_choice == 4"]
[bgmovie storage="mov_34_3_2.webm" time = 2000]
アニメは莉子ちゃんの好きなマジョカルフレンズ！[p]
真剣に見ている[p]
[endif]
[if exp="tf.movie_choice == 5"]
[bgmovie storage="mov_34_3_5.webm" time = 2000]
ホラーは苦手そうなのに[p]
強がってる所が可愛いな[p]
[endif]
;***********************************************************************************************************************
;映画館Ｈ判別
[if exp="f.riko_h >= 65 && f.movietheater_riko_h == undefined && tf.movie_choice == 3"]
[jump target="*movietheater_h1"]
[endif]
[if exp="f.riko_h >= 65 && f.movietheater_riko_h == 1 && tf.movie_choice == 3"]
[stop_bgmovie]
[fadeoutbgm]
[bgmovie storage="mov_34_5.webm" time = 2000]
#莉子
[playse storage="riko/rk34_008.ogg" buf="0"]
おじさん、またつまんない映画……[r]
莉子にエッチなことさせたくて来てるんでしょ！[p]
[jump target="*movietheater_h2"]
[endif]

;***********************************************************************************************************************
*movietheater_return
;映画帰宅
;莉子ちゃん好感度UP
[riko_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="movietheater/img_34_11_1.png" time="500"]
[fadeoutbgm]
[stopse]
#
映画で３０００円使った[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;--映画館Ｈ1
*movietheater_h1
[stop_bgmovie]
[fadeoutbgm]
[movie storage="mov_34_4.webm" skip="true"]
[bgmovie storage="mov_34_5.webm" time = 2000]

#莉子
[playse storage="riko/rk34_001.ogg" buf="0"]
この映画、つまらない[p]
#
え！　そう？　つまらないかな？[p]
#莉子
[playse storage="riko/rk34_002.ogg" buf="0"]
だって、他に誰もいないし……つまらないから全然お客いないじゃん[p]
#
結構面白いと思うけどな[p]
#莉子
[playse storage="riko/rk34_003.ogg" buf="0"]
おじさん、変態だからちょっと変わってるんだよ！[p]
#
り、莉子ちゃん！　ちょっと[p]
#莉子
[playse storage="riko/rk34_004.ogg" buf="0"]
あっ、大丈夫、大丈夫！　映画見てていいから[p]
[stop_bgmovie time="2000"]
[bgmovie storage="mov_34_7.webm" time = 2000]
#莉子
[playse storage="riko/rk34_005.ogg" buf="0"]
さすがおじさん！　ちょっと舐めたらもうこんなに大きくなった[r]
おじさんは映画見てればいいから[p]
#
集中できないよ……あうっ[p]
*movietheater_h2
[cm]
[clearfix]
[freeimage layer="2" time="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="2000"]
[movie storage="mov_34_8.webm" skip="true"]
[playse storage="riko/rk34_006.ogg" buf="0" loop="true"]
[stop_bgmovie time="2000"]
[bgloop mov="mov_34_9.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[stop_bgmovie time="2000"]
[movie storage="mov_34_10.webm" skip="true"]
[menuwindows]
;映画帰宅
[bg storage="movietheater/img_34_11_1.png" time="500"]
;莉子ちゃん愛情UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="2000"]
;映画フラグ　１
[eval exp="f.movietheater_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
#
莉子ちゃんに口で抜いてもらった[p]
映画で３０００円の出費である[p]
[eval exp="f.money = f.money - 3000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
#
家に帰ってきた[r]
[jump storage="main.ks" target="*night"]
;***********************************************************************************************************************
;体操着
*training_wear

;エッチ度判定
[if exp="f.riko_h < 70"]
#
さすがにまだ着てくれなそうだな……[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]

#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_65_47.webm"]
#莉子
[playse storage="riko/rk102_001.ogg"]
おじさん何これ？[p]
#
これは古のアイテムでブルマと言ってだね…[p]
#莉子
[playse storage="riko/rk102_002.ogg"]
おじさん莉子にこれを着てほしいの？[p]
#
はい！着てほしいです！[p]
#莉子
[playse storage="riko/rk102_003.ogg"]
え～…どうしよっかな～[p]
#
お願いします！莉子ちゃん、ぜひ着てください！[p]
#莉子
[playse storage="riko/rk102_004.ogg"]
でもこれなんか、恥ずかしいし[p]
#
大丈夫だよ！莉子ちゃんなら絶対に可愛いし！[r]
ちょっとだけだから、ね！お願い莉子ちゃん！[p]
#莉子
[playse storage="riko/rk102_005.ogg"]
おじさん必死すぎ…[p]
#
お願いします、莉子ちゃん！どうか少しだけ！[r]
少しだけなので、着るだけだからね、ね、ね！[p]
#莉子
[playse storage="riko/rk102_006.ogg"]
もう！しょうがないから着てあげるけど、着るだけだからね[p]
#
やった～[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_65_48.webm" skip="true"]
[stop_bgmovie]
[menuwindows]
[bgmovie storage="mov_65_50.webm" time="1000"]

#莉子
[playse storage="riko/rk102_007.ogg"]
どお？おじさん！莉子可愛いでしょう？[p]
#
はい、莉子ちゃん可愛いです！[p]
#莉子
[playse storage="riko/rk102_008.ogg"]
おじさん、こんなのがいいの？　ふーん…変態ね！[p]
[playse storage="riko/rk102_009.ogg"]
おじさん鼻息荒いんだけど！　さわっちゃダメだからね！[p]
#
莉子ちゃん、もう我慢できないんだけど！ちょっとだけ触っていい？[p]
#莉子
[playse storage="riko/rk102_010.ogg"]
だ～め！触っちゃだめだからね！[p]
#
そんな…[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_65_52.webm" time="1000"]
#莉子
[playse storage="riko/rk102_011.ogg"]
おじさん、こんな感じ！エッチでしょう？[p]
[playse storage="riko/rk102_012.ogg"]
そ～れそれ！うわ～おじさん目が血走ってる！[p]
[playse storage="riko/rk102_013.ogg"]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_65_51.webm" time="1000"]
ちらっ！　どう？おじさん、もっと見たい！[p]
[playse storage="riko/rk102_014.ogg"]
おじさん、顔近いんだけど！こっ、こら！触っちゃダメって…[p]
[stop_bgmovie time="1000"]
[playse storage="riko/rk102_015.ogg" loop="true"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bgloop mov="mov_65_34.webm"  ti="2000"]
[playse storage="riko/rk68_028.ogg" loop="true"]
[playse storage="se/kutyu02.ogg" loop="true" buf="3"]
[bgloop mov="mov_65_35.webm"  ti="2000"]
[bgloop mov="mov_65_35_2.webm"  ti="2000"]
[bgloop mov="mov_65_36.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_65_37.webm" skip="true"]
[playse storage="riko/rk65_028.ogg" loop="true"]
[bgloop mov="mov_65_38.webm"  ti="2000"]
[stopse buf="0"]
;帰宅
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;体操着フラグ　１
[eval exp="f.training_wear_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
莉子ちゃんのブルマとても興奮するね[p]
#
部屋に帰ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;ランドセル
*school_bag

;エッチ度判定
[if exp="f.riko_h < 70"]
#
さすがにまだ着てくれなそうだな……[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]

#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_65_40.webm"]
#莉子
[playse storage="riko/rk101_001.ogg"]
おじさん、わざわざこれ買ってきたの…[p]
#
莉子ちゃんに背負ってほしいんだ！制服と一緒につけて！[p]
#莉子
[playse storage="riko/rk101_002.ogg"]
は～、まさかここまでロリコンだったとは…[r]
もう、恥ずかしくないの、このド変態！[p]
#
お願い、莉子ちゃんの可愛い姿が見たいんだ！[p]
#莉子
[playse storage="riko/rk101_003.ogg"]
莉子の可愛い姿が見たいの？[p]
#
そうそう、莉子ちゃんが可愛いからどうしても見たいんだ！[p]
#莉子
[playse storage="riko/rk101_004.ogg"]
そこまで言うなら着てあげるけど…着るだけだからね！[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_65_53.webm" skip="true"]
[stop_bgmovie]
[menuwindows]
[bgmovie storage="mov_65_41.webm" time="1000"]
#
莉子ちゃんのランドセル姿！可愛すぎる！[p]
#莉子
[playse storage="riko/rk101_005.ogg"]
おじさん顔が変態！キモい顔がさらにキモくなってる[p]
#
莉子ちゃんが可愛すぎるからしょうがないよ[p]
#莉子
[playse storage="riko/rk101_006.ogg"]
そう？莉子可愛いい？[p]
#
すごく可愛いよ莉子ちゃん！[p]
#莉子
[playse storage="riko/rk101_007.ogg"]
じゃあ、しょうがないよね！ちょっとだけサービスしてあげる[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_65_42.webm" skip="true"]
[stop_bgmovie]
[menuwindows]
[bgmovie storage="mov_65_45.webm" time="1000"]
#莉子
[playse storage="riko/rk101_008.ogg"]
どう？おじさん！[p]
[playse storage="riko/rk101_009.ogg"]
莉子かわいいでしょ！[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_65_43.webm" time="1000"]
[playse storage="riko/rk101_010.ogg"]
こんな感じでどう？[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_65_44.webm" time="1000"]
[playse storage="riko/rk101_011.ogg"]
うわ～！やらしい顔！おじさん、子供のランドセル姿で欲情してるなんて[r]
どうしようもないロリコンね！[p]
[playse storage="riko/rk101_012.ogg"]
ちょっと！おじさん顔近いんだけど…おさわり禁止！[p]
#
莉子ちゃんが可愛すぎてもう我慢できないよ[r]
お願い、ちょっとだけ！[p]
#莉子
[playse storage="riko/rk101_013.ogg"]
もう…！　莉子が可愛すぎるからしょうがないよね！[r]
ちょっとだけだからね！[p]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_65_46.webm" skip="true"]
[stop_bgmovie]
[playse storage="riko/rk101_014.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgloop mov="mov_65_28.webm"  ti="2000"]

[playse storage="riko/rk68_028.ogg" loop="true"]
[playse storage="se/kutyu02.ogg" loop="true" buf="3"]
[bgloop mov="mov_65_29.webm"  ti="2000"]
[playse storage="riko/rk68_031.ogg" loop="true"]
[bgloop mov="mov_65_30.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_65_32.webm" skip="true"]
[playse storage="riko/rk65_028.ogg" loop="true"]
[bgloop mov="mov_65_33.webm"  ti="2000"]
[stopse buf="0"]
;帰宅
;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;ランドセルフラグ　１
[eval exp="f.school_bag_riko_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[menuwindows]
#
莉子ちゃんのランドセル姿とても興奮するね[p]
#
部屋に帰ってきた[r]
[jump storage="main.ks" target="*night"]
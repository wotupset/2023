;***********************************************************************************************************************
;-莉菜ちゃんデート
;莉菜ちゃんデートエッチ数値
;カラオケ １回目　20　　２回目　40
;遊園地   １回目　50　　２回目　70
;漫画喫茶 １回目　30　　２回目　50
;お祭り   １回目　60　　３回目　80
;映画     １回目  45    ２回目  45



*start
;桜子消去
#
[chara_hide name="sakurako"]
;***********************************************************************************************************************
;-メイド服判別
[if exp="tf.date_select == 8"]
[jump target="*meido"]
[endif]
;***********************************************************************************************************************
;-バイブ判別
[if exp="tf.date_select == 9"]
[jump target="*vibrator"]
[endif]
;***********************************************************************************************************************
;-好感度80以下で断られた
[if exp="f.rina_f < 80"]
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn39_006.ogg" buf="0"]
ごめんなさい、今日は用事があって[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn39_007.ogg" buf="0"]
今日は友達と約束があって、ごめんなさい[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn39_008.ogg" buf="0"]
ちょっと今忙しくて、また今度誘ってください[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn39_009.ogg" buf="0"]
あ、すいません……お兄さん、ちょっと今日は……[p]
[endif]

[if exp="tf.rand == 4"]
#莉菜
[playse storage="rina/rn39_010.ogg" buf="0"]
これからお出かけなので、また今度お願いします[p]
[endif]

#
断られてしまった[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]

;***********************************************************************************************************************
;-デートOK

;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn39_001.ogg" buf="0"]
いいですよ[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn39_002.ogg" buf="0"]
はい、行きます[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn39_003.ogg" buf="0"]
私も行きたいと思ってたんですよ！[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn39_004.ogg" buf="0"]
もちろん行きますよ[p]
[endif]

[if exp="tf.rand == 4"]
#莉菜
[playse storage="rina/rn39_005.ogg" buf="0"]
行きます！ちょっと待ってください！[r]
準備しますので！[p]
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
[jump target="maturi"]
[endif]
;■映画
[if exp="tf.date_select == 10"]
[jump target="*movietheater"]
[endif]
;***********************************************************************************************************************
;-公園デート
*park
#
[bg storage="park_day.png" time="1000"]
[playbgm storage="haretahiha.ogg" loop="true"]
公園にやってきた！[p]
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_40_1.webm"]
#莉菜
[playse storage="rina/rn40_001.ogg" buf="0"]
今日は天気がよくて、気持ちいいですね！[p]
#
公園の自然の中は気持ちいいね[p]
[endif]

[if exp="tf.rand == 1"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_40_1.webm"]
#莉菜
[playse storage="rina/rn40_002.ogg" buf="0"]
毎日暑いですよね！[p]
#
今日も最高に暑い[p]
[endif]

[if exp="tf.rand == 2"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_40_2.webm"]
#莉菜
[playse storage="rina/rn40_003.ogg" buf="0"]
お弁当つくってきました！[p]
#
莉菜ちゃんの作る料理は何でも美味しいね[p]
[endif]

[if exp="tf.rand == 3"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_40_2.webm"]
#莉菜
[playse storage="rina/rn40_004.ogg" buf="0"]
こんなに毎日暑いと、冷たいものばかり飲んじゃいますね[p]
#
飲みすぎておなか壊したりして[p]
[endif]

[if exp="tf.rand == 4"]
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_40_3.webm"]
#莉菜
[playse storage="rina/rn42_006.ogg" buf="0"]
お兄さん、大丈夫ですか？[p]
#
ちょっと運動したらこのざまである……[p]
眺めは最高だけど[p]
[endif]

;公園帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[fadeoutbgm]
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
[bgmovie storage="mov_45_1.webm"]

;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn45_002.ogg" buf="0"]
ここのケーキ、おいしいんです！[p]
#
おお！美味しいね！[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn45_003.ogg" buf="0"]
家族には内緒ですよ！[p]
#
莉子ちゃんとか怒っちゃいそう[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn45_004.ogg" buf="0"]
私は抹茶ラテにします[p]
#
じゃあ、コーヒをミルクいっぱいで[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn45_005.ogg" buf="0"]
ブルーベリーミルフィーユが好きです[p]
#
ほうほう、自分も食べてみようかな[p]
[endif]

;カフェ帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[stop_bgmovie time="1000"]
[bg storage="cafe.png" time="500"]
[fadeoutbgm]
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

[if exp="f.rina_h >= 40 && f.karaoke_rina_h == 1"]
[bgmovie storage="mov_41_6.webm"]
[else]
[bgmovie storage="mov_41_7.webm"]
[endif]

カラオケやってきた[p]
;***********************************************************************************************************************
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn41_001.ogg" buf="0"]
え～と、私は好きですよ！[p]
#
僕の歌をわかっくれる人がここに！[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn41_002.ogg" buf="0"]
何、歌おうかな[p]
#
莉菜ちゃんの歌、楽しみ[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn41_003.ogg" buf="0"]
恥ずかしいけど、歌います！[p]
#
莉菜ちゃんがんばれ～[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn41_004.ogg" buf="0"]
兄さん、飲み物何がいいですか？[p]
#
じゃあ、コーヒーでも……ミルク砂糖入りで[p]
[endif]

[if exp="tf.rand == 4"]
#莉菜
[playse storage="rina/rn41_005.ogg" buf="0"]
お兄さん、延長どうします？[p]
#
ぜひ延長で！[p]
[endif]

;***********************************************************************************************************************
;カラオケＨ判別
[if exp="f.rina_h >= 20 && f.karaoke_rina_h == undefined"]
[jump target="*karaoke_h1"]
[endif]
[if exp="f.rina_h >= 40 && f.karaoke_rina_h == 1"]
[jump target="*karaoke_h2"]
[endif]
;***********************************************************************************************************************

;カラオケ帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="karaoke.png" time="500"]
[fadeoutbgm]
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
[stop_bgmovie time="2000"]
[fadeoutbgm]
[bgmovie storage="mov_41_1.webm" time="2000"]
[playse storage="rina/rn41_007.ogg" buf="0" loop="true"]
#
莉菜ちゃんのフェラ、気持ちいい！[p]
莉菜ちゃんのオマンコをこんな近くで見ながら[r]
フェラしてもらえるなんて[p]
莉菜ちゃんのお尻柔らかい[p]
こんなのすぐにいっちゃいそうだ！[p]
うう……やばい[p]

[stop_bgmovie time="1000"]
[stopse buf="0"]
[bg storage="karaoke.png" time="500"]
;カラオケ帰宅
;莉菜ちゃん愛情UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;カラオケフラグ　１
[eval exp="f.karaoke_rina_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

#
いきそうになって時間がきてしまった……[p]
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
[stop_bgmovie time="2000"]
[fadeoutbgm]
[bgmovie storage="mov_41_2.webm" time="2000"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
#莉菜
[playse storage="rina/rn41_008.ogg" buf="0"]
んっ、んっ、だ、だめですよ、お兄さん[r]
んっ、んっ、こ……こんな所で、んっ、んっ、あっ、ん！[p]
[playse storage="rina/rn41_009.ogg" buf="0" loop="true"]
#
結構うるさいから大丈夫だよ[p]
前回のフェラは途中だったから[r]
今回はいっぱい気持ちよくしてもらおうかな[p]
スリルと緊張でよけい興奮するかも[p]
莉菜ちゃん気持ちいい！[p]
ああっ……いきそうだよ莉菜ちゃん[p]
うっ……あぁぁ[p]
[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="rina/rn41_010.ogg" buf="0" loop="true"]
[movie storage="mov_41_3.webm" skip="true"]
[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
;カラオケ帰宅
[bg storage="karaoke.png" time="500"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;カラオケフラグ　2
;[eval exp="f.karaoke_rina_h = 1"]
[iscript]
delete f.karaoke_rina_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

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
;-漫画喫茶
*cartooncafe
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

[playbgm storage="sizukana.ogg" loop="true"]

[if exp="f.rina_h >= 50 && f.cartooncafe_rina_h == 1"]
[bgmovie storage="mov_43_7.webm"]
[else]
[bgmovie storage="mov_43_8.webm"]
[endif]
漫画喫茶やってきた[p]
;***********************************************************************************************************************
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn43_001.ogg" buf="0"]
おすすめってありますか？[p]
#
えーとね……[r]
（まさかエッチな漫画を進める訳にもいかないしな……）[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn43_002.ogg" buf="0"]
お兄さん、何飲みますか？　持ってきますよ[p]
#
莉菜ちゃんありがとう！じゃぁ、コーヒミルク砂糖入りで[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn43_003.ogg" buf="0"]
少女漫画とか読みますね！[p]
#
じゃぁ僕は青年漫画でも[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn43_004.ogg" buf="0"]
お兄さん、エッチそうなの読んでる！[p]
#
ち、違うんだ！エッチそうに見えて実は……エッチな漫画です[p]
[endif]

;***********************************************************************************************************************
;漫画喫茶Ｈ判別
[if exp="f.rina_h >= 30 && f.cartooncafe_rina_h == undefined"]
[jump target="*cartooncafe_h1"]
[endif]

[if exp="f.rina_h >= 50 && f.cartooncafe_rina_h == 1"]
[jump target="*cartooncafe_h2"]
[endif]

;***********************************************************************************************************************

;漫画喫茶帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="cartooncafe.png" time="500"]
[fadeoutbgm]
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
[stop_bgmovie time="2000"]
[fadeoutbgm]
[bgmovie storage="mov_43_3.webm" time="2000"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[playse storage="rina/rn43_007.ogg" buf="0" loop="true"]

#
周りに聞こえないようにしないと[p]
莉菜ちゃんも声を出さないようにしてるのがさらに[r]
興奮を倍増するぞ[p]
はぁ、はぁ、気持ちいい[p]
莉菜ちゃん、もういきそう！[p]
あっ！うう[p]

[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_43_4.webm" skip="true"]
[bg storage="cartooncafe.png" time="1000"]
;漫画喫茶帰宅
;莉菜ちゃん愛情UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]


;カラオケフラグ　１
[eval exp="f.karaoke_rina_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[stop_bgmovie time="1000"]
;漫画喫茶フラグ　１
[eval exp="f.cartooncafe_rina_h = 1"]
[menuwindows]
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
;--漫画喫茶Ｈ2
*cartooncafe_h2
[stop_bgmovie time="2000"]
[fadeoutbgm]
[bgmovie storage="mov_43_1.webm"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[playse storage="rina/rn43_006.ogg" buf="0" loop="true"]

#
莉菜ちゃん、静かにしないと聞こえちゃうからね！[p]
このスリルが興奮する[p]
莉菜ちゃん、気持ちいいよ莉菜ちゃん！[p]
ああっ、莉菜ちゃん！もういっちゃうよ！[p]
莉菜ちゃんのオマンコにいっぱい出しちゃうからね！[p]
あっ、ううう……[p]
[stop_bgmovie time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_43_2.webm" skip="true"]
[bg storage="cartooncafe.png" time="1000"]
;漫画喫茶帰宅
;莉菜ちゃん愛情UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;漫画喫茶フラグ　2
;[eval exp="f.cartooncafe_rina_h = 1"]
[iscript]
delete f.cartooncafe_rina_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
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
;-遊園地
*amusement
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_42_9.webm"]
[playbgm storage="yuuenti.ogg" loop="true"]
遊園地にやってきた[p]

;***********************************************************************************************************************
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#
何に乗ろうかな……[p]
よし！[p]
お化け屋敷に入って怖がる莉菜ちゃんを[r]
かっこよくエスコートしよう[p]
[stop_bgmovie time="1000"]
[bg storage="img_42_11.png" time="500"]
#莉菜
[playse storage="rina/rn42_002.ogg" buf="0"]
きゃ～！お兄さん！だめだめ～！　無理無理～！[p]
#
だ、大丈夫だよ莉菜ちゃん！僕がついてるから！[r]
（やべ～！！すげー怖い）[p]
[bg storage="black.png" time="2000"]
[endif]

[if exp="tf.rand == 1"]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_42_10.webm" time="1000"]
#莉菜
[playse storage="rina/rn42_001.ogg" buf="0"]
お兄さん！ほらほら！[r]
次はあれ乗りましょうよ！[p]
#
本当は気持ち悪いんだけど、莉菜ちゃんの前ではかっこつけないと！[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn42_004.ogg" buf="0"]
お土産買ってかないとですね！[p]
#
莉子ちゃん怒りそうだしね！[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn42_005.ogg" buf="0"]
ジェットコースター大好きです♪[p]
#
う、うん……そうだね！[r]
（苦手とは言えない……）[p]
[endif]

;***********************************************************************************************************************
;遊園地Ｈ判別
[if exp="f.rina_h >= 50 && f.amusement_rina_h == undefined"]
[jump target="*amusement_h1"]
[endif]
[if exp="f.rina_h >= 70 && f.amusement_rina_h == 1"]
[jump target="*amusement_h2"]
[endif]
;***********************************************************************************************************************
;遊園地帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="amusement.png" time="500"]
[fadeoutbgm]
#
莉菜ちゃんと遊園地でいっぱい遊んで満足[p]
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
[stop_bgmovie time="2000"]
[fadeoutbgm]
[bgmovie storage="mov_42_1.webm" time="2000"]
#莉菜
[playse storage="rina/rn42_007.ogg" buf="0"]
お兄さん、気持ちいいですか？[p]
#
いいよ！　莉菜ちゃん、莉菜ちゃんのおっぱい大きいからとてもいい！[p]
#莉菜
[playse storage="rina/rn42_008.ogg" buf="0"]
上手くできないけど、お兄さんをいっぱい気持ちよくしたいです[p]
#
ああっ、莉菜ちゃん、いっ！いく～[p]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
[stopse buf="0"]
[stopse buf="3"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_42_2.webm" skip="true"]
;遊園地帰宅
[bg storage="amusement.png" time="2000"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;遊園地フラグ　１
[eval exp="f.amusement_rina_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
まさか莉菜ちゃんがパイズリしてくれるなんて[p]
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
[stop_bgmovie time="2000"]
[fadeoutbgm]

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[playse storage="rina/rn42_011.ogg" buf="0" loop="true"]
[bgloop mov="mov_42_3.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_42_4.webm" skip="true"]

;遊園地帰宅
[bg storage="amusement.png" time="2000"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;遊園地フラグ　１
;[eval exp="f.amusement_rina_h = 1"]
[iscript]
delete f.amusement_rina_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
莉菜ちゃんと遊園地でいっぱい遊んで[r]
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
[bgmovie storage="mov_46_7.webm"]
[playbgm storage="sitamati.ogg" loop="true"]
お祭りにやってきた[p]

;***********************************************************************************************************************
;莉菜ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#莉菜
[playse storage="rina/rn46_001.ogg" buf="0"]
お兄さん、似合います？浴衣[p]
#
莉菜ちゃんは何着ても可愛いと思う[p]
[endif]

[if exp="tf.rand == 1"]
#莉菜
[playse storage="rina/rn46_002.ogg" buf="0"]
ヨーヨー釣り、やってみましょ！[p]
#
よ～し、がんばるぞ！[p]
[endif]

[if exp="tf.rand == 2"]
#莉菜
[playse storage="rina/rn46_004.ogg" buf="0"]
花火大会楽しみです[p]
#
まさか、莉菜ちゃんと花火が見られるなんて[p]
[endif]

[if exp="tf.rand == 3"]
#莉菜
[playse storage="rina/rn46_005.ogg" buf="0"]
暑いですね、かき氷でも食べましょう[p]
#
毎日暑いよね[p]
[endif]

;***********************************************************************************************************************
;お祭りＨ判別
[if exp="f.rina_h >= 60 && f.maturi_rina_h == undefined"]
[jump target="*maturi_h1"]
[endif]
[if exp="f.rina_h >= 80 && f.maturi_rina_h == 1"]
[jump target="*maturi_h2"]
[endif]
;***********************************************************************************************************************

;お祭り帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
[stop_bgmovie time="1000"]
[bg storage="maturi.png" time="500"]
[fadeoutbgm]
#
莉菜ちゃんとお祭りでいっぱい遊んで満足[p]
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
[bgmovie storage="mov_46_8.webm"]
#
花火、綺麗だったね[p]
#莉菜
[playse storage="rina/rn46_006.ogg" buf="0"]
はい、とても綺麗でした[p]
#
でも、莉菜ちゃんはもっと綺麗だよ[p]
#莉菜
[playse storage="rina/rn46_007.ogg" buf="0"]
もう、お兄さん、何いってるんですか！[p]
#
莉菜ちゃんの浴衣姿、可愛くてどうにかなっちゃいそう[p]
#莉菜
[playse storage="rina/rn46_008.ogg" buf="0"]
お兄さん、ダメです！こんな所で！[p]
#
周りにはもう誰もいないよ[p]
#莉菜
[playse storage="rina/rn46_009.ogg" buf="0"]
……お兄さん！　わざと人の居ない所にきたんでしょう？[p]
#
お願い！　莉菜ちゃん。　もうこんなになっちゃってるんだ[p]
[fadeoutbgm]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[bgloop mov="mov_46_1.webm"  ti="1000"]
[stopse buf="0"]
[movie storage="mov_46_2.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
[eval exp="f.maturi_rina_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
莉菜ちゃんとお祭りでいっぱい遊んで[r]
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
[bgmovie storage="mov_46_8.webm"]
#
楽しかったね！　お祭り[p]
#莉菜
…………[p]
#
ん？　どうしたの、莉菜ちゃん[p]
#莉菜
[playse storage="rina/rn46_014.ogg" buf="0"]
お兄さんまた、ひと気の無い所に来てる！[p]
#
だって、しょうがないよ！[p]
#莉菜
[playse storage="rina/rn46_015.ogg" buf="0"]
何がですか？[p]
#
莉菜ちゃんの浴衣姿が可愛すぎるんだから、これはもう莉菜ちゃんのせいだと思う！[p]
#莉菜
[playse storage="rina/rn46_016.ogg" buf="0"]
どういう理屈ですか！[p]
#
莉菜ちゃんのせいだから、莉菜ちゃんに責任を取ってもらわないとだめだよね！[p]
#莉菜
[playse storage="rina/rn46_017.ogg" buf="0"]
お兄さんはエッチな事しか頭にないんでしょ！[p]
#
莉菜ちゃんが可愛すぎるからいけないんだよ！[p]
#莉菜
[playse storage="rina/rn46_018.ogg" buf="0"]
もう……お兄さんの……ばか……[p]
[fadeoutbgm]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[playse storage="rina/rn46_019.ogg" buf="0" loop="true"]
[bgloop mov="mov_46_3.webm"  ti="1000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_46_4.webm" skip="true"]

;お祭り帰宅
[bg storage="maturi_night.png" time="500"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;お祭りフラグ　１
;[eval exp="f.maturi_rina_h = 1"]
[iscript]
delete f.maturi_rina_h;
[endscript]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
莉菜ちゃんとお祭りでいっぱい遊んだ[r]
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
;-メイド服
*meido


;エッチ度判定
[if exp="f.rina_h < 50"]
#
さすがにまだ着てくれなそうだな……[p]
さて、どうしようか
[jump storage="main.ks" target="*choice2"]
[endif]


#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_66_10.webm"]
#莉菜
[playse storage="rina/rn66_009.ogg"]
お兄さん、これは？[p]
莉菜ちゃんにそれを着てほしいんだ！[p]
#莉菜
[playse storage="rina/rn66_010.ogg"]
ええ！　私にですか？[p]
#
お願い！　莉菜ちゃんのメイド服姿が見たいんだ[p]
#莉菜
[playse storage="rina/rn66_011.ogg"]
ええ～！　だめですよ！　そんなの恥ずかしいですし……[p]
莉菜ちゃんなら絶対に似合うから！　可愛いから何でも似合うし！　[p]
#莉菜
[playse storage="rina/rn66_012.ogg"]
お兄さん、これ着せてエッチな事しようとしてるんでしょ！[p]
#
ち、違うよ！　見るだけだから！　本当に見るだけだよ！[p]
[stop_bgmovie]
[bgmovie storage="mov_66_11.webm"]
#莉菜
[playse storage="rina/rn66_013.ogg"]
なんか怪しいけど……とにかく見るだけですからね！　絶対ですよ！[p]
#
見るだけ……見るだけ……[p]
#莉菜
[playse storage="rina/rn66_014.ogg"]
まだですよ！　あっち向いててください！[p]
[stop_bgmovie]
[bgmovie storage="mov_66_12.webm"]
#莉菜
[playse storage="rina/rn66_015.ogg"]
ど……どうですか、お兄さん？　似合います？[p]
#
莉菜ちゃん！　いいよ～、いいよ～、可愛いからなんでも似合うね！[p]
次はスカートをこう持ち上げて[p]
#莉菜
[playse storage="rina/rn66_018.ogg"]
お兄さん！　見るだけって言ったじゃないですか！　やっぱりエッチなことしようとしてる[p]
#
違うよ莉菜ちゃん、見るだけだよ！　僕は見てるだけだから大丈夫！[p]
#莉菜
[playse storage="rina/rn66_019.ogg"]
何が大丈夫なんですか！[p]
#
見るだけならいいっていったじゃん！　ちゃんと約束は守ってね莉菜ちゃん！[r]
はい！　僕は見てるだけ！[p]
#莉菜
[playse storage="rina/rn66_020.ogg"]
も～、お兄さんは油断するとすぐそういう事ばっかなんだから……ちょっとだけですからね！[p]
[stop_bgmovie]
[movie storage="mov_66_13.webm" skip="true"]
[bgmovie storage="mov_66_14.webm"]
#莉菜
[playse storage="rina/rn66_021.ogg"]
お兄さん……そんなに近くで見られたら……恥ずかしい……[p]
#
…………[p]
#莉菜
[playse storage="rina/rn66_027.ogg"]
お、お兄さん！　何してるんですか！[p]
#
え！　だってパンツ履いてたらよく見えないでしょう？[r]
大丈夫大丈夫！見るだけ、見るだけ[p]
#莉菜
[playse storage="rina/rn66_028.ogg"]
もう、お兄さんは～……[p]
[stop_bgmovie]
[bgmovie storage="mov_66_17.webm"]
#
見てるだけ……見てるだけ……ねえ、本当にみてるだけ？　ちょっとぐらい触っても……[p]
#莉菜
[playse storage="rina/rn66_022.ogg"]
見るだけです！[p]
#
見てるだけ……うう……見てるだけ……うぐ……[p]
#莉菜
[playse storage="rina/rn66_023.ogg"]
もう！　なんで泣きそうになってるんですか！[p]
#
大丈夫……うぐ……見てるだけだから……ぐす……[p]
#莉菜
[playse storage="rina/rn66_024.ogg"]
……す……すこしくらいなら……いいですよ……触っても……[p]
#
本当に！　やった！　では、さっそく……[p]
#莉菜
[playse storage="rina/rn66_025.ogg"]
す、少しだけですよ！[p]
[stop_bgmovie]
[bgmovie storage="mov_66_20.webm"]
莉菜ちゃんの可愛い割れ目……[p]
#莉菜
[playse storage="rina/rn66_029.ogg"]
そんなに……ジロジロ見ないで下さい……恥ずかしいです……[p]
#
もっとよ～く見せてね莉菜ちゃん！[p]
#莉菜
[playse storage="rina/rn66_030.ogg"]
だ、だめ！　そんな所！　お兄さん、恥ずかしいから！[p]
#
でも、こんなに可愛いピンク色してるんだよ。もっとよく見せてくれなくちゃ[p]
#莉菜
[playse storage="rina/rn66_031.ogg"]
お兄さん！　そんなに広げちゃだめ！[p]
#
莉菜ちゃん、大変！おちんちんが莉菜ちゃんのオマンコに触りたいって言ってるんだ[p]
#莉菜
[playse storage="rina/rn66_032.ogg"]
お兄さん！何言ってるんですか！[p]
莉菜ちゃんのオマンコもオチンチン触りたいっていってるよ！[p]
#莉菜
[playse storage="rina/rn66_033.ogg"]
そ！そんなこと言ってません！[p]
#
言ってるよ！　だってほら！　こんなにトロトロにヒクヒクさせてるし！[p]
#莉菜
[playse storage="rina/rn66_034.ogg"]
あっ、んん！[p]
#莉菜
[playse storage="rina/rn66_036.ogg"]
お兄さん……んんっ、もう……はぁ、んっ……[p]
#
大丈夫だよ莉菜ちゃん、ちょっとだけだからね！[p]
#莉菜
[playse storage="rina/rn66_037.ogg"]
お兄さん……いじわる……[p]
#
ちょっとだけ、ちょっとだけ[p]
#莉菜
[playse storage="rina/rn66_038.ogg"]
お兄さん……おねがい……挿れてください……[p]
#
どうしようかな……ちょっとだけだしなー……[p]
#莉菜
[playse storage="rina/rn66_039.ogg"]
お兄さん……いじわるいわないで下さい……[p]
#
じゃあ、莉菜ちゃん挿れるよ！[p]
[stop_bgmovie]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[playse storage="rina/rn66_040.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgloop mov="mov_66_18.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_66_19.webm" skip="true"]

;帰宅
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;メイドフラグ　１
[eval exp="f.meido_rina_h = 1"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
[menuwindows]
#
莉菜ちゃんのメイド服は可愛かったな[p]
#
部屋に戻ってきた[r]
[jump storage="main.ks" target="*night"]

;***********************************************************************************************************************
;-バイブ
*vibrator

;エッチ度判定
[if exp="f.rina_h < 80"]
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

[bgloop mov="mov_85_1.webm"  ti="2000"]
[movie storage="mov_85_3.webm" skip="true"]
[bgloop mov="mov_85_4.webm"  ti="2000"]

;帰宅
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
[stop_bgmovie time="1000"]
;バイブフラグ　１
[eval exp="f.vibrator_rina_h = 1"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[menuwindows]
#
莉菜ちゃん気持ちよさそうだった[p]
#
部屋に戻ってきた[r]
[jump storage="main.ks" target="*night"]


;***********************************************************************************************************************
;-映画館デート
*movietheater
#
[cm]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[if exp="f.movietheater_rina_h == undefined"]
[bgmovie storage="mov_44_1.webm"]
[else]
[bgmovie storage="mov_44_14.webm"]
[jump target="*movietheater_h2"]
[endif]

[playbgm storage="asobiniikuhi.ogg" loop="true"]

映画館にやってきた[p]

何の映画を見ようかな?
[glink  color="pink" size="20"  x="200"  width="200"  y="150"  text="アクション"  target="*movie_choice" exp="tf.movie_choice = 1"]
[glink  color="pink" size="20"  x="200"  width="200"  y="220"  text="恋愛"  target="*movie_choice" exp="tf.movie_choice = 2"]
[glink  color="pink" size="20"  x="200"  width="200"  y="290"  text="ドキュメンタリー"  target="*movie_choice" exp="tf.movie_choice = 3"]
[glink  color="pink" size="20"  x="200"  width="200"  y="360"  text="サスペンス"  target="*movie_choice" exp="tf.movie_choice = 4"]
[glink  color="pink" size="20"  x="200"  width="200"  y="430"  text="ホラー"  target="*movie_choice" exp="tf.movie_choice = 5"]
[s]
*movie_choice
[stop_bgmovie]
;***********************************************************************************************************************
;映画館Ｈ判別
[if exp="f.rina_h >= 45 && f.movietheater_rina_h == undefined && tf.movie_choice == 4"]
[jump target="*movietheater_h1"]
[endif]
;***********************************************************************************************************************
[if exp="tf.movie_choice == 1"]
[bgmovie storage="mov_44_2_5.webm" time = 2000]
アクション映画を見ている[p]
莉菜ちゃんも真剣に見ている[p]
[endif]
[if exp="tf.movie_choice == 2"]
[bgmovie storage="mov_44_2_3.webm" time = 2000]
恋愛映画は…[p]
莉菜ちゃん好きそう[p]
[endif]
[if exp="tf.movie_choice == 3"]
[bgmovie storage="mov_44_2_1.webm" time = 2000]
ドキュメンタリーは僕は楽しいけど[p]
莉菜ちゃんはどうかな？[p]
[endif]
[if exp="tf.movie_choice == 4"]
[bgmovie storage="mov_44_2_2.webm" time = 2000]
サスペンスは[p]
ハラハラドキドキで莉菜ちゃんも真剣に見ている[p]
[endif]
[if exp="tf.movie_choice == 5"]
[bgmovie storage="mov_44_2_4.webm" time = 2000]
ホラーは[p]
怖がっている莉菜ちゃん可愛い！[p]
[endif]
;***********************************************************************************************************************
*movietheater_return
;映画帰宅
;莉菜ちゃん好感度UP
[rina_f]
;体力減少
[eval exp="f.hp = f.hp - 15"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

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
[bgmovie storage="mov_44_4.webm" time = 2000]
#
この映画人気ないのかな？[p]
#莉菜
[playse storage="rina/rn44_001.ogg" buf="0"]
私たち以外誰もいないですね[p]
#
誰もいないなら莉菜ちゃん、ここ来なよ[r]
膝の上とか[p]
#莉菜
[playse storage="rina/rn44_002.ogg" buf="0"]
えっ、……は、はい……[p]
#
[cm]
[clearfix]
[freeimage layer="2" time="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[movie storage="mov_44_5.webm" skip="true"]
[menuwindows]
[bg storage="movietheater/img_44_16.png" time="1000"]
（おお！　冗談だったんだが……来てくれたぞ！）[p]
（だめだ！映画がまったくつまらない、そうだ……ここは）[p]
#莉菜
[playse storage="rina/rn44_003.ogg" buf="0"]
ひゃっ！[p]
;[freeimage layer="2" time="0"]
[bgmovie storage="mov_44_7.webm" time = 2000]
#莉菜
[playse storage="rina/rn44_004.ogg" buf="0"]
お！　お兄さん！　あっ……だ、だめ！[p]
#
莉菜ちゃんは映画見てていいよ！　こっちは気にせずに[p]
#莉菜
[playse storage="rina/rn44_005.ogg" buf="0"]
もう！お兄さん……えっちな事ばかりなんだから[p]
#
莉菜ちゃんのおっぱいが大きすぎるからしょうがないよ[p]
#莉菜
[playse storage="rina/rn44_006.ogg" buf="0"]
しょうがなくないです！[p]
#
[stop_bgmovie]
[bg storage="movietheater/img_44_16.png" time="1000"]
映画、終わっちゃった！　もっと揉んでたかったな[p]
#莉菜
[playse storage="rina/rn44_010.ogg" buf="0"]
おにいさんの……ばか……えっち！[p]
;映画フラグ
[eval exp="f.movietheater_rina_h = 1"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[jump target="*movietheater_return"]
;***********************************************************************************************************************
;--映画館Ｈ2
*movietheater_h2
映画館にやってきた[p]
[stop_bgmovie time="1000"]
[fadeoutbgm]
[bgmovie storage="mov_44_15.webm" time = 2000]
#
またまた、つまらない映画に来てしまった[p]
#莉菜
[playse storage="rina/rn44_011.ogg" buf="0"]
まさかお兄さん！　わざと、つまらない映画を……[p]
#
いやいや！　たまたまだよ[r]
でもせっかくだから、また膝の上とかどう？[p]
#莉菜
[playse storage="rina/rn44_012.ogg" buf="0"]
もう！　今度は胸禁止ですからね！[p]
#
わかったよ、おっぱい禁止で[p]
[stop_bgmovie time="1000"]
[bg storage="movietheater/img_44_17.png" time="1000"]
………[p]
映画、つまらない……しかし、おっぱい禁止だし……[r]
あっ、そうか……おっぱい以外は禁止じゃないか[p]
#莉菜
[playse storage="rina/rn44_013.ogg" buf="0"]
ひゃっ！[p]
[bgmovie storage="mov_44_13.webm" time = 2000]
#莉菜
[playse storage="rina/rn44_014.ogg" buf="0"]
お兄さん！　禁止って言いましたよね！[p]
おっぱいは触ってないよ！　気にせずに映画見てて[p]
#莉菜
[playse storage="rina/rn44_015.ogg" buf="0"]
気にします！　んっ、んん……[p]
莉菜ちゃんのココ、いっぱい濡れてきたよ！　気持ちいいの？[p]
#莉菜
[playse storage="rina/rn44_017.ogg" buf="0"]
もう……お兄さん……いじわる……[p]
[stop_bgmovie time="1000"]
[bg storage="movietheater/img_44_17.png" time="1000"]
#
また全然見ないで、映画終わっちゃった[r]
もっと莉菜ちゃんが気持ち良くなってる姿みてたかったな[p]
#莉菜
[playse storage="rina/rn44_018.ogg" buf="0"]
もう……お兄さんと、映画見ない！[p]
#
;映画フラグ
[iscript]
delete f.movietheater_rina_h;
[endscript]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[jump target="*movietheater_return"]
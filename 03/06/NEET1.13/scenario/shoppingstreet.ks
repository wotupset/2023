;商店街

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;桜子消去
#
[chara_hide name="sakurako"]
[playbgm storage="nonbiri.ogg" loop="true"]
@bg storage ="shoppingstreet_day.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.shoppingstreet_fast == undefined"]
#
虹色商店街にやってきた[p]
莉菜ちゃんがよく買い物に来てるみたいだ[p]

[eval exp="f.shoppingstreet_fast = true"]
[else]
#
虹色商店街にやってきた[p]
[endif]


;-キャラクター判別
;配列変数 f.shoppingstreet_day を日付で判別
;0 桜子　１　莉子　２　莉菜　３　静江
[if exp="f.shoppingstreet_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_shoppingstreet"]
[return]
[endif]

;莉子
[if exp="f.shoppingstreet_day[f.day] == 1"]
[jump target="*riko_shoppingstreet"]
[endif]

;莉菜
[if exp="f.shoppingstreet_day[f.day] == 2"]
[jump target="*rina_shoppingstreet"]
[endif]

;静江
[if exp="f.shoppingstreet_day[f.day] == 3"]
[jump target="*sizue_shoppingstreet"]
[endif]

;二人
[if exp="f.shoppingstreet_day[f.day] == 5"]
[jump target="*futari_shoppingstreet"]
[endif]

;-商店街イベント　莉菜-----------------------------------------------------------------------------------------
*rina_shoppingstreet

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_rina_goout"]

;温泉判別
;エッチ度70以上
;f.spa = 1 莉子　　f.spa = 2 莉菜　　f.spa = 3 静江　　f.spa = 4 帰宅
[if exp="f.spa == undefined"]
 [if exp="f.riko_h >= 70 && f.spa_riko_h == undefined"]
  [eval exp = "f.spa = 1"]
  [jump target="*spa_shoppingstreet"]
 [endif]
 [if exp="f.rina_h >= 70 && f.spa_rina_h == undefined"]
  [eval exp = "f.spa = 2"]
  [jump target="*spa_shoppingstreet"]
 [endif]
 [if exp="f.sizue_h >= 70 && f.spa_sizue_h == undefined"]
  [eval exp = "f.spa = 3"]
  [jump target="*spa_shoppingstreet"]
 [endif]
[endif]

;--①
[if exp="f.rina_shoppingstreet == undefined || f.rina_shoppingstreet == 1"]
#
[bg storage="shoppingstreet/img18_06.png" time="1000"]
あっ！莉菜ちゃん[p]
#莉菜
[playse storage="rina/rn18_008.ogg" buf="0"]
お兄さん、どうしたんですか？こんな所で[p]
#
たまたまね、でも荷物いっぱいだね[p]
#莉菜
[playse storage="rina/rn18_009.ogg" buf="0"]
特売で安かったので、つい買いすぎちゃって[r]
どうもありがとうございます[p]
#
莉菜ちゃんと一緒に帰った[p]

[eval exp="tf.place = 1"]
;莉菜ちゃん好感度UP
[rina_f]

;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="f.rina_shoppingstreet = 2"]
[return]
[endif]

;--②
[if exp="f.rina_shoppingstreet == 2"]
#
[bg storage="shoppingstreet/img18_07.png" time="1000"]
莉菜ちゃんだ、店主と楽しそうに話ししてる……[r]
楽しそうではないかな[p]
莉菜ちゃん、買い物終わった[p]
[bg storage="shoppingstreet/img18_07.png" time="1000"]
#莉菜
[playse storage="rina/rn18_010.ogg" buf="0"]
お兄さん！やだ、どこから見てたんですか！[p]
#
うん、店主と値切り合戦してるとこからかな[p]
#莉菜
[playse storage="rina/rn18_011.ogg" buf="0"]
夢中になっちゃって……恥ずかしい[p]
#
じゃ、一緒に帰ろうか[p]
#莉菜
[playse storage="rina/rn18_012.ogg" buf="0"]
はい[p]
#魚屋さん
莉菜ちゃん、今日お魚安いよ！[p]
#莉菜
[playse storage="rina/rn18_013.ogg" buf="0"]
え！本当ですか？どの魚ですか！[p]
[bg storage ="shoppingstreet_day.png" time="1000"]
#
あぁ……いっちゃった[p]
[bg storage ="shoppingstreet_evening.png" time="1000"]
#
莉菜ちゃんの買い物が終わるのを待って一緒に帰った[p]


;莉菜ちゃん好感度UP
[rina_f]

;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="tf.place = 1"]
[eval exp="f.rina_shoppingstreet = 3"]


[return]
[endif]

;--③
[if exp="f.rina_shoppingstreet == 3"]
#
[bg storage="shoppingstreet/img18_08.png" time="1000"]
莉菜ちゃん！お買い物？[p]
#莉菜
[playse storage="rina/rn18_014.ogg" buf="0"]
はい、今日は特売日なので[p]
じゅあ、荷物持ちでも[p]
#莉菜
[playse storage="rina/rn18_015.ogg" buf="0"]
本当ですか？ありがとうございます[p]
#
[bg storage ="shoppingstreet_day.png" time="1000"]
ぜぇ……ぜぇ……[p]
[bg storage="shoppingstreet/img18_09.png" time="1000"]
#莉菜
[playse storage="rina/rn18_016.ogg" buf="0"]
お兄さん、今度はあっちのお店にいきますよ！[p]
#
ひぁぁ～……運動不足にはきつい……[p]

[bg storage ="shoppingstreet_evening.png" time="1000"]
#
莉菜ちゃんの買い物が終わるのを待って一緒に帰った[p]


;莉菜ちゃん好感度UP
[rina_f]

;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="tf.place = 1"]
[eval exp="f.rina_shoppingstreet = 1"]


[return]
[endif]

;--二人

*futari_shoppingstreet
#
[bg storage="shoppingstreet/img17_15.png" time="1000"]
二人ともお買い物？[p]
[playse storage="rina/rn18_017.ogg" buf="0"]
莉子ちゃんにお買い物付き合ってもらったんです[p]

;莉菜ちゃん好感度UP
[rina_f]

;パートナー二人変更
[eval exp="f.partner = 4"]

[eval exp="tf.place = 1"]

[return]

;温泉福引
*spa_shoppingstreet
#
[bg storage="spa/img_48_1.png" time="1000"]
莉菜ちゃん、今帰り？[p]
#莉菜
[playse storage="rina/rn48_001.ogg" buf="0"]
お兄さん、今から商店街の福引を回しに行くところですけど[r]
一緒に行きますか？[p]
#
福引？[p]
#莉菜
[playse storage="rina/rn48_002.ogg" buf="0"]
ええ！　一等は温泉旅行が当たります[r]
券が何枚かあるので一緒に回しましょう[p]
#
うん、いく！[p]
[bg storage="spa/img_48_3.png" time="1000"]
莉菜ちゃん、残念だったね……全部ティッシュ！[p]
#莉菜
[playse storage="rina/rn48_003.ogg" buf="0"]
私クジ運悪いんですよね……[p]
#商店街のおじさん
あんちゃんはどうだい[p]
[bg storage="spa/img_48_2.png" time="1000"]
#莉菜
[playse storage="rina/rn48_004.ogg" buf="0"]
お兄さん、がんばって下さい！　ラスト１回！　[p]
#
（頼むぞ、俺の運勢！　神様！仏様！大天使桜子様！　うぉぉぉぉ～）[p]
[bg storage="spa/img_48_4.png" time="1000"]
こ！これは～！？[p]
[bg storage="spa/img_48_5.png" time="1000"]
#莉菜
[playse storage="rina/rn48_005.ogg" buf="0"]
お兄さん！　すご～い！　温泉旅行ですよ！[p]
#
まさか一等が当たるなんて！[p]
次の休みに温泉旅行だ！[p]
[stopse]
;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]
[eval exp="tf.place = 1"]
[return]
[
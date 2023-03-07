;桜子のシナリオ

;***********************************************************************************************************************
;-起床イベント
*sakurako_wakeup
@bg storage ="room_day.png" time=1000
[menuwindows]


;1回目の朝
[if exp="f.wakeup == undefined"]
#
ふ～、爽やかな朝だね、今日も頑張ろう！[p]
#桜子
[chara_show name="sakurako" face="okori02" left=100]
[playse storage="sakurako/sa71_011.ogg" buf="0"]
このたわけが！何が爽やかじゃ！もう昼じゃろが！[p]
#
しょうがない、ずっと引きこもりだったんだから！[r]
昼に起きただけでも偉いもんだ！[p]
#桜子
[chara_mod  name="sakurako" face="akireru" ]
[playse storage="sakurako/sa71_012.ogg" buf="0"]
は～……先が思いやられるわ！[p]
[eval exp="f.wakeup = true "]
[return]
[else]
#
ふあ～、目覚めたぞ……今日も昼過ぎだけど[p]

[chara_show name="sakurako" face="default" left=100 ]
[endif]

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 6)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa71_013.ogg" buf="0"]
今日は何をするんじゃ？[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa71_014.ogg" buf="0"]
やっと起きたか！[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_mod  name="sakurako" face="akubi" ]
[playse storage="sakurako/sa71_015.ogg" buf="0"]
ふむ、お目覚めか[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_mod  name="sakurako" face="akireru02" ]
[playse storage="sakurako/sa71_016.ogg" buf="0"]
まったく弛んでおるの～[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa71_017.ogg" buf="0"]
寝ぼけた顔しおってからに[p]
[endif]

[if exp="tf.rand == 5"]
#桜子
[chara_mod  name="sakurako" face="okori02" ]
[playse storage="sakurako/sa71_018.ogg" buf="0"]
はやく顔洗ってこい[p]
[endif]

[return]

;***********************************************************************************************************************
;-休養
*sakurako_break

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa71_019.ogg" buf="0"]
今日はやすみか？[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa71_020.ogg" buf="0"]
まったくサボってばかりじゃのう[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_mod  name="sakurako" face="akubi" ]
[playse storage="sakurako/sa71_021.ogg" buf="0"]
なんじゃ、疲れたのか？[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_mod  name="sakurako" face="akireru02" ]
[playse storage="sakurako/sa71_022.ogg" buf="0"]
また休みか？[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa71_023.ogg" buf="0"]
たまには休みも必要かのう[p]
[endif]
#
[return]


;***********************************************************************************************************************
;-バイト
*sakurako_work
;1回目のバイト
[if exp="f.work == undefined"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa72_024.ogg" buf="0"]
いよいよ働く気になったか？[p]
#
いや、しかし……まだ怖いし……[p]
#桜子
[playse storage="sakurako/sa72_025.ogg" buf="0"]
大丈夫大丈夫！わしがついとる！[p]
#
つ、ついてくる気かよ？[p]
#桜子
[chara_mod  name="sakurako" face="panchi03" ]
[playse storage="sakurako/sa72_026.ogg" buf="0"]
あたりまえじゃ！しっかり監視せんとな！[r]
もう観念しろ、男じゃろ！気合いれるのじゃ！！[p]

[eval exp="f.work = true "]
;桜子消去
#
[chara_hide name="sakurako"]
[return]
[endif]

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa72_027.ogg" buf="0"]
おっ！バイトにいくのか！[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa72_028.ogg" buf="0"]
ふむふむ、感心感心[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_mod  name="sakurako" face="panchi02" ]
[playse storage="sakurako/sa72_029.ogg" buf="0"]
今日も頑張るのじゃぞ！[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_mod  name="sakurako" face="kobusi01" ]
[playse storage="sakurako/sa72_030.ogg" buf="0"]
稼ぎにいくぞ～！[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa72_031.ogg" buf="0"]
お前もやれば出来るのじゃ！[p]
[endif]

;桜子消去
#
[chara_hide name="sakurako"]
[return]

;***********************************************************************************************************************
;-占い
*sakurako_status
;所持金判別
[if exp="f.money < 500"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa79_002.ogg" buf="0"]
金がないではないか！[p]
[chara_hide name="sakurako"]
#
[return]
[endif]

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 2)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa79_001.ogg" buf="0"]
占いをするのか！　はい５００円！[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa79_003.ogg" buf="0"]
まいどあり！[p]
[endif]
[eval exp="f.money = f.money - 500"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]

;コール占い画面
[call storage="status.ks"]

;桜子消去
#
[chara_hide name="sakurako"]

[return]

;***********************************************************************************************************************
;-過労
*overwork
;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_001.ogg" buf="0"]
ふん！貧弱な奴め！[r]
こんな調子では先が思いやられるわ！[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_002.ogg" buf="0"]
体が弱いの～！[r]
引きこもってるからじゃ！[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_003.ogg" buf="0"]
自己管理も出来んとは、情けない！[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_004.ogg" buf="0"]
なっとらん！まったくなっとらん！[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_005.ogg" buf="0"]
ふ～、まったく！[r]
体の弱いやつじゃのう！[p]
[endif]

;桜子消去
#
[chara_hide name="sakurako"]

[return]

;***********************************************************************************************************************
;-夢
*sakurako_dream

@bg storage ="room_day.png" time=1000
[menuwindows]
#
なんか……すごい夢をみたぞ……[p]

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_006.ogg" buf="0"]
まったく気持ち悪い顔して寝ておって[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_007.ogg" buf="0"]
はやく現実でエロいことをしてくるのじゃ[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_008.ogg" buf="0"]
パンツを自分で洗うのはどんな気分じゃ？[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_009.ogg" buf="0"]
いやらしい夢ばかり見おってからに[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa71_010.ogg" buf="0"]
溜まっておるのか？わしが抜いてやろうか？[r]
本気にするな！[p]
[endif]

[return]

;***********************************************************************************************************************
;-外出
*GoOut
;1回目の外出
[if exp="f.goout == undefined"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa73_032.ogg" buf="0"]
よーし、外に行くぞ![p]
#
やっぱり気が重いんだけど……[p]
#桜子
[chara_mod  name="sakurako" face="okori03" ]
[playse storage="sakurako/sa73_033.ogg" buf="0"]
このゴミカスが！観念せい！お前はもう外に出るんじゃ！[r]
これは決定事項！[p]
#
え～、やっぱやだ～！！[p]
#桜子
[chara_mod  name="sakurako" face="keri01" ]
[playse storage="sakurako/sa73_034.ogg" buf="0"]
てい！
[playse storage="se/naguru.ogg" buf="2"]
[quake count="1" time="300"]
[p]
#
ぎゃふん！[p]
[chara_mod  name="sakurako" face="mahou01" ]
[playse storage="se/o_ra.ogg" buf="2" loop="true"]
#
うぁぁ！体が勝手にうごく！？[p]
[fadeoutse buf="2"]
#桜子
[playse storage="sakurako/sa73_035.ogg" buf="0"]
ふふふ、これでもう行くしかなくなったの！[p]

#
ううう……やだよ～[p]


[eval exp="f.goout = true "]
;桜子消去
;#
;[chara_hide name="sakurako"]
[return]

[endif]

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa73_036.ogg" buf="0"]
お！お出かけか？[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_mod  name="sakurako" face="niko" ]
[playse storage="sakurako/sa73_037.ogg" buf="0"]
ふむふむ！外出じゃ！[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_mod  name="sakurako" face="akubi" ]
[playse storage="sakurako/sa73_038.ogg" buf="0"]
今日はどこに行くのじゃ？[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_mod  name="sakurako" face="akireru02" ]
[playse storage="sakurako/sa73_039.ogg" buf="0"]
出発じゃ～！[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa73_040.ogg" buf="0"]
今日はお出かけじゃ！[p]
[endif]

;桜子消去
;#
;[chara_hide name="sakurako"]
[return]

;***********************************************************************************************************************
;-図書館会話
*sakurako_library

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_001.ogg" buf="0"]
ほう、図書館とは……お前が勉強でもするのか？[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_002.ogg" buf="0"]
うむ、感心じゃ！しっかり励め！[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="default" left=100 ]
[playse storage="sakurako/sa80_003.ogg" buf="0"]
ここにエロい本はないぞ[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="niya" left=100 ]
[playse storage="sakurako/sa80_004.ogg" buf="0"]
保健体育の本でも探しにきたのか？[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_005.ogg" buf="0"]
ブツブツしゃべっていると注意されるぞ[p]
[endif]

[return]

;***********************************************************************************************************************
;-莉子発見
*sakurako_riko_goout
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[chara_show name="sakurako" face="tobi01" left=100 ]
[if exp="tf.rand == 0"]
#桜子
[playse storage="sakurako/sa76_001.ogg" buf="0"]
莉子がおるぞ！話しかけてこい！[p]
[endif]
[if exp="tf.rand == 1"]
#桜子
[playse storage="sakurako/sa76_002.ogg" buf="0"]
むむ！あれは莉子じゃないか？[p]
[endif]
[if exp="tf.rand == 2"]
#桜子
[playse storage="sakurako/sa76_003.ogg" buf="0"]
莉子を発見！[p]
[endif]
;桜子消去
#
[chara_hide name="sakurako"]
[return]

;-莉菜発見
*sakurako_rina_goout
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[chara_show name="sakurako" face="tobi01" left=100 ]
[if exp="tf.rand == 0"]
#桜子
[playse storage="sakurako/sa76_004.ogg" buf="0"]
莉菜がおるぞ！いってこい！[p]
[endif]
[if exp="tf.rand == 1"]
#桜子
[playse storage="sakurako/sa76_005.ogg" buf="0"]
莉菜じゃのう、何してるのかのう？[p]
[endif]
[if exp="tf.rand == 2"]
#桜子
[playse storage="sakurako/sa76_006.ogg" buf="0"]
あそこにいるのは莉菜ではないか？[p]
[endif]
;桜子消去
#
[chara_hide name="sakurako"]
[return]

;***********************************************************************************************************************
;-静江発見
*sakurako_sizue_goout
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[chara_show name="sakurako" face="tobi01" left=100 ]
[if exp="tf.rand == 0"]
#桜子
[playse storage="sakurako/sa76_007.ogg" buf="0"]
静江じゃぞ！今じゃ、いけ！[p]
[endif]
[if exp="tf.rand == 1"]
#桜子
[playse storage="sakurako/sa76_008.ogg" buf="0"]
ふむふむ、静江がおるぞ！[p]
[endif]
[if exp="tf.rand == 2"]
#桜子
[playse storage="sakurako/sa76_009.ogg" buf="0"]
あれは静江じゃな！話してこい！[p]
[endif]
;桜子消去
#
[chara_hide name="sakurako"]
[return]

;***********************************************************************************************************************
;-本屋会話
*sakurako_bookstore

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_006.ogg" buf="0"]
目的はエロい本じゃろう！[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_007.ogg" buf="0"]
漫画ばかり読んでいるからだめなんじゃ[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_008.ogg" buf="0"]
何か買いにきたのか？[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_009.ogg" buf="0"]
たまには小説とか読め！[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_010.ogg" buf="0"]
立ち読みばかりしていると怒られるぞ！[p]
[endif]

[if exp="f.money >= 1000"]
#
漫画でも買っていこうかな[p]

;所持金減少
[eval exp="f.money = f.money - 1000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
[endif]

[return]

;***********************************************************************************************************************
;-公園会話
*sakurako_park

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_021.ogg" buf="0"]
お前も運動したらどうじゃ！[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_022.ogg" buf="0"]
ほら！走るぞ！だらしない腹しおって！[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_023.ogg" buf="0"]
汗だくじゃのう、見苦しい！[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_024.ogg" buf="0"]
少しは日光にあたれ！不健康な見た目なんじゃから！[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_025.ogg" buf="0"]
体を鍛えたらいいことがあるぞ[p]
[endif]

#
桜子に無理やり運動させられた[p]
[eval exp="f.hp = f.hp - 10"]

[return]

;-駄菓子屋会話
*sakurako_store

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_032.ogg" buf="0"]
おっ！カード引くのか？[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_033.ogg" buf="0"]
良さそうなのでたか？[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_034.ogg" buf="0"]
なんじゃ外れか？[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_035.ogg" buf="0"]
駄菓子でも買いにきたのか？[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_037.ogg" buf="0"]
店のおばあさんは置物みたいじゃな[p]
[endif]

[if exp="f.money >= 1000"]
#
お菓子でも買っていこうかな[p]

;所持金減少
[eval exp="f.money = f.money - 1000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
[endif]

[return]

;***********************************************************************************************************************
;-ゲームセンター
*sakurako_arcade

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_011.ogg" buf="0"]
クレーンゲームにフィギュアがいっぱいあるぞ！[r]
イケメンフィギュアもいっぱいじゃ[p]
[playse storage="sakurako/sa80_011_2.ogg" buf="0"]
お前の部屋には女の子のフィギュアしかないからの……[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_012.ogg" buf="0"]
お前も女の子と仲良くなったらプリクラぐらい撮れるぞ！[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_013.ogg" buf="0"]
ゲームでもやるのか！お前は下手そうじゃのう！[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_014.ogg" buf="0"]
リズム感なさそうだから、ダンスとか出来なそうじゃの！[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_015.ogg" buf="0"]
対戦じゃ、対戦ゲームをするぞ！[p]
[endif]

[if exp="f.money >= 1000"]
#
せっかく来たんだし[r]
ゲームして遊んでいこうかな[p]

;所持金減少
[eval exp="f.money = f.money - 1000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
[endif]
さて、次は[r]
[return]

;-商店街
*sakurako_shoppingstreet

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_038.ogg" buf="0"]
あっちで福引をやっておるぞ[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_039.ogg" buf="0"]
お前は自炊とかできなそうじゃの[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_040.ogg" buf="0"]
この商店街は元気じゃのう[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_041.ogg" buf="0"]
ここの店主のオヤジどもは若い女に弱そうじゃのう[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa80_042.ogg" buf="0"]
買い物でもするのか？[p]
[endif]

[return]

;***********************************************************************************************************************
;-カフェ
*sakurako_cafe

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa80_016.ogg" buf="0"]
なんじゃ、休憩か？[r]
休憩するほど何もしてないじゃろうが！[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa80_017.ogg" buf="0"]
チョコレートパフェとか美味しいぞ[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa80_019.ogg" buf="0"]
休憩でもするか[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa80_020.ogg" buf="0"]
なかなかお洒落なところじゃな[p]
[endif]

[if exp="f.money >= 1000"]
#
疲れたから休憩でもしていこうかな[p]
休憩して体力が回復した[p]

;所持金減少
[eval exp="f.money = f.money - 1000"]
;体力減少
[eval exp="f.hp = f.hp + 10"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
[endif]

[return]

;***********************************************************************************************************************
;-夕食後
*sakurako_evening

;１回目判別
[if exp="f.sakurako_evening == undefined"]
[eval exp="f.sakurako_evening = true"]
[chara_show name="sakurako" face="niko" left=100 ]
#桜子
[playse storage="sakurako/sa77_001.ogg" buf="0"]
よし、誰かに話しかけてこい！[p]
#
ええ！今？[p]
#桜子
[playse storage="sakurako/sa77_002.ogg" buf="0"]
あほか！今話さずにいつ話すのじゃ！[p]
#
でも！何を話したらいいか……[p]
#桜子
[playse storage="sakurako/sa77_003.ogg" buf="0"]
昨日あれほどレクチャーしたろうが！思い出すのじゃ！[r]
とにかく何でもいいから話しかけてこい！[p]
[return]
[endif]

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa77_004.ogg" buf="0"]
今日も行ってこい[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa77_005.ogg" buf="0"]
今日は誰と話すんじゃ？[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa77_006.ogg" buf="0"]
ほら、話しかけてこい！[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa77_007.ogg" buf="0"]
ほら！いまじゃ！[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa77_008.ogg" buf="0"]
今がチャンスじゃぞ！[p]
[endif]

[return]

;***********************************************************************************************************************
;-部屋会話
*sakurako_room

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa75_006.ogg" buf="0"]
ん！もしかしてエロい事でもしにくのか！[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa75_007.ogg" buf="0"]
今日も頑張ってこい！[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa75_008.ogg" buf="0"]
お前もやるのう！[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa75_009.ogg" buf="0"]
このドスケベが！[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa75_010.ogg" buf="0"]
順調じゃ！順調じゃ！[p]
[endif]

[return]

;***********************************************************************************************************************
;-デート会話
*sakurako_date

;1回目のデート
[if exp="f.date_sakurako == undefined"]
#桜子
[chara_show name="sakurako" face="niya" left=100]
[playse storage="sakurako/sa74_041.ogg" buf="0"]
なんと、デートにいくのか！　でかした！　よくやったぞ、上出来じゃ！[p]
[playse storage="sakurako/sa74_041_2.ogg" buf="0"]
これもわしの教育のおかげじゃのう……帰ってきたら細かく教えるんじゃぞ！[p]
#
ええ！　付いてきてくれないの？[p]
#桜子
[chara_mod  name="sakurako" face="okori02" ]

[playse storage="sakurako/sa74_042.ogg" buf="0"]
なんでわしがイチャコラしてるのを見てなくちゃならんのじゃ！　あほか！[p]
#
いやっ……でも、不安で……[p]
#桜子
[chara_mod  name="sakurako" face="panchi01" ]

[playse storage="sakurako/sa74_043.ogg" buf="0"]
大丈夫！お前ならもういけるぞ！[r]
はやくエロイことをして来い！[p]
#
で、出来る訳ないだろ！[r]
ただのデートだから！[p]
#桜子
[chara_mod  name="sakurako" face="okori" ]

[playse storage="sakurako/sa74_044.ogg" buf="0"]
分かっておるなだろうが、お前が金を出すんじゃぞ！[p]

[eval exp="f.date_sakurako = true "]
;桜子消去
#
[chara_hide name="sakurako"]
[return]
[endif]

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="niya" left=100 ]
[playse storage="sakurako/sa74_045.ogg" buf="0"]
おお！　今日はデートか！　頑張るんじゃぞ！[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="kobusi01" left=100 ]
[playse storage="sakurako/sa74_046.ogg" buf="0"]
お前ならいける！　自信もて！[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="niya" left=100 ]
[playse storage="sakurako/sa74_047.ogg" buf="0"]
いっぱいエロイ事してくるんじゃぞ！[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="niya" left=100 ]
[playse storage="sakurako/sa74_048.ogg" buf="0"]
お前もなかなかやりおるの！[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa74_049.ogg" buf="0"]
ヘマするんじゃないぞ！[p]
[endif]
;桜子消去
#
[chara_hide name="sakurako"]
[return]
;***********************************************************************************************************************
;-宅配便
*sakurako_delivery
[chara_show name="sakurako" face="niko" left=100 ]
#桜子
[playse storage="sakurako/sa75_001.ogg" buf="0"]
おい！荷物が届いておるぞ[p]
[return]
;***********************************************************************************************************************
;-夜の会話
*sakurako_talk

;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 31)
[endscript]

;[eval exp="tf.rand = 15"]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="akireru03" left=100 ]
[playse storage="sakurako/sa81_001.ogg" buf="0"]
莉子は、あれはどＳじゃな。　そんな顔をしておる[p]
#
そんな感じだね[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa81_002.ogg" buf="0"]
ゲーセンでよく莉子を見かけるぞ[p]
#
ほうほう、いってみようかな[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akireru03" left=100 ]
[playse storage="sakurako/sa81_005.ogg" buf="0"]
莉菜はＭじゃな、わしにはわかる[p]
#
そ、そうなの？ふむふむ[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="akireru03" left=100 ]
[playse storage="sakurako/sa81_009.ogg" buf="0"]
静江はあれはなかなか淫乱じゃぞ[r]
わしはお見通しじゃ[p]
#
確かにあのおっぱいは、そんな感じだ！[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa81_011.ogg" buf="0"]
静江は公園とかによくいそうじゃのう[r]
ポチモン集めをしておるぞ[p]
#
なるほど、いってみようかな[p]
[endif]

[if exp="tf.rand == 5"]
#桜子
[chara_show name="sakurako" face="akubi03" left=100 ]
[playse storage="sakurako/sa81_012.ogg" buf="0"]
美少女フィギュアだけじゃなくイケメンフィギュアも買ってくれんかのう[p]
#
そんな金はない！[p]
[endif]

[if exp="tf.rand == 6"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa81_013.ogg" buf="0"]
おまえのＰＣの履歴はエロしかないではないか！[p]
#
それが健全な男のＰＣ履歴だと思う[p]
[endif]

[if exp="tf.rand == 7"]
#桜子
[chara_show name="sakurako" face="kobusi03" left=100 ]
[playse storage="sakurako/sa81_014.ogg" buf="0"]
暇じゃ～、何かしろ！　物まねじゃ[p]
#
いきなり無茶ぶりするな～[p]
[endif]

[if exp="tf.rand == 8"]
#桜子
[chara_show name="sakurako" face="kobusi03" left=100 ]
[playse storage="sakurako/sa81_015.ogg" buf="0"]
ちゃんとバイトしとるか？　さぼるんじゃないぞ[p]
#
もうやめたいんだけど……[p]
[endif]

[if exp="tf.rand == 9"]
#桜子
[chara_show name="sakurako" face="akireru" left=100 ]
[playse storage="sakurako/sa81_018.ogg" buf="0"]
お前はわしが居ないと何もできそうにないのう[p]
#
そ……そうかな……[p]
[endif]

[if exp="tf.rand == 10"]
#桜子
[chara_show name="sakurako" face="talk01" left=100 ]
[playse storage="sakurako/sa81_019.ogg" buf="0"]
シュート！[p]
#
サッカーして遊んでるのか[p]
[endif]

[if exp="tf.rand == 11"]
#桜子
[chara_show name="sakurako" face="talk04" left=100]
[playse storage="sakurako/sa81_020.ogg" buf="0"]
桜子選手、華麗なるドリブル捌き！[p]
#
なかなかのフェイントじゃないか！[p]
[endif]

[if exp="tf.rand == 12"]
#桜子
[chara_show name="sakurako" face="talk02" left=100 ]
[playse storage="sakurako/sa81_021.ogg" buf="0"]
アタ～ック！[p]
#
ぐはっ！[p]
[endif]

[if exp="tf.rand == 13"]
#桜子
[chara_show name="sakurako" face="talk03" left=100 ]
[playse storage="sakurako/sa81_022.ogg" buf="0"]
メ～ン！　メン！　メン！[p]
#
痛い痛い！[p]
[endif]

[if exp="tf.rand == 14"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa81_023.ogg" buf="0"]
今忙しいから！[p]
#
え～、何もしてないじゃないか！[p]
[endif]

[if exp="tf.rand == 15"]
#桜子
[chara_show name="sakurako" face="talk05" left=100]
[playse storage="sakurako/sa81_024.ogg" buf="0"]
あ～っと、桜子選手、予告ホームランだ！　カキ～ン！[p]
#
こっちにボール打つな！[p]
[endif]

[if exp="tf.rand == 16"]
#
桜子、聞いてくれよ～！[r]
今日、こんな事があって……[p]
ごにょごにょごにょ……[p]
#桜子
[chara_show name="sakurako" face="akubi02" left=100 ]
[playse storage="sakurako/sa81_025.ogg" buf="0"]
細かいことは気にするな！[p]
[endif]

[if exp="tf.rand == 17"]
#桜子
[chara_show name="sakurako" face="talk00" left=100 ]
[playse storage="sakurako/sa81_026.ogg" buf="0"]
はっ、はい！　せい！　はいや～！[p]
#
痛い痛い痛い！[p]
[endif]

[if exp="tf.rand == 18"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa81_027.ogg" buf="0"]
今テレビ見てるから後にしてくれるか[p]
#
え～、相手してよ～[p]
[endif]

[if exp="tf.rand == 19"]
#桜子
[chara_show name="sakurako" face="okori02" left=100 ]
[playse storage="sakurako/sa81_028.ogg" buf="0"]
今読書中じゃから後にせい[p]
#
桜子、聞いてくれよ～[p]
[endif]

[if exp="tf.rand == 20"]
#桜子
[chara_show name="sakurako" face="okori" left=100 ]
[playse storage="sakurako/sa81_029.ogg" buf="0"]
体力には注意しろ[r]
バイトやお出かけで消費するからな[p]
#
常に休憩中なのでご心配なく[p]
[endif]

[if exp="tf.rand == 21"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa81_030.ogg" buf="0"]
溜めすぎるなよ[r]
おまえはすぐにいやらしい夢をみるからな[p]
#
それが健全な男子[p]
[endif]

[if exp="tf.rand == 22"]
#桜子
[chara_show name="sakurako" face="akireru03" left=100 ]
[playse storage="sakurako/sa81_031.ogg" buf="0"]
とにかくいっぱい話しかけて好感度をあげるのじゃ[p]
#
話しかけられるかな……[p]
[endif]

[if exp="tf.rand == 23"]
#桜子
[chara_show name="sakurako" face="panchi03" left=100 ]
[playse storage="sakurako/sa81_033.ogg" buf="0"]
毎日暑いの～[r]
何？　フィギュアでも暑いものは暑いんじゃ！[p]
#
ほうほう、あの服は脱げるのだろうか？[p]
[endif]

[if exp="tf.rand == 24"]
#桜子
[chara_show name="sakurako" face="panchi03" left=100 ]
[playse storage="sakurako/sa81_034.ogg" buf="0"]
土日は給料ＵＰじゃぞ！[p]
#
休日くらいは休もうよ[p]
[endif]

[if exp="tf.rand == 25"]
#桜子
[chara_show name="sakurako" face="mahou01" left=100 ]
[playse storage="sakurako/sa81_035.ogg" buf="0"]
わしの霊力を使えば出来ないことはないのじゃ[p]
#
操って遊ぶのはやめてくれ！[p]
[endif]

[if exp="tf.rand == 26"]
#桜子
[chara_show name="sakurako" face="kobusi04" left=100 ]
[playse storage="sakurako/sa81_037.ogg" buf="0"]
好感度を上げてデートに誘うのじゃ[p]
#
なんとか頑張るぞ～[p]
[endif]

[if exp="tf.rand == 27"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa81_038.ogg" buf="0"]
精力が落ちてると肝心な時に役にたたんぞ[p]
#
常に溜まっているから大丈夫[p]
[endif]

[if exp="tf.rand == 28"]
#桜子
[chara_show name="sakurako" face="talk06" left=100 ]
[playse storage="sakurako/sa81_040.ogg" buf="0"]
うぬぬぬ！　静まれ……しずまるのじゃ、わが左手よ！[p]
#
何の遊び?……[p]
[endif]

[if exp="tf.rand == 29"]
#桜子
[chara_show name="sakurako" face="mahou01" left=100 ]
[playse storage="sakurako/sa81_042.ogg" buf="0"]
闇の炎に抱かれて消えろッ！[p]
#
ぐは～！！[p]
[endif]

[if exp="tf.rand == 30"]
#桜子
[chara_show name="sakurako" face="talk07" left=100 ]
[playse storage="sakurako/sa81_043.ogg" buf="0"]
この眼は闇が……よくみえる……[p]
#
何かやってる……そっとしておこう[p]
[endif]

;桜子消去
#
[chara_hide name="sakurako"]

[return]

;***********************************************************************************************************************
;-野球拳
*yakyuu

@bg storage ="room_day.png" time=1000
[menuwindows]

;***********************************************************************************************************************
;１回目会話
[if exp="f.sakurako_yakyuu_end == 0"]
[chara_show name="sakurako" face="niko" left=100 ]
#
ねぇねぇ[p]
桜子の服って脱げるんだよね[p]
#桜子
[playse storage="sakurako/sa82_001.ogg" buf="0"]
うむ、ちゃんと脱げるぞ[r]
毎日綺麗にしておるからの[p]
#
まじで！ちょっと見せてよ[p]
#桜子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa82_002.ogg" buf="0"]
は！？[p]
#
どうなってるの？　超見たい[p]
#桜子
[playse storage="sakurako/sa82_003.ogg" buf="0"]
あほか！　見せる訳なかろうが[p]
#
いいじゃん、いいじゃん！　ちょっとだけだから[p]
#桜子
[chara_mod  name="sakurako" face="okori03" ]
[playse storage="sakurako/sa82_004.ogg" buf="0"]
このゴミクズめ[r]
ふざけた事抜かしておると、またその顔に蹴りをぶちこむぞ！[p]
#
そんなのずるい～[r]
ずるい、ずるい～！[p]
#桜子
[chara_mod  name="sakurako" face="okori02" ]
[playse storage="sakurako/sa82_005.ogg" buf="0"]
はぁ？　ずるい？　何がじゃ[p]
#
そっちの一方的な都合を押し付けて色々させてるのに不公平だ[r]
こっちのお願いだってちょっとぐらい聞いてくれてもいいじゃんか～[p]
#桜子
[playse storage="sakurako/sa82_006.ogg" buf="0"]
ぐぬぬ！[p]
#
もういい、やらない[r]
ずっと引きこもってやる[p]
#桜子
[chara_mod  name="sakurako" face="akireru" ]
[playse storage="sakurako/sa82_007.ogg" buf="0"]
わ……わかった、わかった[p]
#
え！　脱いでくれるの[p]
#桜子
[chara_mod  name="sakurako" face="panchi03" ]
[playse storage="sakurako/sa82_008.ogg" buf="0"]
こうなったら勝負じゃ！　お前が勝ったら服を脱ごう[p]
#
勝負？　何で勝負するの？[p]
#桜子
[playse storage="sakurako/sa82_009.ogg" buf="0"]
愚か者め！　服を賭けて勝負といったら野球拳じゃろうが[p]
#
何でそんなの知ってるんだ[p]
#桜子
[playse storage="sakurako/sa82_010.ogg" buf="0"]
お前が負けたらお前も脱ぐんじゃぞ！　わかっておるな[p]
#
の……のぞむところ[p]
#桜子
[chara_mod  name="sakurako" face="niya" ]
[playse storage="sakurako/sa82_011.ogg" buf="0"]
ふん、素っ裸にして泣かしてやるぞ！[r]
ソチンを晒して後悔するな！[p]
[endif]
;***********************************************************************************************************************
;２回目会話
[if exp="f.sakurako_yakyuu_end == 1"]
[chara_show name="sakurako" face="niko" left=100 ]
#
桜子！　勝負だ！[p]
#桜子
[chara_mod  name="sakurako" face="okori02" ]
[playse storage="sakurako/sa82_035.ogg" buf="0"]
は？　お前が負けて素っ裸になって終わったではないか！[p]
#
ふふ、負けるのが怖いんだろう[p]
#桜子
[chara_mod  name="sakurako" face="niya" ]
[playse storage="sakurako/sa82_036.ogg" buf="0"]
わしが負ける？　ありえんわ！[r]
お前みたいなゴミクズに負ける訳なかろうが！[p]
#
ならば勝負してみればいい[r]
次は僕の勝ちだろうけどね[p]
#桜子
[chara_mod  name="sakurako" face="yakyuu00" ]
[playse storage="sakurako/sa82_037.ogg" buf="0"]
ふん！　この愚か者めが[r]
またそのソチンに蹴りをぶち込んでやるわ[p]
[endif]


;桜子消去
#
[chara_hide name="sakurako"]
[bg storage="yakyuu2_1.png" time="1000"]

;***********************************************************************************************************************
;--じゃんけん勝負
[playbgm storage="game_maoudamashii_2_boss08.ogg" loop="true"]
[eval exp="tf.round = 0"]
[eval exp="tf.s_fuku = 1"]
[eval exp="tf.p_fuku = 1"]

*select
#
何を出そうかな？
[glink  color="pink" size="20"  x="100"  width="200"  y="110"  text="グー"  target="*syoubu" exp="tf.janken = 0"]
[glink  color="pink" size="20"  x="100"  width="200"  y="170"  text="チョキ"  target="*syoubu" exp="tf.janken = 1" ]
[glink  color="pink" size="20"  x="100"  width="200"  y="230"  text="パー"  target="*syoubu" exp="tf.janken = 2" ]
[s]

*round

;***********************************************************************************************************************
*syoubu
[fadeoutbgm time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[bg storage="black.png" time="500"]
[eval exp="tf.s_mov = 'mov_82_' + tf.s_fuku + '.webm'"]
[movie storage=&tf.s_mov skip="true"]
[call target="*jyanken"]
[menuwindows]
;■桜子グー
[if exp="tf.rand == 0 || tf.rand == 1 || tf.rand == 2"]
 [if exp="tf.s_fuku <=3"] 
  [bg storage="jyanken_00.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==5 || tf.s_fuku ==4"] 
  [bg storage="jyanken_03.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==6"] 
  [bg storage="jyanken_06.png" time="0"]
 [endif]
[endif]
;■桜子チョキ
[if exp="tf.rand == 3 "]
 [if exp="tf.s_fuku <=3"] 
  [bg storage="jyanken_01.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==5 || tf.s_fuku ==4"] 
  [bg storage="jyanken_04.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==6"] 
  [bg storage="jyanken_07.png" time="0"]
 [endif]
[endif]
;■桜子パー
[if exp="tf.rand == 4 || tf.rand == 5"]
 [if exp="tf.s_fuku <=3"] 
  [bg storage="jyanken_02.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==5 || tf.s_fuku ==4"] 
  [bg storage="jyanken_05.png" time="0"]
 [endif]
 [if exp="tf.s_fuku ==6"] 
  [bg storage="jyanken_08.png" time="0"]
 [endif]
[endif]


#
[if exp="tf.janken == 0"]  
グーだ！[p]
[endif]
[if exp="tf.janken == 1"]  
チョキだ！[p]
[endif]
[if exp="tf.janken == 2"]  
パーだ！[p]
[endif]

[if exp="tf.result == 0"]
[jump target="*aiko"]
[endif]

[if exp="tf.result == 1"]
[jump target="*make"]
[endif]

[if exp="tf.result == 2"]
[jump target="*kati"]
[endif]


;***********************************************************************************************************************
;--勝ち
*kati
[if exp="tf.s_fuku == 1"]
 [jump target="*fuku1"]
[endif]
[if exp="tf.s_fuku == 2"]
 [jump target="*fuku2"]
[endif]
[if exp="tf.s_fuku == 3"]
 [jump target="*fuku3"]
[endif]
[if exp="tf.s_fuku == 4"]
 [jump target="*fuku4"]
[endif]
[if exp="tf.s_fuku == 5"]
 [jump target="*fuku5"]
[endif]
[if exp="tf.s_fuku == 6"]
 [jump target="*fuku6"]
[endif]
;***********************************************************************************************************************
;---服１枚目
*fuku1
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu00" time="500"]
[menuwindows]
#
やった！勝ったぞ！[p]
#桜子
[playse storage="sakurako/sa82_012.ogg" buf="0"]
ま、まずは靴じゃ[p]
#
靴は服じゃないだろう[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="500"]
[movie storage="mov_82_10.webm" skip="true"]
[bg storage="yakyuu2_2.png" time="500"]
[menuwindows]
[eval exp="tf.s_fuku = tf.s_fuku + 1"]
[jump target="*select"]

;***********************************************************************************************************************
;---服2枚目
*fuku2
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu00" time="500"]
[menuwindows]
#
やった！勝ったぞ！[p]
#桜子
[playse storage="sakurako/sa82_015.ogg" buf="0"]
次はニーソックスじゃ[p]
#
ほうほう……なかなかいいものだ[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="500"]
[movie storage="mov_82_11.webm" skip="true"]
[bg storage="yakyuu2_3.png" time="500"]
[menuwindows]
[eval exp="tf.s_fuku = tf.s_fuku + 1"]
[jump target="*select"]
;***********************************************************************************************************************
;---服3枚目
*fuku3
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu01" time="500"]
[menuwindows]
#
ふふふ、次は上着ですなあ[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="500"]
[movie storage="mov_82_12.webm" skip="true"]
[bg storage="yakyuu2_4.png" time="500"]
[menuwindows]
[eval exp="tf.s_fuku = tf.s_fuku + 1"]
[jump target="*select"]
;***********************************************************************************************************************
;---服4枚目
*fuku4
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu02" time="500"]
[menuwindows]
#
よし、勝ったぞ！[p]
#
さあ、スカートを脱いでいただこう[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="500"]
[movie storage="mov_82_13.webm" skip="true"]
[bg storage="yakyuu2_5.png" time="500"]
[menuwindows]
[eval exp="tf.s_fuku = tf.s_fuku + 1"]
[jump target="*select"]
;***********************************************************************************************************************
;---服5枚目
*fuku5
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu03" time="500"]
[menuwindows]
#
ふふふ、勝ちましたな[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="500"]
[movie storage="mov_82_14.webm" skip="true"]
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu03" time="500"]
[menuwindows]
#
あれ、天使様が嘘をつくのですか？[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[bg storage="black.png" time="500"]
[movie storage="mov_82_15.webm" skip="true"]
[movie storage="mov_82_16.webm" skip="true"]
[bg storage="yakyuu2_6.png" time="500"]
[menuwindows]
[eval exp="tf.s_fuku = tf.s_fuku + 1"]
[jump target="*select"]
;***********************************************************************************************************************
;---服6枚目
*fuku6
[bg storage="room_day.png" time="500"]
[chara_show name="sakurako" face="yakyuu04" time="500"]
[menuwindows]
#
よ～し！勝利だ！！[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[bg storage="black.png" time="500"]
[bgmovie storage="mov_82_17.webm" skip="true"]
#桜子
[playse storage="sakurako/sa82_022.ogg" buf="0"]
う……むぐぐ……[p]
#
な……なんか可哀そうになってきた[p]
桜子ちゃん、もういいよ[r]
ここまでで……[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_82_18.webm" skip="true"]
[movie storage="mov_82_19.webm" skip="true"]
[stop_bgmovie]
[bg storage="room_day.png" time="1000"]
[menuwindows]
#
ふむ、堪能させていただきました[p]
#桜子
[chara_show name="sakurako" face="yakyuu07" time="0" top=" 200"]
[anim name="sakurako" top="-300" left="700"]
[playse storage="sakurako/sa82_026.ogg" buf="0"]
バカバカ、このド変態！　
お父さんお母さんにいいつけてやるから！[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
#
怒って行っちゃった！　ていうかお父さんお母さんがいるのか？[p]
[eval exp="f.sakurako_yakyuu_end = 2"]
[return]

;***********************************************************************************************************************
;--負け
*make
[bg storage="room_day.png" time="500"]

[if exp="tf.p_fuku != 4"]

[if exp="tf.s_fuku ==1"]
 [chara_show name="sakurako" face="yakyuu00" time="500"]
[endif]
[if exp="tf.s_fuku ==2"]
 [chara_show name="sakurako" face="yakyuu00" time="500"]
[endif]
[if exp="tf.s_fuku ==3"]
 [chara_show name="sakurako" face="yakyuu01" time="500"]
[endif]
[if exp="tf.s_fuku ==4"]
 [chara_show name="sakurako" face="yakyuu02" time="500"]
[endif]
[if exp="tf.s_fuku ==5"]
 [chara_show name="sakurako" face="yakyuu03" time="500"]
[endif]
[if exp="tf.s_fuku ==6"]
 [chara_show name="sakurako" face="yakyuu04" time="500"]
[endif]

[endif]

[menuwindows]
;***********************************************************************************************************************
;---１枚目
[if exp="tf.p_fuku == 1"]
#桜子
[playse storage="sakurako/sa82_027.ogg" buf="0"]
ふん、わしの勝ちじゃ！[p]
#
くっ、まずは……靴下から[p]
#桜子
[playse storage="sakurako/sa82_028.ogg" buf="0"]
ふん、お前の勝ちなどありえんぞ[p]
[eval exp="tf.p_fuku = tf.p_fuku + 1"]
;桜子消去
#
[chara_hide name="sakurako"]
[eval exp="tf.fuku_i = 'yakyuu2_' + tf.s_fuku + '.png'"]
[bg storage=&tf.fuku_i time="500"]
[jump target="*select"]
[endif]
;***********************************************************************************************************************
;---２枚目
[if exp="tf.p_fuku == 2"]
#桜子
[playse storage="sakurako/sa82_029.ogg" buf="0"]
あ～はははは、弱いのう、弱いのう[p]
#
くっそ～、次は勝つぞ！[p]
[eval exp="tf.p_fuku = tf.p_fuku + 1"]
;桜子消去
#
[chara_hide name="sakurako"]
[eval exp="tf.fuku_i = 'yakyuu2_' + tf.s_fuku + '.png'"]
[bg storage=&tf.fuku_i time="500"]
[jump target="*select"]
[endif]
;***********************************************************************************************************************
;---３枚目
[if exp="tf.p_fuku == 3"]
#桜子
[playse storage="sakurako/sa82_030.ogg" buf="0"]
ふふふふ、次はズボンじゃのう[r]
はよ脱げ、ゴミクズめ[p]
#
ま、まだ僕にはパンツが残っている！[r]
パンツの力を見せてやるぞ[p]
[eval exp="tf.p_fuku = tf.p_fuku + 1"]
;桜子消去
#
[chara_hide name="sakurako"]
[eval exp="tf.fuku_i = 'yakyuu2_' + tf.s_fuku + '.png'"]
[bg storage=&tf.fuku_i time="500"]
[jump target="*select"]
[endif]
;***********************************************************************************************************************
;---４枚目
*p_fuku4
[if exp="tf.p_fuku == 4"]

[if exp="f.sakurako_yakyuu_end == 0"]
[chara_show name="sakurako" face="yakyuu00" time="500"]
#桜子
[playse storage="sakurako/sa82_031.ogg" buf="0"]
ふあ～はははは、大天使桜子様の力を思い知ったか[r]
醜いゴミクズを素っ裸にしてくれたわ！　はよ脱いでソチンを出してみろ！[p]
#
くく、そこまで言われるならばお見せしましょう桜子様[p]
はいどうぞ！[p]
[chara_mod  name="sakurako" face="yakyuu05" ]
#桜子
[playse storage="sakurako/sa82_032.ogg" buf="0"]
ひやっ！[p]
#
見てください桜子様！　この私めの生まれたての姿を[p]
[chara_mod  name="sakurako" face="yakyuu06" ]
#桜子
[playse storage="sakurako/sa82_033.ogg" buf="0"]
きゃ～～[p]
#
なぜ逃げるんですか、もっとよく見てください桜子様[p]
[chara_mod  name="sakurako" face="keri01" ]
[playse storage="se/naguru.ogg" buf="2"]
[quake count="1" time="300"]
#桜子
[playse storage="sakurako/sa82_034.ogg" buf="0"]
このド変態！死んじまえ～[p]

[eval exp="f.sakurako_yakyuu_end = 1"]

;桜子消去
#
[chara_hide name="sakurako" time="500"]
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[p]
桜子め……無防備の股間に蹴りをいれるとは……[p]
次は負けないからな……[p]
@bg storage ="room_day.png" time=1000
[chara_show name="sakurako" face="default" left=100 ]
[uiwindows]
[return]
[endif]

[if exp="f.sakurako_yakyuu_end == 1"]
#
[chara_show name="sakurako" face="yakyuu00" time="500"]
くく……、また負けた……しょうがない！[r]
さあ見てください桜子様！[p]
[chara_mod  name="sakurako" face="keri01" ]
[playse storage="se/naguru.ogg" buf="2"]
[quake count="1" time="300"]
#桜子
[playse storage="sakurako/sa82_038.ogg" buf="0"]
懲りないド変態めが！　叩き潰すぞ！[p]
#
も……もう潰れそうです[p]
;桜子消去
#
[chara_hide name="sakurako" time="500"]
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[p]
しかし、攻略法をつかんだぞ[p]
桜子はグーを出す確率が高い！[p]
ふふふ、次は勝てる！[p]
[cm]
@bg storage ="room_day.png" time=1000
[uiwindows]
[return]
[endif]
[endif]



;***********************************************************************************************************************
*aiko
;あいこ
[eval exp="tf.fuku_i = 'yakyuu2_' + tf.s_fuku + '.png'"]
[bg storage=&tf.fuku_i time="500"]
[menuwindows]
#
あいこだった[p]
[jump target="*select"]



;***********************************************************************************************************************
;-じゃんけんルーチン
*jyanken
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 6)
[endscript]

;■桜子グー
[if exp="tf.rand == 0 || tf.rand == 1 || tf.rand == 2"]
 ;アイコ
 [if exp="tf.janken ==0"]
  [eval exp="tf.result = 0"]
 [endif]
 ;負け
 [if exp="tf.janken ==1"]
  [eval exp="tf.result = 1"]
 [endif]
 ;勝ち
 [if exp="tf.janken ==2"]
  [eval exp="tf.result = 2"]
 [endif]
[endif]
;■桜子チョキ
[if exp="tf.rand == 3"]
 ;アイコ
 [if exp="tf.janken ==1"]
  [eval exp="tf.result = 0"]
 [endif]
 ;負け
 [if exp="tf.janken ==2"]
  [eval exp="tf.result = 1"]
 [endif]
 ;勝ち
 [if exp="tf.janken ==0"]
  [eval exp="tf.result = 2"]
 [endif]
[endif]
;■桜子パー
[if exp="tf.rand == 4 || tf.rand == 5"]
 ;アイコ
 [if exp="tf.janken ==2"]
  [eval exp="tf.result = 0"]
 [endif]
 ;負け
 [if exp="tf.janken ==0"]
  [eval exp="tf.result = 1"]
 [endif]
 ;勝ち
 [if exp="tf.janken ==1"]
  [eval exp="tf.result = 2"]
 [endif]
[endif]


[return]

;***********************************************************************************************************************
;-エンディング
*ending
[eval exp="f.sakurako_yakyuu_end = 4"]
[bg storage="room_day.png" time="1000"]
[chara_show name="sakurako" face="default" ]
[menuwindows]
#
桜子！どこにいって……[p]
#桜子
[playse storage="sakurako/sa83_001.ogg" buf="0"]
もう帰る時間みたい……[p]
#
えっ、ちょっと待ってよ[r]
そんな急に……本当に帰るの？[p]
#桜子
[playse storage="sakurako/sa83_002.ogg" buf="0"]
お迎えがきたからね[p]
#
ニ……ニート脱出計画はどうなるの！[r]
全人類をまだやってないだろう？　地上には居るんだよね？[p]
#桜子
[playse storage="sakurako/sa83_003.ogg" buf="0"]
もう私が居なくても大丈夫だよね……にいちゃん[p]
#
にいちゃん……にいちゃんって……[p]
;桜子消去
#
[chara_hide name="sakurako"]
[bg storage="ending.png" time="2000"]
#桜子
[playse storage="sakurako/sa83_004.ogg" buf="0"]
わ～ははは、我こそは全能なる神桜子なるぞ！　愚民ども跪け～！[p]
#
桜子……おまえ中二病か[r]
何のテレビ見たんだ[p]
#お母さん
出発するわよ[r]
お兄ちゃんは本当にいかないの？[p]
#
友達の家にいくからいいよ[p]
[bg storage="ending2.png" time="2000"]
#
桜子……僕は……なんで……[r]
思い出した……桜子は僕の……妹[p]
父さん母さんとお前は……あの時事故で……[p]
だから僕は……すべてを忘れるように……引きこもって……[p]

[bg storage="room_day.png" time="1000"]
[chara_show name="sakurako" face="default" ]
#桜子
[playse storage="sakurako/sa83_005.ogg" buf="0"]
にいちゃんはもう大丈夫[r]
大切な人が出来たでしょ[p]
#
ぼ、僕はあの家族に会った事がある……そうだ！[p]
;桜子消去
#
[chara_hide name="sakurako"]
[bg storage="ending3.png" time="1000"]
昔よく一緒に遊んでたじゃないか……隣に住んでたんだ……[p]
[bg storage="room_day.png" time="1000"]
[chara_show name="sakurako" face="default" ]
お前の力じゃなくて本当に知り合いだったんだな……[p]
#桜子
[chara_mod  name="sakurako" face="panchi04" ]
[playse storage="sakurako/sa83_006.ogg" buf="0"]
そうだよ、全部兄ちゃんの力だよ[r]
私は何にもしてないの[p]
#
本当にいっちゃうのか……[p]
#桜子
[chara_mod  name="sakurako" face="akireru02" ]
[playse storage="sakurako/sa83_007.ogg" buf="0"]
お父さんお母さんが待ってるから……[r]
お兄ちゃんにセクハラされたことも言いつけるからね[p]
#
まっ……まってくれ、それは[p]
#桜子
[chara_mod  name="sakurako" face="tobi04" ]
[playse storage="sakurako/sa83_008.ogg" buf="0"]
ふふ、言わないよ[r]
じゃあね、お兄ちゃん元気でね[p]
#
さ、桜子！　まってくれ！[p]
[chara_hide name="sakurako"]
[bg storage="white.png" time="1000"]
[fadeoutse]
[bg storage="ending4.png" time="1000"]
#
桜子……[p]
[cm]
[clearfix]
[bg storage="black.png" time="500"]
[movie storage="mov_ending2.webm" skip="true" ]

[bgmovie storage="mov_ending3.webm" loop="true" ]
[menuwindows]
#
うん、食べるよ莉子ちゃん[r]
朝ごはんは久しぶりだね[p]
[stop_bgmovie]
[cm]
[clearfix]
[movie storage="mov_ending.webm" skip="true" ]
[menuwindows]
[bg storage="ending5.png" time="1000"]
……[p]
[bg storage="ending6.png" time="1000"]
#桜子
[playse storage="sakurako/sa83_009.ogg" buf="0"]
あ……あれ？帰れない……どうしよう[r]
まっ、いいか……[p]
#
[bg storage="black.png" time="1000"]
[bg storage="room_day.png" time="1000"]
[chara_show name="sakurako" face="niko" left="100"]
#桜子
[playse storage="sakurako/sa83_010.ogg" buf="0"]
あ～はははは、我こそは全能なる大天使桜子様なるぞ[r]
恐れおののけ愚民ども！[p]
#
……なぜ居る……また中二病みたいなしゃべり方してるし……[p]
#桜子
[playse storage="sakurako/sa83_011.ogg" buf="0"]
ま、まだわしの霊力は回復しとらんのじゃ！[r]
クソニートのお前をビシバシ鍛えてやるから覚悟しろ！[p]
#
ふふふ……そうだな……もっともっと鍛えてもらわないとな[p]
[eval exp="f.ending = 1"]
[playse storage="se/fanfare.ogg" buf="2"]
フリーモードが解放されました[r]
今後は全員と付き合えるようになります[p]
[return]


;***********************************************************************************************************************
;-温泉
*spa_sakurako
[bg storage="room_day.png" time="1000"]
[chara_show name="sakurako" face="default" left=100]
[menuwindows]
#
今日は温泉旅行だ！[p]
まさか福引で一等が当たるなんて…[p]
混浴なんて入っちゃったりして[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_80_1.webm" skip="true" ]
[menuwindows]
#
ついてくる気か？[p]
[chara_mod  name="sakurako" face="okori03" ]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_80_3.webm" skip="true" ]
[menuwindows]
#
いや…別にいいけど[p]
;桜子消去
#
[chara_hide name="sakurako"]
[return]
;***********************************************************************************************************************
;-PC
*pc_sakurako
;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 5)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="default" left=100 ]
[playse storage="sakurako/sa78_001.ogg" buf="0"]
何か買うのか？[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="akireru02" left=100 ]
[playse storage="sakurako/sa78_002.ogg" buf="0"]
無駄遣いするなよ[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="akubi03" left=100 ]
[playse storage="sakurako/sa78_003.ogg" buf="0"]
何があるのじゃ？[p]
[endif]

[if exp="tf.rand == 3"]
#桜子
[chara_show name="sakurako" face="niko" left=100 ]
[playse storage="sakurako/sa78_004.ogg" buf="0"]
ほしいものでもあるのか？[p]
[endif]

[if exp="tf.rand == 4"]
#桜子
[chara_show name="sakurako" face="niya" left=100 ]
[playse storage="sakurako/sa78_005.ogg" buf="0"]
エロい物でも買うのか[p]
[endif]

;桜子消去
#
[chara_hide name="sakurako"]

[return]

;***********************************************************************************************************************
;-おねだり
*orgasm_sakurako
;桜子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

[if exp="tf.rand == 0"]
#桜子
[chara_show name="sakurako" face="yakyuu05" left=100 ]
[playse storage="sakurako/sa75_009.ogg" buf="0"]
このドスケベが！[p]
[endif]

[if exp="tf.rand == 1"]
#桜子
[chara_show name="sakurako" face="yakyuu05" left=100 ]
[playse storage="sakurako/sa74_048.ogg" buf="0"]
お前もなかなかやりおるの！[p]
[endif]

[if exp="tf.rand == 2"]
#桜子
[chara_show name="sakurako" face="yakyuu05" left=100 ]
[playse storage="sakurako/sa75_008.ogg" buf="0"]
お前もやるのう！[p]
[endif]
;桜子消去
#
[chara_hide name="sakurako"]
#
どうしようかな
[return]
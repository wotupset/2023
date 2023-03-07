;初日

*start

[cm]
[clearfix]
[start_keyconfig]

[movie storage="mov_01.webm" skip=true ]

@bg storage ="living.png" time=1000

;メッセージウィンドウの表示
[menuwindows]

さて、自分は……[l][r][er]
桜子が睨んでいる……[r]
誰かを手伝えって感じかな……[p]
どうしようか？

[glink  color="pink" size="20"  x="400"  width="400"  y="150"  text="莉子ちゃんとお掃除"  target="*riko"  ]
[glink  color="pink" size="20"  x="400"  width="400"  y="250"  text="莉菜ちゃんとお買い物"  target="*rina"  ]
[glink  color="pink" size="20"  x="400"  width="400"  y="350"  text="静江さんとお風呂掃除"  target="*sizue"  ]
[s]

*riko
;莉子ちゃんとお掃除
;好感度上昇
[eval exp="f.riko_f = f.riko_f + 5"]


;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

@bg storage ="black.png" time=1000"
[movie storage="mov_02.webm" skip=true ]


@jump target="*dinner"

*rina
;莉菜ちゃんとお買い物
;好感度上昇
[eval exp="f.rina_f = f.rina_f + 5"]

;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

@bg storage ="black.png" time=1000"
[movie storage="mov_03.webm" skip=true ]

@jump target="*dinner"

*sizue
;静江さんとお風呂掃除
;好感度上昇
[eval exp="f.sizue_f = f.sizue_f + 5"]

;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

@bg storage ="black.png" time=1000"
[movie storage="mov_04.webm" skip=true ]

@jump target="*dinner"

*dinner
[movie storage="mov_05.webm" skip=true ]

[movie storage="mov_06.webm" skip=true ]

*room

@bg storage ="room_night.png" time=1000

;メッセージウィンドウの表示
[menuwindows]

自分の部屋に戻ってきた[p]
部屋は余っているのでそれぞれに案内してきたが
莉菜ちゃん莉子ちゃんは2階の部屋[l][r]
静江さんは1階の和室を使ってもらうことにした[p]
お風呂は最後に入ったけど……
なんかドキドキしたな……[p]

[chara_show name="sakurako" face="niko" left=100 ]
#桜子
[playse storage="sakurako/sa07_001.ogg" buf="0"]
もうエロイ事したか？[p]
#
は？はぁ！なにが？[p]
#桜子
[chara_mod  name="sakurako" face="akireru" ]
[playse storage="sakurako/sa07_002.ogg" buf="0"]
なんじゃ、まだか……使えんやつじゃの[p]
#
(何を言ってるんだ？この天使は……)[p]
#桜子
[chara_mod  name="sakurako" face="default" ]
[playse storage="sakurako/sa07_003.ogg" buf="0"]
あっ、そうそう,お前は一応金はあるみたいだけど[r]
生活費以外は使うことは禁止じゃ[p]
#
えっ！なんで？[p]
#桜子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa07_004.ogg" buf="0"]
あたりまえじゃ！これはニート更生計画なんだから[r]
お前には働いてもらう[p]
#
ええ～働く！[r]
そ……それは……[p]
#桜子
[playse storage="sakurako/sa07_005.ogg" buf="0"]
ん？なんじゃ[p]
#
いや、家の格言に　”働いたら負け”ってのがありまして[p]
#桜子
[playse storage="sakurako/sa07_006.ogg" buf="0"]
そんなものあるか！　あるとしたら働かざる者食うべからずじゃろう[p]
#
むぐぐ……[p]
#桜子
[chara_mod  name="sakurako" face="default" ]
[playse storage="sakurako/sa07_007.ogg" buf="0"]
バイト先は見つけておいたから安心せい[p]
#
主人公の選択肢にバイトが追加されました[p]
土日に働くと賃金がＵＰします[r]
体力を消耗しすぎると倒れてしまうのでご注意を！[p]
#桜子
[playse storage="sakurako/sa07_008.ogg" buf="0"]
これからは毎日、夜に私がステータスを占ってやるからの[p]
#
ステータス？[p]
#桜子
[playse storage="sakurako/sa07_009.ogg" buf="0"]
家族とどれだけなかよくなったかとかじゃ！[p]
#
おお！それは便利だ[p]
#桜子
[chara_mod  name="sakurako" face="niya" ]
[playse storage="sakurako/sa07_010.ogg" buf="0"]
1回５００円じゃ！[p]
#
金取るのかよ！[r]
ていうか何に使うんだよ！[p]
#桜子
[playse storage="sakurako/sa07_011.ogg" buf="0"]
初回は出血サービスでタダでやってやろう[p]

;占いステータス画面コール
[call storage="status.ks"]

#桜子
[chara_mod  name="sakurako" face="panchi02" ]
[playse storage="sakurako/sa07_013.ogg" buf="0"]
このステータスを参考に家族とエロい……、仲良くなるんじゃぞ![p]

#
は……はぁ[p]

#桜子
[playse storage="sakurako/sa07_015.ogg" buf="0"]
一日の締め括りは日記を書いてもらう[p]

#
日記？　そんなの書いたことないよ！[p]

#桜子
[chara_mod  name="sakurako" face="okori" ]
[playse storage="sakurako/sa07_016.ogg" buf="0"]
これも更生計画の一環じゃ！しっかり書いてもらうからの！[p]

#
一日の終わりに日記を書くことによりゲームのセーブが出来ます[p]


[chara_mod  name="sakurako" face="akubi" ]
（この天使はずっと僕の部屋にいるのか？[r]
……抜きたくなったらどうしよう……）[p]
とりあえず日記でも書いて寝るかな[p]

;セーブ画面移動
[showsave]
;バージョンが上がったら消す
[eval exp="f.save_v = 1.03"]
;画面暗転
[mask time="500"]
;レイヤ全消去
[cm]
[clearfix]
@layopt layer="message" visible=false
[chara_hide name="sakurako" time="0"]
[freeimage layer="base" time="0"]

[mask_off]
[return]

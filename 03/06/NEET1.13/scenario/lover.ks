;告白イベント
;好感度100で告白待ち状態 f.riko_lover = 1になります
;この状態で帰宅時に告白イベント開始
;イベント終了で恋人状態 f.riko_lover = 2になります

*start

[cm]
[clearfix]
;***********************************************************************************************************************
;誰とも恋人でない場合
[if exp="f.riko_lover == undefined && f.rina_lover == undefined && f.sizue_lover == undefined"]

 [if exp="f.riko_f >= 100"]
  [jump target="*riko_lover"]
 [endif]
 [if exp="f.rina_f >= 100"]
  [jump target="*rina_lover"]
 [endif]
 [if exp="f.sizue_f >= 100"]
  [jump target="*sizue_lover"]
 [endif]
 
[endif]

;***********************************************************************************************************************
;誰かと恋人の場合エンディング済みならフリーモード
[if exp="f.ending == 1"]

 ;■莉子
 [if exp="f.riko_lover == undefined "]
  [if exp="f.riko_f >= 100"]
   [jump target="*riko_lover"]
  [endif]
 [endif]
 ;■莉菜
 [if exp="f.rina_lover == undefined "]
  [if exp="f.rina_f >= 100"]
   [jump target="*rina_lover"]
  [endif]
 [endif]
 ;■静江
 [if exp="f.sizue_lover == undefined "]
  [if exp="f.sizue_f >= 100"]
   [jump target="*sizue_lover"]
  [endif]
 [endif]
 
[endif]

[return]


;-莉子ちゃん恋人判定------------------------------------------------------------------
*riko_lover
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[p]
#桜子
[playse storage="sakurako/sa75_011.ogg" buf="0"]
莉子ちゃんとエッチ,莉子ちゃんとエッチ、莉子ちゃんとエッチ、莉子ちゃんとエッチ、[p]
#
[bg storage="room_night.png" time="1000"]
[chara_show name="sakurako" face="akubi03" left=100]
何を騒いでるんだ！[p]
早く寝て！！[p]
[fadeoutse]
;桜子消去
#
[chara_hide name="sakurako"]
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[l]
変な事言うからすごい気になってきたぞ……[p]
もしかして僕は莉子ちゃんの事を……[p]
[glink  color="pink" size="20"  x="400"  width="400"  y="250"  text="莉子ちゃんを好きかも"  target="*riko_lover_1"]
[glink  color="pink" size="20"  x="400"  width="400"  y="350"  text="いや、気のせいか……"  target="*riko_lover_2"]
[s]

;--莉子ちゃん好きかも
*riko_lover_1
#
僕は莉子ちゃんの事が好きだったんだ……[p]
[eval exp="f.riko_lover = 1"]
明日から気になっちゃったらどうしよう……[p]
……[l]……[l]……[l]
す～す～……[p]
[return]

;--そんなことはなかった
*riko_lover_2
#
いやいや、そんなことはないだろう……[p]
もう寝ようかな[p]
[eval exp="f.riko_f = 80"]
[return]

;-莉菜ちゃん恋人判定-------------------------------------------------------------------------
*rina_lover
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[p]
#桜子
[playse storage="sakurako/sa75_012.ogg" buf="0"]
莉菜ちゃんとあんなことやこんなこと！莉菜ちゃんとあんなことやこんなこと！[r]
莉菜ちゃんとあんなことやこんなこと！莉菜ちゃんとあんなことやこんなこと！[p]
#
[bg storage="room_night.png" time="1000"]
[chara_show name="sakurako" face="akubi03" left=100]
何を騒いでるんだ！[p]
早く寝て！！[p]
[fadeoutse]
;桜子消去
#
[chara_hide name="sakurako"]
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[l]
変な事言うからすごい気になってきたぞ……[p]
もしかして僕は莉菜ちゃんの事を……[p]
[glink  color="pink" size="20"  x="400"  width="400"  y="250"  text="莉菜ちゃんを好きかも"  target="*rina_lover_1"]
[glink  color="pink" size="20"  x="400"  width="400"  y="350"  text="いや、気のせいか……"  target="*rina_lover_2"]
[s]

;--莉菜ちゃん好きかも
*rina_lover_1
#
僕は莉菜ちゃんの事が好きだったんだ……[p]
[eval exp="f.rina_lover = 1"]
明日から気になっちゃったらどうしよう……[p]
……[l]……[l]……[l]
す～す～……[p]
[return]

;--そんなことはなかった
*rina_lover_2
#
いやいや、そんなことはないだろう……[p]
もう寝ようかな[p]
[eval exp="f.rina_f = 80"]
[return]

;-静江さん恋人判定--------------------------------------------------------------------------------
*sizue_lover
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[p]
#桜子
[playse storage="sakurako/sa75_013.ogg" buf="0"]
静江さんのおっぱい！静江さんのおっぱい！静江さんのおっぱい！静江さんのおっぱい！[p]
#
[bg storage="room_night.png" time="1000"]
[chara_show name="sakurako" face="akubi03" left=100]
何を騒いでるんだ！[p]
早く寝て！！[p]
[fadeoutse]
;桜子消去
#
[chara_hide name="sakurako"]
[bg storage="black.png" time="1000"]
#
……[l]……[l]……[l]
変な事言うからすごい気になってきたぞ……[p]
もしかして僕は静江さんの事を……[p]
[glink  color="pink" size="20"  x="400"  width="400"  y="250"  text="静江さんを好きかも"  target="*sizue_lover_1"]
[glink  color="pink" size="20"  x="400"  width="400"  y="350"  text="いや、気のせいか……"  target="*sizue_lover_2"]
[s]

;--静江さん好きかも
*sizue_lover_1
#
僕は静江さんの事が好きだったんだ……[p]
[eval exp="f.sizue_lover = 1"]
明日から気になっちゃったらどうしよう……[p]
……[l]……[l]……[l]
す～す～……[p]
[return]

;--そんなことはなかった
*sizue_lover_2
#
いやいや、そんなことはないだろう……[p]
もう寝ようかな[p]
[eval exp="f.sizue_f = 80"]
[return]
;***********************************************************************************************************************
;-告白イベント
*confession
;土日なら延期
[if exp="f.oneweek == 5 || f.oneweek == 6"]
 [eval exp="tf.enki = 1"]
 [return]
[endif]

;パートナー判別桜子以外延期
[if exp="f.partner > 0"]
 [eval exp="tf.enki = 1"]
 [return]
[endif]
;***********************************************************************************************************************
;***********************************************************************************************************************
;--莉子ちゃん告白イベント
[if exp="f.riko_lover == 1"]
[freeimage layer="2" time="0"]
[bg storage="entrance.png" time="1000"]
#
家に帰ってきた[p]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_23_1.webm" time="1000" loop="true"]
莉子ちゃんただいま[p]
莉菜ちゃんと静江さんはまだ帰ってないのかな[p]
#莉子
[playse storage="riko/rk23_001.ogg" buf="0"]
お姉ちゃんは友達と勉強会で遅くなるって言ってたよ[r]
お母さんは飲み会だって[p]
#
（莉子ちゃん、パンツ見えてる！）[p]
（相変わらずのナイスアングル！）[p]
（いかに気づかれない様にばっちり見るか、腕の見せ所である！）[p]
夕飯の準備はしてあるんだ！さすが莉菜ちゃん（チラッ！）[p]
#莉子
[playse storage="riko/rk23_002.ogg" buf="0"]
おじさんゲームしよ！[p]
#
おっ、いいよ！今度は負けないぞ（チラッ！）[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_23_2.webm" time="1000" loop="true"]
だめだ、全然歯がたたない！[p]
莉子ちゃんは強いな～！[p]
#莉子
[playse storage="riko/rk23_003.ogg" buf="0"]
おじさんさ～[p]
#
ん？[p]
#莉子
[playse storage="riko/rk23_004.ogg" buf="0"]
いつも莉子のパンツ見てるでしょ！[p]
#
！！[p]
み……見てないよ！[p]
#莉子
[playse storage="riko/rk23_005.ogg" buf="0"]
見てないの？[p]
#
えっ……あ……え～と……み、見てないことも……ないかな[p]
#莉子
[playse storage="riko/rk23_006.ogg" buf="0"]
ふ～ん、じゃあ……見たい？[p]
#
えっ……あ……莉子ちゃん……[p]
#莉子
[playse storage="riko/rk23_007.ogg" buf="0"]
莉子のパンツ、見たい？[p]
#
み……見たい……かな[p]
[stop_bgmovie time = "0"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_23_3.webm" time="0" skip="true" ]


[bgmovie storage="mov_23_4.webm" time="2000" loop="true"]
[menuwindows]
#莉子
[playse storage="riko/rk23_009.ogg" buf="0"]
どう？莉子のパンツ[r]
こんなに近くで見れて興奮するでしょ！[p]
#
莉子ちゃん……こんな……まずいよ[p]
#莉子
[playse storage="riko/rk23_010.ogg" buf="0"]
おじさん、莉子の事好きでしょ？[p]
#
えっ……す、好き……だけど……[p]
#莉子
[playse storage="riko/rk23_011.ogg" buf="0"]
うわ～……ロリコンだ……きもっ！[p]
#
り……莉子ちゃんは？[p]
[stop_bgmovie time = "0"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_23_5.webm" time="0" skip="true"]
[bgmovie storage="mov_23_6.webm" time="1000" loop="true"]
[menuwindows]
#莉子
[playse storage="riko/rk23_013.ogg" buf="0" loop="true"]
ん……[p]
[playse storage="riko/rk23_014.ogg" buf="0"]
莉子のファーストキスだったんだけど、どうしてくれるの？[p]
#
どうしよう……じゃぁ、莉子ちゃんの召使になろうかな[p]
莉子ちゃん……莉子ちゃんのおっぱいも見たいな[p]
#莉子
[playse storage="riko/rk23_015.ogg" buf="0"]
おじさんロリコンだから、ぺったんこが好きなんでしょ？[p]
#
はい、大好きです[p]
[stop_bgmovie time="0"]
[bgmovie storage="mov_23_7.webm" time="2000" loop="true"]
#莉子
[playse storage="riko/rk23_016.ogg" buf="0"]
でも莉子、あと何年かしたらお姉ちゃんみたいに巨乳になっちゃうよ[p]
#
莉子ちゃんのおっぱいなら、どっちも大好きだよ[p]
[stop_bgmovie time="0"]
[bgmovie storage="mov_23_8.webm" time="0" loop="true"]
#
[playse storage="riko/rk23_017.ogg" buf="0" loop="true"]
莉子ちゃんの可愛いおっぱい[p]
膨らみかけのおっぱい！[p]
こんなの触っちゃったらもうどうにかなっちゃうよ！[p]
やばいよ……莉子ちゃん……おじさん、もう止まらない[p]
莉子ちゃんの大切な所も……見せてね！[p]
[stop_bgmovie time = "500"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_23_9.webm" time="1000" skip="true"]

[bgmovie storage="mov_23_10.webm" time="1000" loop="true"]
[menuwindows]
[playse storage="riko/rk23_027.ogg" buf="0" loop="true"]
#
（莉子ちゃんの可愛いアソコが目の前に）[p]
[stopse buf="0"]
#莉子
[playse storage="riko/rk23_025.ogg" buf="0"]
おじさん、何か人に触られると……変な感じ[p]
#
[playse storage="riko/rk23_027.ogg" buf="0" loop="true"]
自分ではよくさわるの？[p]
#莉子
[playse storage="riko/rk23_026.ogg" buf="0" clear="true"]
し、知らない……[p]
[stop_bgmovie time="0"]
[bgmovie storage="mov_23_11.webm" time="1000" loop="true"]
[playse storage="riko/rk23_027.ogg" buf="0" loop="true"]
#
莉子ちゃんのオマンコがこんな目の前にある[p]
#莉子
[playse storage="riko/rk23_028.ogg" buf="0"]
おじさん、恥ずかしい……[p]
#
[playse storage="riko/rk23_027.ogg" buf="0" loop="true"]
莉子ちゃん……もう……我慢できないよ……[p]
#莉子
[playse storage="riko/rk23_029.ogg" buf="0"]
うん……痛くしないでね[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[fadeoutse buf="0"]
[stop_bgmovie time = "1000"]
[movie storage="mov_23_12.webm" time="1000" skip="true"]
[bgmovie storage="mov_23_13.webm" time="1000" loop="true"]
[menuwindows]
#莉子
[playse storage="se/kutyu00.ogg" buf="3" loop="true"]
[playse storage="riko/rk26_013.ogg" buf="0"]
おじさん……痛い……これ、気持ちよくなるの？[p]
#
[playse storage="riko/rk26_014.ogg" buf="0" loop="true"]
慣れればどんどん気持ちよくなるよ、莉子ちゃん！[p]
ゆっくり動かすからね[p]
はぁ……はぁ……気持ちいいよ、莉子ちゃん[p]
莉子ちゃん……気持ちいい、もっとしたい……もう我慢できない[p]
[stop_bgmovie time="0"]
[bgmovie storage="mov_23_16.webm" time="1000" loop="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop="true"]
#莉子
うっ！あぁ！んん……[p]
#
莉子ちゃん、ごめんね……我慢できないんだ[p]
莉子ちゃんの奥までおじさんのおちんちんが入ってるよ！[p]
はぁ……はぁ……莉子ちゃん、気持ちいい……[p]
莉子ちゃん！莉子ちゃん！うっ……あぁぁ！[p]
[stop_bgmovie time = "0"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[movie storage="mov_23_14.webm" skip="true"]

[movie storage="mov_23_15.webm" skip="true"]
[menuwindows]
[bgmovie storage="mov_23_17.webm" time="2000" loop="true"]
#莉子
[playse storage="riko/rk26_018.ogg" buf="0"]
おじさん、痛かった！[p]
#
うう……ごめんよ、莉子ちゃん[p]
我慢できなくて……何でもするから許して[p]
#莉子
[playse storage="riko/rk26_019.ogg" buf="0"]
何でも？ふ～ん、どうしよっかな～[r]
今度までに考えとこ！[p]
#
ああ……しまった……余計な事を言ってしまった[p]
[stop_bgmovie time="2000"]
[stopse buf="0"]
;パートナー桜子変更
[eval exp="f.partner = 0"]

[bg storage="room_night.png" time="1000"]
#
部屋に戻ってきた[p]
莉子ちゃんとのエッチの余韻にひたりながら[r]
今日は寝ようかな[p]

;莉子恋人ステータス
[eval exp="f.riko_lover = 2"]
[eval exp="f.riko_i = 10"]
[eval exp="f.energy = 0"]
[return]
[endif]

;***********************************************************************************************************************
;***********************************************************************************************************************
;--莉菜ちゃん告白イベント
[if exp="f.rina_lover == 1"]
[freeimage layer="2" time="0"]
[bg storage="entrance.png" time="1000"]
#
家に帰ってきた[p]
[bg storage="black.png" time="1000"]
[bg storage="lover/img24_00.png" time="1000"]
ただいま～[p]
#莉菜
[playse storage="rina/rn24_001.ogg" buf="0"]
お兄さん、お帰りなさい[r]
今日は莉子ちゃんもお母さんもいないですよ[p]
#
そうなんだ[p]
#莉菜
[playse storage="rina/rn24_002.ogg" buf="0"]
お母さん、仕事でトラブルがあったみたいで遅くなるって言ってました[r]
莉子ちゃんはお友達の家にみんなでお泊りです[p]
#
じゃあ、今日は莉菜ちゃんと二人きりだね！[p]
[bg storage="lover/img24_01.png" time="1000"]
#莉菜
[playse storage="rina/rn24_003.ogg" buf="0"]
……[p]
#
（やばっ、きもいことを言ってしまった）[p]
[bg storage="lover/img24_02.png" time="1000"]
#莉菜
[playse storage="rina/rn24_004.ogg" buf="0"]
今日はせっかくなのでお料理がんばっちゃいました[r]
もう少しで出来ますので待ってて下さい[p]
#	
は～い[p]
[bg storage="lover/img24_03.png" time="1000"]
#莉菜
[playse storage="rina/rn24_005.ogg" buf="0"]
お兄さん、お待たせしました！　出来ましたよ[r]
お口に合うか心配ですけど[p]
#
莉菜ちゃんが作ったのは何でも美味しいよ！[p]
おお！　なんかレストランみたいだよ莉菜ちゃん！　[p]

#
莉子ちゃん超おいしそう！　毎日二人きりだったらいいのにな！[p]
[bg storage="lover/img24_04.png" time="1000"]
#莉菜
[playse storage="rina/rn24_007.ogg" buf="0"]
……[p]
#
（しまった！　またキモイことを……）[p]
#
じゃ、じゃあ、頂こうかな！　いただきま～す[p]
[bg storage="lover/img24_05.png" time="1000"]
#
莉菜ちゃん、おいしいよ！　いや～莉菜ちゃん来てくれてよかったな～[p]
#
ずっとインスタントとかばっかりだったから、まともな料理なんて何年ぶりか……[p]
#
ん？　どうしたの莉菜ちゃん、何かついてる？[p]
[bg storage="lover/img24_06.png" time="1000"]
#莉菜
[playse storage="rina/rn24_008.ogg" buf="0"]
いっ、いえ……何でもないですよ……[p]
#
[bg storage="black.png" time="1000"]
[bg storage="lover/img24_07.png" time="1000"]
#莉菜
[playse storage="rina/rn24_009.ogg" buf="0"]
お兄さん、テレビでも見ててください[p]
[stopse buf="0"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[movie storage="mov_24_22.webm" time="0" skip="true"]
[wait_bgmovie]
[freeimage layer="base"]
[stop_bgmovie]
#
[menuwindows]
[freeimage layer="base"]
……[p]
[bgmovie storage="mov_24_23.webm" time="1000" loop="true"]

#莉菜
[playse storage="rina/rn24_014.ogg" buf="0"]
あっ……あの……[p]
#
（やばい！　どうしよう……意識してしまって、もう止まらない……）[p]
（もういいや！　だめもとで……）[p]
僕……莉菜ちゃんが……好きだ……[p]
#莉菜
……[p]
#
ごめん……迷惑だった？　[p]
#莉菜
[playse storage="rina/rn24_016.ogg" buf="0"]
ち！　違います……私も……私もお兄さん……好き……私もお兄さん好きです！[p]
#
莉菜ちゃん……[p]
#莉菜
[playse storage="rina/rn24_017.ogg" buf="0"]
ずっと……好きで……でも、振られて気まずくなったら……[r]
私……どうしたらいいか……不安で……[p]
[stop_bgmovie]
[stopse buf="0"]

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_24_24.webm" skip="true"]
[bgmovie storage="mov_24_2_1.webm" time="1000" loop="true"]
[menuwindows]
#莉菜
[playse storage="rina/rn24_019.ogg" buf="0" loop="true"]
ん……[p]
#
（莉菜ちゃんの唇……柔らかい……）[p]
（こんなのもう我慢できないよ……）[p]
莉菜ちゃん……僕……もう[p]
[stopse buf="0"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[movie storage="mov_24_3_1.webm" skip ="true"]
[menuwindows]
[bgmovie storage="mov_24_4_1.webm" time="1000" loop="true"]
#
[playse storage="rina/rn24_024_1.ogg" buf="0" loop="true"]
莉菜ちゃんのおっぱい、大きい！[p]
#莉菜
[playse storage="rina/rn24_022.ogg" buf="0"]
そんなに見られたら……恥ずかしい……[p]
[playse storage="rina/rn24_024_2.ogg" buf="0" loop="true"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[movie storage="mov_24_5_1.webm" skip ="true"]
[menuwindows]
[bgmovie storage="mov_24_6_1.webm" time="1000" loop="true"]
[stopse buf="0"]
#莉菜
[playse storage="rina/rn24_026.ogg" buf="0" loop="true"]
お、お兄さん！　……そんな所……きたないから……ん！[p]
#
（莉菜ちゃんのオマンコがこんな目の前に……）[p]
（だめだ……もう入れたい）[p]
#
莉菜ちゃん……いいよね[p]
#莉菜
[playse storage="rina/rn24_027.ogg" buf="0"]
は……初めてなので……優しくしてください……[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[movie storage="mov_24_7.webm" skip ="true"]
[menuwindows]
[bgmovie storage="mov_24_8.webm" time="1000" loop="true"]
#
[playse storage="rina/rn24_024_2.ogg" buf="0" loop="true"]
ごめん！莉菜ちゃん、痛かった？[p]
#莉菜
[playse storage="rina/rn24_029.ogg" buf="0"]
大丈夫です……大丈夫ですよ、お兄さん[p]
[playse storage="rina/rn24_024_2.ogg" buf="0" loop="true"]
#
もっと優しくするね[p]
莉菜ちゃん、動かすよ[p]
[stop_bgmovie time="0"]
[stopse buf="0"]
[bgmovie storage="mov_24_9.webm" time="1000" loop="true"]
#
[playse storage="rina/rn24_032.ogg" buf="0" loop="true"]
[playse storage="se/kutyu00.ogg" buf="3" loop="true"]
はぁ……はぁ……気持ちいい……[p]
莉菜ちゃんの中が気持ちよすぎて……[p]
もう……止まらない……[p]
[stop_bgmovie time="0"]
[bgmovie storage="mov_24_10.webm" time="1000" loop="true"]
#
[playse storage="rina/rn24_033.ogg" buf="0" loop="true"]
莉菜ちゃん！莉菜ちゃん！[p]
気持ちいい……莉菜ちゃん！気持ちいいよ！[p]
あぁ……莉菜ちゃん、だめだ！いきそう！[p]
莉菜ちゃん！うっ！あぅ！[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_24_11.webm" skip ="true"]
[movie storage="mov_24_13.webm" skip ="true"]


;[bgmovie storage="mov_24_12.webm" time="1000" loop="true"]
[playse storage="rina/rn24_036.ogg" buf="0" loop="true"]
[bgloop mov="mov_24_12.webm" ti="1000"]
[stop_bgmovie time="2000"]
[stopse buf="0"]
[stopse buf="3"]
[menuwindows]

;パートナー桜子変更
[eval exp="f.partner = 0"]

[bg storage="room_night.png" time="1000"]
#
部屋に戻ってきた[p]
まさか莉菜ちゃんと付き合えるなんて……[p]
あのおっぱいを想像してたら、また元気になってきちゃいそうだ[p]
今日はおとなしく寝ようかな[p]


;莉菜恋人ステータス
[eval exp="f.rina_lover = 2"]
[eval exp="f.rina_i = 10"]
[eval exp="f.energy = 0"]
[return]
[endif]

;***********************************************************************************************************************
;***********************************************************************************************************************
;--静江さん告白イベント
[if exp="f.sizue_lover == 1"]
[freeimage layer="2" time="0"]
[bg storage="entrance.png" time="1000"]
#
家に帰ってきた[p]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_25_15.webm" time="1000" loop="true"]
#静江
[playse storage="sizue/sz25_001.ogg" buf="0"]
ただいま～、お兄ちゃん！[p]
#
お帰りなさい、静江さん。　[p]
#静江
[playse storage="sizue/sz25_002.ogg" buf="0"]
あっ、そっか！　莉菜ちゃんも莉子ちゃんも今日は遅いんだっけ[p]
#
莉菜ちゃんは勉強会とかいってました[r]
莉子ちゃんはお友達の家に泊まるっていってましたよ[p]
莉菜ちゃん、夕食の準備が出来なくてごめんなさいって[p]
#静江
[playse storage="sizue/sz25_003.ogg" buf="0"]
ということは、今日は……[p]
#
え？……[p]
#静江
[playse storage="sizue/sz25_004.ogg" buf="0"]
ピザとか出前しちゃいましょう！[p]
#
あっ……はい[p]
#静江
[playse storage="sizue/sz25_005.ogg" buf="0"]
莉菜ちゃんの料理はおいしいけど、やっぱりたまにはね～！[r]
ジャンクフードとか無性に食べたくなるのよね～！[p]
#
帰ってきたら怒られそうですね！　[p]
#静江
[playse storage="sizue/sz25_006.ogg" buf="0"]
おいしい日本酒があったはず！　莉菜ちゃんの隠し場所なんてすぐわかるんだから！[r]
お兄ちゃん、今日家にいたのが運の尽きよ。[p]
#
いえいえ[r]
もう、喜んで付き合いますよ[p]
[stop_bgmovie time="2000"]
[bgmovie storage="mov_25_16.webm" time="1000" loop="true"]
#静江
[playse storage="sizue/sz25_007.ogg" buf="0"]
ほらほら、お兄ちゃん！　ちゃんと飲んでるの～[p]
#
は、はい……何とか[p]
#静江
[playse storage="sizue/sz25_008.ogg" buf="0"]
お兄ちゃん！　ポチモンは捕まえてる？[r]
遊びじゃないんだからね！人生そのものよ！[p]
#
はい！静江さんに教わった通りに集めてます[p]
#静江
[playse storage="sizue/sz25_009.ogg" buf="0"]
うふふ、お兄ちゃんいい子いい子[r]
なでなでしてあげる[p]
[playse storage="sizue/sz25_010.ogg" buf="0"]
あっ、そうそう！カップメンも隠してあるのよ～[r]
今こそ食べるとき！[p]
#
たっ、食べすぎですよ！[p]
#静江
[playse storage="sizue/sz25_011.ogg" buf="0"]
また明日からダイエット頑張らなくちゃ！[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
#
[stop_bgmovie time="2000"]
[movie storage="mov_25_17.webm" skip="true"]
[menuwindows]
あっ！あぶない[p]
…………[p]
[bg storage="lover/img25_18_00.png" time="1000"]
#静江
[playse storage="sizue/sz25_012.ogg" buf="0"]
お兄ちゃん、ありがとう[r]
飲みすぎちゃったかしら？[p]
[playse storage="sizue/sz25_013.ogg" buf="0"]
お兄ちゃん？……[p]
#
静江さん……僕……[p]
#静江
[playse storage="sizue/sz25_014.ogg" buf="0"]
どうしたの？　お兄ちゃん[p]
#
僕は……静江さんのことが、好きです！[p]
#静江
[playse storage="sizue/sz25_015.ogg" buf="0"]
うふふ、お兄ちゃんありがとう[r]
おばさんもお兄ちゃんのこと大好きよ[p]
#
ち、違います！　そうじゃなくて本当に大好きなんです……[r]
ずっと静江さんの事ばかり考えてます！[p]
#静江
[playse storage="sizue/sz25_016.ogg" buf="0"]
こらっ！　おばさんをからかっちゃだめよ[r]
お兄ちゃん、酔っちゃったのかな？　[p]
#
よ、酔ってません！[p]
僕は……僕は真剣です……静江さんは僕の事が嫌いですか？[p]
[bg storage="lover/img25_18_02.png" time="1000"]
#静江
[playse storage="sizue/sz25_017.ogg" buf="0"]
嫌いなわけないでしょ、嫌いなわけ………[r]
だっ、だめなの！　ダ～メ[p]
[playse storage="sizue/sz25_017_1.ogg" buf="0"]
お兄ちゃん、わかるでしょ！　だめなの！[p]
#
わっ、分かりません[r]
全然わかりません[p]
#静江
[playse storage="sizue/sz25_018.ogg" buf="0"]
も～、おばさんを困らせないで！　さあ、この手を放してちょうだい[p]
#
いやです、……離せません……本当に嫌ならキライだって言ってください……[p]
#静江
[playse storage="sizue/sz25_019.ogg" buf="0"]
何言ってるの、お兄ちゃん……[p]
#
嫌いだって言ってくれたら……手を放して諦めます……[p]
[bg storage="lover/img25_18_01.png" time="1000"]
#静江
[playse storage="sizue/sz25_020.ogg" buf="0"]
……困った子ね……お兄ちゃん……もう[r]
言える訳……ないでしょ[p]
#
[bg storage="black.png" time="1000"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[playse storage="sizue/sz25_021.ogg" buf="0" loop="true"]
[bgloop mov="mov_25_1.webm" ti="1000"]
[stopse buf="0"]
[movie storage="mov_25_2.webm" skip ="true"]
[menuwindows]
#
[cm]
[bgmovie storage="mov_25_3.webm" time="1000" loop="true"]
#
[playse storage="sizue/sz25_024.ogg" buf="0" loop="true"]
静江さんの胸、大きいです[p]
柔らかくて……大きい……[p]
静江さん……もっと、色々見せて……[p]
[stop_bgmovie time="1000"]
[stopse buf="0"]
[bgmovie storage="mov_25_4.webm" time="1000" loop="true"]
#静江
[playse storage="sizue/sz25_026.ogg" buf="0"]
お兄ちゃん……そんなに見ちゃいや……こんな中年の体なんて[p]
#
魅力的ですよ、静江さん……とても興奮します[p]
[stop_bgmovie]
[bgmovie storage="mov_25_5.webm" time="1000" loop="true"]
#静江
[playse storage="sizue/sz25_029.ogg" buf="0" loop="true"]
あっ、んん[p]
#
静江さん……こんなに濡れてる[p]
#静江
[playse storage="sizue/sz25_028.ogg" buf="0"]
もう……お兄ちゃんの……いじわる[p]
#
[stop_bgmovie]
[stopse buf="0"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[movie storage="mov_25_6.webm" skip ="true"]
[menuwindows]
[stop_bgmovie]
[bgmovie storage="mov_25_7.webm" time="1000" loop="true"]
[playse storage="sizue/sz25_035.ogg" buf="0" loop="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop="true"]
#
はぁ、はぁ、静江さん[p]
静江さんの中……気持ちいいです[p]
[stop_bgmovie]
[bgmovie storage="mov_25_8.webm" time="1000" loop="true"]
[playse storage="sizue/sz25_036.ogg" buf="0" loop="true"]
[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
静江さん！ああっ……気持ちいい！気持ちいです静江さん[p]
静江さん……もういきそうです……[p]
#静江
[playse storage="sizue/sz25_037.ogg" buf="0"]
いいのよ、お兄ちゃん、いっぱい出して……いいのよ[p]
#
[playse storage="sizue/sz25_036.ogg" buf="0" loop="true"]
静江さん、好きです、はぁはぁ……大好きです！[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_25_9.webm" skip ="true"]
[playse storage="sizue/sz25_040_1.ogg" buf="0" loop="true"]
[movie storage="mov_25_10.webm" skip ="true"]
[bgloop mov="mov_25_11.webm" ti="1000"]
[stopse buf="0"]
[movie storage="mov_25_12.webm" skip ="true"]
[menuwindows]
[bgmovie storage="mov_25_13.webm" time="0"]
#静江
[playse storage="sizue/sz25_041.ogg" buf="0"]
お兄ちゃん、今回だけだからね[r]
今日の事は忘れるのよ[p]
#
し、静江さん……僕は……[p]
#静江
[playse storage="sizue/sz25_042.ogg" buf="0"]
だ～め、明日からはまたいつも通りよ！　わかった？[p]
#
……[p]
[stop_bgmovie time="2000"]
[stopse buf="0"]
[stopse buf="3"]
;パートナー桜子変更
[eval exp="f.partner = 0"]

[bg storage="room_night.png" time="1000"]
#
部屋に戻ってきた[p]
静江さんとのエッチ……気持ちよかったな……[p]
あんなこと言われたけど……[p]
諦めきれるだろうか……[p]
いや、やっぱり無理だよ……[p]
……[l]……[l]……[p]

とりあえず、今日は寝ようかな[p]


;静江恋人ステータス
[eval exp="f.sizue_lover = 1.5"]
[eval exp="f.sizue_i = 0"]
[eval exp="f.energy = 0"]
[return]
[endif]
;***********************************************************************************************************************
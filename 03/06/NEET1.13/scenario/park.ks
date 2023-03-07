;公園

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;桜子消去
#
[chara_hide name="sakurako"]
[playbgm storage="haretahiha.ogg" loop="true"]
@bg storage ="park_day.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.park_fast == undefined"]
#
虹色記念公園にやってきた[p]
静江さんが仕事帰りによく立ち寄るって聞いたな[r]
莉子ちゃんも友達とあそんでるかも[p]
[eval exp="f.park_fast = true"]
[else]
#
公園にやってきた[p]
[endif]


;-キャラクター判別
;配列変数 f.park_day を日付で判別
;0 桜子　１　莉子　２　莉菜　３　静江
[if exp="f.park_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_park"]
[return]
[endif]

;莉子
[if exp="f.park_day[f.day] == 1"]
[jump target="*riko_park"]
[endif]

;莉菜
[if exp="f.park_day[f.day] == 2"]
[jump target="*rina_park"]
[endif]

;静江
[if exp="f.park_day[f.day] == 3"]
[jump target="*sizue_park"]
[endif]

;-公園イベント　莉子-----------------------------------------------------------------------------------------
*riko_park

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_riko_goout"]

;--①
[if exp="f.riko_park == undefined || f.riko_park == 1"]
#
[bg storage="park/img17_18.png" time="1000"]
莉子ちゃんだ、友達と遊んでる……[p]
公園で遊ぶ女の子……いいね[p]
あっ、気づいたのかな、莉子ちゃ～ん！[p]
……なんかすごい睨みながら近づいてくる[p]
[bg storage="park/img17_19.png" time="1000"]
#莉子
[playse storage="riko/rk17_028.ogg" buf="0"]
何しているの！[p]
#
えっ……いや……散歩を[p]
#莉子
[playse storage="riko/rk17_029.ogg" buf="0"]
どう見ても公園を盗撮している変質者だから[r]
通報される前に早く帰って！[p]
#
[bg storage ="park_evening.png" time=1000]
帰らされてしまった……[p]



[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[riko_f]

[eval exp="f.riko_park = 2"]
[return]
[endif]

;--②
[if exp="f.riko_park == 2"]
#
[bg storage="park/img17_16.png" time="1000"]
莉子ちゃんが歩いてる[p]
後ろから男の子が走ってきた！[p]
#男の子
それ～[p]
[bg storage="park/img17_02.png" time="1000"]

#莉子
[playse storage="riko/rk17_030.ogg" buf="0"]
きゃ～[p]
[bg storage="park/img17_17.png" time="2000"]
#
おお！！[p]
#莉子
[playse storage="riko/rk17_031.ogg" buf="0"]
このがきども～[p]
#
追いかけていっちゃった……[p]
[bg storage ="park_evening.png" time=1000]


;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_park = 1"]


[return]
[endif]

;-公園イベント　静江-----------------------------------------------------------------------------------------
*sizue_park

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_sizue_goout"]

;--①
[if exp="f.sizue_park == undefined || f.sizue_park == 1"]
#
[bg storage="park/img19_03.png" time="1000"]
静江さんだ、スマホをいじってる[p]
[bg storage="park/img19_04.png" time="1000"]
#静江
[playse storage="sizue/sz19_011.ogg" buf="0"]
あら、お兄ちゃん！　ちょっと待っててね[p]
#
もしかしてポチモンＺですか？[p]
#静江
[playse storage="sizue/sz19_012.ogg" buf="0"]
あん！逃げられちゃった[r]
そうなのよ、なかなか集まらなくって[p]
#
僕も最近始めたんですよ[r]
まだ全然わからなくって[p]
#静江
[playse storage="sizue/sz19_013.ogg" buf="0"]
あら、そうなの！今度おばさんが教えてあげる！[p]
[playse storage="sizue/sz19_013_2.ogg" buf="0"]
いいこと、お兄ちゃん！ポチモンは遊びじゃないのよ！[r]
珍しいモンスターが見つかったらおばさんの所に持ってくること！[p]
#
はい、お手柔らかにお願いします[p]
しばらくポチモン集めをして一緒に帰ることにした[p]

;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_park = 2"]
[return]
[endif]

;--②
[if exp="f.sizue_park == 2"]
#
[bg storage="park/img19_06.png" time="1000"]
なんか、いっぱい人がいるな[r]
なんだろう？みんなポチモンやってる[p]
[bg storage="park/img19_07.png" time="1000"]
#静江
[playse storage="sizue/sz19_014.ogg" buf="0"]
お兄ちゃん、ほら、早く早く！[p]
#
えっ！静江さん！[p]
#静江
[playse storage="sizue/sz19_015.ogg" buf="0"]
始まっちゃうわよ、レイドバトル[p]
#
ああ！これがレイドバトルなのか[r]
だからみんな集まっているんだ[p]
[bg storage="park/img19_08.png" time="1000"]
#静江
[playse storage="sizue/sz19_016.ogg" buf="0"]
いいこと！お兄ちゃん"ピカ丸侍"の対策モンスターは物理よ！[r]
”ニャンタロー”の噛み付きが有効だからね！[p]
[playse storage="sizue/sz19_016_2.ogg" buf="0"]
いなければ”ネズミっち”のカリカリ攻撃よ[r]
全滅しても大丈夫だから[p]
[playse storage="sizue/sz19_016_3.ogg" buf="0"]
すぐに回復して、また入り直せばいいのよ！それから……[p]
#
（いつもの静江さんからは想像もできないほどの気迫を感じる)[p]
#静江
[playse storage="sizue/sz19_017.ogg" buf="0"]
わかった？お兄ちゃん[p]
#
は……はい、がんばります[p]
……[l]……[l]……[p]
[bg storage="park/img19_09.png" time="1000"]
#静江
[playse storage="sizue/sz19_018.ogg" buf="0"]
お兄ちゃん、逃げられちゃったの？[r]
次があるから大丈夫よ[p]
#
……はい[p]

ポチモンの話をしながら一緒に帰ることにした[p]


;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_park = 3"]
[return]
[endif]

;--③
[if exp="f.sizue_park == 3"]
#
[bg storage="park/img19_06.png" time="1000"]
今日も人がいっぱいいるな！[p]
[bg storage="park/img19_07.png" time="1000"]
#静江
[playse storage="sizue/sz19_019.ogg" buf="0"]
お兄ちゃん何しているの！急がないと！[p]
#
静江さん、何があるんですか？[p]
#静江
[playse storage="sizue/sz19_020.ogg" buf="0"]
向こうの池にディアロポンが出たのよ[r]
急がないと消えちゃうわよ[p]
#
ディアロポン？ああ！ポチモンですね！[p]
急いで取りに行った[p]
……[l]……[l]……[p]
[bg storage="park/img19_05.png" time="1000"]
#静江
[playse storage="sizue/sz19_021.ogg" buf="0"]
お兄ちゃん、取れた？[p]
#
いえ……ダメでした[p]

ポチモンを集めながら一緒に帰ることにした[p]


;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_park = 4"]
[return]
[endif]

;--④
[if exp="f.sizue_park == 4"]
#
[bg storage="park/img19_04.png" time="1000"]
静江さん！今日もポチモンですか？[p]
#静江
[playse storage="sizue/sz19_022.ogg" buf="0"]
お兄ちゃん、ちょうどよかった[r]
運動がてらにポチモン探しに行くわよ！[p]
#
あっはい[p]

ポチモンを集めながら一緒に帰ることにした[p]


;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_park = 2"]
[return]
[endif]
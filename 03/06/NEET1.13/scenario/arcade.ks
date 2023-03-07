;ゲームセンター

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;桜子消去
#
[chara_hide name="sakurako"]
[playbgm storage="dance.ogg" loop="true"]
@bg storage ="arcade.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.arcade_fast == undefined"]
#
ゲームセンターにやってきた[p]
莉子ちゃんがよく来るっていってたかも[p]

[eval exp="f.arcade_fast = true"]
[else]
#
ゲームセンターにやってきた[p]
[endif]


;-キャラクター判別
;配列変数 f.arcade_day を日付で判別
;0 桜子　１　莉子　２　莉菜　３　静江
[if exp="f.arcade_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_arcade"]
[return]
[endif]

;莉子
[if exp="f.arcade_day[f.day] == 1"]
[jump target="*riko_arcade"]
[endif]

;莉菜
[if exp="f.arcade_day[f.day] == 2"]
[jump target="*rina_arcade"]
[endif]

;静江
[if exp="f.arcade_day[f.day] == 3"]
[jump target="*sizue_arcade"]
[endif]

;-ゲームセンターイベント　莉子-----------------------------------------------------------------------------------------
*riko_arcade

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_riko_goout"]

;--①
[if exp="f.riko_arcade == undefined || f.riko_arcade == 1"]
#
[bg storage="arcade/img17_21.png" time="1000"]
お！莉子ちゃん、友達と来てる[r]
プリクラ撮ってるみたいだな[p]
[bg storage="arcade/img17_22.png" time="1000"]
#マリちゃん
莉子ちゃんまたね～[p]
#莉子
[playse storage="riko/rk17_025.ogg" buf="0"]
ばいば～い[p]
#
[bg storage="arcade/img17_23.png" time="1000"]
やぁ、莉子ちゃん[p]
#莉子
[playse storage="riko/rk17_026.ogg" buf="0"]
あっ！ストーカー！[p]
#
誰がストーカーだ！[p]
今プリクラ撮ってたの？見せてよ[p]
#莉子
[playse storage="riko/rk17_027.ogg" buf="0"]
見せる訳ないでしょ！このロリコン！[p]
#
[bg storage ="arcade.png" time="1000"]

莉子ちゃんはもう帰っちゃったみたいだ[p]
[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[riko_f]

;パートナー莉子ちゃん変更
;[eval exp="f.partner = 1"]

[eval exp="f.riko_arcade = 2"]
[return]
[endif]

;--②
[if exp="f.riko_arcade == 2"]
#
[bg storage="arcade/img17_24.png" time="1000"]
あっ、莉子ちゃんゲームしてる！[p]
よし……乱入してやる！[r]
いい勝負すれば見直してくれるかも[p]
……[l]……[l]……[p]
……瞬殺されちゃった[p]
[bg storage="arcade/img17_25.png" time="1000"]
#莉子
[playse storage="riko/rk17_027_1.ogg" buf="0"]
あっ……おじさんだったの？[r]
弱すぎてビックリしたわ！[p]
#
[bg storage ="arcade.png" time="1000"]
しばらく練習していこうかな[p]
……[p]
……[p]


;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_arcade = 3"]


[return]
[endif]

;--③
[if exp="f.riko_arcade == 3"]
#
[bg storage="arcade/img17_26.png" time="1000"]
莉子ちゃんが友達とクレーンゲームしてる[p]
何取ってるのかな？[r]
[bg storage="arcade/img17_27.png" time="1000"]
……[p]
……[p]
……[p]
（こっち来るなって圧を感じるな……）[p]

しょうがない……帰るか[p]

;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_arcade = 1"]


[return]
[endif]




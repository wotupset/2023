;駄菓子屋

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;桜子消去
#
[chara_hide name="sakurako"]
[playbgm storage="so_sweet.ogg" loop="true"]
@bg storage ="store_day.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.store_fast == undefined"]
#
上島商店にやってきた[p]
雑貨や駄菓子など色々売っている[p]
莉子ちゃんがよく来るっていってたかも[p]

[eval exp="f.store_fast = true"]
[else]
#
上島商店にやってきた[p]
[endif]


;-キャラクター判別
;配列変数 f.store_day を日付で判別
;0 桜子　１　莉子　２　莉菜　３　静江
[if exp="f.store_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_store"]
[return]
[endif]

;莉子
[if exp="f.store_day[f.day] == 1"]
[jump target="*riko_store"]
[endif]

;莉菜
[if exp="f.store_day[f.day] == 2"]
[jump target="*rina_store"]
[endif]

;静江
[if exp="f.store_day[f.day] == 3"]
[jump target="*sizue_store"]
[endif]

;-駄菓子屋イベント　莉子-----------------------------------------------------------------------------------------
*riko_store

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_riko_goout"]

;--①
[if exp="f.riko_store == undefined || f.riko_store == 1"]
#
[bg storage="store/img17_09.png" time="1000"]
莉子ちゃ～ん！[p]
#莉子
[playse storage="riko/rk17_032.ogg" buf="0"]
げ、おじさん……[r]
莉子が買い食いしてたことはお姉ちゃんには内緒だからね！[p]
#
[bg storage ="store_evening.png" time="1000"]
駄菓子を食べながら一緒に帰った[p]

[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[riko_f]

;パートナー莉子ちゃん変更
[eval exp="f.partner = 1"]

[eval exp="f.riko_store = 2"]
[return]
[endif]

;--②
[if exp="f.riko_store == 2"]
#
[bg storage="store/img17_09.png" time="1000"]
莉子ちゃんカードガチャしてる！[p]
ふむふむ”マジョカルフレンズ”[r]
莉子ちゃんお目当ては引けた？[p]
#莉子
[playse storage="riko/rk17_033.ogg" buf="0"]
おじさん、全然だめ……あと少しでコンプなのに出ないの[p]
#
じゃぁ、引いてみるかな[p]
#莉子
[playse storage="riko/rk17_034_2.ogg" buf="0"]
いいの出た？
#
これは？[p]
#莉子
……[p]

[bg storage ="store_evening.png" time="1000"]
#
莉子ちゃんも帰っちゃったし……[p]


;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_store = 1"]


[return]
[endif]



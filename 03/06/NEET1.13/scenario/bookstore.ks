;本屋

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;桜子消去
#
[chara_hide name="sakurako"]
[playbgm storage="gakou.ogg" loop="true"]
@bg storage ="bookstore_day.png" time=0"
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.bookstore_fast == undefined"]
#
小鹿書店にやってきた[p]
よく漫画を買いに来てたけど[r]
新刊でてるかな[p]
[eval exp="f.bookstore_fast = true"]
[else]
#
本屋にやってきた[p]
[endif]


;-キャラクター判別
;配列変数 f.book_day を日付で判別
;0 桜子　１　莉子　２　莉菜　３　静江
[if exp="f.book_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_bookstore"]
[return]
[endif]

;莉子
[if exp="f.book_day[f.day] == 1"]
[jump target="*riko_book"]
[endif]

;莉菜
[if exp="f.book_day[f.day] == 2"]
[jump target="*rina_book"]
[endif]

;静江
[if exp="f.book_day[f.day] == 3"]
[jump target="*sizue_book"]
[endif]

;-本屋イベント　莉子-----------------------------------------------------------------------------------------
*riko_book

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_riko_goout"]

;--①
[if exp="f.riko_book == undefined || f.riko_book == 1"]
#
莉子ちゃーん[p]
[bg storage="book/img17_10.png" time="1000"]
#莉子
[playse storage="riko/rk17_014.ogg" buf="0"]
おじさん![r]
あっ、もしかしてエッチな本でも買いに来たの？[p]
#
違うよ！[p]
#莉子
[playse storage="riko/rk17_015.ogg" buf="0"]
ふーん、どうだか……[p]
#
[bg storage ="bookstore_evening.png" time=1000]
莉子ちゃんは先に帰ったけど[p]
この後どうしようかな？[p]
[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[riko_f]

[eval exp="f.riko_book = 2"]
[return]
[endif]

;--②
[if exp="f.riko_book == 2"]
[if exp="f.money >=1000"]
#
莉子ちゃん、本屋にいる[r]
莉子ちゃ～ん[p]
[bg storage="book/img17_11.png" time="1000"]
#莉子
[playse storage="riko/rk17_016.ogg" buf="0"]
あっ、おじさん！[r]
……おじさま！何か御用ですか？[p]
#
うおっ！なんだ、気持ち悪い！[p]
#莉子
[playse storage="riko/rk17_017.ogg" buf="0"]
莉子、この本が欲しいんだけどな～、どうしようかな～[r]
チラッ、チラッ[p]
#
超見てる……わかった、わかった、買ってあげるよ！[p]
[bg storage="book/img17_12.png" time="1000"]
#莉子
[playse storage="riko/rk17_018.ogg" buf="0"]
わ～い、おじさま！大好き～♡[p]
#
調子のいい奴だ！[p]

莉子ちゃんに本を買ってあげた[p]

;所持金上昇
[eval exp="f.money = f.money - 1000"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]

莉子ちゃんと一緒に帰ることにした[p]

;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_book = 3"]

;パートナー莉子ちゃん変更
[eval exp="f.partner = 1"]

[return]
[endif]
[eval exp="f.riko_book = 3"]
[endif]

;--③
[if exp="f.riko_book == 3"]
[bg storage="book/img17_10.png" time="1000"]
#
莉子ちゃん、お買い物？[p]
#莉子
[playse storage="riko/rk17_019.ogg" buf="0"]
げっ！おじさん……[r]
あら、おじさま、ごきげんよう[p]
#
むむ……また何か買わされる？[p]
[bg storage="book/img17_13.png" time="1000"]
#マリちゃん
莉子ちゃん、おまたせ[r]
あれ、莉子ちゃんのお兄さん？[p]
#莉子
[playse storage="riko/rk17_020.ogg" buf="0"]
ん～ん、うちの召使い[p]
#マリちゃん
え～！すご～い！[r]
莉子ちゃん家、召使が居るの？[p]
#
(早く帰れっていう圧をものすごく感じる……）[p]
では、莉子お嬢様……また後程[p]
[bg storage ="bookstore_evening.png" time=1000]


;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_book = 4"]
[return]
[endif]

;--④
[if exp="f.riko_book == 4"]
[bg storage="book/img17_14.png" time="1000"]
#
やあ、莉子ちゃん[p]
#莉子
[playse storage="riko/rk17_021.ogg" buf="0"]
また、おじさん……[r]
莉子の後付けてるんでしょ？[p]
#
いやいや！偶然だよ！[p]

#莉子
このまま野放しにしたら犯罪者になっちゃうから[r]
一緒に帰ってあげる[p]
#

;莉子ちゃん好感度UP
[riko_f]

;パートナー莉子ちゃん変更
[eval exp="f.partner = 1"]

[eval exp="tf.place = 1"]
[eval exp="f.riko_book = 1"]
[return]
[endif]


;-本屋イベント　莉菜-----------------------------------------------------------------------------------------
*rina_book

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_rina_goout"]

;--①
[if exp="f.rina_book == undefined || f.rina_book == 1"]
#
[bg storage="book/img18_05.png" time="1000"]
莉菜ちゃんだ！何か本かってるぞ[p]
アイドル雑誌とかかな？[p]
"美味しいお料理レシピ　しあわせご飯"[p]
さすが莉菜ちゃんだ[p]
[bg storage="book/img18_04.png" time="1000"]
#莉菜
[playse storage="rina/rn18_006.ogg" buf="0"]
お兄さん、ちょうどよかった[r]
一緒に帰りましょう[p]
#
莉菜ちゃんと一緒に帰った[p]
;莉子ちゃん好感度UP
[rina_f]

[eval exp="tf.place = 1"]
;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="f.rina_book = 2"]
[return]
[endif]

;--②
[if exp="f.rina_book == 2"]
#
[bg storage="book/img18_04.png" time="1000"]
莉菜ちゃん、今帰り？[p]
#莉菜
[playse storage="rina/rn18_007.ogg" buf="0"]
お兄さん！帰るとこですよ！[r]
一緒に帰りましょう[p]
#
うん、そうだね[p]

[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[rina_f]
;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="f.rina_book = 1"]
[return]
[endif]

;-本屋イベント　静江-----------------------------------------------------------------------------------------
*sizue_book

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_sizue_goout"]

;--①
[if exp="f.sizue_book == undefined || f.sizue_book == 1"]
#
[bg storage="book/img19_00.png" time="1000"]
あっ、静江さんだ！静江さ～ん[p]
#静江
[playse storage="sizue/sz19_001.ogg" buf="0"]
お兄ちゃん、今帰り？[p]
#
ええ、帰るとこですよ[p]
#静江
[playse storage="sizue/sz19_002.ogg" buf="0"]
じゃあ、一緒にかえりましょう[p]

;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]

[eval exp="f.sizue_book = 2"]
[return]
[endif]

;--②
[if exp="f.sizue_book == 2"]
#
[bg storage="book/img19_01.png" time="1000"]
静江さんだ、何か本を買ってる[p]
[bg storage="book/img19_01.png" time="1000"]
#静江
[playse storage="sizue/sz19_003.ogg" buf="0"]
あら、お兄ちゃん[p]
#
なんの本かったんですか？[p]
#静江
[playse storage="sizue/sz19_004.ogg" buf="0"]
うふふ、秘密[p]
#
"ポチットモンスターZ 徹底攻略"[p]

[bg storage="bookstore_evening.png" time="1000"]
#
さてと静江さんも帰ったみたいだし[p]

;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

[eval exp="f.sizue_book = 3"]
[return]
[endif]

;--③
[if exp="f.sizue_book == 3"]
#
[bg storage="book/img19_01.png" time="1000"]
静江さんだ、本を買ってるぞ[p]
[bg storage="book/img19_01.png" time="1000"]
#静江
[playse storage="sizue/sz19_005.ogg" buf="0"]
お兄ちゃん、今帰り？[p]
#
帰るとこですよ、何買ったんですか？[p]
#静江
[playse storage="sizue/sz19_006.ogg" buf="0"]
だ～め！女の秘密は気軽に聞いちゃダメなの！[p]
#
"読むだけで痩せる究極ダイエット"[p]


#
静江さんと一緒に帰ることにした[p]

;静江好感度UP
[sizue_f]

[eval exp="tf.place = 1"]

;パートナー静江さん変更
[eval exp="f.partner = 3"]


[eval exp="f.sizue_book = 1"]
[return]
[endif]
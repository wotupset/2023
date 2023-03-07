;図書館

*start

[cm]
[clearfix]
;体力減少
[eval exp="f.hp = f.hp - 10"]
[mask time="500"]
;桜子消去
#
[chara_hide name="sakurako"]
@bg storage ="library.png" time=0"
[playbgm storage="yuusyokugo.ogg" loop="true"]
[menuwindows]

[mask_off time="500"]

;--１回目の判別
[if exp="f.library_fast == undefined"]
#
虹色図書館にやってきた[p]
学生がよく勉強してるから莉菜ちゃん来てるかも[p]
漫画も置いてあるから暇つぶしにはいいかな[p]
漫画を読みに莉子ちゃんとか来てるかな[p]
[eval exp="f.library_fast = true"]
[else]
#
図書館にやってきた[p]
[endif]


;-キャラクター判別
;配列変数 f.library_day を日付で判別
;0 桜子　１　莉子　２　莉菜　３　静江
[if exp="f.library_day[f.day] == 0"]
[call storage="sakurako.ks" target="*sakurako_library"]
[return]
[endif]

;莉子
[if exp="f.library_day[f.day] == 1"]
[jump target="*riko_library"]
[endif]

;莉菜
[if exp="f.library_day[f.day] == 2"]
[jump target="*rina_library"]
[endif]

;[if exp="f.library_day[f.day] == 3"]
;[call storage="sakurako.ks" target="*sakurako_library"]
;[endif]

;-図書館イベント　莉子-----------------------------------------------------------------------------------------
*riko_library

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_riko_goout"]

;--①
[if exp="f.riko_library == undefined || f.riko_library == 1"]
#
あれ?莉子ちゃんだ、まさか図書館にいるなんて[p]
[bg storage="library/img17_00.png" time="1000"]
#莉子
[playse storage="riko/rk17_001.ogg" buf="0"]
あっ、おじさん[p]
#
ああ、図書館には漫画もあるもんね！[p]
#莉子
[playse storage="riko/rk17_002.ogg" buf="0"]
り、莉子だって本ぐらい読むもん！[p]
#
今何読んでるの？[p]
[bg storage="library/img17_01.png" time="1000"]
#莉子
[playse storage="riko/rk17_003.ogg" buf="0"]
ま、漫画……[p]
#
[bg storage ="library.png" time=1000]
莉子ちゃんは先に帰ったけど[p]
この後どうしようかな？[p]
[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[riko_f]

[eval exp="f.riko_library = 2"]
[return]
[endif]

;--②
[if exp="f.riko_library == 2"]
#
あっ、莉子ちゃんだ！莉子ちゃ～ん[p]
[bg storage="library/img17_04.png" time="1000"]
#莉子
[playse storage="riko/rk17_004.ogg" buf="0"]
おじさん！[p]
#
何してるの？また漫画？[p]
#莉子
[playse storage="riko/rk17_005.ogg" buf="0"]
今、友達と自由研究で調べものしてるから本読んでます～[r]
漫画じゃないです～[p]
#
友達？どの子？[p]
#莉子
[playse storage="riko/rk17_006.ogg" buf="0"]
あそこの机にいる子達……ってロリコンに合わせる訳ないでしょ！[p]
[bg storage="library/img17_03.png" time="1000"]
[playse storage="riko/rk17_007.ogg" buf="0"]
ちょっと！莉子はね学校では優等生なんだから！こっちにきたら通報するからね！[p]
#
は……はい……了解です……[p]
;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_library = 3"]
[return]
[endif]

;--③
[if exp="f.riko_library == 3"]
[bg storage="library/img17_05.png" time="1000"]
#莉子
[playse storage="riko/rk17_008.ogg" buf="0"]
あっおじさんだ！[p]
#
やあ、莉子ちゃん[p]
#莉子
[playse storage="riko/rk17_009.ogg" buf="0"]
おじさん、図書館にエッチな本はないからね！[p]
#
わかってるよ![p]
[bg storage ="library.png" time=1000]
#
莉子ちゃんはもう帰っちゃったし……[p]

;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_library = 4"]
[return]
[endif]

;--④
[if exp="f.riko_library == 4"]
[bg storage="library/img17_06.png" time="1000"]
#
莉子ちゃん、珍しく勉強？[p]
#莉子
[playse storage="riko/rk17_010.ogg" buf="0"]
莉子は優等生だから、勉強もするのよ！[p]
#
あっ！消しゴム落ちたよ！[p]
[bg storage="library/img17_07.png" time="1000"]
(おお！パンツ丸見え！)[p]
[bg storage="library/img17_08.png" time="1000"]
#莉子
[playse storage="riko/rk17_011.ogg" buf="0"]
おじさん、今パンツ見たでしょ！[p]
#
えっ！[p]
み、みてないよ！[p]
（何でわかった？）[p]
[bg storage ="library.png" time=1000]
莉子ちゃん勉強は終わってもう帰ったみたいだし[p]

;莉子ちゃん好感度UP
[riko_f]
[eval exp="tf.place = 1"]
[eval exp="f.riko_library = 5"]
[return]
[endif]

;--⑤
[if exp="f.riko_library == 5"]
[bg storage="library/img17_05.png" time="1000"]
#
莉子ちゃん[p]
#莉子
[playse storage="riko/rk17_012.ogg" buf="0"]
あっ！おじさん[p]
#
もう帰るけど,一緒に帰る？[p]
#莉子
[playse storage="riko/rk17_013.ogg" buf="0"]
ほっとくと危険だから一緒に帰ってあげる[p]

;莉子ちゃん好感度UP
[riko_f]
;パートナー莉子ちゃん変更
[eval exp="f.partner = 1"]

[eval exp="tf.place = 1"]
[eval exp="f.riko_library = 1"]

[return]
[endif]

;-図書館イベント　莉菜-----------------------------------------------------------------------------------------
*rina_library

;桜子会話呼び出し
[call storage="sakurako.ks" target="*sakurako_rina_goout"]

;--①
[if exp="f.rina_library == undefined || f.rina_library == 1"]
#
[bg storage="library/img18_00.png" time="1000"]
莉菜ちゃんだ！[p]
友達と勉強中かな……[p]
邪魔しないようにしよう[p]

[bg storage ="library.png" time=1000]

かるく会釈してその場を離れた[p]
[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[rina_f]

[eval exp="f.rina_library = 2"]
[return]
[endif]

;--②
[if exp="f.rina_library == 2"]
#
[bg storage="library/img18_01.png" time="1000"]
あっ、莉菜ちゃん！勉強？[p]
#莉菜
[playse storage="rina/rn18_003.ogg" buf="0"]
お兄さん！ええ、今度テストがあるので[p]
でも、もう帰ろうと思ってたので一緒に帰ります？[p]
#
うん、そうだね[p]

[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[rina_f]
;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="f.rina_library = 3"]
[return]
[endif]

;--③
[if exp="f.rina_library == 3"]
#
莉菜ちゃんがいる[p]
[bg storage="library/img18_02.png" time="1000"]
何の本読んでるのかな？恋愛小説とか[p]
[bg storage="library/img18_03.png" time="1000"]
"プロが教えるお掃除術１００選"[p]
……莉菜ちゃんらしいな[p]
[bg storage="library/img18_01.png" time="1000"]
#莉菜
[playse storage="rina/rn18_005.ogg" buf="0"]
お兄さん、今帰りですか？[p]
#
うん、一緒に帰ろうか[p]

[eval exp="tf.place = 1"]
;莉子ちゃん好感度UP
[rina_f]
;パートナー莉菜ちゃん変更
[eval exp="f.partner = 2"]

[eval exp="f.rina_library = 1"]
[return]
[endif]
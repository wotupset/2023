;夕方イベント

*start

[cm]

@bg storage ="entrance.png" time=1000"

#
家に帰ってきた[p]

;曜日判別
[if exp="f.oneweek ==5 || f.oneweek==6"]
 [return]
[endif]

;パートナー判別
[if exp="f.partner == 0"]
[jump target="*entrance_events"]
[endif]
[if exp="f.partner == 1"]
[jump target="*entrance_riko"]
[endif]
[if exp="f.partner == 2"]
[jump target="*entrance_rina"]
[endif]

[return]
;***********************************************************************************************************************
;-莉子ちゃん同伴帰宅イベント
*entrance_riko
[iscript]
tf.rand = Math.floor( Math.random() * 4)
[endscript]

;--帰宅イベント①
 [if exp="tf.rand == 0"]
 [freeimage layer="2" time="0"]
#
[bg storage="evening/img14_05.png" time="1000"]
おお！これは[p]
[bg storage="evening/img14_04.png" time="1000"]
ナイスパンチラ！[p]
 [endif]
 
;--帰宅イベント②
 [if exp="tf.rand == 1"]
 [freeimage layer="2" time="0"]
#
[bg storage="evening/img14_08.png" time="1000"]
おお！これは[p]
[bg storage="evening/img14_07.png" time="1000"]
ナイスパンチラ！[p]
 [endif]

[return]


;***********************************************************************************************************************
;-莉菜ちゃん同伴帰宅イベント
*entrance_rina
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

;--帰宅イベント①
 [if exp="tf.rand == 0"]
 [freeimage layer="2" time="0"]
#
[bg storage="evening/img15_01.png" time="1000"]
おお！これは[p]
[bg storage="evening/img15_02.png" time="1000"]
ナイスパンチラ！[p]
 [endif]
 
[return]


;***********************************************************************************************************************
;-帰宅イベント
*entrance_events
;***********************************************************************************************************************
;--莉子帰宅①
[if exp="f.riko_f >= 20 && f.riko_entrance == undefined"]
[freeimage layer="2" time="0"]
#
ただいま～[p]
まだ誰も帰ってないのかな……[p]
[bg storage="evening/img14_12.png" time="1000"]
あっ、莉子ちゃんソファーで寝てる[p]
ぐっすり寝てるな……[p]
[bg storage="evening/img14_13.png" time="1000"]
ちょっと近づいてみたりして……[p]
莉子ちゃーん……[p]
もうちょっと近づいたりして[p]
[bg storage="evening/img14_14.png" time="1000"]
……[l]……[l]……[l]……[p]
もうちょっと、見ていたいけど起きたら大変なので[r]
この辺にしておこう[p]
[eval exp="f.riko_entrance = 2"]
[return]
[endif]

;--莉子帰宅②
[if exp="f.riko_f >= 40 && f.riko_entrance == 2"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
あれ？どこやったかな[p]
物置だったかな……見てくるか[p]

[image storage ="entrance2.png" layer="3" page="fore" visible="true" time="500"]
[bg storage ="evening/img14_02.png" time ="0"]

[keyframe name="run"]
[frame p=100% scale = "2" y="150" opacity = "0"]
[endkeyframe]
[kanim layer="3" keyframe="run" time="2000" easing = "ease-in"]
[wait time="2000"]
[stop_kanim layer="3"]
[freeimage layer="3"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]

[bg storage ="black.png" time="0"]
#
……[l]……[l]……[p]
まっ！真っ暗だ[p]
これはいったい！？[p]
どうなっているんだ！！[p]
[bg storage ="evening/img14_03.png" time = "1000"]
#莉子
[playse storage="riko/rk14_001.ogg" buf="0"]
……何をしているの？[p]
#
えっ？えっ？[p]
#莉子
[playse storage="riko/rk14_002.ogg" buf="0"]
この変態！！[p]
#
[bg storage ="black.png" time = "500"]
[playse storage="se/naguru.ogg" buf="2"]
ぐはっ！[p]
[eval exp="f.riko_entrance = 3"]
[return]
[endif]

;--莉子帰宅③
[if exp="f.riko_f >= 60 && f.riko_entrance == 3"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
あれ？どこやったかな[p]
物置だったかな……見てくるか[p]

[image storage ="entrance2.png" layer="3" page="fore" visible="true" time="500"]
[bg storage ="evening/img14_02.png" time ="0"]

[keyframe name="run"]
[frame p=100% scale = "2" y="150" opacity = "0"]
[endkeyframe]
[kanim layer="3" keyframe="run" time="2000" easing = "ease-in"]
[wait time="2000"]
[freeimage layer="3"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_14_14.webm" time="2000"]
#
……[l]……[l]……[p]
え～と……これは……[p]
#莉子
[playse storage="riko/rk14_003.ogg" buf="0"]
なんでこんな状態になる訳[p]
#
あの……わざとじゃ……[p]
#莉子
[playse storage="riko/rk14_004.ogg" buf="0"]
いつもいつも！このロリコンが～！[p]
#
[stop_bgmovie]
[playse storage="se/naguru.ogg" buf="2"]
ぐはっ！[p]
[eval exp="f.riko_entrance = 4"]
[return]
[endif]

;--莉子帰宅④
[if exp="f.riko_i >= 20 && f.riko_entrance == 4"]
[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_14_3.webm" time="2000" loop="true"]
#
莉子ちゃんアイス食べてる！[p]
莉子ちゃん美味しそうだね、アイス[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="1000"]
[movie storage="mov_14_3_2.webm" skip="true"]
[movie storage="mov_14_3_3.webm" skip="true"]
[bgloop mov="mov_14_3_4.webm"  ti="2000"]
[menuwindows]
アイス、美味しかったな[r]
[eval exp="f.riko_entrance = 5"]
[return]
[endif]

;***********************************************************************************************************************
;--莉菜帰宅①
[if exp="f.rina_f >= 20 && f.rina_entrance == undefined"]
[freeimage layer="2" time="0"]
#
ただいま！[p]
[bg storage ="evening/img15_03.png" time = "1000"]
#
莉菜ちゃんが洗濯物をたたんでいる[p]
莉菜ちゃん何か手伝うよ！[p]
#莉菜
[playse storage="rina/rn21_026.ogg" buf="0"]
いつも手伝ってくれてありがとうございます[p]
#
[bg storage ="evening/img15_04.png" time = "1000"]
（おお！貴重な莉菜ちゃんパンチラゲット！）[p]
（しょっちゅう見えてる莉子ちゃんと違い莉菜ちゃんのは貴重だ！）[p]
[eval exp="f.rina_entrance = 2"]
[return]
[endif]

;--莉菜帰宅②
[if exp="f.rina_f >= 35 && f.rina_entrance == 2"]
[freeimage layer="2" time="0"]
#
ただいま！[p]
[bg storage ="evening/img15_05.png" time = "1000"]
#
莉菜ちゃんがお掃除してる[p]
いつも助かるな[p]
[bg storage ="evening/img15_06.png" time = "1000"]
#
（おお！貴重な莉菜ちゃん胸チラ！）[p]
（いつも見えている静江さんの胸ちらと違い莉菜ちゃんのは貴重だ！）[p]
[eval exp="f.rina_entrance = 3"]
[return]
[endif]

;--莉菜帰宅③
[if exp="f.rina_f >= 50 && f.rina_entrance == 3"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
あれ？どこやったかな[p]
物置だったかな……見てくるか[p]

[bg storage="entrance2.png" time="500"]
[playse storage="se/asioto01.ogg" buf="2"]
[wait time="1000"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[bg storage ="black.png" time="0"]
#
……[l]……[l]……[p]
何だこの柔らかいものは！[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[bgloop mov="mov_15_1_1.webm"  ti="2000"]
[bg storage="evening/img15_07.png" time="1000"]
[menuwindows]
#
ご！ごめん！莉菜ちゃん[r]
こ、これは事故であって……[p]
#莉菜
[playse storage="rina/rn15_002.ogg" buf="0"]
い、いえ……お兄さん、私も前を見てなかったので……ごめんなさい[p]
#
（よかった……怒ってなさそう……お尻触っちゃったけど……柔らかかったな……）[p]
[eval exp="f.rina_entrance = 4"]

[return]
[endif]

;--莉菜帰宅④
[if exp="f.rina_f >= 60 && f.rina_entrance == 4"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
あれ？どこやったかな[p]
物置だったかな……見てくるか[p]

[bg storage="entrance2.png" time="500"]
[playse storage="se/asioto01.ogg" buf="2"]
[wait time="1000"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[bg storage ="black.png" time="0"]
#
……[l]……[l]……[p]
何だこの柔らかいものは！[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[bgloop mov="mov_15_2_1.webm"  ti="2000"]
[bg storage="evening/img15_07.png" time="1000"]
[menuwindows]
#
ご,ごめん！[r]
莉菜ちゃん大丈夫？決してわざとでは……[p]
#莉菜
[playse storage="rina/rn15_004.ogg" buf="0"]
あっ！いえ、私もぼーとしてたのが、いけないので[r]
ごめんなさい……お兄さんこそ大丈夫でしたか？[p]
#
僕は全然問題ないよ[r]
（ふ～、よかった……怒ってない……でも……胸大きかったな……）[p]
[eval exp="f.rina_entrance = 5"]

[return]
[endif]

;***********************************************************************************************************************
;--静江帰宅①
[if exp="f.sizue_f >= 20 && f.sizue_entrance == undefined"]
[freeimage layer="2" time="0"]
#
ただいま！[p]
[bg storage ="evening/img16_04.png" time = "1000"]
#
おお！静江さん酔いつぶれてる[p]
まだ酔いつぶれるには早いですよ……[p]
……[l]……[l]……[l]……[p]
静江さーん……[p]
起きないな……もうちょっと近くに……[p]
[bg storage ="evening/img16_03.png" time = "1000"]
静江さーん[p]
もしもーし……[p]
完全に酔いつぶれてるね、これは……[p]
[bg storage ="evening/img16_02.png" time = "1000"]
……[p]
おっと……やばいやばい……起きちゃったらまずいから[r]
凝視するのかこのくらいにしとこう[p]

[eval exp="f.sizue_entrance = 2"]
[return]
[endif]

;--静江帰宅②
[if exp="f.sizue_f >= 40 && f.sizue_entrance == 2"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
あれ？どこやったかな[p]
物置だったかな……見てくるか[p]

[bg storage="entrance3.png" time="500"]
[playse storage="se/asioto01.ogg" buf="2"]
[wait time="1000"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[bg storage ="black.png" time="0"]

#
……[l]……[l]……[l]……[p]
真っ暗だ！これはいったい？[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[bgloop mov="mov_16_1_1.webm"  ti="2000"]
[bg storage="evening/img16_00.png" time="1000"]
[menuwindows]
#静江
[playse storage="sizue/sz16_002.ogg" buf="0"]
お兄ちゃん、おばさんのおっぱいが[r]
そんなに欲しいの？[p]
#
ご！ごめんなさい！静江さん、これは……[p]
#静江
[playse storage="sizue/sz16_003.ogg" buf="0"]
お兄ちゃんが触りたいなら、いつでもいいわよ～！[p]
#
え！あっ……あの……[p]
#静江
[playse storage="sizue/sz16_004.ogg" buf="0"]
うふふ、冗談よ！ちゃんと前見ないと、だ・め・よ[p]
[eval exp="f.sizue_entrance = 3"]
#
[return]
[endif]

;--静江帰宅③
[if exp="f.sizue_f >= 60 && f.sizue_entrance == 3"]
[freeimage layer="2" time="0"]
[bg storage ="room_evening.png" time=1000]
#
あれ？どこやったかな[p]
物置だったかな……見てくるか[p]

[bg storage="entrance3.png" time="500"]
[playse storage="se/asioto01.ogg" buf="2"]
[wait time="1000"]
[playse storage="se/butukaru.ogg" buf="2"]
[quake count="1" time="300"]
[bg storage ="black.png" time="0"]
#
……[l]……[l]……[l]……[p]
まっ、真っ暗だ！いったい何が？[p]

[bgmovie storage="mov_16_2_1.webm" time="2000"]

#静江
[playse storage="sizue/sz16_005.ogg" buf="0"]
あぁん！[p]
#
えっ？　しふえしゃん？　これは[p]
#静江
[playse storage="sizue/sz16_006.ogg" buf="0"]
も～、お兄ちゃん、どうしたらこんな態勢になっちゃうのかしら？[p]
#
ご！ごめんふぁさい[p]
#静江
[playse storage="sizue/sz16_007.ogg" buf="0"]
あん……お兄ちゃん……そこでしゃべったら……ん……[p]
#
あっ……ふえ・・ふぉれは！[p]
#静江
[playse storage="sizue/sz16_008.ogg" buf="0"]
あぁん……お兄ちゃん……わざとなの？[p]
[stop_bgmovie]

[bg storage="evening/img16_01.png" time="1000"]
[menuwindows]
#
し！静江さん……ごめんなさい！わざとじゃないんです[p]
#静江
[playse storage="sizue/sz16_009.ogg" buf="0"]
こ～ら！お兄ちゃん、おばさんをからかったらメよ！[r]
次やったらゲンコツ！[p]
[eval exp="f.sizue_entrance = 4"]
#
[return]
[endif]


[return]
;***********************************************************************************************************************
;-夕食後の会話
*evening_events
;会話相手判別
;部屋に戻る
[if exp="tf.evening_select == 0"]
 [return]
[endif]
;莉子
[if exp="tf.evening_select == 1"]
 [jump target="*evening_riko"]
[endif]
;莉菜
[if exp="tf.evening_select == 2"]
[jump target="*evening_rina"]
[endif]
;静江
[if exp="tf.evening_select == 3"]
[jump target="*evening_sizue"]
[endif]
;***********************************************************************************************************************
;--莉子会話
*evening_riko
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 35)
[endscript]
#莉子

[if exp="tf.rand == 0"]
[bg storage="evening/img20_01.png" time="1000"]
[playse storage="riko/rk20_001.ogg" buf="0"]
おじさん、ゲームしよ！[p]
[endif]

[if exp="tf.rand == 1"]
[bg storage="evening/img20_06.png" time="1000"]
[playse storage="riko/rk20_002.ogg" buf="0"]
おじさん、宿題なんだけど、ここ分かる？[p]
[endif]

[if exp="tf.rand == 2"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_003.ogg" buf="0"]
健太の奴！　むかつく[r]
またスカートめくりしてきたんだよ[p]
[endif]

[if exp="tf.rand == 3"]
[bg storage="evening/img20_14.png" time="1000"]
[playse storage="riko/rk20_004.ogg" buf="0"]
お風呂入ってくる[r]
おじさん、覗かないでね！[p]
[endif]

[if exp="tf.rand == 4"]
[bg storage="evening/img20_07.png" time="1000"]
[playse storage="riko/rk20_005.ogg" buf="0"]
お菓子食べる？[p]
[endif]

[if exp="tf.rand == 5"]
[bg storage="evening/img20_08.png" time="1000"]
[playse storage="riko/rk20_007.ogg" buf="0"]
今日ね、マリちゃんが面白かったんだよ[p]

[endif]

[if exp="tf.rand == 6"]
[bg storage="evening/img20_08.png" time="1000"]
[playse storage="riko/rk20_007.ogg" buf="0"]
今日ね、マリちゃんが面白かったんだよ[p]
[endif]

[if exp="tf.rand == 7"]
[bg storage="evening/img20_03.png" time="1000"]
[playse storage="riko/rk20_008.ogg" buf="0"]
今日は面白いテレビ、全然ない[p]
[endif]

[if exp="tf.rand == 8"]
[bg storage="evening/img20_17.png" time="1000"]
[playse storage="riko/rk20_009.ogg" buf="0"]
ジュ～ス！　ジュ～ス！　ジュ～ス！[p]
[endif]

[if exp="tf.rand == 9"]
[bg storage="evening/img20_02.png" time="1000"]
[playse storage="riko/rk20_010.ogg" buf="0"]
あいつら、またゲームで返り討ちにしてやったわ[p]
[endif]

[if exp="tf.rand == 10"]
[bg storage="evening/img20_17.png" time="1000"]
[playse storage="riko/rk20_009.ogg" buf="0"]
ジュ～ス！　ジュ～ス！　ジュ～ス！[p]
[endif]

[if exp="tf.rand == 11"]
[bg storage="evening/img20_14.png" time="1000"]
[playse storage="riko/rk20_012.ogg" buf="0"]
おじさんまた莉子の事、いやらしい目で見てたでしょ[p]
[endif]

[if exp="tf.rand == 12"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_013.ogg" buf="0"]
お姉ちゃんにピーマンは入れないでって言ってよ[p]
[endif]

[if exp="tf.rand == 13"]
[bg storage="evening/img20_06.png" time="1000"]
[playse storage="riko/rk20_014.ogg" buf="0"]
やばい！　宿題忘れてた！[p]
[endif]

[if exp="tf.rand == 14"]
[bg storage="evening/img20_02.png" time="1000"]
[playse storage="riko/rk20_015.ogg" buf="0"]
おじさん、今週の週刊少年バンビ買った？[p]
[endif]

[if exp="tf.rand == 15"]
[bg storage="evening/img20_18.png" time="1000"]
[playse storage="riko/rk20_016.ogg" buf="0"]
アイス！　アイス！　アイス！[p]
[endif]

[if exp="tf.rand == 16"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_017.ogg" buf="0"]
暑い～クーラー温度下げてよー[p]
[endif]

[if exp="tf.rand == 17"]
[bg storage="evening/img20_08.png" time="1000"]
[playse storage="riko/rk20_018.ogg" buf="0"]
好きな歌なら、マジョフレのオープニング！[r]
マジョカルらぶり～ 今度聞かせてあげる[p]
[endif]

[if exp="tf.rand == 18"]
[bg storage="evening/img20_08.png" time="1000"]
[playse storage="riko/rk20_018.ogg" buf="0"]
好きな歌なら、マジョフレのオープニング！[r]
マジョカルらぶり～ 今度聞かせてあげる[p]
[endif]

[if exp="tf.rand == 19"]
[bg storage="evening/img20_20.png" time="1000"]
[playse storage="riko/rk20_021.ogg" buf="0"]
おじさん、ドッジボールの練習付き合ってよ！　今度クラスの男女で戦争勃発だから！[p]
[endif]

[if exp="tf.rand == 20"]
[bg storage="evening/img20_16.png" time="1000"]
[playse storage="riko/rk20_022.ogg" buf="0"]
お姉ちゃん、今度お菓子作ってくれるって[p]
[endif]

[if exp="tf.rand == 21"]
[bg storage="evening/img20_19.png" time="1000"]
[playse storage="riko/rk20_023.ogg" buf="0"]
お母さんも、お姉ちゃんもおっぱいデカいから、莉子も巨乳になるよね！[p]
[endif]

[if exp="tf.rand == 22"]
[bg storage="evening/img20_15.png" time="1000"]
[playse storage="riko/rk20_024.ogg" buf="0"]
お祭りの時に莉子の超かわいい浴衣姿みせてあげる[p]
[endif]

[if exp="tf.rand == 23"]
[bg storage="evening/img20_08.png" time="1000"]
[playse storage="riko/rk20_025.ogg" buf="0"]
おじさんロリコンでしょ！　莉子はすぐわかったね！[p]
[endif]

[if exp="tf.rand == 24"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_026.ogg" buf="0"]
おじさんのお部屋、女の子のフィギュアばっかり[p]
[endif]

[if exp="tf.rand == 25"]
[bg storage="evening/img20_09.png" time="1000"]
[playse storage="riko/rk20_027.ogg" buf="0"]
莉子は優等生なんだからね！[p]
[endif]

[if exp="tf.rand == 26"]
[bg storage="evening/img20_16.png" time="1000"]
[playse storage="riko/rk20_028.ogg" buf="0"]
おじさん莉子が可愛すぎて見とれてるんでしょ[p]
[endif]

[if exp="tf.rand == 27"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_029.ogg" buf="0"]
おじさんの部屋のフィギュア、動いてた気がするんだけど気のせい？[p]
[endif]

[if exp="tf.rand == 28"]
[bg storage="evening/img20_01.png" time="1000"]
[playse storage="riko/rk20_030.ogg" buf="0"]
お母さん、いい香りだよね！　欲情しちゃだめだよ！[p]
[endif]

[if exp="tf.rand == 29"]
[bg storage="evening/img20_05.png" time="1000"]
[playse storage="riko/rk20_031.ogg" buf="0"]
ニュースとか詰まんないからチャンネル変えていい?[p]
[endif]

[if exp="tf.rand == 30"]
[bg storage="evening/img20_10.png" time="1000"]
[playse storage="riko/rk20_032.ogg" buf="0"]
お部屋の掃除しないとお姉ちゃんに怒られるんだよね！　めんどくさい[p]
[endif]

[if exp="tf.rand == 31"]
[bg storage="evening/img20_15.png" time="1000"]
[playse storage="riko/rk20_033.ogg" buf="0"]
毎日暑いからプールいきたいな！　莉子の水着姿想像してるでしょう！[p]
[endif]

[if exp="tf.rand == 32"]
[bg storage="evening/img20_09.png" time="1000"]
[playse storage="riko/rk20_034.ogg" buf="0"]
お姉ちゃんのご飯美味しいよね！[p]
[endif]

[if exp="tf.rand == 33"]
[bg storage="evening/img20_07.png" time="1000"]
[playse storage="riko/rk20_035.ogg" buf="0"]
おじさんたまに一人でブツブツしゃべってるけどキモイからやめたほうがいいよ[p]
[endif]

[if exp="tf.rand == 34"]
[bg storage="evening/img20_04.png" time="1000"]
[playse storage="riko/rk20_020.ogg" buf="0"]
早く夏休みにならないかな～[p]
[endif]

;莉子ちゃん好感度増加
[riko_f]

#
莉子ちゃんとお話した！[p]

[return]

;***********************************************************************************************************************
;--莉菜会話
*evening_rina
;莉子ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 30)
[endscript]
#莉菜

[if exp="tf.rand == 0"]
[bg storage="evening/img21_00.png" time="1000"]
[playse storage="rina/rn21_001.ogg" buf="0"]
お兄さん、待ってくださいね！　洗い物終わらせちゃいますので[p]
[endif]

[if exp="tf.rand == 1"]
[bg storage="evening/img21_01.png" time="1000"]
[playse storage="rina/rn21_002.ogg" buf="0"]
最近野菜が高いんですよ[p]
[endif]

[if exp="tf.rand == 2"]
[bg storage="evening/img21_01.png" time="1000"]
[playse storage="rina/rn21_003.ogg" buf="0"]
お兄さん、明日は何か食べたいものあります？[p]
[endif]

[if exp="tf.rand == 3"]
[bg storage="evening/img21_02.png" time="1000"]
[playse storage="rina/rn21_004.ogg" buf="0"]
東町に新しいケーキ屋さんが出来たんですよ[p]
[endif]

[if exp="tf.rand == 4"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_005.ogg" buf="0"]
スイーツ好きなんですけど……無駄遣いは出来ません[p]
[endif]

[if exp="tf.rand == 5"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_006.ogg" buf="0"]
一番好きなのは、モンブランかな[p]
[endif]

[if exp="tf.rand == 6"]
[bg storage="evening/img21_05.png" time="1000"]
[playse storage="rina/rn21_007.ogg" buf="0"]
西宮神社でお願い事すると、結構叶うらしいですよ[p]
[endif]

[if exp="tf.rand == 7"]
[bg storage="evening/img21_03.png" time="1000"]
[playse storage="rina/rn21_008.ogg" buf="0"]
今日は風呂釜洗浄までしたのでピカピカですよ[p]
[endif]

[if exp="tf.rand == 8"]
[bg storage="evening/img21_01.png" time="1000"]
[playse storage="rina/rn21_009.ogg" buf="0"]
今日のご飯どうでした？　初めて作ったのでちょっと心配だったんですけど[p]
[endif]

[if exp="tf.rand == 9"]
[bg storage="evening/img21_06.png" time="1000"]
[playse storage="rina/rn21_010.ogg" buf="0"]
お兄さん！　また莉子ちゃんのピーマン食べてあげたんでしょ[p]
[endif]

[if exp="tf.rand == 10"]
[bg storage="evening/img21_10.png" time="1000"]
[playse storage="rina/rn21_011.ogg" buf="0"]
あ！　またエアコンの温度、こんなに寒くしてる！[p]
[endif]

[if exp="tf.rand == 11"]
[bg storage="evening/img21_10.png" time="1000"]
[playse storage="rina/rn21_011.ogg" buf="0"]
あ！　またエアコンの温度、こんなに寒くしてる！[p]
[endif]

[if exp="tf.rand == 12"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_013.ogg" buf="0"]
今度お菓子作りに挑戦してみます[p]	
[endif]

[if exp="tf.rand == 13"]
[bg storage="evening/img21_03.png" time="1000"]
[playse storage="rina/rn21_014.ogg" buf="0"]
うちは女子校ですよ[p]
[endif]

[if exp="tf.rand == 14"]
[bg storage="evening/img21_05.png" time="1000"]
[playse storage="rina/rn21_015.ogg" buf="0"]
お母さん、家ではぐうたらだけど仕事はすごい出来るんですよ！[p]
[endif]

[if exp="tf.rand == 15"]
[bg storage="evening/img21_09.png" time="1000"]
[playse storage="rina/rn21_016.ogg" buf="0"]
友達が電車で痴漢にあったらしいです。[p]
[endif]

[if exp="tf.rand == 16"]
[bg storage="evening/img21_11.png" time="1000"]
[playse storage="rina/rn21_017.ogg" buf="0"]
お母さん、夜中に隠れてカップラーメン食べてるんですよ！[r]
私が気づいてないと思ってるんですかね！[p]
[endif]

[if exp="tf.rand == 17"]
[bg storage="evening/img21_12.png" time="1000"]
[playse storage="rina/rn21_018.ogg" buf="0"]
お母さん全部飲んじゃうから、日本酒隠してあるんです。いっちゃダメですよ！[p]
[endif]

[if exp="tf.rand == 18"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_019.ogg" buf="0"]
商店街のおじさんたち、色々サービスしてくれるんですよ[p]
[endif]

[if exp="tf.rand == 19"]
[bg storage="evening/img21_02.png" time="1000"]
[playse storage="rina/rn21_020.ogg" buf="0"]
商店街の福引があるんですけど、一等は温泉旅行みたいです[p]
[endif]

[if exp="tf.rand == 20"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_019.ogg" buf="0"]
商店街のおじさんたち、色々サービスしてくれるんですよ[p]
[endif]

[if exp="tf.rand == 21"]
[bg storage="evening/img21_03.png" time="1000"]
[playse storage="rina/rn21_022.ogg" buf="0"]
今度莉子ちゃんとプールいってきます[p]
[endif]

[if exp="tf.rand == 22"]
[bg storage="evening/img21_09.png" time="1000"]
[playse storage="rina/rn21_023.ogg" buf="0"]
お兄さん、暑いからって冷たい物ばから飲んじゃだめですよ[p]
[endif]

[if exp="tf.rand == 23"]
[bg storage="evening/img21_09.png" time="1000"]
[playse storage="rina/rn21_024.ogg" buf="0"]
お兄さん、莉子ちゃんとゲームばかりしてたらダメですよ[p]
[endif]

[if exp="tf.rand == 24"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_025.ogg" buf="0"]
映画は結構好きですよ[r]
よく見に行きます[p]
[endif]


[if exp="tf.rand == 25"]
[bg storage="evening/img21_08.png" time="1000"]
[playse storage="rina/rn21_027.ogg" buf="0"]
今日は友達とカラオケいったので喉がガラガラです[p]
[endif]

[if exp="tf.rand == 26"]
[bg storage="evening/img21_04.png" time="1000"]
[playse storage="rina/rn21_028.ogg" buf="0"]
お兄さん、パソコン詳しいですか？　調子が悪くて……[p]
[endif]

[if exp="tf.rand == 27"]
[bg storage="evening/img21_02.png" time="1000"]
[playse storage="rina/rn21_029.ogg" buf="0"]
友達と撮ったプリクラです[p]
[endif]

[if exp="tf.rand == 28"]
[bg storage="evening/img21_03.png" time="1000"]
[playse storage="rina/rn21_030.ogg" buf="0"]
商店街の福引を引いたんですけど、ティッシュでした[p]
[endif]

[if exp="tf.rand == 29"]
[bg storage="evening/img21_03.png" time="1000"]
[playse storage="rina/rn21_031.ogg" buf="0"]
神社でお願いすると叶うらしいので友達と行ってきました[r]
えっ、何をお願いしたかですか？　……秘密です[p]
[endif]

;莉菜ちゃん好感度増加
[rina_f]

#
莉菜ちゃんとお話した！[p]
[return]

;***********************************************************************************************************************
;--静江会話
*evening_sizue
;静江ランダム会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 30)
[endscript]
#静江

[if exp="tf.rand == 0"]
[bg storage="evening/img22_00.png" time="1000"]
[playse storage="sizue/sz22_001.ogg" buf="0"]
お兄ちゃん、一緒に飲む？[p]
[endif]

[if exp="tf.rand == 1"]
[bg storage="evening/img22_01.png" time="1000"]
[playse storage="sizue/sz22_002.ogg" buf="0"]
ビ～ル！　ビ～ル！　ビ～ル！[p]
[endif]

[if exp="tf.rand == 2"]
[bg storage="evening/img22_00.png" time="1000"]
[playse storage="sizue/sz22_003.ogg" buf="0"]
あら、お兄ちゃん、おばさんとお話したいの～[p]
[endif]

[if exp="tf.rand == 3"]
[bg storage="evening/img22_05.png" time="1000"]
[playse storage="sizue/sz22_004.ogg" buf="0"]
あのハゲおやじ～！　自分でやってみろ～[p]
[endif]

[if exp="tf.rand == 4"]
[bg storage="evening/img22_07.png" time="1000"]
[playse storage="sizue/sz22_005.ogg" buf="0"]
お兄ちゃん、見て見て！　スペシャルレイドの招待状が来たのよ！[p]
[endif]

[if exp="tf.rand == 5"]
[bg storage="evening/img22_08.png" time="1000"]
[playse storage="sizue/sz22_006.ogg" buf="0"]
やっぱり可愛いのはニャンタローよね！　[p]
[endif]

[if exp="tf.rand == 6"]
[bg storage="evening/img22_15.png" time="1000"]
[playse storage="sizue/sz22_008.ogg" buf="0"]
最近、ちょっと太ってきちゃったかしら……[r]
ほとんど変わんないんだけど、ちょっとだけ……ね[p]
[endif]

[if exp="tf.rand == 7"]
[bg storage="evening/img22_15.png" time="1000"]
[playse storage="sizue/sz22_008.ogg" buf="0"]
最近、ちょっと太ってきちゃったかしら……[r]
ほとんど変わんないんだけど、ちょっとだけ……ね[p]
[endif]

[if exp="tf.rand == 8"]
[bg storage="evening/img22_13.png" time="1000"]
[playse storage="sizue/sz22_009.ogg" buf="0"]
あ～ん、もう！くやしい[r]
幻のオリンポコンがいたのに、逃げられちゃったのよ～[p]
[endif]

[if exp="tf.rand == 9"]
[bg storage="evening/img22_16.png" time="1000"]
[playse storage="sizue/sz22_0.10" buf="0"]
うふふふ……おにいちゃ～ん！　何だか楽しくなってきちゃった[p]
[endif]

[if exp="tf.rand == 10"]
[bg storage="evening/img22_03.png" time="1000"]
[playse storage="sizue/sz22_011.ogg" buf="0"]
やっぱり、結局のところ枝豆が一番よね[p]
[endif]

[if exp="tf.rand == 11"]
[bg storage="evening/img22_10.png" time="1000"]
[playse storage="sizue/sz22_012.ogg" buf="0"]
卓三さんと、元太さん、またギフト開けてないわ！[r]
あっ、ポチモンのフレンドのことよ[p]
[endif]

[if exp="tf.rand == 12"]
[bg storage="evening/img22_19.png" time="1000"]
[playse storage="sizue/sz22_013.ogg" buf="0"]
あれ～、報告書、明日までだったかしら……まぁ、何とかなるわよね[p]
[endif]

[if exp="tf.rand == 13"]
[bg storage="evening/img22_17.png" time="1000"]
[playse storage="sizue/sz22_014.ogg" buf="0"]
南町に素敵なバーが出来たみたいなの[p]
[endif]

[if exp="tf.rand == 14"]
[bg storage="evening/img22_17.png" time="1000"]
[playse storage="sizue/sz22_015.ogg" buf="0"]
カラオケなら、そうね～　昔の歌謡曲とか好きかしら[p]
[endif]

[if exp="tf.rand == 15"]
[bg storage="evening/img22_06.png" time="1000"]
[playse storage="sizue/sz22_016.ogg" buf="0"]
いいこと、お兄ちゃん！　水は火に強いのよ！　あっ、ポチモンの話[p]
[endif]

[if exp="tf.rand == 16"]
[bg storage="evening/img22_17.png" time="1000"]
[playse storage="sizue/sz22_017.ogg" buf="0"]
莉菜ちゃん、真面目すぎるわよね～！　私に似たのかしら～　[p]
[endif]

[if exp="tf.rand == 17"]
[bg storage="evening/img22_16.png" time="1000"]
[playse storage="sizue/sz22_018.ogg" buf="0"]
莉菜ちゃんも莉子ちゃんも良い子に育ってくれて、お母さんうれしいわ！[p]
[endif]

[if exp="tf.rand == 18"]
[bg storage="evening/img22_09.png" time="1000"]
[playse storage="sizue/sz22_019.ogg" buf="0"]
まだメンテナンスなのよ！　ポチモン！[r]
ちゃんと時間通りにやってもらわないと困っちゃうわよね！[p]
[endif]

[if exp="tf.rand == 19"]
[bg storage="evening/img22_18.png" time="1000"]
[playse storage="sizue/sz22_020.ogg" buf="0"]
サスペンスドラマ始まっちゃうわ[p]
[endif]

[if exp="tf.rand == 20"]
[bg storage="evening/img22_19.png" time="1000"]
[playse storage="sizue/sz22_021.ogg" buf="0"]
なぜか映画みてると寝ちゃうのよね[p]
[endif]

[if exp="tf.rand == 21"]
[bg storage="evening/img22_17.png" time="1000"]
[playse storage="sizue/sz22_022.ogg" buf="0"]
絶叫系の乗り物は結構好きなのよ[p]
[endif]

[if exp="tf.rand == 22"]
[bg storage="evening/img22_16.png" time="1000"]
[playse storage="sizue/sz22_023.ogg" buf="0"]
今度一緒に飲みに行く？　おばさんは強いのよ[p]
[endif]

[if exp="tf.rand == 23"]
[bg storage="evening/img22_17.png" time="1000"]
[playse storage="sizue/sz22_024.ogg" buf="0"]
すぐに電池が切れちゃうからバッテリーも持ち歩いてるのよ[p]
[endif]

[if exp="tf.rand == 24"]
[bg storage="evening/img22_16.png" time="1000"]
[playse storage="sizue/sz22_025.ogg" buf="0"]
はやくお風呂に入らないと莉菜ちゃんに怒られちゃう[r]
お兄ちゃん一緒に入る？[p]
[endif]

[if exp="tf.rand == 25"]
[bg storage="evening/img22_00.png" time="1000"]
[playse storage="sizue/sz22_026.ogg" buf="0"]
いよいよビアガーデンの季節よね[r]
楽しみ[p]
[endif]

[if exp="tf.rand == 26"]
[bg storage="evening/img22_04.png" time="1000"]
[playse storage="sizue/sz22_027.ogg" buf="0"]
毎日暑いわよね～[p]
[endif]

[if exp="tf.rand == 27"]
[bg storage="evening/img22_02.png" time="1000"]
[playse storage="sizue/sz22_028.ogg" buf="0"]
こら～お兄ちゃん！　おばさんのお酒飲めないの～！[p]
[endif]

[if exp="tf.rand == 28"]
[bg storage="evening/img22_19.png" time="1000"]
[playse storage="sizue/sz22_029.ogg" buf="0"]
もー莉菜ちゃん怒ってばっかりなのよ[r]
莉子ちゃんだってゲームいっぱいしてるじゃない、ねえ……[p]
[endif]

[if exp="tf.rand == 29"]
[bg storage="evening/img22_01.png" time="1000"]
[playse storage="sizue/sz22_030.ogg" buf="0"]
いっぱい働いた後のビールは美味いわね[p]
[endif]

;静江さん好感度増加
[sizue_f]

#
静江さんとお話した！[p]

[return]

;***********************************************************************************************************************
;-お風呂イベント
*bath
[if exp="f.riko_f >= 80 && f.riko_bath == undefined"]
 [jump target="*bath_riko"]
[endif]

[if exp="f.riko_h >= 50 && f.riko_bath2 == undefined"]
 [jump target="*bath_riko2"]
[endif]

[if exp="f.rina_f >= 80 && f.rina_bath == undefined"]
 [jump target="*bath_rina"]
[endif]

[if exp="f.rina_h >= 50 && f.rina_bath2 == undefined"]
 [jump target="*bath_rina2"]
[endif]

[if exp="f.sizue_f >= 80 && f.sizue_bath == undefined"]
 [jump target="*bath_sizue"]
[endif]

[if exp="f.sizue_h >= 75 && f.sizue_bath2 == undefined"]
 [jump target="*bath_sizue2"]
[endif]

[return]
;***********************************************************************************************************************
;--莉子お風呂
*bath_riko
[bg storage ="room_night.png" time="1000"]
[menuwindows]
#
さてと、お風呂入ってくるかな[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

[movie storage="mov_14_4.webm" skip="true"]


[bg storage="evening/img14_10.png" time="1000"]

[menuwindows]
#莉子
[playse storage="riko/rk14_005.ogg" buf="0"]
きゃ～！！[p]
#
わわわ！！[p]
[bg storage="evening/img14_09.png" time="1000"]
#莉子
[playse storage="riko/rk14_006.ogg" buf="0"]
おじさん、わざとでしょ！[p]
#
ち！違うんだ[r]
本当に間違えて……[p]
#莉子
[playse storage="riko/rk14_007.ogg" buf="0"]
ふ～ん、どうだか！おじさん目がロリコンだし……[p]
#
かんべんしてください……[p]
#莉子
[playse storage="riko/rk14_008.ogg" buf="0"]
まぁ、いいや[r]
これは貸しね！今度何かおごってもらうから！[p]
#
よかった……なんとか許してもらえそう……[p]
[eval exp="f.riko_bath = true"]
[return]

;***********************************************************************************************************************
;--	莉菜お風呂
*bath_rina
[bg storage ="room_night.png" time="1000"]
[menuwindows]
#
さてと、お風呂入ってくるかな[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

[movie storage="mov_15_3_1.webm" skip="true"]


[menuwindows]
[bg storage="evening/img15_08.png" time="1000"]
#
……[l]……[l]……[p]
あの……莉菜ちゃん……さっきはごめんね[p]
#莉菜
[playse storage="rina/rn15_006.ogg" buf="0"]
私こそ……鍵を閉めとかなかったので[r]
お兄さんも気にしないで下さい[p]
#
よかった、許してくれそうだ[p]

[eval exp="f.rina_bath = true"]
[return]

;***********************************************************************************************************************
;--	静江お風呂
*bath_sizue
[bg storage ="room_night.png" time="1000"]
[menuwindows]
#
さてと、お風呂入ってくるかな[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

;メッセージボックス非表示
[clearfix]
@layopt layer="message" visible=false

[movie storage="mov_16_3_1.webm" skip="true"]


[menuwindows]
[bg storage="evening/img16_05.png" time="1000"]
#静江
[playse storage="sizue/sz16_011.ogg" buf="0"]
どうしたの？お兄ちゃん、固まっちゃって……[p]
[playse storage="sizue/sz16_011_2.ogg" buf="0"]
あっ！も～、おばさんの裸みて楽しいの？さてはからかってるんでしょ？[r]
めっ！[p]
[playse storage="sizue/sz16_012.ogg" buf="0"]
次やったらゲンコツっていったでしょ[p]
#
ご、ごめんなさい[p]

[eval exp="f.sizue_bath = true"]
[return]

;***********************************************************************************************************************
;--莉子お風呂2
*bath_riko2
[bg storage ="room_night.png" time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[menuwindows]
#
さてと、お風呂入ってくるかな[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

[playbgm storage="bass.ogg" loop="true"]
[bgmovie storage="mov_14_16.webm"]
#
わわ！莉子ちゃん[p]
#莉子
[playse storage="riko/rk14_012.ogg" buf="0"]
おじさん、一緒に入ってあげる[p]
[stop_bgmovie]
[bgmovie storage="mov_14_17.webm"]
#莉子
[playse storage="riko/rk14_013.ogg" buf="0"]
おじさん、ちゃんと洗ってね[p]
#
う、うん……！！[p]
#莉子
[playse storage="riko/rk14_014.ogg" buf="0"]
おじさん、なにか背中に当たってるんだけど[p]
#
あっ……いや……それは[p]
#莉子
[playse storage="riko/rk14_015.ogg" buf="0"]
子供の裸で欲情しちゃったの？[p]
#
いや……そんな訳では……[p]
#莉子
[playse storage="riko/rk14_016.ogg" buf="0"]
こんなに大きくなってるのに？[p]
#
…………[p]
#莉子
[playse storage="riko/rk14_017.ogg" buf="0"]
嘘ついたからお仕置きね[p]
[stop_bgmovie]
[bgmovie storage="mov_14_18.webm"]

#莉子
[playse storage="riko/rk14_018.ogg" buf="0"]
おじさんは今、何されてるんですか？[p]
#
えっ？[p]
#莉子
[playse storage="riko/rk14_019.ogg" buf="0"]
何されてますか！[p]
#
うっ……り、莉子ちゃんに[r]
足でちんちんを……いじられています[p]
#莉子
[playse storage="riko/rk14_020.ogg" buf="0"]
どうしてこんな事になってるの？[p]
#
そ……それは……子供の裸で[r]
……欲情したからです[p]
#莉子
[playse storage="riko/rk14_021.ogg" buf="0"]
反省した？[p]
#
は……はい……反省しました[p]
#莉子
[playse storage="riko/rk14_022.ogg" buf="0"]
じゃあ、もうやめる？[p]
#
え！　いや……も……もっと……してください[p]
[stop_bgmovie]
[bgmovie storage="mov_14_20.webm"]

#莉子
[playse storage="riko/rk14_024.ogg" buf="0"]
気持ちいい？[p]
#
き……気持ちいいです[p]
#莉子
[playse storage="riko/rk14_025.ogg" buf="0"]
子供の足でよがっちゃって……おじさんド変態ね[p]
#
はい……おじさんはド変態です[p]
[stop_bgmovie]
[bgmovie storage="mov_14_19.webm"]

#莉子
[playse storage="riko/rk14_026.ogg" buf="0"]
おじさんのおちんちん、入れたい？[p]
#
え！……　あ……い……入れたいです[p]
#莉子
[playse storage="riko/rk14_027.ogg" buf="0"]
どこに入れたいの？　おじさんのおちんちん[r]
どこに入れたいの？[p]
#
莉子ちゃんのおまんこに……入れたいです！[p]
#莉子
[playse storage="riko/rk14_028.ogg" buf="0"]
子供マンコに入れたいなんて、やっぱりおじさんはド変態ね[r]
でも、だ～め！　ド変態は足でよがってるのがお似合いよ[p]
#
え！　そんな[p]
#莉子
[playse storage="riko/rk14_029.ogg" buf="0"]
早く子供の足コキでいっちゃってよ！　このド変態[p]
#

[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
[stopse buf="0"]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_14_21.webm" skip="true"]
[stop_bgmovie]
[menuwindows]

[bgmovie storage="mov_14_22.webm"]

#莉子
[playse storage="riko/rk14_030.ogg" buf="0"]
あ～あ、こんなに出しちゃって……足が汚れちゃったじゃない！[p]
#

;莉子ちゃん愛情度UP
[riko_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[stop_bgmovie]
[fadeoutbgm]

[eval exp="f.riko_bath2 = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]

#
莉子ちゃん足コキ、気持ちよかったな！[p]
#
部屋に帰ってきた[r]

[return]

;***********************************************************************************************************************
;--莉菜お風呂2
*bath_rina2
[bg storage ="room_night.png" time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[menuwindows]
#
さてと、お風呂入ってくるかな[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

[playbgm storage="bass.ogg" loop="true"]
[bgmovie storage="mov_15_16.webm"]
#
おお！莉菜ちゃん、来てくれたんだね！[p]
#莉菜
[playse storage="rina/rn15_020.ogg" buf="0"]
もう、お兄さんがしつこくお願いするから…しょうがなくです！[p]
#
莉菜ちゃん、そんなに隠してないでもっとよく見せてよ[p]
[stop_bgmovie]
[bgmovie storage="mov_15_17.webm"]
#莉菜
[playse storage="rina/rn15_021.ogg" buf="0"]
え！だっ…だめですよ…恥ずかしいし…[p]
#
ほら、莉菜ちゃんの大きいおっぱい、よく見せて[p]
#莉菜
[playse storage="rina/rn15_022.ogg" buf="0"]
お、お兄さん…… そんなに見られたら…… 恥ずかしい……[p]
#
莉菜ちゃん、ちゃんと洗ってあげるからね[p]
[stop_bgmovie]
[bgmovie storage="mov_15_18.webm"]
#莉菜
[playse storage="rina/rn15_023.ogg" buf="0" loop="true"]
はぁ……はぁ…… んっ…… あっ…… ん…… はぁ……はぁ[r]
やっ！ん…… お兄さん…… ん…はぁ…あぁん[p]
#莉菜
[playse storage="rina/rn15_024.ogg" buf="0"]
あんっ！……だ……だめ……お兄さん……そんな……[p]
[stop_bgmovie]
[playse storage="rina/rn15_025.ogg" loop="true"]
[playse storage="se/kutyu01.ogg" loop="true" buf="3"]
[bgmovie storage="mov_15_19.webm"]
莉菜ちゃんのここもいっぱい洗ってあげる[p]
#莉菜
[playse storage="rina/rn15_026.ogg" buf="0"]
も、もう……だめ！　お兄さん……今度は私が洗います！[p]

#
じゃあ、洗いっ子だね莉菜ちゃん[p]
[stop_bgmovie]
[bgmovie storage="mov_15_20.webm"]
[playse storage="rina/rn15_025.ogg" loop="true"]
#
莉菜ちゃん……気持ちいい……[p]
[playse storage="rina/rn15_027.ogg" buf="0"]
あっ、あっ……んっ……お兄さん……お兄さん……んっ、[r]
あん……だっ、ダメ……お兄さん……莉菜……気持ちいい！[p]
[playse storage="rina/rn15_025.ogg" loop="true"]
#
莉菜ちゃん……出すよ……一緒にいくよ[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_15_21.webm" skip="true"]
[playse storage="rina/rn15_029_1.ogg" loop="true"]
[bgloop mov="mov_15_22.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
;莉菜ちゃん愛情度UP
[rina_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[stop_bgmovie]
[fadeoutbgm]

[eval exp="f.rina_bath2 = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
[menuwindows]
#
莉菜ちゃんとお風呂、気持ちよかったな！[p]
#
部屋に帰ってきた[r]

[return]

;***********************************************************************************************************************
;--静江お風呂2
*bath_sizue2
[bg storage ="room_night.png" time="1000"]
[stopse buf="0"]
[stopse buf="3"]
[menuwindows]
#
さてと、お風呂入ってくるかな[p]

[freeimage layer="2" time="0"]
[bg storage="black.png" time="1000"]

[playbgm storage="bass.ogg" loop="true"]

[bgmovie storage="mov_16_14.webm"]
#静江
[playse storage="sizue/sz16_023.ogg" buf="0"]
お兄ちゃん、おばさんが背中流してあげる[p]
#
わ！　あっ……ちょっと[p]
[stop_bgmovie]
[bgmovie storage="mov_16_15.webm"]
#静江
[playse storage="sizue/sz16_024.ogg" buf="0"]
こ～ら、何隠しているの。男の子なんだからドーンとしないと！[r]
あらあら！　もうこんなになって……若いのね[p]
[playse storage="sizue/sz52_009.ogg" buf="0"]
#静江
お兄ちゃん、気持ちいい？[r]
お兄ちゃんの気持よさそうな顔、可愛い！[p]
#
気持ちいいです！静江さん！[p]
[stop_bgmovie]
[bgmovie storage="mov_16_16.webm"]
[playse storage="sizue/sz16_025.ogg" buf="0"]
#静江
お兄ちゃんの大好きなおっぱいで、してあげる！　おっぱい好きでしょ？[p]
#
は、はい……好きです……静江さんのおっぱい……好きです[p]
[playse storage="sizue/sz16_026.ogg" buf="0"]
#静江
気持ちいい？　お兄ちゃんのおちんちん[r]
おばさんのおっぱいの中でビクンビクンしてるわよ[p]
#
やばいです……気持ちよくて……どうにかなっちゃいそうです……[p]
[playse storage="sizue/sz16_027.ogg" buf="0"]
#静江
うふふ……いいのよ、おばさんのおっぱいに[r]
い～ぱい、びゅるびゅる～ってしていいのよ[p]
#
あぁ！限界！いく！あぁぁ！[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_16_17.webm" skip="true"]
[stop_bgmovie]
[movie storage="mov_16_18.webm" skip="true"]
[stopse buf="0"]
[stopse buf="3"]


;静江さん愛情度UP
[sizue_i]
;体力減少
[eval exp="f.hp = f.hp - 20"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]

[stop_bgmovie]
[fadeoutbgm]

[eval exp="f.sizue_bath2 = true"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
[menuwindows]
#
静江さんとのお風呂、気持ちよかったな！[p]
#
部屋に帰ってきた[r]

[return]
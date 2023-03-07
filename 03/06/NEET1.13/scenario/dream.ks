;夢精

*start

[cm]
[clearfix]
[menuwindows]

@bg storage ="white.png" time="1000"
;-ランダム判定
;ランダム数値の取り出し
*random
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]

;ランダム数字が前回と同じか調べる
[if exp="tf.rand == f.d_before"]
;同じ数字ならやり直し
[jump target="*random"]
[endif]

;-夢判別
;--莉子
[if exp="tf.rand == 0"]
;---莉子夢①
 [if exp="f.dream_riko == undefined || f.dream_riko == 1"]
  [bgmovie storage="mov_11_1_1.webm" time="2000"]
#莉子
[playse storage="riko/rk11_001.ogg" buf="0"]
おじさん、莉子のおっぱい見て！　おじさんにいっぱい見てほしいの[p]
#
　[stop_bgmovie time="2000"]
  [eval exp="f.dream_riko = 2"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
 ;---莉子夢②
 [if exp="f.dream_riko == 2"]
  [bgmovie storage="mov_11_4_1.webm" time="2000"]
#莉子
[playse storage="riko/rk11_002.ogg" buf="0"]
おじさん、莉子のおまんこ、もうこんなになってるの[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_riko = 3"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---莉子夢③
 [if exp="f.dream_riko == 3"]
  [bgmovie storage="mov_11_1_2.webm" time="2000"]
#莉子
[playse storage="riko/rk11_003.ogg" buf="0"]
おじさん、挿れて…莉子のおまんこに挿れて…[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_riko = 1"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
[endif]

;--莉菜
[if exp="tf.rand == 1"]
;---莉菜夢①
 [if exp="f.dream_rina == undefined || f.dream_rina == 1"]
  [bgmovie storage="mov_12_1_1.webm" time="2000"]
#莉菜
[playse storage="rina/rn12_001.ogg" buf="0"]
お兄さん、莉菜の胸……見てください……[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_rina = 2"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---莉菜夢②
 [if exp="f.dream_rina == 2"]
  [bgmovie storage="mov_12_1_3.webm" time="2000"]
#莉菜
[playse storage="rina/rn12_002.ogg" buf="0"]
お兄さん、莉菜……もう、こんなに……お兄さんのが欲しくて[r]
こんなに……ぐちょぐちょ[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_rina = 3"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---莉菜夢③
 [if exp="f.dream_rina == 3"]
  [bgmovie storage="mov_12_1_2.webm" time="2000"]
#莉菜
[playse storage="rina/rn12_003.ogg" buf="0"]
挿れてください…お兄さんの…莉菜の中に…[r]
お兄さんのが欲しくて…莉菜もう…どうにかなっちゃう…[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_rina = 1"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
[endif] 

;--静江
[if exp="tf.rand == 2"]
;---静江夢①
 [if exp="f.dream_sizue == undefined || f.dream_sizue == 1"]
  [bgmovie storage="mov_13_1_1.webm" time="2000"]
#静江
[playse storage="sizue/sz13_001.ogg" buf="0"]
もう、お兄ちゃん……おっぱいが好きなの？[r]
いいのよ、おばさんのおっぱい、いっぱい好きにして……[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_sizue = 2"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---静江②
 [if exp="f.dream_sizue == 2"]
  [bgmovie storage="mov_13_1_3.webm" time="2000"]
#静江
[playse storage="sizue/sz13_002.ogg" buf="0"]
お兄ちゃん、ほら見て[r]
おばさんのおまんこ……もうこんなになってるのよ……[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_sizue = 3"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
;---静江③
 [if exp="f.dream_sizue == 3"]
  [bgmovie storage="mov_13_1_2.webm" time="2000"]
#静江
[playse storage="sizue/sz13_003.ogg" buf="0"]
お兄ちゃん、挿れて…お兄ちゃんのおちんちんを…おばさんのおまんこに挿れて[r]
そして…おばさんの膣内にお兄ちゃんの精液をたっぷり注ぎ込んで[p]
#
  [stop_bgmovie time="2000"]
  [eval exp="f.dream_sizue = 1"]
  [eval exp="f.d_before = tf.rand"]
  [return]
 [endif]
[endif]

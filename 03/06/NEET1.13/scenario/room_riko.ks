;***********************************************************************************************************************
;***********************************************************************************************************************
;-莉子部屋イベント
*riko_room
[bg storage="black.png" time="1000"]
[bgmovie storage="mov_65_1.webm" time="1000"]
#
莉子ちゃんの部屋にやってきた[p]

;■莉子ちゃん会話
;ランダム数値の取り出し
[iscript]
tf.rand = Math.floor( Math.random() * 6)
[endscript]

;■会話0
[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk65_001.ogg" buf="0"]
おじさん、ゲームでもする？[p]
[endif]
;■会話1
[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk65_002.ogg" buf="0"]
おじさん、莉子にいやらしいことしようとしてるでしょ！[p]
[endif]
;■会話2
[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk65_003.ogg" buf="0"]
莉子に逢いにきたの？[p]
[endif]
;■会話3
[if exp="tf.rand == 3"]
#莉子
[playse storage="riko/rk65_004.ogg" buf="0"]
おじさん莉子の事がそんなに好きなの？[r]
もう、しょうがないから相手してあげる[p]
[endif]
;■会話4
[if exp="tf.rand == 4"]
#莉子
[playse storage="riko/rk65_005.ogg" buf="0"]
おじさん、宿題やってよ！　でも、おじさんわかるかな？[p]
[endif]
;■会話5
[if exp="tf.rand == 5"]
#莉子
[playse storage="riko/rk65_006.ogg" buf="0"]
莉子漫画読んでるんだけど！[r]
おじさんがどうしてもって言うなら相手してあげてもいいけど[p]
[endif]

;■主人公選択肢
#
さて、どうしようかな[p]
[glink  color="pink" size="20"  x="800"  width="300"  y="200"  text="莉子ちゃんとエッチ"  target="*riko_room_h"]
[if exp="f.riko_h >= 50 && f.uniform_h == undefined"]
[glink  color="pink" size="20"  x="800"  width="300"  y="300"  text="莉子ちゃん制服着てエッチ"  target="*uniform_h"]
[endif]
[s]

;***********************************************************************************************************************
;--莉子ちゃん平日エッチ
*riko_room_h
[freeimage layer="2" time="0"]
[stop_bgmovie time="2000"]
;エッチ度判別
;***********************************************************************************************************************
;エッチ度　0-25
[if exp="f.riko_h <= 25"]
[bgmovie storage="mov_68_1.webm" time="2000"]
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk68_001.ogg" buf="0"]
痛くしないでね[p]
[endif]
[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk68_002.ogg" buf="0"]
おじさん優しくだよ！[p]
[endif]
[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk68_003.ogg" buf="0"]
おじさん……いいよ[p]
[endif]
[endif]
;***********************************************************************************************************************
;***********************************************************************************************************************
;エッチ度　26-50
[if exp="f.riko_h >= 26 && f.riko_h <= 50"]
[bgmovie storage="mov_68_2.webm" time="2000"]
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk68_005.ogg" buf="0"]
おじさんがどうしてもって言うならいいよ[p]
[endif]
[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk68_006.ogg" buf="0"]
おじさんエッチしたいの？[p]
[endif]
[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk68_004.ogg" buf="0"]
莉子…………エッチ好きかも[p]
[endif]
[endif]
;***********************************************************************************************************************
;***********************************************************************************************************************
;エッチ度　51-75
[if exp="f.riko_h >= 51 && f.riko_h <= 75"]
[bgmovie storage="mov_68_4.webm" time="2000"]
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk68_007.ogg" buf="0"]
おじさん、ここに挿れたい？[p]
[endif]
[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk68_008.ogg" buf="0"]
莉子…………はやくエッチしたい[p]
[endif]
[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk68_010.ogg" buf="0"]
おじさん挿れて……[p]
[endif]
[endif]
;***********************************************************************************************************************
;***********************************************************************************************************************
;エッチ度　76-100
[if exp="f.riko_h >= 76 ]
[bgmovie storage="mov_68_5.webm" time="2000"]
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk68_012.ogg" buf="0"]
莉子、もう我慢できないの[p]
[endif]
[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk68_013.ogg" buf="0"]
おじさん早く挿れてよ！[p]
[endif]
[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk68_011.ogg" buf="0"]
おじさん、はやく……[p]
[endif]
[endif]
#
;***********************************************************************************************************************
;--不能イベント
;■精力判別　20以下だと不能
[if exp="f.energy < 20"]
……[l]……[l]……[p]
あっ……あれ？……[p]
おかしいな……[p]
た……立たない……[p]
…………[p]
[bg storage="black.png" time="0"]
[stop_bgmovie time="2000"]
[bgmovie storage="mov_65_2.webm"]
#莉子
[playse storage="riko/rk68_062.ogg" buf="0"]
おじさん、そんな時もあるよ……[p]
#
[stop_bgmovie]
[bg storage="room_night.png" time="1000"]
[uiwindows]
部屋に戻ってきた[p]

[jump storage="main.ks" target="*night_choice"]
[endif]
;***********************************************************************************************************************
;--体位選択
;■ 0以上  正常位１　側位１
;■10以上　正常位2
;■20以上　後背位１
;■30以上　測位２
;■40以上　正常位３　
;■50以上　測位３
;■55以上　後背位２
;■60以上　騎乗位1
;■65以上　後背位3
;■70以上　騎乗位2
;■75以上　座位1
;■80以上　座位2
;■85以上  騎乗位3 正常位 4
;■90以上  座位3 側位4
;■95以上  後背位4

;■一時変数 tf.posture [体位動画、事後動画、遅いレート、普通レート、早いレート,射精動画]
[eval exp="tf.riko_posture = []"]
;■0　正常位１
[eval exp="tf.riko_posture[0] = ['mov_68_11.webm','mov_68_31.webm',1,1.3,1.6,'mov_68_40.webm']"]
;■1　正常位２
[eval exp="tf.riko_posture[1] = ['mov_68_12.webm','mov_68_31.webm',0.65,0.85,1,'mov_68_40.webm']"]
;■2　正常位3
[eval exp="tf.riko_posture[2] = ['mov_68_14.webm','mov_68_31.webm',0.65,0.85,1,'mov_68_40.webm']"]
;■3　側位１
[eval exp="tf.riko_posture[3] = ['mov_68_15.webm','mov_68_33.webm',1,1.3,1.6,'mov_68_41.webm']"]
;■4　側位2
[eval exp="tf.riko_posture[4] = ['mov_68_16.webm','mov_68_33.webm',0.65,0.85,1,'mov_68_41.webm']"]
;■5　側位3
[eval exp="tf.riko_posture[5] = ['mov_68_17.webm','mov_68_33.webm',0.65,0.85,1,'mov_68_41.webm']"]
;■6　後背位1
[eval exp="tf.riko_posture[6] = ['mov_68_18.webm','mov_68_32.webm',0.65,0.85,1,'mov_68_42.webm']"]
;■7　後背位2
[eval exp="tf.riko_posture[7] = ['mov_68_19.webm','mov_68_32.webm',0.65,0.85,1,'mov_68_42.webm']"]
;■8　騎乗位1
[eval exp="tf.riko_posture[8] = ['mov_68_20.webm','mov_68_34.webm',0.75,1,1.2,'mov_68_43.webm']"]
;■9　座位1
[eval exp="tf.riko_posture[9] = ['mov_68_21.webm','mov_68_35.webm',0.75,1,1.2,'mov_68_44.webm']"]
;■10　後背位3
[eval exp="tf.riko_posture[10] = ['mov_68_23.webm','mov_68_32.webm',0.75,1,1.2,'mov_68_42.webm']"]
;■11　騎乗位2
[eval exp="tf.riko_posture[11] = ['mov_68_24.webm','mov_68_34.webm',0.65,0.75,1,'mov_68_43.webm']"]
;■12　騎乗位3
[eval exp="tf.riko_posture[12] = ['mov_68_26.webm','mov_68_34.webm',0.75,1,1.2,'mov_68_43.webm']"]
;■13　座位2
[eval exp="tf.riko_posture[13] = ['mov_68_25.webm','mov_68_35.webm',0.75,1,1.2,'mov_68_44.webm']"]
;■14　座位3
[eval exp="tf.riko_posture[14] = ['mov_68_50.webm','mov_68_35.webm',0.75,1,1.2,'mov_68_44.webm']"]
;■15　正常位4
[eval exp="tf.riko_posture[15] = ['mov_68_61.webm','mov_68_31.webm',0.65,0.85,1,'mov_68_40.webm']"]
;■16　側位4
[eval exp="tf.riko_posture[16] = ['mov_68_62.webm','mov_68_33.webm',0.65,0.85,1,'mov_68_41.webm']"]
;■17　後背位4
[eval exp="tf.riko_posture[17] = ['mov_68_63.webm','mov_68_64.webm',0.65,0.85,1,'mov_68_63_3.webm']"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false

[glink  color="pink" size="15"  x="20"  width="150"  y="50"  text="正常位１"  target="*riko_room_movie" exp="tf.posture = 0"]

[if exp="f.riko_h >= 10"]
 [glink  color="pink" size="15"  x="60"  width="150"  y="85"  text="正常位２"  target="*riko_room_movie" exp="tf.posture = 1"]
[endif]
[if exp="f.riko_h >= 40"]
 [glink  color="pink" size="15"  x="100"  width="150"  y="120"  text="正常位３"  target="*riko_room_movie" exp="tf.posture = 2]"]
[endif]
[if exp="f.riko_h >= 85"]
 [glink  color="pink" size="15"  x="250"  width="150"  y="50"  text="正常位4"  target="*riko_room_movie" exp="tf.posture = 15]"]
[endif]
[glink  color="pink" size="15"  x="20"  width="150"  y="160"  text="側位１"  target="*riko_room_movie" exp="tf.posture = 3"]
[if exp="f.riko_h >= 30"]
 [glink  color="pink" size="15"  x="60"  width="150"  y="195"  text="側位２"  target="*riko_room_movie" exp="tf.posture = 4"]
[endif]
[if exp="f.riko_h >= 50"]
 [glink  color="pink" size="15"  x="100"  width="150"  y="230"  text="側位３"  target="*riko_room_movie" exp="tf.posture = 5"]
[endif]
[if exp="f.riko_h >= 90"]
 [glink  color="pink" size="15"  x="250"  width="150"  y="160"  text="側位4"  target="*riko_room_movie" exp="tf.posture = 16"]
[endif]
[if exp="f.riko_h >= 20"]
 [glink  color="pink" size="15"  x="20"  width="150"  y="270"  text="後背位１"  target="*riko_room_movie" exp="tf.posture = 6"]
[endif]
[if exp="f.riko_h >= 55"]
 [glink  color="pink" size="15"  x="60"  width="150"  y="305"  text="後背位２"  target="*riko_room_movie" exp="tf.posture = 7"]
[endif]
[if exp="f.riko_h >= 65"]
 [glink  color="pink" size="15"  x="100"  width="150"  y="340"  text="後背位3"  target="*riko_room_movie" exp="tf.posture = 10"]
[endif]
[if exp="f.riko_h >= 90"]
 [glink  color="pink" size="15"  x="250"  width="150"  y="270"  text="後背位4"  target="*riko_room_movie" exp="tf.posture = 17"]
[endif]
[if exp="f.riko_h >= 60"]
 [glink  color="pink" size="15"  x="20"  width="150"  y="380"  text="騎乗位1"  target="*riko_room_movie" exp="tf.posture = 8"]
[endif]
[if exp="f.riko_h >= 70"]
 [glink  color="pink" size="15"  x="60"  width="150"  y="415"  text="騎乗位2"  target="*riko_room_movie" exp="tf.posture = 11"]
[endif]
[if exp="f.riko_h >= 85"]
 [glink  color="pink" size="15"  x="100"  width="150"  y="450"  text="騎乗位3"  target="*riko_room_movie" exp="tf.posture = 12"]
[endif]
[if exp="f.riko_h >= 75"]
 [glink  color="pink" size="15"  x="20"  width="150"  y="490"  text="座位1"  target="*riko_room_movie" exp="tf.posture = 9"]
[endif]
[if exp="f.riko_h >= 80"]
 [glink  color="pink" size="15"  x="60"  width="150"  y="525"  text="座位2"  target="*riko_room_movie" exp="tf.posture = 13"]
[endif]
[if exp="f.riko_h >= 90"]
 [glink  color="pink" size="15"  x="100"  width="150"  y="560"  text="座位3"  target="*riko_room_movie" exp="tf.posture = 14"]
[endif]
[s]

*riko_room_movie
#
;■一時変数宣言
[eval exp="tf.kaikan = 0"]
[eval exp="tf.sp = tf.riko_posture[tf.posture][2]"]
[eval exp="tf.rate = 1"]
[eval exp="tf.syasei = 0"]
[eval exp="tf.syasei_up = -5"]
;1.10追加-------------
[eval exp="tf.ikisou = 0"]
;----------------------

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie time="0"]
[bg storage="black.png" time="0"]
[bgmovie storage="&tf.riko_posture[tf.posture][0]" loop="true"]
[iscript]
tf.sp = tf.riko_posture[tf.posture][2]
var yuko=document.getElementById("bgmovie");
yuko.playbackRate = tf.sp;
[endscript]


;***********************************************************************************************************************
;--スピード選択ボタン
[html]
<body>
<div id="button_hayai">
  <img src="./data/image/button/hayai.png" style="visibility:visible; position: absolute; left: 10px; top: 680px"/> 
</div>
<div id="button_futuu">
  <img src="./data/image/button/futuu.png" style="visibility:visible; position: absolute; left: 125px; top: 680px"/>
</div>
<div id="button_osoi">
  <img src="./data/image/button/osoi.png" style="visibility:visible;position: absolute; left: 240px; top: 680px"/>
</div>
<div id="button_syasei">
  <img src="./data/image/button/syasei.png" style="visibility:visible; position: absolute; left: 355px; top: 680px"/>
</div>
</body>
[endhtml]

[iscript]
var pic=document.getElementById("button_osoi");
pic.style.webkitFilter = "grayscale(100%)";

$("#button_hayai").click(function () {
tf.rate = 3
tf.sp = tf.riko_posture[tf.posture][4]
tf.syasei_up = 30
var yuko=document.getElementById("bgmovie");
yuko.playbackRate = tf.sp;
var pic=document.getElementById("button_hayai");
pic.style.webkitFilter = "grayscale(100%)";
var pic=document.getElementById("button_futuu");
pic.style.webkitFilter = "grayscale(0%)";
var pic=document.getElementById("button_osoi");
pic.style.webkitFilter = "grayscale(0%)";
});



$("#button_futuu").click(function () {
tf.rate = 2
tf.sp = tf.riko_posture[tf.posture][3]
tf.syasei_up = 15
var yuko=document.getElementById("bgmovie");
yuko.playbackRate = tf.sp;
var pic=document.getElementById("button_hayai");
pic.style.webkitFilter = "grayscale(0%)";
var pic=document.getElementById("button_futuu");
pic.style.webkitFilter = "grayscale(100%)";
var pic=document.getElementById("button_osoi");
pic.style.webkitFilter = "grayscale(0%)";
});

$("#button_osoi").click(function () {
tf.rate = 1
tf.sp = tf.riko_posture[tf.posture][2]
tf.syasei_up = -15
var yuko=document.getElementById("bgmovie");
yuko.playbackRate = tf.sp;
var pic=document.getElementById("button_hayai");
pic.style.webkitFilter = "grayscale(0%)";
var pic=document.getElementById("button_futuu");
pic.style.webkitFilter = "grayscale(0%)";
var pic=document.getElementById("button_osoi");
pic.style.webkitFilter = "grayscale(100%)";
});

$("#button_syasei").click(function () {
var pic=document.getElementById("button_syasei");
pic.style.webkitFilter = "saturate(500%)";
tf.syasei = 1000
});

[endscript]

*play

;射精ボタン彩度変更
[if exp="tf.syasei < f.patience * 0.2 "]
[iscript]
var pic=document.getElementById("button_syasei");
pic.style.webkitFilter = "saturate(100%)";
[endscript]
[endif]
[if exp="tf.syasei >= f.patience * 0.2 && tf.syasei < f.patience * 0.4"]
[iscript]
var pic=document.getElementById("button_syasei");
pic.style.webkitFilter = "saturate(200%)";
[endscript]
[endif]
[if exp="tf.syasei >= f.patience * 0.4 && tf.syasei < f.patience * 0.6"]
[iscript]
var pic=document.getElementById("button_syasei");
pic.style.webkitFilter = "saturate(300%)";
[endscript]
[endif]
[if exp="tf.syasei >= f.patience * 0.6 && tf.syasei < f.patience * 0.8"]
[iscript]
var pic=document.getElementById("button_syasei");
pic.style.webkitFilter = "saturate(400%)";
[endscript]
[endif]
[if exp="tf.syasei >= f.patience * 0.8 && tf.syasei < f.patience * 0.9"]
[iscript]
var pic=document.getElementById("button_syasei");
pic.style.webkitFilter = "saturate(500%)";
[endscript]
[endif]
[if exp="tf.syasei >= f.patience * 0.9 "]
[iscript]
var pic=document.getElementById("button_syasei");
pic.style.webkitFilter = "saturate(600%)";
[endscript]
[endif]

;***********************************************************************************************************************
;射精までのタイミング
*loop
;[menuwindows]
;[wait time="2000"]
[eval exp="tf.syasei = tf.syasei + tf.syasei_up"]
[if exp="tf.syasei < 0"]
[eval exp="tf.syasei = 0"]
[endif]
[eval exp="tf.syasei_up = tf.syasei_up + 1"]
;我慢値[emb exp="tf.syasei"] 
;快感度[emb exp="tf.kaikan"] 

;***********************************************************************************************************************
;いく判別 快感度400でいく
[if exp="f.riko_h >= 100 && tf.kaikan >= 400 && tf.ikisou == 1"]
 [cm]
 [clearfix]
 ;メッセージボックスは非表示
 @layopt layer="message" visible=false
 [stop_bgmovie]
 [stopse buf="0"]
 [stopse buf="3"]
 [bgloop mov = "mov_68_70.webm" ti = 0]
 [movie storage="mov_68_71.webm" skip="true"]
 [bg storage="black.png" time="0"]
 [playse storage="riko/rk36_021.ogg" loop="true"]
 [bgloop mov = "mov_68_72.webm" ti = 0]
 ;絶頂フラグオン
 [eval exp="f.riko_orgasm = true"]
 [jump target="*riko_after"]
[endif]
;***********************************************************************************************************************
;射精
[if exp="tf.syasei >= f.patience"]
[cm]
[clearfix]
[layopt layer="message0" visible="true"]
うっ……あっ、いっ……いく！
[wait time="2000"]
[jump target="*syasei"]
[endif]


;***********************************************************************************************************************
;莉子快感度計算
;***********************************************************************************************************************
;エッチ度0-10までの反応
[if exp="f.riko_h <= 10"]
;■速い
 [if exp="tf.rate == 3"]
  [eval exp="tf.kaikan = tf.kaikan - 10"]
  [eval exp="tf.aegi = 13"]
 [endif]
;■普通
 [if exp="tf.rate == 2"]
  [eval exp="tf.kaikan = tf.kaikan - 5"]
  [eval exp="tf.aegi = 12"]
 [endif]
;■遅い
 [if exp="tf.rate == 1"]
  [eval exp="tf.kaikan = tf.kaikan + 2"]
  [eval exp="tf.aegi = 11"]
 [endif]
[endif]
;***********************************************************************************************************************
;エッチ度11-30までの反応
[if exp="f.riko_h >= 11 && f.riko_h <=30"]
;■速い
 [if exp="tf.rate == 3"]
  [eval exp="tf.kaikan = tf.kaikan + 3"]
  [eval exp="tf.aegi = 23"]
 [endif]
;■普通
 [if exp="tf.rate == 2"]
  [eval exp="tf.kaikan = tf.kaikan + 5"]
  [eval exp="tf.aegi = 22"]
 [endif]
;■遅い
 [if exp="tf.rate == 1"]
  [eval exp="tf.kaikan = tf.kaikan + 1"]
  [eval exp="tf.aegi = 21"]
 [endif]
[endif]
;***********************************************************************************************************************
;エッチ度31-50までの反応
[if exp="f.riko_h >= 31 && f.riko_h <= 50"]
;■速い
 [if exp="tf.rate == 3"]
  [eval exp="tf.kaikan = tf.kaikan + 10"]
  [eval exp="tf.aegi = 33"]
 [endif]
;■普通
 [if exp="tf.rate == 2"]
  [eval exp="tf.kaikan = tf.kaikan + 6"]
  [eval exp="tf.aegi = 32"]
 [endif]
;■遅い
 [if exp="tf.rate == 1"]
  [eval exp="tf.kaikan = tf.kaikan + 3"]
  [eval exp="tf.aegi = 31"]
 [endif]
[endif]
;***********************************************************************************************************************
;エッチ度51-80までの反応
[if exp="f.riko_h >= 51 && f.riko_h <= 80"]
;■速い
 [if exp="tf.rate == 3"]
  [eval exp="tf.kaikan = tf.kaikan + 20"]
  [eval exp="tf.aegi = 43"]
 [endif]
;■普通
 [if exp="tf.rate == 2"]
  [eval exp="tf.kaikan = tf.kaikan + 10"]
  [eval exp="tf.aegi = 42"]
 [endif]
;■遅い
 [if exp="tf.rate == 1"]
  [eval exp="tf.kaikan = tf.kaikan + 3"]
  [eval exp="tf.aegi = 41"]
 [endif]
[endif]
;***********************************************************************************************************************
;エッチ度81-100までの反応
[if exp="f.riko_h >= 81"]
;■速い
 [if exp="tf.rate == 3"]
  [eval exp="tf.kaikan = tf.kaikan + 30"]
  [eval exp="tf.aegi = 53"]
 [endif]
;■普通
 [if exp="tf.rate == 2"]
  [eval exp="tf.kaikan = tf.kaikan + 15"]
  [eval exp="tf.aegi = 52"]
 [endif]
;■遅い
 [if exp="tf.rate == 1"]
  [eval exp="tf.kaikan = tf.kaikan + 3"]
  [eval exp="tf.aegi = 51"]
 [endif]
[endif]
;***********************************************************************************************************************
;いきそう判定 快感度300でいきそう
[if exp="f.riko_h >= 100 && tf.kaikan >= 300 && tf.ikisou == 0"]
 [iscript]
 tf.rand = Math.floor( Math.random() * 3)
 [endscript]
 [if exp="tf.rand == 0"]
 [playse storage="riko/rk68_063.ogg" buf="0" loop="true"]
 [endif]
 [if exp="tf.rand == 1"]
 [playse storage="riko/rk68_064.ogg" buf="0" loop="true"]
 [endif]
 [if exp="tf.rand == 2"]
 [playse storage="riko/rk68_065.ogg" buf="0" loop="true"]
 [endif]
 [eval exp="tf.ikisou = 1"]
[endif]

[if exp="tf.ikisou == 0"]
;***********************************************************************************************************************
;喘ぎ判別
;前回と同じか判別
[if exp="tf.aegi != tf.aegi_old"]

;***********************************************************************************************************************
;エッチ度0-10
;■遅い
 [if exp="tf.aegi == 11"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="riko/rk68_014.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■普通
 [if exp="tf.aegi == 12"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="riko/rk68_015.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu02.ogg" buf="3" loop="true"]
 [endif]
;■速い
 [if exp="tf.aegi == 13"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="riko/rk68_016.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu03.ogg" buf="3" loop="true"]
 [endif]
;***********************************************************************************************************************
;エッチ度11-30
;■遅い
 [if exp="tf.aegi == 21"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="riko/rk68_014_3.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■普通
 [if exp="tf.aegi == 22"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="riko/rk68_015_3.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu02.ogg" buf="3" loop="true"]
 [endif]
;■速い
 [if exp="tf.aegi == 23"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="riko/rk68_016_3.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu03.ogg" buf="3" loop="true"]
 [endif] 
;***********************************************************************************************************************
;エッチ度31-50
;■遅い
 [if exp="tf.aegi == 31"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="riko/rk68_017.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■普通
 [if exp="tf.aegi == 32"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="riko/rk68_020.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu02.ogg" buf="3" loop="true"]
 [endif]
;■速い
 [if exp="tf.aegi == 33"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="riko/rk68_023.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu03.ogg" buf="3" loop="true"]
 [endif] 
;***********************************************************************************************************************
;エッチ度51-80
;■遅い
 [if exp="tf.aegi == 41"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="riko/rk68_018.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■普通
 [if exp="tf.aegi == 42"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="riko/rk68_021.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu02.ogg" buf="3" loop="true"]
 [endif]
;■速い
 [if exp="tf.aegi == 43"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="riko/rk68_024.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu03.ogg" buf="3" loop="true"]
 [endif] 
;***********************************************************************************************************************
;エッチ度81-100
;■遅い
 [if exp="tf.aegi == 51"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="riko/rk68_026.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■普通
 [if exp="tf.aegi == 52"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="riko/rk68_026_1.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu02.ogg" buf="3" loop="true"]
 [endif]
;■速い
 [if exp="tf.aegi == 53"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="riko/rk68_029.ogg" buf="0" loop="true"]
  [playse storage="se/kutyu03.ogg" buf="3" loop="true"]
 [endif]  
[endif]
[endif]

;***********************************************************************************************************************
;いきそう効果音処理
[if exp="tf.ikisou == 1"]

;■遅い
 [if exp="tf.aegi == 51"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [eval exp="tf.kaikan = tf.kaikan - 30"]
  [playse storage="se/kutyu01.ogg" buf="3" loop="true"]
 [endif]
;■普通
 [if exp="tf.aegi == 52"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [eval exp="tf.kaikan = tf.kaikan - 10"]
  [playse storage="se/kutyu02.ogg" buf="3" loop="true"]
 [endif]
;■速い
 [if exp="tf.aegi == 53"]
  [eval exp="tf.aegi_old = tf.aegi"]
  [playse storage="se/kutyu03.ogg" buf="3" loop="true"]
 [endif] 
;快感300下回ったら喘ぎを戻す
 [if exp="tf.kaikan < 300"]
  [eval exp="tf.ikisou = 0"]
  [playse storage="riko/rk68_026.ogg" buf="0" loop="true"]
 [endif]
 [endif] 

;***********************************************************************************************************************
[wait time="2000"]
[jump target="*play"]
;***********************************************************************************************************************
;--射精
*syasei
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="&tf.riko_posture[tf.posture][5]" skip="true"]
[bg storage="black.png" time="0"]
[playse storage="riko/rk36_021.ogg" loop="true"]
[bgloop mov = &tf.riko_posture[tf.posture][1] ti = 0]
;***********************************************************************************************************************
;--莉子エッチ後
*riko_after
[cm]
#
[menuwindows]
[stopse buf="0"]
[bgmovie storage="mov_65_2.webm"]
;***********************************************************************************************************************
;快感度判定
;■快感度　0以下
[if exp="tf.kaikan < 0"]
[iscript]
tf.rand = Math.floor( Math.random() * 2)
[endscript]
[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk68_048.ogg" buf="0"]
おじさん、痛かった[p]
#
ごめんね莉子ちゃん[r]
最初の内は遅くしたほうがいいかな[p]
[endif]
[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk68_049.ogg" buf="0"]
おじさん、これ気持ちよくなるの？[p]
#
もっと優しくするからね莉子ちゃん[r]
最初の内は遅くしたほうがいいかな[p]
[endif]
[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk68_050.ogg" buf="0"]
もっと優しくしてよ！[p]
[endif]
;●莉子エッチ度増加
[eval exp="f.riko_h = f.riko_h + 4 "]
[jump  target="*riko_room_end"]
[endif]
;***********************************************************************************************************************
;■エッチ度　40以下反応
[if exp="f.riko_h < 40"]
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk68_051.ogg" buf="0"]
なんか変な感じだった[p]
[endif]
[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk68_052.ogg" buf="0"]
ちょっと気持ちよかったかも[p]
[endif]
[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk68_053.ogg" buf="0"]
これ……好きかも[p]
[endif]
;●莉子エッチ度増加
[eval exp="f.riko_h = f.riko_h + 5 "]
[jump  target="*riko_room_end"]
[endif]
;***********************************************************************************************************************
;■エッチ度　60以上 快感度200以上反応
[if exp="f.riko_h >= 60 && tf.kaikan >= 200"]
[iscript]
tf.rand = Math.floor( Math.random() * 2)
[endscript]
[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk68_056.ogg" buf="0"]
莉子……もうだめ……[p]
[endif]
[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk68_058.ogg" buf="0"]
おじさん、莉子の事好き？[p]
[endif]
;●莉子エッチ度増加
[eval exp="f.riko_h = f.riko_h + 7 "]
[jump  target="*riko_room_end"]
[endif]
;***********************************************************************************************************************
;■エッチ度　40以上 快感度100以上反応
[if exp="f.riko_h >= 40 && tf.kaikan >= 100"]
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk68_054.ogg" buf="0"]
エッチって気持ちいいんだね[p]
[endif]
[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk68_055.ogg" buf="0"]
莉子すごい気持ちよかった[p]
[endif]
[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk68_057.ogg" buf="0"]
おじさん……気持ちよかった……[p]
[endif]
;●莉子エッチ度増加
[eval exp="f.riko_h = f.riko_h + 6 "]
[jump  target="*riko_room_end"]
[endif]
;***********************************************************************************************************************
;■エッチ度　40以上 快感度100以下反応
[if exp="f.riko_h >= 40 && tf.kaikan < 100"]
[iscript]
tf.rand = Math.floor( Math.random() * 3)
[endscript]
[if exp="tf.rand == 0"]
#莉子
[playse storage="riko/rk68_059.ogg" buf="0"]
おじさんだけ気持ちよくなってる[p]
[endif]
[if exp="tf.rand == 1"]
#莉子
[playse storage="riko/rk68_060.ogg" buf="0"]
莉子……もっとしたかった[p]
[endif]
[if exp="tf.rand == 2"]
#莉子
[playse storage="riko/rk68_061.ogg" buf="0"]
もうおわりなの？[p]
[endif]
;●莉子エッチ度増加
[eval exp="f.riko_h = f.riko_h + 4 "]
[jump  target="*riko_room_end"]
[endif]


;***********************************************************************************************************************
;愛情度増加
*riko_room_end
[riko_i]
;エッチ度上限チェック
[if exp="f.riko_h > 100"]
 [eval exp="f.riko_h = 100"]
[endif]
;精力体力減衰
[eval exp="f.energy = f.energy -30"]
[eval exp="f.hp = f.hp -20"]
[eval exp="f.patience = f.patience + 10"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[stop_bgmovie]
[stopse buf="0"]
[stopse buf="3"]
#
[bg storage="room_night.png" time="1000"]
[uiwindows]
部屋に戻ってきた[p]

[jump storage="main.ks" target="*night_choice"]

;***********************************************************************************************************************
;--制服エッチ
*uniform_h
#莉子
[playse storage="riko/rk26_001.ogg" buf="0"]
おじさん莉子とエッチな事したくて来たんでしょ[r]
このロリコン[p]
#
莉子ちゃん、我慢できなくて……[p]
#莉子
[playse storage="riko/rk26_002.ogg" buf="0"]
ふ～ん……おじさん、莉子の事好き？[p]
#
莉子ちゃん、大好きだよ[r]
莉子ちゃんの事ばかり考えてる[p]
#莉子
[playse storage="riko/rk26_003_1.ogg" buf="0"]
どうしよっかな～[r]
……また気持ちよくしてくれたら……いいよ[p]
#
莉子ちゃん、お願いがあるんだ[r]
またあの制服を着てくれないかな[p]
#莉子
[playse storage="riko/rk26_004.ogg" buf="0"]
え～！おじさんの、変態！[r]
……向こうをむいてて[p]
[stop_bgmovie time="500"]
[freeimage layer="2" time="0"]
[bgmovie storage="mov_84_10.webm" time="1000"]
#莉子
[playse storage="riko/rk26_005.ogg" buf="0"]
おじさんの好きな制服だよ！[r]
莉子、可愛い？[p]
#
莉子ちゃん、可愛いよ[r]
莉子ちゃんの制服、可愛くてたまらない・・[p]	
莉子ちゃん……パンツも見せて[p]
[stop_bgmovie time="500"]
[bgmovie storage="mov_84_9.webm" time="1000"]
#莉子
[playse storage="riko/rk26_006.ogg" buf="0"]
おじさん……子供パンツ見て興奮してる……変なの[p]
#
莉子ちゃんが可愛いからしかたがないよ[p]
莉子ちゃん……もう……我慢できないよ……[r]
莉子ちゃんのオマンコに挿れたい[p]
#莉子
[playse storage="riko/rk26_010.ogg" buf="0"]
うん……痛くしないでね[p]
[stop_bgmovie time="1000"]

[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="riko/rk26_020.ogg" buf="0" loop ="true"]
[playse storage="se/kutyu01.ogg" buf="3" loop ="true"]
[bgloop mov="mov_84_7.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_84_8.webm" skip="true"]
[menuwindows]
[eval exp="f.riko_h = f.riko_h + 5 "]
[eval exp="f.uniform_h = 1"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
#
莉子ちゃんとの制服エッチ[r]
気持ちよかった！[p]
また今度着てもらおう[p]
[jump  target="*riko_room_end"]


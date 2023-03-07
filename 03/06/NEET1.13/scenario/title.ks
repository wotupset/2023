;***********************************************************************************************************************
;タイトル
[cm]
@clearstack
;@bg storage ="img_title.png" time=100
[bgmovie storage="title_riko01.webm" time="1000"]
[playbgm storage="tuinte_runosyouzyo.ogg"]
;***********************************************************************************************************************
;バージョン表記
[layopt layer=0 visible=true]
;バージョン表記　メインシナリオ、タイトル,回想とリプレイも同じバージョンに修正
[ptext layer="0" text="Ver　1.13.F" x="1100" y="20" size="20" shadow="0x000000" ]

@wait time = 200
;**********************************************************************************************************************
*start 
@layopt layer=message0 Visible=False
[button x=130 y=400 graphic="title_button/button_start_normal.png" target="gamestart"  clickse="se/se_maoudamashii_system46.ogg"]
[button x=380 y=400 graphic="title_button/button_load_normal.png"  role="load"  clickse="se/se_maoudamashii_system46.ogg"]
[button x=130 y=470 graphic="title_button/button_gallery_normal.png"  storage="movie_mode.ks" clickse="se/se_maoudamashii_system46.ogg"]
[button x=380 y=470 graphic="title_button/button_config_normal.png"  role="sleepgame" storage="config.ks" clickse="se/se_maoudamashii_system46.ogg"]
[button x=380 y=540 graphic="title_button/button_screen_normal.png"  role="fullscreen" clickse="se/se_maoudamashii_system46.ogg"]
[button x=130 y=540 graphic="title_button/button_replay_normal.png"   storage="replay.ks" clickse="se/se_maoudamashii_system46.ogg"]

[button x=130 y=610 graphic="title_button/button_link_normal.png" target="*pick"  clickse="se/se_maoudamashii_system46.ogg"]
[button x=380 y=610 graphic="title_button/button_end_normal.png" target="*end"  clickse="se/se_maoudamashii_system46.ogg"]


[s]

;***********************************************************************************************************************
*gamestart
[cm]
[clearfix]
[freeimage layer="0" page="fore"]
[layopt layer=0 visible=false]
[fadeoutbgm time="1000"]
[stop_bgmovie time="1000"]

;***********************************************************************************************************************
;メインシナリオファイルへジャンプする
@jump storage="main.ks"

*pick
[layopt layer="1" visible="true"]
[image storage="window_03.png" layer="1" x="750" y="250"  ]
[ptext layer="1" text="ブラウザを開きます" x="800" y="270" vertical="" size="20" shadow="0x000000"]
[glink  color="blue" size="20"  x="830"  width="60"  y=350  text="FANTIA"  target="*yes" exp="tf.pick = "0"]
[glink  color="blue" size="20"  x="830"  width="60"  y=400  text="Ci-en"  target="*yes" exp="tf.pick = "1"]
[glink  color="blue" size="20"  x="830"  width="60"  y=450  text="twitter"  target="*yes" exp="tf.pick = "2"]
[glink  color="blue" size="20"  x="830"  width="60"  y=500  text="ブログ"  target="*yes" exp="tf.pick = "3"]
[glink  color="blue" size="20"  x="830"  width="60"  y=560  text="閉じる"  target="*no"]
[s]
*yes

;ファンテアリンク
[if exp="tf.pick == 0"]
[web url="https://fantia.jp/fanclubs/11203"]
[endif]

;ci-en
[if exp="tf.pick == 1"]
[web url="https://ci-en.dlsite.com/creator/17073"]
[endif]

[if exp="tf.pick == 3"]
[web url="http://rainbowbambi.blog.2nt.com/"]
[endif]

[if exp="tf.pick == 2"]
[web url="https://twitter.com/NijiiroBambi"]
[endif]

[freeimage layer="1"]
[cm]
[jump target="*start" ]
*no
[freeimage layer="1"]
[jump target="*start" ]

*end
[close]
[cm]
[jump target="*start" ]
;=========================================
; 回想モード　画面作成
;=========================================

*start

;***********************************************************************************************************************
；初回リプレイ解放
[if exp="sf.replay_release ==  undefined"]
[call target="*replay_release"]
[endif]
;***********************************************************************************************************************
;バージョン表記　メインシナリオ、タイトル,回想とリプレイも同じバージョンに修正
[eval exp="f.version_dl = 'fanza'"]
;[eval exp="f.version_dl = 'dlsite'"]
;***********************************************************************************************************************
;-設定シナリオコール
[call storage="setting.ks"]
[stopse buf="0"]
[stopse buf="3"]
[cm]
[clearfix]
[freeimage layer="0" page="fore"]
[freeimage layer="1"]
[layopt layer=0 visible=false]
[fadeoutbgm time="1000"]
[stop_bgmovie time="1000"]

@layopt layer=message0 visible=false
@clearfix
[hidemenubutton]
[cm]


;[playbgm storage="tezukuri.ogg" loop="flase"]
;[bg storage="../../tyrano/images/system/bg_base.png" time=100]

[layopt layer=1 visible=true]

;[image name="label_replay" layer=1 left=650 top=0 storage="config/label_recollection.png" folder="image" ]

[if exp="tf.page == undefined"]
[iscript]
    
    tf.page = 0;
    
[endscript]
[endif]

[iscript]
    
    tf.selected_replay_obj = ""; //選択されたリプレイを一時的に保管
    
[endscript]


*replaypage
[cm]
[clearfix]

[if exp="tf.page >= 0 && tf.page <= 3"]
[bg storage="replay_riko.png" time=100]
[endif]
[if exp="tf.page >= 4 && tf.page <= 7"]
[bg storage="replay_rina.png" time=100]
[endif]
[if exp="tf.page >= 8 && tf.page <= 12"]
[bg storage="replay_sizue.png" time=100]
[endif]

;[button graphic="button/replay_title.png" target="*backtitle" x=1165 y=430 ]
[button graphic="button/replay_title.png" role="title" x=1165 y=430 ]


[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]




*replayview
[button graphic="button/label_riko.png" target="*replaypage" x="1165" y="90" exp = "tf.page = 0" clickse="se/page.ogg"]
[button graphic="button/label_rina.png" target="*replaypage" x="1165" y="190" exp = "tf.page = 4" clickse="se/page.ogg"]
[button graphic="button/label_sizue.png" target="*replaypage" x="1165" y="310" exp = "tf.page = 8" clickse="se/page.ogg"]

;[button graphic="button/replay_tugi.png" target="*nextpage" x="1080" y="620" ]
;[button graphic="button/replay_mae.png" target="*backpage" x="220" y="620" ]

@jump target=&tf.target_page

*page_0
[replay_image_button name="riko_osouji" graphic="rp/osouji.png" no_graphic="rp/noimage.png" x=350 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_omimai1" graphic="rp/omimai1.png" no_graphic="rp/noimage.png" x=350 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_omimai2" graphic="rp/omimai2.png" no_graphic="rp/noimage.png" x=350 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_omimai3" graphic="rp/omimai3.png" no_graphic="rp/noimage.png" x=350 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_omimai4" graphic="rp/omimai7.png" no_graphic="rp/noimage.png" x=350 y=530 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_omimai5" graphic="rp/omimai8.png" no_graphic="rp/noimage.png" x=800 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_omimai6" graphic="rp/omimai9.png" no_graphic="rp/noimage.png" x=800 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_omimai7" graphic="rp/omimai10.png" no_graphic="rp/noimage.png" x=800 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_omimai8" graphic="rp/omimai11.png" no_graphic="rp/noimage.png" x=800 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_musei1" graphic="rp/musei1.png" no_graphic="rp/noimage.png" x=800 y=530 width=300 height=75 folder="bgimage"]

[button graphic="button/replay_tugi.png" target="*nextpage" x="1080" y="620" ]
@jump target ="*common"
*page_1
[replay_image_button name="riko_musei2" graphic="rp/musei2.png" no_graphic="rp/noimage.png" x=350 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_musei3" graphic="rp/musei3.png" no_graphic="rp/noimage.png" x=350 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_rouka1" graphic="rp/rouka1.png" no_graphic="rp/noimage.png" x=350 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_rouka2" graphic="rp/rouka2.png" no_graphic="rp/noimage.png" x=350 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_ima1" graphic="rp/ima1.png" no_graphic="rp/noimage.png" x=350 y=530 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_aisu1" graphic="rp/aisu.png" no_graphic="rp/noimage.png" x=800 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_ofuro1" graphic="rp/ofuro1.png" no_graphic="rp/noimage.png" x=800 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_ofuro2" graphic="rp/ofuro2.png" no_graphic="rp/noimage.png" x=800 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_kokuhaku" graphic="rp/kokuhaku1.png" no_graphic="rp/noimage.png" x=800 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_kouen1" graphic="rp/kouen3.png" no_graphic="rp/noimage.png" x=800 y=530 width=300 height=75 folder="bgimage"]

[button graphic="button/replay_tugi.png" target="*nextpage" x="1080" y="620" ]
[button graphic="button/replay_mae.png" target="*backpage" x="220" y="620" ]
@jump target ="*common"

*page_2
[replay_image_button name="riko_karaoke1" graphic="rp/karaoke3.png" no_graphic="rp/noimage.png" x=350 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_karaoke2" graphic="rp/karaoke4.png" no_graphic="rp/noimage.png" x=350 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_manga1" graphic="rp/manga5.png" no_graphic="rp/noimage.png" x=350 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_manga2" graphic="rp/manga3.png" no_graphic="rp/noimage.png" x=350 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_yuuenti1" graphic="rp/yuuenti6.png" no_graphic="rp/noimage.png" x=350 y=530 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_yuuenti2" graphic="rp/yuuenti3.png" no_graphic="rp/noimage.png" x=800 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_matsuri1" graphic="rp/matsuri1.png" no_graphic="rp/noimage.png" x=800 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_matsuri2" graphic="rp/matsuri2.png" no_graphic="rp/noimage.png" x=800 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_sukumizu1" graphic="rp/sukumizu1.png" no_graphic="rp/noimage.png" x=800 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_vibe1" graphic="rp/vibe1.png" no_graphic="rp/noimage.png" x=800 y=530 width=300 height=75 folder="bgimage"]

[button graphic="button/replay_tugi.png" target="*nextpage" x="1080" y="620" ]
[button graphic="button/replay_mae.png" target="*backpage" x="220" y="620" ]
@jump target ="*common"

*page_3
[replay_image_button name="riko_eiga1" graphic="rp/eiga1.png" no_graphic="rp/noimage.png" x=350 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_seifuku1" graphic="rp/seifuku1.png" no_graphic="rp/noimage.png" x=350 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_iku1" graphic="rp/iku1.png" no_graphic="rp/noimage.png" x=350 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_onsen1" graphic="rp/onsen1.png" no_graphic="rp/noimage.png" x=350 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_onsen2" graphic="rp/onsen2.png" no_graphic="rp/noimage.png" x=350 y=530 width=300 height=75 folder="bgimage"]
[replay_image_button name="riko_onedari1" graphic="rp/onedari1.png" no_graphic="rp/noimage.png" x=800 y=130 width=300 height=75 folder="bgimage"]
;fanza特典
[if exp="f.version_dl == 'fanza'"]
 [replay_image_button name="riko_taisougi1" graphic="rp/taisougi1.png" no_graphic="rp/noimage.png" x=800 y=230 width=300 height=75 folder="bgimage"]
[endif]
;dlsite特典
[if exp="f.version_dl == 'dlsite'"]
 [replay_image_button name="riko_randoseru1" graphic="rp/randoseru.png" no_graphic="rp/noimage.png" x=800 y=230 width=300 height=75 folder="bgimage"]
[endif]
;[replay_image_button name="riko_taisougi1" graphic="rp/taisougi1.png" no_graphic="rp/noimage.png" x=800 y=430 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_randoseru1" graphic="rp/randoseru.png" no_graphic="rp/noimage.png" x=800 y=530 width=300 height=75 folder="bgimage"]

;[button graphic="button/replay_tugi.png" target="*nextpage" x="1080" y="620" ]
[button graphic="button/replay_mae.png" target="*backpage" x="220" y="620" ]
@jump target ="*common"

*page_4
[replay_image_button name="rina_osouji" graphic="rp/osouji.png" no_graphic="rp/noimage.png" x=350 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_omimai1" graphic="rp/omimai1.png" no_graphic="rp/noimage.png" x=350 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_omimai2" graphic="rp/omimai2.png" no_graphic="rp/noimage.png" x=350 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_omimai3" graphic="rp/omimai3.png" no_graphic="rp/noimage.png" x=350 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_omimai4" graphic="rp/omimai13.png" no_graphic="rp/noimage.png" x=350 y=530 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_omimai5" graphic="rp/omimai9.png" no_graphic="rp/noimage.png" x=800 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_omimai6" graphic="rp/omimai14.png" no_graphic="rp/noimage.png" x=800 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_omimai7" graphic="rp/omimai11.png" no_graphic="rp/noimage.png" x=800 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_musei1" graphic="rp/musei1.png" no_graphic="rp/noimage.png" x=800 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_musei2" graphic="rp/musei2.png" no_graphic="rp/noimage.png" x=800 y=530 width=300 height=75 folder="bgimage"]

[button graphic="button/replay_tugi.png" target="*nextpage" x="1080" y="620" ]
@jump target ="*common"

*page_5
[replay_image_button name="rina_musei3" graphic="rp/musei3.png" no_graphic="rp/noimage.png" x=350 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_rouka1" graphic="rp/rouka1.png" no_graphic="rp/noimage.png" x=350 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_rouka2" graphic="rp/rouka2.png" no_graphic="rp/noimage.png" x=350 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_ofuro1" graphic="rp/ofuro1.png" no_graphic="rp/noimage.png" x=350 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_ofuro2" graphic="rp/ofuro2.png" no_graphic="rp/noimage.png" x=350 y=530 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_kokuhaku" graphic="rp/kokuhaku1.png" no_graphic="rp/noimage.png" x=800 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_karaoke1" graphic="rp/karaoke2.png" no_graphic="rp/noimage.png" x=800 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_karaoke2" graphic="rp/karaoke5.png" no_graphic="rp/noimage.png" x=800 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_manga1" graphic="rp/manga8.png" no_graphic="rp/noimage.png" x=800 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_manga2" graphic="rp/manga4.png" no_graphic="rp/noimage.png" x=800 y=530 width=300 height=75 folder="bgimage"]

[button graphic="button/replay_tugi.png" target="*nextpage" x="1080" y="620" ]
[button graphic="button/replay_mae.png" target="*backpage" x="220" y="620" ]
@jump target ="*common"

*page_6
[replay_image_button name="rina_yuuenti1" graphic="rp/yuuenti5.png" no_graphic="rp/noimage.png" x=350 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_yuuenti2" graphic="rp/yuuenti3.png" no_graphic="rp/noimage.png" x=350 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_matsuri1" graphic="rp/matsuri1.png" no_graphic="rp/noimage.png" x=350 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_matsuri2" graphic="rp/matsuri2.png" no_graphic="rp/noimage.png" x=350 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_meido1" graphic="rp/meido.png" no_graphic="rp/noimage.png" x=350 y=530 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_vibe1" graphic="rp/vibe1.png" no_graphic="rp/noimage.png" x=800 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_eiga1" graphic="rp/eiga2.png" no_graphic="rp/noimage.png" x=800 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_eiga2" graphic="rp/eiga3.png" no_graphic="rp/noimage.png" x=800 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_iku1" graphic="rp/iku1.png" no_graphic="rp/noimage.png" x=800 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_onsen1" graphic="rp/onsen1.png" no_graphic="rp/noimage.png" x=800 y=530 width=300 height=75 folder="bgimage"]

[button graphic="button/replay_tugi.png" target="*nextpage" x="1080" y="620" ]
[button graphic="button/replay_mae.png" target="*backpage" x="220" y="620" ]
@jump target ="*common"

*page_7
[replay_image_button name="rina_onsen2" graphic="rp/onsen2.png" no_graphic="rp/noimage.png" x=350 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="rina_onedari1" graphic="rp/onedari1.png" no_graphic="rp/noimage.png" x=350 y=230 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_iku1" graphic="rp/iku1.png" no_graphic="rp/noimage.png" x=350 y=330 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_onsen1" graphic="rp/onsen1.png" no_graphic="rp/noimage.png" x=350 y=430 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_onsen2" graphic="rp/onsen2.png" no_graphic="rp/noimage.png" x=350 y=530 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_onedari1" graphic="rp/onedari1.png" no_graphic="rp/noimage.png" x=800 y=130 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_taisougi1" graphic="rp/taisougi1.png" no_graphic="rp/noimage.png" x=800 y=230 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_randoseru1" graphic="rp/randoseru.png" no_graphic="rp/noimage.png" x=800 y=330 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_taisougi1" graphic="rp/taisougi1.png" no_graphic="rp/noimage.png" x=800 y=430 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_randoseru1" graphic="rp/randoseru.png" no_graphic="rp/noimage.png" x=800 y=530 width=300 height=75 folder="bgimage"]

;[button graphic="button/replay_tugi.png" target="*nextpage" x="1080" y="620" ]
[button graphic="button/replay_mae.png" target="*backpage" x="220" y="620" ]
@jump target ="*common"


*page_8
[replay_image_button name="sizue_osouji" graphic="rp/osouji.png" no_graphic="rp/noimage.png" x=350 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_omimai1" graphic="rp/omimai1.png" no_graphic="rp/noimage.png" x=350 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_omimai2" graphic="rp/omimai2.png" no_graphic="rp/noimage.png" x=350 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_omimai3" graphic="rp/omimai3.png" no_graphic="rp/noimage.png" x=350 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_omimai4" graphic="rp/omimai12.png" no_graphic="rp/noimage.png" x=350 y=530 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_omimai5" graphic="rp/omimai13.png" no_graphic="rp/noimage.png" x=800 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_omimai6" graphic="rp/omimai9.png" no_graphic="rp/noimage.png" x=800 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_omimai7" graphic="rp/omimai11.png" no_graphic="rp/noimage.png" x=800 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_musei1" graphic="rp/musei1.png" no_graphic="rp/noimage.png" x=800 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_musei2" graphic="rp/musei2.png" no_graphic="rp/noimage.png" x=800 y=530 width=300 height=75 folder="bgimage"]

[button graphic="button/replay_tugi.png" target="*nextpage" x="1080" y="620" ]
@jump target ="*common"

*page_9
[replay_image_button name="sizue_musei3" graphic="rp/musei3.png" no_graphic="rp/noimage.png" x=350 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_rouka1" graphic="rp/rouka1.png" no_graphic="rp/noimage.png" x=350 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_rouka2" graphic="rp/rouka2.png" no_graphic="rp/noimage.png" x=350 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_ofuro1" graphic="rp/ofuro1.png" no_graphic="rp/noimage.png" x=350 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_ofuro2" graphic="rp/ofuro2.png" no_graphic="rp/noimage.png" x=350 y=530 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_kokuhaku" graphic="rp/kokuhaku1.png" no_graphic="rp/noimage.png" x=800 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_rotor1" graphic="rp/rotor1.png" no_graphic="rp/noimage.png" x=800 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_karaoke1" graphic="rp/karaoke3.png" no_graphic="rp/noimage.png" x=800 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_karaoke2" graphic="rp/karaoke2.png" no_graphic="rp/noimage.png" x=800 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_yuuenti1" graphic="rp/yuuenti5.png" no_graphic="rp/noimage.png" x=800 y=530 width=300 height=75 folder="bgimage"]

[button graphic="button/replay_tugi.png" target="*nextpage" x="1080" y="620" ]
[button graphic="button/replay_mae.png" target="*backpage" x="220" y="620" ]
@jump target ="*common"

*page_10
[replay_image_button name="sizue_yuuenti2" graphic="rp/yuuenti7.png" no_graphic="rp/noimage.png" x=350 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_matsuri1" graphic="rp/matsuri1.png" no_graphic="rp/noimage.png" x=350 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_matsuri2" graphic="rp/matsuri2.png" no_graphic="rp/noimage.png" x=350 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_nurse1" graphic="rp/nurse1.png" no_graphic="rp/noimage.png" x=350 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_vibe1" graphic="rp/vibe1.png" no_graphic="rp/noimage.png" x=350 y=530 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_hotel1" graphic="rp/hotel1.png" no_graphic="rp/noimage.png" x=800 y=130 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_iku1" graphic="rp/iku1.png" no_graphic="rp/noimage.png" x=800 y=230 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_onsen1" graphic="rp/onsen1.png" no_graphic="rp/noimage.png" x=800 y=330 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_onsen2" graphic="rp/onsen2.png" no_graphic="rp/noimage.png" x=800 y=430 width=300 height=75 folder="bgimage"]
[replay_image_button name="sizue_onedari1" graphic="rp/onedari1.png" no_graphic="rp/noimage.png" x=800 y=530 width=300 height=75 folder="bgimage"]

;[button graphic="button/replay_tugi.png" target="*nextpage" x="1080" y="620" ]
[button graphic="button/replay_mae.png" target="*backpage" x="220" y="620" ]
@jump target ="*common"

*page_11
;[replay_image_button name="rina_onsen2" graphic="rp/onsen2.png" no_graphic="rp/noimage.png" x=350 y=130 width=300 height=75 folder="bgimage"]
;[replay_image_button name="rina_onedari1" graphic="rp/onedari1.png" no_graphic="rp/noimage.png" x=350 y=230 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_iku1" graphic="rp/iku1.png" no_graphic="rp/noimage.png" x=350 y=330 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_onsen1" graphic="rp/onsen1.png" no_graphic="rp/noimage.png" x=350 y=430 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_onsen2" graphic="rp/onsen2.png" no_graphic="rp/noimage.png" x=350 y=530 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_onedari1" graphic="rp/onedari1.png" no_graphic="rp/noimage.png" x=800 y=130 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_taisougi1" graphic="rp/taisougi1.png" no_graphic="rp/noimage.png" x=800 y=230 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_randoseru1" graphic="rp/randoseru.png" no_graphic="rp/noimage.png" x=800 y=330 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_taisougi1" graphic="rp/taisougi1.png" no_graphic="rp/noimage.png" x=800 y=430 width=300 height=75 folder="bgimage"]
;[replay_image_button name="riko_randoseru1" graphic="rp/randoseru.png" no_graphic="rp/noimage.png" x=800 y=530 width=300 height=75 folder="bgimage"]

;[button graphic="button/replay_tugi.png" target="*nextpage" x="1080" y="620" ]
[button graphic="button/replay_mae.png" target="*backpage" x="220" y="620" ]
@jump target ="*common"

*common

[s]

*backtitle
[cm]
[freeimage layer=1]
@jump storage=title.ks

*nextpage
[playse storage="se/page.ogg" buf="3"]
[emb exp="tf.page++;"]
@jump target="*replaypage"


*backpage
[playse storage="se/page.ogg" buf="3"]
[emb exp="tf.page--;"]
@jump target="*replaypage"

*clickcg
[stopbgm]
[cm]
[clearfix]
[iscript]
    tf.flag_replay = true;
[endscript]

[free layer=1 name="label_replay"]

@jump storage=&tf.selected_replay_obj.storage target=&tf.selected_replay_obj.target
[s]

*no_image

@jump  target=*replaypage

;***********************************************************************************************************************
;リプレイ解放
*replay_release
[setreplay name="riko_osouji" storage="replay_mode_riko.ks" target="*osouji"]

[setreplay name="riko_omimai1" storage="replay_mode_riko.ks" target="*omimai1"]
[setreplay name="riko_omimai2" storage="replay_mode_riko.ks" target="*omimai2"]
[setreplay name="riko_omimai3" storage="replay_mode_riko.ks" target="*omimai3"]
[setreplay name="riko_omimai4" storage="replay_mode_riko.ks" target="*omimai4"]
[setreplay name="riko_omimai5" storage="replay_mode_riko.ks" target="*omimai5"]
[setreplay name="riko_omimai6" storage="replay_mode_riko.ks" target="*omimai6"]
[setreplay name="riko_omimai7" storage="replay_mode_riko.ks" target="*omimai7"]
[setreplay name="riko_omimai8" storage="replay_mode_riko.ks" target="*omimai8"]

[setreplay name="riko_musei1" storage="replay_mode_riko.ks" target="*musei1"]
[setreplay name="riko_musei2" storage="replay_mode_riko.ks" target="*musei2"]
[setreplay name="riko_musei3" storage="replay_mode_riko.ks" target="*musei3"]

[setreplay name="riko_rouka1" storage="replay_mode_riko.ks" target="*rouka1"]
[setreplay name="riko_rouka2" storage="replay_mode_riko.ks" target="*rouka2"]

[setreplay name="riko_ima1" storage="replay_mode_riko.ks" target="*ima1"]

[setreplay name="riko_aisu1" storage="replay_mode_riko.ks" target="*aisu1"]

[setreplay name="riko_ofuro1" storage="replay_mode_riko.ks" target="*ofuro1"]
[setreplay name="riko_ofuro2" storage="replay_mode_riko.ks" target="*ofuro2"]

[setreplay name="riko_kokuhaku" storage="replay_mode_riko.ks" target="*kokuhaku"]

[setreplay name="riko_kouen1" storage="replay_mode_riko.ks" target="*kouen1"]

[setreplay name="riko_karaoke1" storage="replay_mode_riko.ks" target="*karaoke1"]
[setreplay name="riko_karaoke2" storage="replay_mode_riko.ks" target="*karaoke2"]

[setreplay name="riko_manga1" storage="replay_mode_riko.ks" target="*manga1"]
[setreplay name="riko_manga2" storage="replay_mode_riko.ks" target="*manga2"]

[setreplay name="riko_yuuenti1" storage="replay_mode_riko.ks" target="*yuuenti1"]
[setreplay name="riko_yuuenti2" storage="replay_mode_riko.ks" target="*yuuenti2"]

[setreplay name="riko_matsuri1" storage="replay_mode_riko.ks" target="*matsuri1"]
[setreplay name="riko_matsuri2" storage="replay_mode_riko.ks" target="*matsuri2"]

[setreplay name="riko_sukumizu1" storage="replay_mode_riko.ks" target="*sukumizu1"]

[setreplay name="riko_vibe1" storage="replay_mode_riko.ks" target="*vibe1"]

[setreplay name="riko_eiga1" storage="replay_mode_riko.ks" target="*eiga1"]

[setreplay name="riko_taisougi1" storage="replay_mode_riko.ks" target="*taisougi1"]
[setreplay name="riko_randoseru1" storage="replay_mode_riko.ks" target="*randoseru1"]
[setreplay name="riko_seifuku1" storage="replay_mode_riko.ks" target="*seifuku1"]

[setreplay name="riko_iku1" storage="replay_mode_riko.ks" target="*iku1"]

[setreplay name="riko_onsen1" storage="replay_mode_riko.ks" target="*onsen1"]
[setreplay name="riko_onsen2" storage="replay_mode_riko.ks" target="*onsen2"]

[setreplay name="riko_onedari1" storage="replay_mode_riko.ks" target="*onedari1"]

[setreplay name="rina_osouji" storage="replay_mode_rina.ks" target="*osouji"]
[setreplay name="rina_omimai1" storage="replay_mode_rina.ks" target="*omimai1"]
[setreplay name="rina_omimai2" storage="replay_mode_rina.ks" target="*omimai2"]
[setreplay name="rina_omimai3" storage="replay_mode_rina.ks" target="*omimai3"]
[setreplay name="rina_omimai4" storage="replay_mode_rina.ks" target="*omimai4"]
[setreplay name="rina_omimai5" storage="replay_mode_rina.ks" target="*omimai5"]
[setreplay name="rina_omimai6" storage="replay_mode_rina.ks" target="*omimai6"]
[setreplay name="rina_omimai7" storage="replay_mode_rina.ks" target="*omimai7"]
[setreplay name="rina_omimai8" storage="replay_mode_rina.ks" target="*omimai8"]

[setreplay name="rina_musei1" storage="replay_mode_rina.ks" target="*musei1"]
[setreplay name="rina_musei2" storage="replay_mode_rina.ks" target="*musei2"]
[setreplay name="rina_musei3" storage="replay_mode_rina.ks" target="*musei3"]

[setreplay name="rina_rouka1" storage="replay_mode_rina.ks" target="*rouka1"]
[setreplay name="rina_rouka2" storage="replay_mode_rina.ks" target="*rouka2"]

[setreplay name="rina_ofuro1" storage="replay_mode_rina.ks" target="*ofuro1"]
[setreplay name="rina_ofuro2" storage="replay_mode_rina.ks" target="*ofuro2"]

[setreplay name="rina_kokuhaku" storage="replay_mode_rina.ks" target="*kokuhaku"]

[setreplay name="rina_karaoke1" storage="replay_mode_rina.ks" target="*karaoke1"]
[setreplay name="rina_karaoke2" storage="replay_mode_rina.ks" target="*karaoke2"]

[setreplay name="rina_manga1" storage="replay_mode_rina.ks" target="*manga1"]
[setreplay name="rina_manga2" storage="replay_mode_rina.ks" target="*manga2"]

[setreplay name="rina_yuuenti1" storage="replay_mode_rina.ks" target="*yuuenti1"]
[setreplay name="rina_yuuenti2" storage="replay_mode_rina.ks" target="*yuuenti2"]

[setreplay name="rina_matsuri1" storage="replay_mode_rina.ks" target="*matsuri1"]
[setreplay name="rina_matsuri2" storage="replay_mode_rina.ks" target="*matsuri2"]

[setreplay name="rina_meido1" storage="replay_mode_rina.ks" target="*meido1"]

[setreplay name="rina_vibe1" storage="replay_mode_rina.ks" target="*vibe1"]

[setreplay name="rina_eiga1" storage="replay_mode_rina.ks" target="*eiga1"]
[setreplay name="rina_eiga2" storage="replay_mode_rina.ks" target="*eiga2"]

[setreplay name="rina_iku1" storage="replay_mode_rina.ks" target="*iku1"]

[setreplay name="rina_onsen1" storage="replay_mode_rina.ks" target="*onsen1"]
[setreplay name="rina_onsen2" storage="replay_mode_rina.ks" target="*onsen2"]

[setreplay name="rina_onedari1" storage="replay_mode_rina.ks" target="*onedari1"]

[setreplay name="sizue_osouji" storage="replay_mode_sizue.ks" target="*osouji"]
[setreplay name="sizue_omimai1" storage="replay_mode_sizue.ks" target="*omimai1"]
[setreplay name="sizue_omimai2" storage="replay_mode_sizue.ks" target="*omimai2"]
[setreplay name="sizue_omimai3" storage="replay_mode_sizue.ks" target="*omimai3"]
[setreplay name="sizue_omimai4" storage="replay_mode_sizue.ks" target="*omimai4"]
[setreplay name="sizue_omimai5" storage="replay_mode_sizue.ks" target="*omimai5"]
[setreplay name="sizue_omimai6" storage="replay_mode_sizue.ks" target="*omimai6"]
[setreplay name="sizue_omimai7" storage="replay_mode_sizue.ks" target="*omimai7"]
[setreplay name="sizue_omimai8" storage="replay_mode_sizue.ks" target="*omimai8"]

[setreplay name="sizue_musei1" storage="replay_mode_sizue.ks" target="*musei1"]
[setreplay name="sizue_musei2" storage="replay_mode_sizue.ks" target="*musei2"]
[setreplay name="sizue_musei3" storage="replay_mode_sizue.ks" target="*musei3"]

[setreplay name="sizue_rouka1" storage="replay_mode_sizue.ks" target="*rouka1"]
[setreplay name="sizue_rouka2" storage="replay_mode_sizue.ks" target="*rouka2"]

[setreplay name="sizue_ofuro1" storage="replay_mode_sizue.ks" target="*ofuro1"]
[setreplay name="sizue_ofuro2" storage="replay_mode_sizue.ks" target="*ofuro2"]

[setreplay name="sizue_kokuhaku" storage="replay_mode_sizue.ks" target="*kokuhaku"]

[setreplay name="sizue_rotor1" storage="replay_mode_sizue.ks" target="*rotor1"]

[setreplay name="sizue_karaoke1" storage="replay_mode_sizue.ks" target="*karaoke1"]
[setreplay name="sizue_karaoke2" storage="replay_mode_sizue.ks" target="*karaoke2"]

[setreplay name="sizue_yuuenti1" storage="replay_mode_sizue.ks" target="*yuuenti1"]
[setreplay name="sizue_yuuenti2" storage="replay_mode_sizue.ks" target="*yuuenti2"]

[setreplay name="sizue_matsuri1" storage="replay_mode_sizue.ks" target="*matsuri1"]
[setreplay name="sizue_matsuri2" storage="replay_mode_sizue.ks" target="*matsuri2"]

[setreplay name="sizue_nurse1" storage="replay_mode_sizue.ks" target="*nurse1"]

[setreplay name="sizue_vibe1" storage="replay_mode_sizue.ks" target="*vibe1"]

[setreplay name="sizue_hotel1" storage="replay_mode_sizue.ks" target="*hotel1"]

[setreplay name="sizue_iku1" storage="replay_mode_sizue.ks" target="*iku1"]

[setreplay name="sizue_onsen1" storage="replay_mode_sizue.ks" target="*onsen1"]
[setreplay name="sizue_onsen2" storage="replay_mode_sizue.ks" target="*onsen2"]

[setreplay name="sizue_onedari1" storage="replay_mode_sizue.ks" target="*onedari1"]

[eval exp="sf.replay_release = true"]

[return]

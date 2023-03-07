;ステータス表示画面

*start

[cm]
[clearfix]
;メッセージウィンドウの非表示
@layopt layer=message0 visible=false
[eval exp="tf.wait_status = 100"]

[iscript]
$(window).click(function(){
tf.wait_status = 1
 });
[endscript]

;画面表示
[image storage ="status.png" layer="4" page="back" visible="true" ]
[trans layer="4" time="1000" ]
[wt]

;莉子好感度
[eval exp="tf.kurikaesi = f.riko_f / 10"]
[eval exp="tf.iti = 590"]
[eval exp="tf.iti_y = 140"]
[call target="*heart"]
;莉子エッチ度
[eval exp="tf.kurikaesi = f.riko_h / 10"]
[eval exp="tf.iti = 590"]
[eval exp="tf.iti_y = 195"]
[call target="*heart"]


;莉菜好感度
[eval exp="tf.kurikaesi = f.rina_f / 10"]
[eval exp="tf.iti = 590"]
[eval exp="tf.iti_y = 250"]
[call target="*heart"]
;莉菜エッチ度
[eval exp="tf.kurikaesi = f.rina_h / 10"]
[eval exp="tf.iti = 590"]
[eval exp="tf.iti_y = 305"]
[call target="*heart"]


;静江好感度
[eval exp="tf.kurikaesi = f.sizue_f / 10"]
[eval exp="tf.iti = 590"]
[eval exp="tf.iti_y = 360"]
[call target="*heart"]
;静江エッチ度
[eval exp="tf.kurikaesi = f.sizue_h / 10"]
[eval exp="tf.iti = 590"]
[eval exp="tf.iti_y = 415"]
[call target="*heart"]

;体力
[eval exp="tf.kurikaesi = f.hp / 10"]
[eval exp="tf.iti = 590"]
[eval exp="tf.iti_y = 465"]
[call target="*heart"]

;精力
[eval exp="tf.kurikaesi = f.energy / 10"]
[eval exp="tf.iti = 590"]
[eval exp="tf.iti_y = 520"]
[call target="*heart"]
;持続力
[eval exp="tf.kurikaesi = (f.patience - 100 ) / 50 "]
[eval exp="tf.iti = 590"]
[eval exp="tf.iti_y = 575"]
[call target="*heart"]


[iscript]
 $(window).off("click"); 
[endscript]

[l]


;画像消去
[trans layer="4" time="2000" ]
[freeimage layer="4" page=fore]
[freeimage layer="4" page=back]

;メッセージウィンドウの表示
[menuwindows]
#
[return]

*heart
[if exp="tf.kurikaesi >= 1 "]
[image storage ="heart_full_pink.png" layer="4" page="fore" left="&tf.iti"  top="&tf.iti_y" visible="true"]
[playse storage="se/se_maoudamashii_system49.ogg" buf="1"]
[wait time="&tf.wait_status"]
[eval exp="tf.iti = tf.iti + 60"]
[if exp="tf.iti == 830"]
[eval exp="tf.iti = tf.iti + 50"]
[endif]
[eval exp="tf.kurikaesi = tf.kurikaesi - 1"]
[jump target="*heart"]
[endif]
[if exp="tf.kurikaesi >= 0.5 "]
[image storage ="heart_half_pink.png" layer="4" page="fore" left="&tf.iti"  top="&tf.iti_y" visible="true"]
[endif]
[wait time="&tf.wait_status * 5"]
[return]

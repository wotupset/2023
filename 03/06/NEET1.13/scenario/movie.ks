;動画再生速度
*start

*sp
;***********************************************************************************************************************
;速い
[if exp="tf.rate == 3"]
[eval exp="tf.sp = tf.posture[4]"]
[eval exp="tf.syasei_up = 30"]
[endif]
;***********************************************************************************************************************
;普通
[if exp="tf.rate == 2"]
[eval exp="tf.sp = tf.posture[3]"]
[eval exp="tf.syasei_up = 15"]
[endif]
;***********************************************************************************************************************
;遅い
[if exp="tf.rate == 1"]
[eval exp="tf.sp = tf.posture[2]"]
[eval exp="tf.syasei_up = -5"]
[endif]
;***********************************************************************************************************************
[iscript]
var yuko=document.getElementsByClassName("layer_blend_mode blendlayer blendvideo layer_blend_hmovie");
yuko[0].playbackRate = tf.sp;
[endscript]
;[clearfix]

[return]


*next
[cm]
[stop_bgmovie ]
[eval exp="f.play_loop = f.play_loop + 1"]
[if exp="f.play_loop == 20"]
[eval exp="f.play_loop = 0"]
[endif]
[return]
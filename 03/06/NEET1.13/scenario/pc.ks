;pcを見る
;***********************************************************************************************************************
*shop
#
;ほほう！コスプレ衣装が売っている[p]
*product
;[eval exp="tf.y_iti = 150"]
;[if exp="tf.sentaku_01  == undefined"]
;[glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="スクール水着"  target="*swimwear"]
;[eval exp="tf.y_iti = tf.y_iti + 100"]
;[endif]
;[if exp="tf.sentaku_01  == undefined"]
;[glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="メイド服"  target="*maid"]
;[eval exp="tf.y_iti = tf.y_iti + 100"]
;[endif]
;[if exp="tf.sentaku_01  == undefined"]
;[glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="ナース服"  target="*narse"]
;[eval exp="tf.y_iti = tf.y_iti + 100"]
;[endif]
;[glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="やめる"  target="*return"]

色々売っているな[p]
[glink  color="pink" size="20"  x="500"  width="200"  y="150"  text="スクール水着"  target="*swimwear"]
[glink  color="pink" size="20"  x="800"  width="200"  y="150"  text="メイド服"  target="*maid"]
[glink  color="pink" size="20"  x="500"  width="200"  y="220"  text="ナース服"  target="*narse"]
[glink  color="pink" size="20"  x="800"  width="200"  y="220"  text="バイブ　Ｓ"  target="*vibrator_s"]
[glink  color="pink" size="20"  x="500"  width="200"  y="290"  text="バイブ　Ｍ"  target="*vibrator_m"]
[glink  color="pink" size="20"  x="800"  width="200"  y="290"  text="バイブ　Ｌ"  target="*vibrator_l"]
[glink  color="pink" size="20"  x="500"  width="200"  y="360"  text="ローター"  target="*rotor"]
;***********************************************************************************************************************
;fanza特典
[if exp="f.version_dl == 'fanza'"]
[glink  color="pink" size="20"  x="800"  width="200"  y="360"  text="体操着"  target="*training_wear"]
[endif]
;***********************************************************************************************************************
;DLsite特典
[if exp="f.version_dl == 'dlsite'"]
[glink  color="pink" size="20"  x="800"  width="200"  y="360"  text="ランドセル"  target="*school_bag"]
[endif]
;***********************************************************************************************************************
[glink  color="pink" size="20"  x="650"  width="200"  y="500"  text="やめる"  target="*return"]
[s]
;***********************************************************************************************************************
;-スクール水着
*swimwear
[if exp="f.item[0] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 0"]
[eval exp="f.goods_name = 'スクール水着'"]
[eval exp="f.goods_price = 20000"]
[cm]
旧スクール水着か……[p]
お値段は２００００円……どうしようかな？
[jump target="*select"]
;***********************************************************************************************************************
;-メイド服
*maid
[if exp="f.item[1] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 1"]
[eval exp="f.goods_name = '　メイド服　'"]
[eval exp="f.goods_price = 18000"]
[cm]
メイド服か……[p]
お値段は１８０００円……どうしようかな？
[jump target="*select"]
;***********************************************************************************************************************
;-ナース服
*narse
[if exp="f.item[2] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 2"]
[eval exp="f.goods_name = '　ナース服　'"]
[eval exp="f.goods_price = 16000"]
[cm]
ナース服か……[p]
お値段は１６０００円……どうしようかな？
[jump target="*select"]
;***********************************************************************************************************************
;***********************************************************************************************************************
;-バイブS
*vibrator_s
[if exp="f.item[3] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 3"]
[eval exp="f.goods_name = 'バイブ　Ｓ'"]
[eval exp="f.goods_price = 20000"]
[cm]
バイブか……[p]
お値段は２００００円……どうしようかな？
[jump target="*select"]
;***********************************************************************************************************************
;-バイブM
*vibrator_m
[if exp="f.item[4] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 4"]
[eval exp="f.goods_name = 'バイブ　Ｍ'"]
[eval exp="f.goods_price = 20000"]
[cm]
バイブか……[p]
お値段は２００００円……どうしようかな？
[jump target="*select"]
;***********************************************************************************************************************
;-バイブL
*vibrator_l
[if exp="f.item[5] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 5"]
[eval exp="f.goods_name = 'バイブ　Ｌ'"]
[eval exp="f.goods_price = 20000"]
[cm]
バイブか……[p]
お値段は２００００円……どうしようかな？
[jump target="*select"]
;***********************************************************************************************************************
;-ローター
*rotor
[if exp="f.item[6] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 6"]
[eval exp="f.goods_name = '  ローター '"]
[eval exp="f.goods_price = 20000"]
[cm]
ローターか……[p]
お値段は２００００円……どうしようかな？
[jump target="*select"]
;***********************************************************************************************************************
;体操着
*training_wear
[if exp="f.item[7] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 7"]
[eval exp="f.goods_name = '  体操着 '"]
[eval exp="f.goods_price = 18000"]
[cm]
体操着か……[p]
お値段は１８０００円……どうしようかな？
[jump target="*select"]
;***********************************************************************************************************************
;ランドセル
*school_bag
[if exp="f.item[8] == true"]
[jump target="*have"]
[endif]
[eval exp="f.goods = 8"]
[eval exp="f.goods_name = '  ランドセル '"]
[eval exp="f.goods_price = 22000"]
[cm]
ランドセルか……[p]
お値段は２２０００円……どうしようかな？
[jump target="*select"]
;***********************************************************************************************************************
*have
これはもう持っている[p]
[jump target="*product"]
;***********************************************************************************************************************
;確認ダイアログ
*select
[layopt layer="1" visible="true"]
[image storage="window_02.png" layer="1" x="575" y="250" width="350" height="192" ]
[ptext layer="1" text="&f.goods_name+'を購入しますか？'" x="610" y="300" vertical="" size="20" shadow="0x000000" ]
[glink  color="pink" size="20"  x="600"  width="60"  y=360  text="はい"  target="*select2"]
[glink  color="pink" size="20"  x="750"  width="60"  y=360  text="いいえ"  target="*select_clear"]
[s]
*select_clear
[freeimage layer="1"]
[jump target="*product"]
*select2
[freeimage layer="1"]
;***********************************************************************************************************************
;金額チェック
[if exp="f.money < f.goods_price"]
お金が足りなかった……[p]
[jump target="*product"]
[endif]
購入した[r]
[eval exp="f.money = f.money - f.goods_price"]
[eval exp="f.delivery = f.goods"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
商品は明日届くみたいだ[p]

*return
[return]
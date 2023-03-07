;メインのシナリオ
*start
;***********************************************************************************************************************
;-設定シナリオコール
[call storage="setting.ks"]
*opmove
;-オープニング再生
[call storage="op.ks"]
*opday
;-初日シナリオ
[call storage="openingday.ks"]
;-日付表示（１日の始まり）
*morning
[playbgm storage="tukanomanokyuusoku.ogg" loop="flase"]
[cm]
[clearfix]
@layopt layer="message" visible=false
[freeimage layer="2" time="0"]
[bg storage="black.png" time = 500]
[if exp ="f.spa == 4"]
 [bg storage="sakurako003.png" time = 500 ]
 [else]
  [bg storage="sakurako002.png" time = 500 ]
[endif]
[layopt layer=0 visible=true]
[eval exp="tf.hiduke = f.day + '日'"]
[ptext layer="0" page="fore" text="&tf.hiduke" x="300" y="200" size="60" shadow="0x000000" ]
[ptext layer="0" page="fore" text="&f.week[f.oneweek]" x="450" y="200" vertical="" size="60" shadow="0x000000"]
[l]
[freeimage layer="0" page="fore"]
[fadeoutbgm]

;-配列表読み込み(場所)
[call storage="array.ks" target="*location"]

;配列読み込み初回（アイテム）
[if exp="f.new_item ==  undefined"]
[eval exp="f.item = []"]
[eval exp="f.new_item = true"]
[endif]
;***********************************************************************************************************************
;バージョン表記　メインシナリオ、タイトル,回想とリプレイも同じバージョンに修正
[eval exp="f.version_dl = 'fanza'"]
;[eval exp="f.version_dl = 'dlsite'"]

;***********************************************************************************************************************
;-温泉帰り
;f.spa 4 で温泉帰宅
[if exp ="f.spa == 4"]
;温泉フラグ消去
[iscript]
delete f.spa;
[endscript]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
[menuwindows]
[bg storage="room_night.png" time="1000"]
温泉から帰ってきた[p]
色々遊んできたのでもう夜である[p]
[jump target="*night"]
[endif]
;***********************************************************************************************************************
;-エンディング判別
[if exp="f.sakurako_yakyuu_end == 3"]
[call storage="sakurako.ks" target="*ending"]
[uiwindows]
[jump target="*choice"]
[endif]
;***********************************************************************************************************************
;-野球拳判別
[if exp="f.sakurako_yakyuu_end == 0 || f.sakurako_yakyuu_end == 1 "]
 [call storage="sakurako.ks" target="*yakyuu"]
  [if exp="f.sakurako_yakyuu_end == 1"]
   [jump target="*choice"]
  [endif]
[endif]
[if exp="f.sakurako_yakyuu_end == 2"]
[bg storage="room_evening.png" time="1000"]
#
……[p]
[bg storage="room_night.png" time="1000"]
#
桜子怒っちゃったのか帰ってこないぞ……[p]
明日になれば機嫌も直るかな[p]
[eval exp="f.sakurako_yakyuu_end = 3"]
[jump target="*sleep"]
[endif]
;***********************************************************************************************************************
;温泉旅行判別
;f.spa が 1 ,2 ,3 いずれかで土曜日で温泉旅行
[if exp ="f.oneweek == 5 && f.spa != undefined"]
;桜子シナリオコール
[call storage="sakurako.ks" target="*spa_sakurako"]
;コール　温泉シナリオ
[call storage="spa.ks"]
;一日の終わりにジャンプ
[jump target="*save_out"]
[endif]
;***********************************************************************************************************************
;-主人公過労判別　主人公体力が5以下の場合お見舞いイベント発生
[if exp="f.hp <= 5" ]
;過労シナリオコール
[call storage="overwork.ks"]
;桜子シナリオコール
[uiwindows]
[if exp="tf.omimai == 0 || tf.omimai == 4 || tf.omimai ==5 || tf.omimai == 6"]
 [call storage="sakurako.ks" target="*overwork"]
[endif]
;体力回復
[eval exp="f.hp = f.hp + 50"]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;夜にジャンプ
[jump target="*night"]
[endif]
;***********************************************************************************************************************
;-主人公夢精判別  主人公精力100以上で夢イベント発生
[if exp="f.energy >= 100"]
;夢精シナリオコール
[call storage="dream.ks"]
[fadeoutse time="500"]
[uiwindows]
;桜子シナリオコール
[call storage="sakurako.ks" target="*sakurako_dream"]
[fadeoutse time="500"]
;精力減少
[eval exp="f.energy = 0"]
[jump target="*choice"]
[endif]
;***********************************************************************************************************************
;-起床イベントコール
*wakeup
[uiwindows]
;桜子シナリオコール
[call storage="sakurako.ks" target="*sakurako_wakeup"]
[fadeoutse time="500"]
*choice


;選択肢表示

;お祭りお知らせ
[chara_mod  name="sakurako" face="default" ]
[if exp="f.day ==27 || f.day ==28"]
#
そういえば今日はお祭りだ[p]
[endif]

;温泉お知らせ　エッチ度70以上　温泉未経験
[if exp="f.shoppingstreet_day[f.day] == 2"]
 [if exp="f.spa_riko_h == undefined || f.spa_rina_h == undefined || f.spa_sizue_h == undefined"]
  [if exp="f.riko_h >= 70 || f.rina_h >= 70 || f.sizue_h >= 70"]
   #
   そういえば、商店街で福引やってたな[r]
   一等は温泉旅行だ[p]
   当たったら混浴入れたりして・・・[p]
  [endif]
 [endif]
[endif]

#
さてと、今日は何しようかな？
*choice2
[glink  color="pink" size="20"  x="700"  width="400"  y="150"  text="お出かけ"  target="*choice3"  exp="tf.choice_n = 0"]
[glink  color="pink" size="20"  x="700"  width="400"  y="250"  text="休養"  target="*choice3" exp="tf.choice_n = 1" ]
[glink  color="pink" size="20"  x="700"  width="400"  y="350"  text="バイト"  target="*choice3" exp="tf.choice_n = 2" ]
;土日のみデートに誘う出現
[if exp="f.oneweek ==5 || f.oneweek==6"]
[glink  color="pink" size="20"  x="700"  width="400"  y="450"  text="デートに誘う"  target="*choice3" exp="tf.choice_n = 3" ]
[endif]
[s]
;***********************************************************************************************************************
;確認ダイアログ
*choice3
[layopt layer="1" visible="true"]
[image storage="window_02.png" layer="1" x="575" y="250" width="350" height="192" ]
[if exp="tf.choice_n==0"]
[ptext layer="1" text="お出かけしますか？" x="650" y="300" vertical="" size="20" shadow="0x000000"]
[endif]
[if exp="tf.choice_n==1"]
[ptext layer="1" text="休養しますか？" x="670" y="300" vertical="" size="20" shadow="0x000000"]
[endif]
[if exp="tf.choice_n==2"]
[ptext layer="1" text="バイトにいきますか？" x="650" y="300" vertical="" size="20" shadow="0x000000"]
[endif]
[if exp="tf.choice_n==3"]
[ptext layer="1" text="デートに誘いますか？" x="650" y="300" vertical="" size="20" shadow="0x000000"]
[endif]
[glink  color="pink" size="20"  x="600"  width="60"  y=360  text="はい"  target="*choice4"]
[glink  color="pink" size="20"  x="750"  width="60"  y=360  text="いいえ"  target="*choice5"]
[s]
*choice4
[freeimage layer="1"]
[if exp="tf.choice_n==0"]
 [jump target="*GoOut"]
[endif]
[if exp="tf.choice_n==1"]
 [jump target="*break"]
[endif]
[if exp="tf.choice_n==2"]
 [jump target="*work"]
[endif]
[if exp="tf.choice_n==3"]
 [jump target="*date"]
[endif]
*choice5
[freeimage layer="1"]
[jump target="*choice2"]
;***********************************************************************************************************************
;-外出
*GoOut
[call storage="sakurako.ks" target="*GoOut"]
[eval exp="tf.place = 1"]
[eval exp="tf.before = 1"]
[eval exp="tf.outing = 0"]
;外出先選択肢表示 ①自宅　②本屋　③カフェ　④図書館　⑤公園　⑥商店街　⑦駄菓子屋　⑧ゲームセンター　⑨カラオケ　⑩遊園地　⑪漫画喫茶　⑫映画館　⑬神社

*choice_go_out
どこに行こうか……
[anim name="sakurako" left="-50"]
#
[eval exp="tf.b_y = 110"]
;■自宅
[if exp="tf.place != 1"]
 [glink  color="pink" size="20"  x="700"  width="400"  y=&tf.b_y  text="自宅"  target="*select" exp="tf.place = 1"]
 [eval exp="tf.b_y = tf.b_y + 60"]
[endif]
;■本屋
[if exp="tf.place != 2"]
 [glink  color="pink" size="20"  x="700"  width="400"  y=&tf.b_y  text="本屋"  target="*select" exp="tf.place = 2" ]
 [eval exp="tf.b_y = tf.b_y + 60"]
[endif]
;■カフェ
[if exp="tf.place != 3"]
 [glink  color="pink" size="20"  x="700"  width="400"  y=&tf.b_y  text="カフェ"  target="*select" exp="tf.place = 3" ]
 [eval exp="tf.b_y = tf.b_y + 60"]
[endif]
;■図書館
[if exp="tf.place != 4"]
 [glink  color="pink" size="20"  x="700"  width="400"  y=&tf.b_y  text="図書館"  target="*select" exp="tf.place = 4" ]
 [eval exp="tf.b_y = tf.b_y + 60"]
[endif]
;■公園
[if exp="tf.place != 5"]
 [glink  color="pink" size="20"  x="700"  width="400"  y=&tf.b_y  text="公園" target="*select" exp="tf.place = 5" ]
 [eval exp="tf.b_y = tf.b_y + 60"]
[endif]
;■商店街
[if exp="tf.place != 6"]
 [glink  color="pink" size="20"  x="700"  width="400"  y=&tf.b_y  text="商店街"  target="*select" exp="tf.place = 6" ]
 [eval exp="tf.b_y = tf.b_y + 60"]
[endif]
;■駄菓子屋
[if exp="tf.place != 7"]
 [glink  color="pink" size="20"  x="700"  width="400"  y=&tf.b_y  text="駄菓子屋"  target="*select" exp="tf.place = 7" ]
 [eval exp="tf.b_y = tf.b_y + 60"]
[endif]
;■ゲームセンター
[if exp="tf.place != 8"]
 [glink  color="pink" size="20"  x="700"  width="400"  y=&tf.b_y  text="ゲームセンター"  target="*select" exp="tf.place = 8" ]
[endif]
[s]
;***********************************************************************************************************************
;確認ダイアログ
*select
[layopt layer="1" visible="true"]
[image storage="window_02.png" layer="1" x="575" y="250" width="350" height="192" ]
[ptext layer="1" text="&f.place_name[tf.place]+'に行きますか？'" x="650" y="300" vertical="" size="20" shadow="0x000000" ]
[glink  color="pink" size="20"  x="600"  width="60"  y=360  text="はい"  target="*select2"]
[glink  color="pink" size="20"  x="750"  width="60"  y=360  text="いいえ"  target="*select_clear"]
[s]
*select_clear
[eval exp="tf.place = tf.before"]
[freeimage layer="1"]
[jump target="*choice_go_out"]
*select2
[eval exp="tf.before = tf.place"]
[freeimage layer="1"]
;■本屋シナリオコール
[if exp="tf.place == 2"]
　[call storage="bookstore.ks"]
[endif]
;■カフェシナリオコール
[if exp="tf.place == 3"]
　[call storage="cafe.ks"]
[endif]
;■図書館シナリオコール
[if exp="tf.place == 4"]
　[call storage="library.ks"]
[endif]
;■公園シナリオコール
[if exp="tf.place == 5"]
　[call storage="park.ks"]
[endif]
;■商店街シナリオコール
[if exp="tf.place == 6"]
　[call storage="shoppingstreet.ks"]
[endif]
;■駄菓子屋シナリオコール
[if exp="tf.place == 7"]
　[call storage="store.ks"]
[endif]
;■ゲームセンターシナリオコール
[if exp="tf.place == 8"]
　[call storage="arcade.ks"]
[endif]
;■自宅
[if exp="tf.place == 1"]
 [cm]
  [if exp="f.partner == 0"]
#
今日はもう帰ろうかな[p]
  [endif]
 [jump target="*evening"]
[endif]
;外出回数増加 ３回で帰宅
[eval exp="tf.outing = tf.outing + 1"]
[if exp="tf.outing == 3"]
[cm]
#
もうこんな時間だ……帰るか[p]
;桜子消去
#
[chara_hide name="sakurako"]
[jump target="*evening"]
[endif]
[jump target="*choice_go_out"]
;***********************************************************************************************************************
;-デート
*date
#
誰を誘おうかな
[glink  color="pink" size="20"  x="700"  width="400"  y="150"  text="莉子ちゃんを誘う"  target="*date_riko" exp="f.partner = 1"]
[glink  color="pink" size="20"  x="700"  width="400"  y="250"  text="莉菜ちゃんを誘う"  target="*date_rina" exp="f.partner = 2"]
[glink  color="pink" size="20"  x="700"  width="400"  y="350"  text="静江さんを誘う"  target="*date_sizue" exp="f.partner = 3"]
[glink  color="pink" size="20"  x="700"  width="400"  y="450"  text="やめておく"  target="*choice2" exp="f.partner = 0"]
[s]
;■莉子
*date_riko
#
莉子ちゃんを誘ってみよう[p]
どこに誘おうかな
*date_riko2
[eval exp="tf.item_y = 550"]
[glink  color="pink" size="20"  x="700"  width="400"  y="130"  text="公園"  target="*date_money" exp="tf.date_select = 1"]
[glink  color="pink" size="20"  x="700"  width="400"  y="190"  text="ゲームセンター"  target="*date_money" exp="tf.date_select = 2" ]
[glink  color="pink" size="20"  x="700"  width="400"  y="250"  text="カラオケ"  target="*date_money" exp="tf.date_select = 3" ]
[glink  color="pink" size="20"  x="700"  width="400"  y="310"  text="漫画喫茶"  target="*date_money" exp="tf.date_select = 4" ]
[glink  color="pink" size="20"  x="700"  width="400"  y="370"  text="カフェ" target="*date_money" exp="tf.date_select = 5" ]
[glink  color="pink" size="20"  x="700"  width="400"  y="430"  text="遊園地"  target="*date_money" exp="tf.date_select = 6" ]
[glink  color="pink" size="20"  x="700"  width="400"  y="490"  text="映画"  target="*date_money" exp="tf.date_select = 10" ]
[if exp="f.day ==27 || f.day ==28"]
[glink  color="pink" size="20"  x="700"  width="400"  y=&tf.item_y  text="お祭り"  target="*date_money" exp="tf.date_select = 7" ]
[eval exp="tf.item_y = tf.item_y + 60"]
[endif]
;コスプレ衣装スクール水着
[if exp="f.item[0] == true && f.mizugi_riko_h != 1 && f.riko_lover == 2"]
[glink  color="pink" size="20"  x="700"  width="400"  y=&tf.item_y  text="スクール水着を着てもらう"  target="*date_money" exp="tf.date_select = 8" ]
[eval exp="tf.item_y = tf.item_y + 60"]
[endif]
;バイブＳ
[if exp="f.item[3] == true && f.vibrator_riko_h != 1 && f.riko_lover == 2"]
[glink  color="pink" size="20"  x="700"  width="400"  y=&tf.item_y  text="バイブを使う"  target="*date_money" exp="tf.date_select = 9" ]
[eval exp="tf.item_y = tf.item_y + 60"]
[endif]
;体操着
[if exp="f.item[7] == true && f.training_wear_riko_h != 1 && f.riko_lover == 2 &&  f.version_dl == 'fanza'"]
[glink  color="pink" size="20"  x="700"  width="400"  y=&tf.item_y  text="体操着を着てもらう"  target="*date_money" exp="tf.date_select = 12" ]
[eval exp="tf.item_y = tf.item_y + 60"]
[endif]
;ランドセル
[if exp="f.item[8] == true && f.school_bag_riko_h != 1 && f.riko_lover == 2 && f.version_dl == 'dlsite'"]
[glink  color="pink" size="20"  x="700"  width="400"  y=&tf.item_y  text="ランドセルを背負わせる"  target="*date_money" exp="tf.date_select = 13" ]
[eval exp="tf.item_y = tf.item_y + 60"]
[endif]
[s]
;■莉菜
*date_rina
#
莉菜ちゃんを誘ってみよう[p]
どこに誘おうかな
*date_rina2
[eval exp="tf.item_y = 490"]
[glink  color="pink" size="20"  x="700"  width="400"  y="130"  text="公園"  target="*date_money" exp="tf.date_select = 1"]
[glink  color="pink" size="20"  x="700"  width="400"  y="190"  text="カラオケ"  target="*date_money" exp="tf.date_select = 3" ]
[glink  color="pink" size="20"  x="700"  width="400"  y="250"  text="漫画喫茶"  target="*date_money" exp="tf.date_select = 4" ]
[glink  color="pink" size="20"  x="700"  width="400"  y="310"  text="カフェ"  target="*date_money" exp="tf.date_select = 5" ]
[glink  color="pink" size="20"  x="700"  width="400"  y="370"  text="遊園地"  target="*date_money" exp="tf.date_select = 6" ]
[glink  color="pink" size="20"  x="700"  width="400"  y="430"  text="映画"  target="*date_money" exp="tf.date_select = 10" ]
[if exp="f.day ==27 || f.day ==28"]
[glink  color="pink" size="20"  x="700"  width="400"  y="&tf.item_y"  text="お祭り"  target="*date_money" exp="tf.date_select = 7" ]
[eval exp="tf.item_y = tf.item_y + 60"]
[endif]
;コスプレ衣装メイド服
[if exp="f.item[1] == true && f.meido_rina_h != 1 && f.rina_lover == 2"]
[glink  color="pink" size="20"  x="700"  width="400"  y=&tf.item_y  text="メイド服を着てもらう"  target="*date_money" exp="tf.date_select = 8" ]
[eval exp="tf.item_y = tf.item_y + 60"]
[endif]
;バイブM
[if exp="f.item[4] == true && f.vibrator_rina_h != 1 && f.rina_lover == 2"]
[glink  color="pink" size="20"  x="700"  width="400"  y=&tf.item_y  text="バイブを使う"  target="*date_money" exp="tf.date_select = 9" ]
[eval exp="tf.item_y = tf.item_y + 60"]
[endif]
[s]
;■静江
*date_sizue
#
静江さんを誘ってみよう[p]
どこに誘おうかな
*date_sizue2
[eval exp="tf.item_y = 490"]
[glink  color="pink" size="20"  x="700"  width="400"  y="130"  text="公園" target="*date_money"  exp="tf.date_select = 1"]
[glink  color="pink" size="20"  x="700"  width="400"  y="190"  text="ゲームセンター" target="*date_money"  exp="tf.date_select = 2" ]
[glink  color="pink" size="20"  x="700"  width="400"  y="250"  text="カラオケ" target="*date_money"  exp="tf.date_select = 3" ]
[glink  color="pink" size="20"  x="700"  width="400"  y="310"  text="カフェ"  target="*date_money"  exp="tf.date_select = 5" ]
[glink  color="pink" size="20"  x="700"  width="400"  y="370"  text="遊園地"  target="*date_money"  exp="tf.date_select = 6" ]
[glink  color="pink" size="20"  x="700"  width="400"  y="430"  text="居酒屋"  target="*date_money"  exp="tf.date_select = 11" ]
[if exp="f.day ==27 || f.day ==28"]
[glink  color="pink" size="20"  x="700"  width="400"  y=&tf.item_y  text="お祭り" target="*date_money"  exp="tf.date_select = 7" ]
[eval exp="tf.item_y = tf.item_y + 60"]
[endif]
;コスプレ衣装ナース服
[if exp="f.item[2] == true && f.na_su_sizue_h != 1 && f.sizue_lover == 2"]
[glink  color="pink" size="20"  x="700"  width="400"  y=&tf.item_y  text="ナース服を着てもらう"  target="*date_money" exp="tf.date_select = 8" ]
[eval exp="tf.item_y = tf.item_y + 60"]
[endif]
;バイブL
[if exp="f.item[5] == true && f.vibrator_sizue_h != 1 && f.sizue_lover == 2"]
[glink  color="pink" size="20"  x="700"  width="400"  y=&tf.item_y  text="バイブを使う"  target="*date_money" exp="tf.date_select = 9" ]
[eval exp="tf.item_y = tf.item_y + 60"]
[endif]
[s]
;***********************************************************************************************************************
;デート資金判定
*date_money
;■ゲームセンター
[if exp="tf.date_select == 2 && f.money < 2000"]
#
ゲーセンなら２０００円くらいはあったほうがいいかな[p]
[jump target="*date_back"]
[endif]
;■カラオケ
[if exp="tf.date_select == 3 && f.money < 3000"]
カラオケなら３０００円くらいはあったほうがいいな[p]
[jump target="*date_back"]
[endif]
;■漫画喫茶
[if exp="tf.date_select == 4 && f.money < 3000"]
漫画喫茶なら３０００円くらいはあったほうがいいな[p]
[jump target="*date_back"]
[endif]
;■カフェ
[if exp="tf.date_select == 5 && f.money < 3000"]
カフェに誘うなら３０００円くらいはあったほうがいいな[p]
[jump target="*date_back"]
[endif]
;■遊園地
[if exp="tf.date_select == 6 && f.money < 6000"]
遊園地となると６０００円は必要かな[p]
[jump target="*date_back"]
[endif]
;■お祭り
[if exp="tf.date_select == 7 && f.money < 5000"]
最低でも５０００円くらいは必要かな[p]
[jump target="*date_back"]
[endif]
;■映画
[if exp="tf.date_select == 10 && f.money < 3000"]
最低でも３０００円くらいは必要かな[p]
[jump target="*date_back"]
[endif]
;■居酒屋
[if exp="tf.date_select == 11 && f.money < 5000"]
最低でも5０００円くらいは必要かな[p]
[jump target="*date_back"]
[endif]

;お金が足りる場合　シナリオジャンプ
[if exp="f.partner == 1"]
[jump storage="date_riko.ks"]
[endif]
[if exp="f.partner == 2"]
[jump storage="date_rina.ks"]
[endif]
[if exp="f.partner == 3"]
[jump storage="date_sizue.ks"]
[endif]
;お金が足りない場合　再選択
*date_back
#
お金が足りない……[p]
ほかの所にしよう[r]
[if exp="f.partner == 1"]
[jump target="*date_riko2"]
[endif]
[if exp="f.partner == 2"]
[jump target="*date_rina2"]
[endif]
[if exp="f.partner == 3"]
[jump target="*date_sizue2"]
[endif]
;***********************************************************************************************************************
;-夕方
*evening
[fadeoutbgm]
;桜子消去
#
[chara_hide name="sakurako"]
[stopse buf="0"]
;-告白イベント
[if exp="f.riko_lover ==1 || f.rina_lover == 1 || f.sizue_lover ==1"]
  [call storage="lover.ks" target="*confession"]
  ;夜にジャンプ
  [if exp="tf.enki == undefined || tf.enki == 0"]
   [jump target="*sleep"]
  [endif]
  [eval exp="tf.enki = 0"]
[endif]
;夕方イベントへコール
[call storage="evening.ks"]
;***********************************************************************************************************************
;-夕食後
[bg storage="living.png" time="1000"]
[uiwindows]
[if exp="f.dinner == undefined"]
#
夕食後のひと時[p]
今日も莉菜ちゃんのご飯は美味しかったな[p]
莉子ちゃんはテレビに夢中だな……[p]
静江さんはお酒を飲んでる[p]
莉菜ちゃんは洗い物などをしているけど[p]
[eval exp="f.dinner = true"]
[endif]
さて、どうしようか[p]
[call storage="sakurako.ks" target="*sakurako_evening"]
[anim name="sakurako" left="-50"]
#
*talk_evening
;会話相手選択
[glink  color="pink" size="20"  x="600"  width="400"  y="150"  text="莉子ちゃんと会話"  target="*evening_select" exp="tf.evening_select = 1"]
[glink  color="pink" size="20"  x="600"  width="400"  y="250"  text="莉菜ちゃんと会話"  target="*evening_select" exp="tf.evening_select = 2" ]
[glink  color="pink" size="20"  x="600"  width="400"  y="350"  text="静江さんと会話"  target="*evening_select" exp="tf.evening_select = 3" ]
[glink  color="pink" size="20"  x="600"  width="400"  y="450"  text="部屋に戻る"  target="*evening_select" exp="tf.evening_select = 0" ]
[s]
;夕食後の会話にコール
*evening_select
[layopt layer="1" visible="true"]
[image storage="window_02.png" layer="1" x="575" y="250" width="350" height="192" ]
[if exp="tf.evening_select == 1"]
[ptext layer="1" text="莉子ちゃんと会話しますか？" x="620" y="300" vertical="" size="20" shadow="0x000000"]
[endif]
[if exp="tf.evening_select == 2"]
[ptext layer="1" text="莉菜ちゃんと会話しますか？" x="620" y="300" vertical="" size="20" shadow="0x000000"]
[endif]
[if exp="tf.evening_select == 3"]
[ptext layer="1" text="静江さんと会話しますか？" x="620" y="300" vertical="" size="20" shadow="0x000000"]
[endif]
[if exp="tf.evening_select == 0"]
[ptext layer="1" text="部屋に戻りますか？" x="660" y="300" vertical="" size="20" shadow="0x000000"]
[endif]
[glink  color="pink" size="20"  x="600"  width="60"  y=360  text="はい"  target="*evening_select2"]
[glink  color="pink" size="20"  x="750"  width="60"  y=360  text="いいえ"  target="*evening_clear"]
[s]
*evening_clear
[freeimage layer="1"]
#
さて、どうしようか
[jump target="*talk_evening"]
*evening_select2
[freeimage layer="1"]
;桜子消去
#
[chara_hide name="sakurako"]
[call storage="evening.ks" target="*evening_events"]
;***********************************************************************************************************************
;お風呂イベント
[call storage="evening.ks" target="*bath"]
;夜にジャンプ
[jump target="*night"]
;***********************************************************************************************************************
;-休養
*break
[call storage="sakurako.ks" target="*sakurako_break"]
;体力回復
[eval exp="f.hp = 100"]
;メッセージボックス非表示
[cm]
[clearfix]
@layopt layer="message" visible=false
[chara_hide_all time="500"]
[playbgm storage="kyuusoku.ogg" loop="flase"]
@bg storage ="room_evening.png" time=1000
[jump target="*night"]


;***********************************************************************************************************************
;***********************************************************************************************************************
;***********************************************************************************************************************
;***********************************************************************************************************************
;***********************************************************************************************************************
;***********************************************************************************************************************
;***********************************************************************************************************************
;***********************************************************************************************************************
;***********************************************************************************************************************
;***********************************************************************************************************************
;-V1.03用セーブデータ修正
[if exp="f.save_v == undefined]
[eval exp="f.save_v = 1.03"]
;メッセージウィンドウの設定
[position layer="message0" left=0 top=560 width=1280 height=160 page=fore frame="message_frame/message_frame_03_text.png" visible=true]
;桜子消去
[chara_hide name="sakurako"]
[clearstack]
Ｖ1.01、V1.02からのセーブデータは変換の為にここでセーブをお願いします[r]
[jump storage="main.ks" target="*sleep"]
[endif]
;***********************************************************************************************************************
;***********************************************************************************************************************
;***********************************************************************************************************************
;***********************************************************************************************************************
;***********************************************************************************************************************
;***********************************************************************************************************************
;-バイト
*work
[call storage="sakurako.ks" target="*sakurako_work"]
[fadeoutse time="500"]
;所持金上昇
[eval exp="f.money = f.money + 4000"]
[if exp="f.oneweek ==5 || f.oneweek==6"]
[eval exp="f.money = f.money + 1500"]
[endif]
;体力減少
[eval exp="f.hp = f.hp - 40"]
[uiwindows]
[playse storage="se/money.ogg" buf="2"]
[kanim name="money" keyframe="money_a" time ="300"]
[stop_kanim]
;デートフラグオン（帰宅時に部屋に行くを消すための変数）
[eval exp="tf.date = true"]
;夜にジャンプ
[jump target="*night"]

;***********************************************************************************************************************
;-夜
*night
[fadeoutse]
;パートナー桜子変更
[eval exp="f.partner = 0"]
[iscript]
delete tf.sentaku_01;
delete tf.sentaku_02;
delete tf.sentaku_03;
delete tf.sentaku_04;
[endscript]
@bg storage ="room_night.png" time=1000
[menuwindows]
[uiwindows]
;***********************************************************************************************************************
;-宅配便
[if exp="f.delivery != undefined"]
[call storage="sakurako.ks" target="*sakurako_delivery"]
[call storage="delivery.ks"]
[iscript]
delete f.delivery;
[endscript]
;桜子消去
#
[chara_hide name="sakurako"]
[endif]
;***********************************************************************************************************************
#
さて……どうしようかな？
;おねだりエッチ判別コール
[call storage="orgasm.ks"]

*night_choice

[eval exp="tf.y_iti = 150"]
[if exp="tf.sentaku_01  == undefined"]
 [glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="桜子と話す"  target="*talk" exp="tf.sentaku_01 = true" ]
 [eval exp="tf.y_iti = tf.y_iti + 100"]
[endif]

[if exp="f.riko_lover  == 2 ||  f.rina_lover  == 2 || f.sizue_lover  == 2"]
 [if exp="tf.sentaku_04  == undefined"]
 [glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="PCを見る"  target="*pc" exp="tf.sentaku_04 = true" ]
 [eval exp="tf.y_iti = tf.y_iti + 100"]
 [endif]
[endif]

[if exp="tf.sentaku_02  == undefined"]
 [glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="占い"  target="*status"   exp="tf.sentaku_02 = true"]
 [eval exp="tf.y_iti = tf.y_iti + 100"]
[endif]

[if exp="f.riko_lover == 2 || f.rina_lover == 2 || f.sizue_lover == 2 || f.sizue_lover  == 1.5"]
 [if exp="tf.sentaku_03  == undefined"]
  [if exp="tf.date  == undefined"]
   [glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="部屋にいく"  target="*room"  exp="tf.sentaku_03 = true" ]
   [eval exp="tf.y_iti = tf.y_iti + 100"]
  [endif]
 [endif]
[endif]

[glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="寝る"  target="*sleep_dialog" ]
[s]
;***********************************************************************************************************************
;-部屋にいく
*room
[eval exp="tf.y_iti = 150"]
[if exp="f.riko_lover  == 2"]
[glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="莉子ちゃんの部屋"  target="*room_choice" exp="tf.room = 1"]
[eval exp="tf.y_iti = tf.y_iti + 100"]
[endif]
[if exp="f.rina_lover  == 2"]
[glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="莉菜ちゃんの部屋"  target="*room_choice" exp="tf.room = 2"]
[eval exp="tf.y_iti = tf.y_iti + 100"]
[endif]
[if exp="f.sizue_lover  == 2 || f.sizue_lover  == 1.5"]
[glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="静江さんの部屋"  target="*room_choice" exp="tf.room = 3"]
[eval exp="tf.y_iti = tf.y_iti + 100"]
[endif]
[glink  color="pink" size="20"  x="700"  width="400"  y="&tf.y_iti"  text="やめる"  target="*night_choice"]
[s]
*room_choice
;***********************************************************************************************************************
;確認ダイアログ
[layopt layer="1" visible="true"]
[image storage="window_02.png" layer="1" x="575" y="250" width="350" height="192" ]
[if exp="tf.room == 1"]
[ptext layer="1" text="莉子ちゃんの部屋に行きますか？" x="600" y="300" vertical="" size="20" shadow="0x000000"]
[endif]
[if exp="tf.room == 2"]
[ptext layer="1" text="莉菜ちゃんの部屋に行きますか？" x="600" y="300" vertical="" size="20" shadow="0x000000"]
[endif]
[if exp="tf.room == 3"]
[ptext layer="1" text="静江さんの部屋に行きますか？" x="600" y="300" vertical="" size="20" shadow="0x000000"]
[endif]
[glink  color="pink" size="20"  x="600"  width="60"  y=360  text="はい"  target="*room_choice3"]
[glink  color="pink" size="20"  x="750"  width="60"  y=360  text="いいえ"  target="*room_choice2"]
[s]
*room_choice2
[freeimage layer="1"]
[iscript]
delete tf.sentaku_03;
[endscript]
[jump target="*room"]
*room_choice3
[freeimage layer="1"]
;桜子会話コール
[call storage="sakurako.ks" target="*sakurako_room"]
;桜子消去
#
[chara_hide name="sakurako"]
;部屋シナリオにジャンプ
[if exp="tf.room == 1"]
 [jump storage="room_riko.ks"]
[endif]
;部屋シナリオにジャンプ
[if exp="tf.room == 2"]
 [jump storage="room_rina.ks"]
[endif]
;部屋シナリオにジャンプ
[if exp="tf.room == 3"]
 [jump storage="room_sizue.ks"]
[endif]
[stopse buf="0"]
[jump target="*night_choice"]
;***********************************************************************************************************************
;-占い
*status
;確認ダイアログ
[layopt layer="1" visible="true"]
[image storage="window_02.png" layer="1" x="575" y="250" width="350" height="192" ]
[ptext layer="1" text="占いをしますか？" x="660" y="300" vertical="" size="20" shadow="0x000000"]
[glink  color="pink" size="20"  x="600"  width="60"  y=360  text="はい"  target="*status2"]
[glink  color="pink" size="20"  x="750"  width="60"  y=360  text="いいえ"  target="*status1"]
[s]
*status1
[freeimage layer="1"]
[iscript]
delete tf.sentaku_02;
[endscript]
[jump target="*night_choice"]
*status2
[freeimage layer="1"]
[call storage="sakurako.ks" target="*sakurako_status"]
[jump target="*night_choice"]
;***********************************************************************************************************************
;-桜子と会話
*talk
[call storage="sakurako.ks" target="*sakurako_talk"]
[jump target="*night_choice"]
;***********************************************************************************************************************
;-PCを見る
*pc
;桜子消去
#
[chara_hide name="sakurako"]
[call storage="sakurako.ks" target="*pc_sakurako"]
[call storage="pc.ks"]
[jump target="*night_choice"]
;***********************************************************************************************************************
;就寝確認ダイアログ
*sleep_dialog
[layopt layer="1" visible="true"]
[image storage="window_02.png" layer="1" x="575" y="250" width="350" height="192" ]
[ptext layer="1" text="就寝しますか？" x="670" y="300" vertical="" size="20" shadow="0x000000"]
[glink  color="pink" size="20"  x="600"  width="60"  y=360  text="はい"  target="*sleep_dialog3"]
[glink  color="pink" size="20"  x="750"  width="60"  y=360  text="いいえ"  target="*sleep_dialog2"]
[s]
*sleep_dialog2
[freeimage layer="1"]
[jump target="*night_choice"]
*sleep_dialog3
[freeimage layer="1"]
;***********************************************************************************************************************
;-就寝
*sleep
#
さて、日記を書いて寝るかな[p]
今日は
[emb exp="f.day"]日、
[emb exp="f.week[f.oneweek]"][p]
;セーブ画面移動
[jump storage="save_scenario.ks"]
*save_out

;体力回復
[eval exp="f.hp = f.hp　+ 10"]
[if exp="f.hp > 100"]
[eval exp="f.hp = 100"]
[endif]


;精力回復
[eval exp="f.energy = f.energy + 20"]
[if exp="f.energy < 0"]
[eval exp="f.energy = 0"]
[endif]

;主人公我慢強さ上限 600
[if exp="f.patience > 600"]
 [eval exp="f.patience = 600"]
[endif]

;莉子エッチ度上限 100
[if exp="f.riko_h > 100"]
 [eval exp="f.riko_h = 100"]
[endif]

;莉菜エッチ度上限 100
[if exp="f.rina_h > 100"]
 [eval exp="f.rina_h = 100"]
[endif]

;静江エッチ度上限 100
[if exp="f.sizue_h > 100"]
 [eval exp="f.sizue_h = 100"]
[endif]


;日付を1日更新
[eval exp="f.day = f.day + 1"]
[if exp="f.day == 29"]
[eval exp="f.day = f.day = 1"]
[endif]

;曜日を更新
[eval exp="f.oneweek =　f.oneweek + 1"]
[if exp="f.oneweek == 7"]
[eval exp="f.oneweek = 0"]
[endif]

;好感度100判別
[if exp="f.riko_lover != 1 && f.rina_lover != 1 && f.sizue_lover != 1 && f.sizue_lover != 1.5"]
 [if exp="f.riko_f >= 100 || f.rina_f >= 100 || f.sizue_f >= 100"]
  [call storage="lover.ks"]
 [endif]
[endif]

;パートナー桜子変更
[eval exp="f.partner = 0"]

;デートフラグ消去
[iscript]
delete tf.date;
[endscript]

;喘ぎ声消去
[iscript]
delete tf.aegi;
delete tf.aegi_old
[endscript]


;f.riko_orgasm  絶頂経験ありでフラグオン
;f.riko_sex エッチしたらフラグオン
;f.riko_libido 性欲 エッチしないと増加
;性欲増減　莉子
;絶頂フラグオンで判別
[if exp="f.riko_orgasm == true"]
 ;その日のエッチ有でリセット
 [if exp="f.riko_sex == true"]
  [eval exp="f.riko_libido = 0"]
  ;エッチ無しで性欲増加
  [else]
   [eval exp="f.riko_libido = f.riko_libido + 1"]
 [endif]
[endif]
;性欲増減　莉菜
;絶頂フラグオンで判別
[if exp="f.rina_orgasm == true"]
 ;その日のエッチ有でリセット
 [if exp="f.rina_sex == true"]
  [eval exp="f.rina_libido = 0"]
  ;エッチ無しで性欲増加
  [else]
   [eval exp="f.rina_libido = f.rina_libido + 1"]
 [endif]
[endif]
;性欲増減　静江
;絶頂フラグオンで判別
[if exp="f.sizue_orgasm == true"]
 ;その日のエッチ有でリセット
 [if exp="f.sizue_sex == true"]
  [eval exp="f.sizue_libido = 0"]
  ;エッチ無しで性欲増加
  [else]
   [eval exp="f.sizue_libido = f.sizue_libido + 1"]
 [endif]
[endif]

;エッチしたかの変数初期化
[eval exp="f.riko_sex = false"]
[eval exp="f.rina_sex = false"]
[eval exp="f.sizue_sex = false"]

;***********************************************************************************************************************
;エンディング条件フラグ
[if exp="f.endflag == undefined"]
 [if exp="f.riko_h >= 85"]
  [eval exp="f.sakurako_yakyuu_end = 0"]
  [eval exp="f.endflag = 1"]
 [endif]
 [if exp="f.rina_h >= 85"]
  [eval exp="f.sakurako_yakyuu_end = 0"]
  [eval exp="f.endflag = 1"]
 [endif]
 [if exp="f.sizue_h >= 95"]
  [eval exp="f.sakurako_yakyuu_end = 0"]
  [eval exp="f.endflag = 1"]
 [endif]
 [endif]

;不要なスタック削除
[clearstack]

[jump target="*morning"]
;***********************************************************************************************************************

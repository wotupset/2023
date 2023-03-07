;温泉旅行
*start
[bg storage="black.png" time="1000"]
#
電車に揺られて２時間ほど[p]
引きこもりにはこの長旅はきついな～…[p]
[fadeinse storage="se/cicada.ogg" buf="2" loop="true" time="2000"]
駅からしばらく歩くと[r]
温泉旅館が見えてきた！[p]

[bg storage="spa/japanese_hotel.png" time="1000"]
はやく混浴に入りたいな～[p]
楽しみだ～[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]
[movie storage="mov_38_1.webm" skip="true" ]
[menuwindows]
[bg storage="spa/img_38_2_1.png" time="1000"]
猫がいる！[p]
随分人慣れしているけど[r]
この旅館の看板猫かな[p]
[bg storage="spa/img_38_2_2.png" time="1000"]
いや、桜子…[p]
戦おうとしているのか…[p]
必殺技を叫んでいるが相手にされてないだろう[p]
[bg storage="spa/img_38_2_4.png" time="1000"]
静江さんは相変わらずポチモンに夢中だな[p]
この地域にしかいない珍しいポチモンがいるのかな[p]
[bg storage="spa/img_38_2_3.png" time="1000"]
おお！これは？[p]
絶好のパンチラチャンスじゃないか！[p]
さすが猫パワー！[p]
ここまで無防備にさせるとは！[p]
もう少し近くで堪能しとこう[p]
[bg storage="spa/img_38_2_6.png" time="1000"]
莉子ちゃん猫に夢中だね[p]
[bg storage="spa/img_38_2_5.png" time="1000"]
莉菜ちゃんもナイスパンチラ！[p]
[bg storage="black.png" time="1000"]
猫と十分戯れたので部屋に移動した[p]
[fadeoutse time="2000" buf="2"]
[bg storage="spa/hotel_room.png" time="1000"]
なかなかいい部屋じゃないか！[p]
[bgmovie storage="mov_38_4.webm"]
#莉子
[playse storage="riko/rk38_001.ogg" buf="0"]
お部屋広～い！[p]
#
浴衣に着替えた莉子ちゃんがはしゃいでいる！[p]
[bg storage="spa/img_38_10_8.png" time="0"]
[stop_bgmovie time="1000"]
#莉菜
[playse storage="rina/rn48_008.ogg" buf="0"]
お茶いれますよ[p]
#
莉菜ちゃんありがとう[p]
[bg storage="spa/img_38_10_9.png" time="1000"]
#静江
[playse storage="sizue/sz57_005.ogg" buf="0"]
まずは缶ビールかしら！[p]
静江さん早すぎです![p]
#
[bg storage="black.png" time="1000"]
[bg storage="spa/spa01.png" time="1000"]
#
そしてお待ちかねの温泉にやってきた[p]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[bg storage="black.png" time="1000"]
[movie storage="mov_38_5.webm" skip="true" ]
[movie storage="mov_57_2.webm" skip="true" ]
[movie storage="mov_48_11.webm" skip="true" ]
[menuwindows]
[bg storage="spa/spa01.png" time="1000"]
#
そんな～…[p]
混浴に入れないなんて…[p]
[chara_show name="sakurako" face="niya" left=100 ]
…温泉、一緒に入るか？[p]
[chara_mod  name="sakurako" face="okori02" ]
#桜子
[playse storage="sakurako/sa80_089.ogg" buf="0"]
誰が入るか！このド変態が[r]
わしはみんなと女湯に入るのじゃ！[p]
;桜子消去
#
[chara_hide name="sakurako"]
[stopse]
ひとり寂しく入るか…[p]
[fadeinbgm storage="bass.ogg" time="2000" loop="true"]
[bg storage="spa/spa02.png" time="1000"]
ふむ[p]
なかなか良い湯である[p]
この壁の向こうに女湯が…[p]
今こそ特殊能力の妄想を発揮する時かもしれない[p]
は～[p]
;エッチ度70以上で選択肢出現
[if exp="f.riko_h >= 70"]
[glink  color="pink" size="20"  x="700"  width="400"  y="150"  text="莉子ちゃんを妄想"  target="*spa_riko"]
[endif]
[if exp="f.rina_h >= 70"]
[glink  color="pink" size="20"  x="700"  width="400"  y="250"  text="莉菜ちゃんを妄想"  target="*spa_rina"]
[endif]
[if exp="f.sizue_h >= 70"]
[glink  color="pink" size="20"  x="700"  width="400"  y="350"  text="静江さんを妄想"  target="*spa_sizue"]
[endif]
[s]
;***********************************************************************************************************************
;莉子ちゃん女湯
*spa_riko
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_1.png" time="4000"]
……[p]
見えるぞ！女湯が見える！[p]
莉子ちゃんが見えるぞ！[p]
はぁ…はぁ…[p]
まだだ！更に妄想力を解放だ！[p]
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_2.png" time="4000"]
[eval exp="tf.choice = 1"]
[jump target="*spa_night"]
;***********************************************************************************************************************
;莉菜ちゃん女湯
*spa_rina
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_4.png" time="4000"]
……[p]
見えるぞ！女湯が見える！[p]
莉菜ちゃんが見えるぞ！[p]
はぁ…はぁ…[p]
まだだ！更に妄想力を解放だ！[p]
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_5.png" time="4000"]
[eval exp="tf.choice = 2"]
[jump target="*spa_night"]
;***********************************************************************************************************************
;静江さん女湯
*spa_sizue
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_6.png" time="4000"]
……[p]
見えるぞ！女湯が見える！[p]
静江さんが見えるぞ！[p]
はぁ…はぁ…[p]
まだだ！更に妄想力を解放だ！[p]
[fadeinse storage="se/o_ra.ogg" buf="2" time="2000"]
[bg storage="spa/img_38_10_7.png" time="4000"]
[eval exp="tf.choice = 3"]
[jump target="*spa_night"]
;***********************************************************************************************************************
;温泉夜
*spa_night
はぁはぁ…[p]
我ながら素晴らしい妄想力だ[p]
…[p]
[stopse buf="2"]
なんてことをしていたら、のぼせてきてしまった[p]
そろそろあがるか[p]
[fadeoutbgm time="1000"]
[bg storage="black.png" time="1000"]
なんだかんだと楽しんで夜になった[p]
[stopse buf="0"]
[stopse buf="2"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[if exp="tf.choice == 1"]
[movie storage="mov_38_12.webm" skip="true" ]
[endif]
[if exp="tf.choice == 2"]
[movie storage="mov_48_12.webm" skip="true" ]
[endif]
[if exp="tf.choice == 3"]
[movie storage="mov_57_3.webm" skip="true" ]
[endif]
[bg storage="spa/hoter_room2.png" time="1000"]
[menuwindows]
……[p]
広縁に追いやられてしまった[p]
まぁ…しょうがないよね[p]
寝るかな[p]
[bg storage="black.png" time="2000"]
[if exp="tf.choice == 1"]
[jump target="*spa_riko_h"]
[endif]
[if exp="tf.choice == 2"]
[jump target="*spa_rina_h"]
[endif]
[if exp="tf.choice == 3"]
[jump target="*spa_sizue_h"]
[endif]
;***********************************************************************************************************************
;莉子ちゃん女湯
*spa_riko_h
[bgmovie storage="mov_38_13.webm" time="2000"]
#
ん……んんっ……ん？　莉子ちゃん！[p]
#莉子
[playse storage="riko/rk38_008.ogg" buf="0"]
何、勝手に寝てるのよ！　ほらっ、貸し切りの風呂にいくわよ！[p]
[stop_bgmovie time="1000"]
[stopse]
#
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_38_15.webm" skip="true" ]
[movie storage="mov_38_16.webm" skip="true" ]
[fadeinbgm storage="bass.ogg" time="2000" loop="true"]
[menuwindows]
[bgmovie storage="mov_38_17.webm" time="2000"]
#
莉子ちゃんと一緒にお温泉入っている！[p]
感謝を込めて綺麗に洗ってあげなければ[p]
莉子お嬢さま、召使めが綺麗に洗わせていただきます[p]
#莉子
[playse storage="riko/rk38_009.ogg" buf="0"]
ちゃんと、綺麗に洗ってね！[p]
#
[stopse]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_38_19.webm" skip="true" ]
[menuwindows]
#莉子
[playse storage="riko/rk38_011.ogg" buf="0"]
こ、こら！　そこは！[p]
[fadeinbgm storage="bass2.ogg" time="2000" loop="true"]
[bgmovie storage="mov_38_20.webm" time="2000"]
#
莉子お嬢様、ここも丁寧に洗わせて頂きます[p]
#
こんなにヌルヌルによごれていますね！　[r]
召使めがしっかり奥まで綺麗にいたしますのでご安心を！[p]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_38_21.webm" skip="true" ]
[playse storage="riko/rk38_013.ogg" buf="0" loop="true"]
[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
[bgloop mov="mov_38_22.webm"  ti="2000"]
[playse storage="riko/rk38_014.ogg" buf="0" loop="true"]
[bgloop mov="mov_38_23.webm"  ti="2000"]
[playse storage="riko/rk38_015.ogg" buf="0" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop="true"]
[bgloop mov="mov_38_24.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_38_25.webm" skip="true"]
[playse storage="riko/rk36_021.ogg" buf="0" loop="true"]
[bgloop mov="mov_38_26.webm"  ti="2000"]
[stopse buf="0"]
[movie storage="mov_38_27.webm" skip="true ]
[bg storage="black.png" time = 500]
[stop_bgmovie]
;温泉帰りフラグ
[eval exp="f.spa = 4"]
;莉子ちゃん温泉エッチフラグ
[eval exp="f.spa_riko_h = 1"]
;莉子ちゃん愛情UP
[riko_i]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉子ちゃんエッチフラグ
[eval exp="f.riko_sex = true"]

[return]
;***********************************************************************************************************************
;莉菜ちゃん女湯
*spa_rina_h
[bgmovie storage="mov_48_13.webm" time="2000"]
#
ん、んん……あれ、莉菜ちゃん！[p]
#莉菜
[playse storage="rina/rn48_011.ogg" buf="0"]
お兄さん……ごめんなさい、起きちゃいました？　眠れなかったので……[p]
#
莉菜ちゃんが来てくれて、嬉しいな[r]
そうだ、貸し切り風呂あるから行ってみようよ[p]
#莉菜
[playse storage="rina/rn48_012.ogg" buf="0"]
えっ、は……はい[p]
[stop_bgmovie time="1000"]
[stopse]
#
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_48_15.webm" skip="true" ]
[movie storage="mov_48_16.webm" skip="true" ]
[movie storage="mov_48_17.webm" skip="true" ]
[fadeinbgm storage="bass2.ogg" time="2000" loop="true"]
[menuwindows]
[bgmovie storage="mov_48_18.webm" time="2000"]
#
莉菜ちゃんと一緒にお温泉入っている！[p]
感謝を込めて綺麗に洗ってあげなければ[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_48_19.webm" time="2000"]
#莉菜
[playse storage="rina/rn48_013.ogg" buf="0"]
あんっ……お兄さん……そんなに触ったら……だめ……[p]
[playse storage="rina/rn48_014.ogg" buf="0" loop="true"]
#
莉菜ちゃんのおっぱい、こんなに大きいからちゃんと洗わないとね[p]
莉菜ちゃん、乳首立ってきたよ！　気持ちいい？[p]
#莉菜
[playse storage="rina/rn48_015.ogg" buf="0"]
やだ！　お兄さん、変な事いわないでください！[p]
でも、莉菜ちゃん、気持ちいいから乳首立ってきたんでしょ[r]
違うの？　気持ちよくない？[p]
#莉菜
…………[p]
気持ちよくないの？　莉菜ちゃん[p]
#莉菜
[playse storage="rina/rn48_017.ogg" buf="0"]
き……気持ちいい……です[p]
じゃぁ、もっともっと気持ちよくしてあげる[p]
#莉菜
[playse storage="rina/rn48_018.ogg" buf="0"]
あっ、お兄さん……そこは……[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_48_20.webm" time="2000"]
ここも、いっぱい綺麗にしてあげる[p]
こんなにヌルヌルになって、気持ちいい？　莉菜ちゃん？[p]
#莉菜
[playse storage="rina/rn48_019.ogg" buf="0"]
……気持ちいいです……[p]
#
どこが気持ちいいの？　莉菜ちゃん[p]
#莉菜
[playse storage="rina/rn48_020.ogg" buf="0"]
え？[p]
#
莉菜ちゃん、どこが気持ちいいのか、莉菜ちゃんのお口から教えて[p]
#莉菜
[playse storage="rina/rn48_021.ogg" buf="0"]
い、言えない……そんなこと……[p]
#
気持ちいいんでしょ？　莉菜ちゃん[r]
どこが気持ちいいか言ってくれないとやめちゃうよ[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_48_21.webm" time="2000"]
#莉菜
[playse storage="rina/rn48_022.ogg" buf="0"]
んっ……おにいさんの……いじわる……[p]
#
莉菜ちゃんの口から聞かせてほしいな[r]
どこが気持ちいいのか！　さあ、莉菜ちゃん[p]
#莉菜
[playse storage="rina/rn48_023.ogg" buf="0"]
……お、おまんこが……[p]
#
聞こえないよ、莉菜ちゃん[p]
#莉菜
[playse storage="rina/rn48_024.ogg" buf="0"]
おまんこが、気持ちいいです……[p]
#
ちゃんと言えたね、でも莉菜ちゃんのおまんこ[r]
もっと気持ちよくなりたいみたいだよ！　さっきから挿れて、挿れてって言ってる[p]
#莉菜
[playse storage="rina/rn48_025.ogg" buf="0"]
いっ……言ってない……[p]
#
え～！　言ってるよ、莉菜ちゃんのおまんこが！[r]
ほら！　挿れて、挿れてって！　言ってるでしょ[p]
#莉菜
…………[p]
#
何を挿れてほしいのかな？　莉菜ちゃん、教えて？[p]
#莉菜
[playse storage="rina/rn48_027.ogg" buf="0"]
し、知らないもん……[p]
#
でも、莉菜ちゃんのおまんこ、こんなに挿れて～って言ってるよ！[r]
ほら莉菜ちゃん、言ってごらん[p]
#莉菜
[playse storage="rina/rn48_028.ogg" buf="0"]
お、おちんちん……[p]
#
ん？　おちんちんをどうしたいの？[p]
#莉菜
[playse storage="rina/rn48_029.ogg" buf="0"]
お兄さんのおちんちんを、私の……おまんこに挿れてください……[p]	
#
莉菜ちゃんは、いやらしい子だな～　おにいさんがいっぱいお仕置きしてあげるからね！[p]
[stop_bgmovie time="1000"]
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[playse storage="rina/rn48_031.ogg" buf="0" loop="true"]
[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
[bgloop mov="mov_48_23.webm"  ti="2000"]
[bgloop mov="mov_48_24.webm"  ti="2000"]
[playse storage="rina/rn48_032.ogg" buf="0" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop="true"]
[bgloop mov="mov_48_25.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_48_26.webm" skip="true"]
[playse storage="rina/rn48_033.ogg" buf="0" loop="true"]
[bgloop mov="mov_48_27.webm"  ti="2000"]
[stopse buf="0"]
[movie storage="mov_48_28.webm" skip="true ]
[bg storage="black.png" time = 500]
[stop_bgmovie]
;温泉帰りフラグ
[eval exp="f.spa = 4"]
;莉菜ちゃん温泉エッチフラグ
[eval exp="f.spa_rina_h = 1"]
;莉菜ちゃん愛情UP
[rina_i]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;莉菜ちゃんエッチフラグ
[eval exp="f.rina_sex = true"]

[return]
;***********************************************************************************************************************
;静江さん女湯
*spa_sizue_h
[bgmovie storage="mov_57_4.webm" time="2000"]
#
んっ……むぐ……し、静江さん！[p]
#静江
[playse storage="sizue/sz57_007.ogg" buf="0"]
こ～ら！　お兄ちゃん、なに寝ちゃってるの！[p]
#
は、はい、すいません！[p]
#静江
[playse storage="sizue/sz57_008.ogg" buf="0"]
夜はこれからでしょ！　貸し切りのお風呂にいくわよ！[p]
[stop_bgmovie time="1000"]
[stopse]
#
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_57_5.webm" skip="true" ]
[menuwindows]
[fadeinbgm storage="bass2.ogg" time="2000" loop="true"]
[bgmovie storage="mov_57_6.webm" time="2000"]
#
静江さんと一緒のお風呂だ[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_57_7.webm" time="2000"]

#静江
[playse storage="sizue/sz57_009.ogg" buf="0"]
お兄ちゃんの体、おばさんが綺麗に洗ってあげる！[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_57_8.webm" time="2000"]
#
静江さんおっぱい……きもちいいです[p]
#静江
[playse storage="sizue/sz57_010.ogg" buf="0"]
どう？お兄ちゃん、おばさんのおっぱい気持ちいい？[r]
お兄ちゃんおっぱい好きだもんね、おっぱいでいっぱい洗ってあげる[p]
#
静江さん！　あっ、ううう！[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_57_9.webm" time="2000"]
#静江
[playse storage="sizue/sz57_012.ogg" buf="0"]
お兄ちゃん、気持ちいい？[r]
お兄ちゃんのオチンチン、ビクンビクンしてるわよ！[p]
#
き、気持ちいいです！　静江さん……　[p]
#静江
[playse storage="sizue/sz57_013.ogg" buf="0"]
お兄ちゃん、気持ちよさそう！　うふふ、かわいい[r]
でもダメよ！　まだいっちゃダメ！　おばさんも気持ちよくしてくれなきゃダ～メ！[p]
[stop_bgmovie time="1000"]
[bgmovie storage="mov_57_10.webm" time="2000"]
#静江
[playse storage="sizue/sz57_014.ogg" buf="0"]
ほら見てお兄ちゃん！おばさんのココこんなになってるのよ！お兄ちゃんのオチンチンが[r]
挿れたくてもうオマンコグチョグチョなの……お兄ちゃん、挿れていい？[p]
#
い……挿れさせてください[r]
静江さんのオマンコに挿れさせて下さい！[p]
[stop_bgmovie time="1000"]
[stopse]
#
[cm]
[clearfix]
;メッセージボックスは非表示
@layopt layer="message" visible=false
[movie storage="mov_57_11.webm" skip="true" ]

[playse storage="se/kutyu02.ogg" buf="3" loop="true"]
[bgloop mov="mov_57_12.webm"  ti="2000"]
[playse storage="sizue/sz57_016.ogg" buf="0" loop="true"]
[playse storage="se/kutyu03.ogg" buf="3" loop="true"]
[bgloop mov="mov_57_14.webm"  ti="2000"]
[bgloop mov="mov_57_15.webm"  ti="2000"]
[stopse buf="0"]
[stopse buf="3"]
[movie storage="mov_57_16.webm" skip="true"]
[playse storage="sizue/sz57_017_1.ogg" buf="0" loop="true"]
[bgloop mov="mov_57_17.webm"  ti="2000"]
[stopse buf="0"]
[movie storage="mov_57_18.webm" skip="true ]
[bg storage="black.png" time = 500]
[stop_bgmovie]

;温泉帰りフラグ
[eval exp="f.spa = 4"]
;静江さん温泉エッチフラグ
[eval exp="f.spa_sizue_h = 1"]
;静江さん愛情UP
[sizue_i]
;主人公精力減少
[eval exp="f.energy = f.energy - 30"]
;静江さんエッチフラグ
[eval exp="f.sizue_sex = true"]

[return]

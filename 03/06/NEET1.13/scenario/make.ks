;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;メッセージウィンドウの設定
[position layer="message0" left=0 top=560 width=1280 height=160 page=fore frame="message_frame/message_frame_03_text.png" visible=true]
;make.ks はロード時にcallとして呼ばれるため、return必須です。
[return]


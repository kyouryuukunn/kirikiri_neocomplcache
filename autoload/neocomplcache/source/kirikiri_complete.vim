
" plugin for neocomplcache <http://github.com/Shougo/neocomplcache>
"
" This plugin requires ghc-mod <http://www.mew.org/~kazu/proj/ghc-mod/>

let s:source = {
      \ 'name' : 'kirikiri_complete',
      \ 'kind' : 'ftplugin',
      \ 'filetypes': { 'kirikiri': 1 },
      \ }

function! s:source.initialize()
endfunction

function! s:source.finalize()
endfunction

function! s:source.get_keyword_pos(cur_text)
  if neocomplcache#within_comment()
    return -1
  endif

  if a:cur_text =~ '^@.* \|\[.* '
    return matchend(a:cur_text, '^@.* \|\[.* ')
	else
    return matchend(a:cur_text, '^@\|\[')
  endif
endfunction

function! s:source.get_complete_words(cur_keyword_pos, cur_keyword_str)
  let l:list = []

  let l:line = getline('.')
 if l:line =~ '\<animstart\>'
   call add(l:list, {'word': 'layer=',		'menu': '(必)アニメーションを開始するレイヤを指定します。'})
   call add(l:list, {'word': 'page=',		'menu': '表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します。 省略すると表ページであると見なされます。'})
   call add(l:list, {'word': 'seg=',		'menu': '(必)この属性で指定したセグメント番号でアニメーションを開始します。'})
   call add(l:list, {'word': 'target=',		'menu': '(必)アニメーションを開始するための asd ファイル中のラベルを 指定します。'})
 elseif l:line =~ '\<animstop\>'
   call add(l:list, {'word': 'layer=',		'menu': '(必)アニメーションを停止するレイヤを指定します。'})
   call add(l:list, {'word': 'page=',		'menu': '表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します。 省略すると表ページであると見なされます。'})
   call add(l:list, {'word': 'seg=',		'menu': '(必)この属性で指定したセグメント番号のアニメーションを停止します。'})
 elseif l:line =~ '\<autowc\>'
   call add(l:list, {'word': 'enabled=',		'menu': '自動ウェイトを有効にする場合は true を、無効にするには false を指定します。'})
   call add(l:list, {'word': 'ch=',		'menu': '自動ウェイトを入れる文字を指定します。指定された文字のあとに、time 属性で 指定した文字数分のウェイトが入ります。'})
   call add(l:list, {'word': 'time=',		'menu': '自動ウェイトを入れる時間を文字数単位で指定します。'})
 elseif l:line =~ '\<backlay\>'
   call add(l:list, {'word': 'layer=',		'menu': '対象となるレイヤを指定します。'})
 elseif l:line =~ '\<bgmopt\>'
   call add(l:list, {'word': 'volume=',		'menu': 'BGM の音量を % で指定します。初期状態の KAG では 100 % です。省略すれば音量は変更されません。'})
   call add(l:list, {'word': 'gvolume=',		'menu': 'BGM の大域音量を % で指定します。初期状態の KAG では 100 % です。省略すれば音量は変更されません。'})
 elseif l:line =~ '\<button\>'
   call add(l:list, {'word': 'graphic=',		'menu': '(必)ボタンにする画像を指定します。'})
   call add(l:link, {'word': 'graphickey=',		'menu': '0xRRGGBB 形式 または パレットインデックス番号 または "adapt"	ボタンにする画像のカラーキーを指定します。'})
   call add(l:list, {'word': 'storage=',		'menu': 'ジャンプ先のシナリオファイルを指定します。省略すると、現在 のシナリオファイル内であると見なされます。'})
   call add(l:list, {'word': 'target=',		'menu': 'ジャンプ先のラベルを指定します。'})
   call add(l:list, {'word': 'recthit=',		'menu': '矩形で当たり判定を行うかどうかを指定します。true が指定されていると、 ボタンの表示されている矩形全域でマウスのクリックなどに反応します。 false が指定されていると、ボタンの不透明度が 64 未満の領域では マウスのクリックなどに反応しなくなります。'})
   call add(l:list, {'word': 'exp=',		'menu': 'クリックされたときに実行される TJS 式を指定します。省略すれば 式は実行されません。storage や target が指定されていた場合、この式 が実行されてからジャンプ先に移動します。'})
   call add(l:list, {'word': 'hint=',		'menu': 'リンクを選択し、マウスカーソルを静止させたときに表示される ツールチップヒントを指定します。'})
   call add(l:list, {'word': 'onenter=',		'menu': 'ボタン内にマウスカーソルが入ってきたときに実行される TJS 式を 指定します。'})
   call add(l:list, {'word': 'onleave=',		'menu': 'ボタン内からマウスカーソルが出ていった時に実行される TJS 式を 指定します。'})
   call add(l:list, {'word': 'countpage=',		'menu': 'ボタンを選択して他のラベルに移行するときに、このリンクのある 場所のラベルを「読んだ」とみなすかどうかを指定します。'})
   call add(l:list, {'word': 'clickse=',		'menu': 'クリックされたときに再生する効果音を指定します。指定しなければ 効果音は再生されません。'})
   call add(l:list, {'word': 'clicksebuf=',		'menu': 'clickse で指定した効果音を鳴らす効果音バッファを指定します。 省略すると 0 であると見なされます。'})
   call add(l:list, {'word': 'enterse=',		'menu': 'マウスが進入したときに再生する効果音を指定します。指定しなければ 効果音は再生されません。'})
   call add(l:list, {'word': 'entersebuf=',		'menu': 'enterse で指定した効果音を鳴らす効果音バッファを指定します。 省略すると 0 であると見なされます。'})
   call add(l:list, {'word': 'leavese=',		'menu': 'マウスが退出したときに再生する効果音を指定します。指定しなければ 効果音は再生されません。'})
   call add(l:list, {'word': 'leavesebuf=',		'menu': 'leavese で指定した効果音を鳴らす効果音バッファを指定します。 省略すると 0 であると見なされます。'})
 elseif l:line =~ '\<call\>'
   call add(l:list, {'word': 'storage=',		'menu': '呼び出したいサブルーチンのあるのシナリオファイルを 指定します。省略すると、現在 のシナリオファイル内であると見なされます。'})
   call add(l:list, {'word': 'target=',		'menu': '呼び出すサブルーチンのラベルを指定します。'})
   call add(l:list, {'word': 'countpage=',		'menu': '他のラベルに移行するときに、このタグのある 場所のラベルを「読んだ」とみなすかどうかを指定します。'})
 elseif l:line =~ '\<cancelvideoevent\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
videoeventタグで設定したピリオドイベントを解除します。
 elseif l:line =~ '\<cancelvideosegloop\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
videosegloopタグで設定したセグメントループを解除します。
 elseif l:line =~ '\<ch\>'
   call add(l:list, {'word': 'text=',		'menu': '(必)ここで指定した文字が表示されます。'})
 elseif l:line =~ '\<checkbox\>'
   call add(l:list, {'word': 'name=',		'menu': '(必)チェックボックスの状態を格納する変数を指定します。'})
   call add(l:list, {'word': 'bgcolor=',		'menu': '背景色を 0xRRGGBB 形式で指定します。'})
   call add(l:list, {'word': 'opacity=',		'menu': 'bgcolor 属性で指定した背景色の不透明度を 0 〜 255 で指定します。'})
   call add(l:list, {'word': 'color=',		'menu': 'チェックマークの色を 0xRRGGBB 形式で指定します。'})
 elseif l:line =~ '\<clearvideolayer\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
   call add(l:list, {'word': 'channel=',		'menu': '(必)レイヤ描画モードによる描画を解除したいチャンネルを指定します。'})
 elseif l:line =~ '\<click\>'
   call add(l:list, {'word': 'storage=',		'menu': 'ジャンプ先のシナリオファイルを指定します。省略すると、現在 のシナリオファイル内であると見なされます。'})
   call add(l:list, {'word': 'target=',		'menu': 'ジャンプ先のラベルを指定します。'})
   call add(l:list, {'word': 'exp=',		'menu': 'クリック時に実行される TJS 式を指定します。省略すれば 式は実行されません。storage や target が指定されていた場合、この式 が実行されてからジャンプ先に移動します。'})
   call add(l:list, {'word': 'se=',		'menu': 'クリック時に再生する効果音を指定します。指定しなければ 効果音は再生されません。'})
   call add(l:list, {'word': 'sebuf=',		'menu': 'clickse で指定した効果音を鳴らす効果音バッファを指定します。 省略すると 0 であると見なされます。'})
 elseif l:line =~ '\<clickskip\>'
   call add(l:list, {'word': 'enabled=',		'menu': '(必)クリックスキップ機能を有効にする場合は true、無効にする場合は false を指定します。'})
 elseif l:line =~ '\<close\>'
   call add(l:list, {'word': 'ask=',		'menu': 'true を指定すると、終了するかどうかの確認をします。false を 指定するとこの確認はありません。この属性を省略 すると、 true を指定したとみなされます。'})
 elseif l:line =~ '\<copybookmark\>'
   call add(l:list, {'word': 'from=',		'menu': '(必)コピー元の栞の番号を指定します。省略すると 0 が指定されたと見なされます。'})
   call add(l:list, {'word': 'to=',		'menu': '(必)コピー先の栞の番号を指定します。省略すると 0 が指定されたと見なされます。'})
 elseif l:line =~ '\<copylay\>'
   call add(l:list, {'word': 'srclayer=',		'menu': '(必)コピー元となるレイヤを指定します。'})
   call add(l:list, {'word': 'destlayer=',		'menu': '(必)コピー先となるレイヤを指定します。'})
   call add(l:list, {'word': 'srcpage=',		'menu': 'コピー元となるページを指定します。'})
   call add(l:list, {'word': 'destpage=',		'menu': 'コピー先となるページを指定します。'})
 elseif l:line =~ '\<current\>'
   call add(l:list, {'word': 'layer=',		'menu': '操作対象とするメッセージレイヤを指定します。'})
   call add(l:list, {'word': 'page=',		'menu': ' 表(fore)画面のレイヤを対象とするか、裏(back)画面のレイヤを対象と するかを指定します。省略すると表ページであると見なされます。'})
   call add(l:list, {'word': 'withback=',		'menu': '表ページが対象の場合、裏ページにも同様に文字を描画するかを 指定します。この属性を省略すると false が指定されたとみなされます。 　裏ページに同時に文字を描画する必要があるのは、同時にトランジションを 進行させる場合などです。'})
 elseif l:line =~ '\<cursor\>'
   call add(l:link, {'word': 'default=',		'menu': 'cr で始まるカーソル定数 または カーソルファイル名	通常のマウスカーソルを指定します。'})
   call add(l:link, {'word': 'pointed=',		'menu': 'cr で始まるカーソル定数 または カーソルファイル名	リンクやボタンをポイントしたときのマウスカーソルを指定します。'})
   call add(l:link, {'word': 'click=',		'menu': 'cr で始まるカーソル定数 または カーソルファイル名	クリック待ちのマウスカーソルを指定します。'})
   call add(l:link, {'word': 'draggable=',		'menu': 'cr で始まるカーソル定数 または カーソルファイル名	position タグで draggable=true としたときに、 マウスがメッセージレイヤをドラッグ可能な位置に来たときに表示される マウスカーソルを指定します。'})
 elseif l:line =~ '\<deffont\>'
   call add(l:list, {'word': 'size=',		'menu': 'デフォルトの文字サイズを指定します。'})
   call add(l:list, {'word': 'face=',		'menu': 'デフォルトのフォント名を指定します。'})
   call add(l:list, {'word': 'color=',		'menu': 'デフォルトの文字色を指定します。'})
   call add(l:list, {'word': 'rubysize=',		'menu': 'デフォルトのルビの文字のサイズを指定します。'})
   call add(l:list, {'word': 'rubyoffset=',		'menu': 'デフォルトのルビの表示オフセットを指定します。'})
   call add(l:list, {'word': 'shadow=',		'menu': 'デフォルトで文字に影をつけるかを指定します。'})
   call add(l:list, {'word': 'edge=',		'menu': 'デフォルトで文字を袋文字 ( 縁取り文字 ) にするかを指定します。'})
   call add(l:list, {'word': 'edgecolor=',		'menu': 'デフォルトの文字の袋の色を指定します。'})
   call add(l:list, {'word': 'shadowcolor=',		'menu': 'デフォルトの影の色を指定します。'})
   call add(l:list, {'word': 'bold=',		'menu': 'デフォルトで文字を太文字にするかを指定します。'})
 elseif l:line =~ '\<defstyle\>'
   call add(l:list, {'word': 'linespacing=',		'menu': 'デフォルトの行間を指定します。'})
   call add(l:list, {'word': 'pitch=',		'menu': 'デフォルトの字間のオフセットを pixel 単位で指定します。'})
   call add(l:list, {'word': 'linesize=',		'menu': 'デフォルトの行の幅を指定します。'})
 elseif l:line =~ '\<delay\>'
   call add(l:list, {'word': 'speed=',		'menu': '(必)"nowait" を指定すると、文字の表示にウェイトをかけずに、 一気に文字が表示されます。"user" を指定すると、 [システム|文字速度] でユーザーが指定した速度になりま す(デフォルト)。ウェイトの値を指定すると、値で示した 時間につき 1 文字の速度で文字を表示します。'})
 elseif l:line =~ '\<disablestore\>'
   call add(l:list, {'word': 'store=',		'menu': '「栞をはさむ」の機能を使用不可にするかを指定します。'})
   call add(l:list, {'word': 'restore=',		'menu': '「栞をたどる」の機能を使用不可にするかを指定します。'})
 elseif l:line =~ '\<edit\>'
   call add(l:list, {'word': 'name=',		'menu': '(必)入力した文字列を格納する変数を指定します。'})
   call add(l:list, {'word': 'length=',		'menu': '単一行エディットの幅 ( 縦書きの場合は高さ ) をピクセル単位で指定します。'})
   call add(l:list, {'word': 'bgcolor=',		'menu': '背景色を 0xRRGGBB 形式で指定します。'})
   call add(l:list, {'word': 'opacity=',		'menu': 'bgcolor 属性で指定した背景色の不透明度を 0 〜 255 で指定します。'})
   call add(l:list, {'word': 'color=',		'menu': '文字色を 0xRRGGBB 形式で指定します。'})
   call add(l:list, {'word': 'maxchars=',		'menu': '入力できる最大文字数を指定します。0 を指定すると無制限になります。'})
 elseif l:line =~ '\<elsif\>'
   call add(l:list, {'word': 'exp=',		'menu': '(必)評価する TJS 式を指定します。'})
 elseif l:line =~ '\<emb\>'
   call add(l:list, {'word': 'exp=',		'menu': '(必)評価する TJS 式を指定します。ここで評価された式の結果が、 この emb タグと置き換わります。'})
 elseif l:line =~ '\<erasebookmark\>'
   call add(l:list, {'word': 'place=',		'menu': '栞の番号を指定します。省略すると 0 が指定されたと見なされます。'})
 elseif l:line =~ '\<erasemacro\>'
   call add(l:list, {'word': 'name=',		'menu': '(必)消去するタグを指定します。マクロとして定義されたタグのみを 消去することが出来ます。'})
 elseif l:line =~ '\<eval\>'
   call add(l:list, {'word': 'exp=',		'menu': '(必)評価する TJS 式を指定します。'})
 elseif l:line =~ '\<fadebgm\>'
   call add(l:list, {'word': 'volume=',		'menu': '(必)フェード後に到達させる BGM の音量を % で指定します。'})
   call add(l:list, {'word': 'time=',		'menu': '(必)フェードを行っている時間を ms 単位で指定します。 3000 と指定すれば 3 秒間の間、フェードを行っています。'})
 elseif l:line =~ '\<fadeinbgm\>'
   call add(l:list, {'word': 'storage=',		'menu': '(必)演奏する BGM ファイル名または CD トラック番号を指定します。'})
   call add(l:list, {'word': 'start=',		'menu': 'ループチューナで指定したラベルで BGM の再生開始位置を指定します。'})
   call add(l:list, {'word': 'loop=',		'menu': 'BGM をループするかを指定します。'})
   call add(l:list, {'word': 'time=',		'menu': '(必)フェードインを行っている時間を ms 単位で指定します。 3000 と指定すれば 3 秒間の間、フェードインを行っています。'})
 elseif l:line =~ '\<fadeinse\>'
   call add(l:list, {'word': 'buf=',		'menu': '効果音を再生するバッファを指定します。一つのバッファでは 同時には一つの効果音を鳴らすことができます。'})
   call add(l:list, {'word': 'storage=',		'menu': '(必)演奏する効果音ファイル名を指定します。'})
   call add(l:list, {'word': 'start=',		'menu': 'ループチューナで指定したラベルで SE の再生開始位置を指定します。'})
   call add(l:list, {'word': 'time=',		'menu': '(必)フェードインを行っている時間をミリ秒単位で指定します。'})
   call add(l:list, {'word': 'loop=',		'menu': '効果音を繰り返し再生するかどうかを指定します。'})
 elseif l:line =~ '\<fadeoutbgm\>'
   call add(l:list, {'word': 'time=',		'menu': '(必)フェードアウトを行っている時間を ms 単位で指定します。 3000 と指定すれば 3 秒間の間、フェードアウトを行っています。'})
 elseif l:line =~ '\<fadeoutse\>'
   call add(l:list, {'word': 'buf=',		'menu': '効果音をフェードアウトするバッファを指定します。'})
   call add(l:list, {'word': 'time=',		'menu': '(必)フェードアウトを行っている時間をミリ秒単位で指定します。'})
 elseif l:line =~ '\<fadepausebgm\>'
   call add(l:list, {'word': 'time=',		'menu': '(必)フェードアウトを行っている時間を ms 単位で指定します。 3000 と指定すれば 3 秒間の間、フェードアウトを行っています。'})
 elseif l:line =~ '\<fadese\>'
   call add(l:list, {'word': 'buf=',		'menu': '効果音をフェードするバッファを指定します。'})
   call add(l:list, {'word': 'time=',		'menu': '(必)フェードを行っている時間をミリ秒単位で指定します。'})
   call add(l:list, {'word': 'volume=',		'menu': '(必)フェードの到達音量を % で指定します。 　100 が上限です。音量の抑制のみをサポートします(増幅は 音源の特性上、できません)。'})
 elseif l:line =~ '\<font\>'
   call add(l:list, {'word': 'size=',		'menu': '文字サイズを pixel 単位で指定します。'})
   call add(l:list, {'word': 'face=',		'menu': 'フォント名を指定します。'})
   call add(l:list, {'word': 'color=',		'menu': '文字色を 0xRRGGBB 形式で指定します。'})
   call add(l:list, {'word': 'italic=',		'menu': '文字を斜体にするかどうかを指定します。true を指定すると斜体になりま す。'})
   call add(l:list, {'word': 'rubysize=',		'menu': 'ルビ(読み仮名)の文字のサイズを pixel 単位で指定します。'})
   call add(l:list, {'word': 'rubyoffset=',		'menu': 'ルビの表示オフセットを pixel 単位で指定します。負の数を指定すると本文に より近い位置に表示されます。'})
   call add(l:list, {'word': 'shadow=',		'menu': '文字に影をつけるかを指定します。true を指定すると影がつきます。'})
   call add(l:list, {'word': 'edge=',		'menu': '文字を袋文字 ( 縁取り文字 ) にするかを指定します。true を指定すると袋文字になります。'})
   call add(l:list, {'word': 'edgecolor=',		'menu': '文字の袋の色を 0xRRGGBB 形式で指定します。'})
   call add(l:list, {'word': 'shadowcolor=',		'menu': '影の色を 0xRRGGBB 形式で指定します。'})
   call add(l:list, {'word': 'bold=',		'menu': '文字を太文字にするかを指定します。 true を指定すると太文字になります。'})
 elseif l:line =~ '\<freeimage\>'
   call add(l:list, {'word': 'layer=',		'menu': '(必)画像を解放するレイヤを指定します。'})
   call add(l:list, {'word': 'page=',		'menu': '表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します。 省略すると表ページであると見なされます。'})
 elseif l:line =~ '\<glyph\>'
   call add(l:list, {'word': 'line=',		'menu': '行末クリック待ち記号画像のファイル名を指定します。 拡張子は指定しないでください。'})
   call add(l:link, {'word': 'linekey=',		'menu': '0xRRGGBB 形式 または パレットインデックス番号 または "adapt"	カラーキーを指定します。'})
   call add(l:list, {'word': 'page=',		'menu': '改ページ待ち記号画像のファイル名を指定します。'})
   call add(l:link, {'word': 'pagekey=',		'menu': '0xRRGGBB 形式 または パレットインデックス番号 または "adapt"	カラーキーを指定します。'})
   call add(l:list, {'word': 'fix=',		'menu': '記号表示位置を指定位置に固定するかどうかを指定します。true を指定すると 記号は left および top を指定した位置に表示されます。'})
   call add(l:list, {'word': 'left=',		'menu': 'fix 属性を true にしたときに記号を表示する位置のうち、左端位置を 指定します。'})
   call add(l:list, {'word': 'top=',		'menu': 'fix 属性を true にしたときに記号を表示する位置のうち、上端位置を 指定します。'})
 elseif l:line =~ '\<goback\>'
   call add(l:list, {'word': 'ask=',		'menu': 'true を指定すると、前に戻るかどうかの確認をします。false を 指定すると前に戻るかどうかの確認はありません。この属性を省略 すると false を指定したとみなされます。'})
 elseif l:line =~ '\<gotostart\>'
   call add(l:list, {'word': 'ask=',		'menu': 'true を指定すると、最初に戻るかどうかの確認をします。false を 指定すると最初に戻るかどうかの確認はありません。この属性を省略 すると false を指定したとみなされます。'})
 elseif l:line =~ '\<graph\>'
   call add(l:list, {'word': 'storage=',		'menu': '(必)表示させたい画像ファイル名を指定します。 読み込める形式は imageタグで読み込める 形式と同じです。 　ここで指定したファイル名 (拡張子を除く) 部分に _m を追加 したファイルが、もしあれば、マスク画像として読み込まれます。 マスク画像は必ず 256 色グレースケールで保存してください。'})
   call add(l:list, {'word': 'key=',		'menu': 'どの色を抜き色とするかを指定します。省略すると抜き色は無効になります。 　key=0xRRGGBB という形式で 16 進数で抜き色を指定する と、RR(赤) GG(緑) BB(青)で塗られた部分を抜き色として透明にします。 たとえば、key=0xff00ff では (r,g,b)=(255,0,255) つまり真マゼンダの部 分を抜き色として透明にするという指定になります。'})
   call add(l:list, {'word': 'char=',		'menu': 'true を指定すると、画像はfont タグで 指定した色、影、袋文字の状態が、文字同様に表示されます。 そのため、true を設定すると画像の色情報は無視されます。 また、画像が影や袋文字である必要はありません。'})
   call add(l:list, {'word': 'alt=',		'menu': 'メッセージ履歴に表示する、この画像の代替文字を指定します。 メッセージ履歴は文字情報しか表示できませんので、alt 属性に 指定された文字が代わりに表示されます。'})
 elseif l:line =~ '\<hact\>'
   call add(l:list, {'word': 'exp=',		'menu': '(必)メッセージをクリックしたときに実行する TJS 式を指定します。'})
 elseif l:line =~ '\<hch\>'
   call add(l:list, {'word': 'text=',		'menu': '(必)ここで指定した文字がそこだけ横書きで表示されます。'})
   call add(l:list, {'word': 'expand=',		'menu': 'true を指定すると、長い縦中横を描画しようとしたときに 行間を自動的に拡張します。false を指定すると、縦中横が 行からはみ出て正常に描画されない可能性がありますが、 行間はそのままになります ( 通常半角２桁ならば false で OK )。'})
 elseif l:line =~ '\<history\>'
   call add(l:list, {'word': 'output=',		'menu': 'メッセージ履歴への文字情報の出力をするかどうかを指定します。'})
   call add(l:list, {'word': 'enabled=',		'menu': 'メッセージ履歴を表示可能かどうかを指定します。'})
 elseif l:line =~ '\<hr\>'
   call add(l:list, {'word': 'repage=',		'menu': '改ページを行うかどうかを指定します。'})
 elseif l:line =~ '\<if\>'
   call add(l:list, {'word': 'exp=',		'menu': '(必)評価する TJS 式を指定します。この式の結果が false ( または 0 な らば、elsif・else・endif タグまでの文章やタグが無視されます。'})
 elseif l:line =~ '\<ignore\>'
   call add(l:list, {'word': 'exp=',		'menu': '(必)評価する TJS 式を指定します。この式の結果が true ( または 0 以外 )な らば、endignore タグまでの文章やタグが無視されます。'})
 elseif l:line =~ '\<image\>'
   call add(l:list, {'word': 'storage=',		'menu': '(必)読み込みたい画像を指定します。拡張子は省略可能です。'})
   call add(l:list, {'word': 'layer=',		'menu': '(必)画像を読み込むレイヤを指定します。'})
   call add(l:list, {'word': 'page=',		'menu': '表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します。 省略すると表ページであると見なされます。'})
   call add(l:list, {'word': 'key=',		'menu': 'どの色を抜き色とするかを指定します。省略すると抜き色は無効になります。'})
   call add(l:list, {'word': 'mode=',		'menu': '前景レイヤの透過モードを指定します。前景レイヤ以外には 指定しないでください。'})
   call add(l:list, {'word': 'grayscale=',		'menu': '画像をグレースケールにするかどうかを指定します。 grayscale=true と指定すると、画像をグレースケールにします。 省略すると false であると見なされます。'})
   call add(l:list, {'word': 'rgamma=',		'menu': 'r (赤) 、g (緑) 、 b (青) の各成分のガンマ値を指定します。 たとえば画像をセピア調にするには、 grayscale=true rgamma=1.3 ggamma=1.1 と指定します。'})
   call add(l:list, {'word': 'ggamma=',		'menu': 'r (赤) 、g (緑) 、 b (青) の各成分のガンマ値を指定します。 たとえば画像をセピア調にするには、 grayscale=true rgamma=1.3 ggamma=1.1 と指定します。'})
   call add(l:list, {'word': 'bgamma=',		'menu': 'r (赤) 、g (緑) 、 b (青) の各成分のガンマ値を指定します。 たとえば画像をセピア調にするには、 grayscale=true rgamma=1.3 ggamma=1.1 と指定します。'})
   call add(l:list, {'word': 'rfloor=',		'menu': '各成分の輝度最低値を指定します。'})
   call add(l:list, {'word': 'gfloor=',		'menu': '各成分の輝度最低値を指定します。'})
   call add(l:list, {'word': 'bfloor=',		'menu': '各成分の輝度最低値を指定します。'})
   call add(l:list, {'word': 'rceil=',		'menu': '各成分の輝度最高値を指定します。 たとえば、 rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0 と 指定すると、色が反転します。'})
   call add(l:list, {'word': 'gceil=',		'menu': '各成分の輝度最高値を指定します。 たとえば、 rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0 と 指定すると、色が反転します。'})
   call add(l:list, {'word': 'bceil=',		'menu': '各成分の輝度最高値を指定します。 たとえば、 rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0 と 指定すると、色が反転します。'})
   call add(l:list, {'word': 'mcolor=',		'menu': '色ブレンドによる色調効果において、ブレンドする色を 0xRRGGBB 形式で指定しま す。濃度は mopacity 属性で指定します。'})
   call add(l:list, {'word': 'mopacity=',		'menu': '色ブレンドによる色調効果で、mcolor で指定した色をどれぐらいの不透 明度でブレンドするかを指定します。'})
   call add(l:list, {'word': 'lightcolor=',		'menu': '光ブレンドによる色調効果の、ブレンドする色を 0xAARRGGBB 形式で指定します。 α値を含むのに注意してください。'})
   call add(l:list, {'word': 'lighttype=',		'menu': '光ブレンドによる色調効果の、合成モードを指定します。'})
   call add(l:list, {'word': 'shadow=',		'menu': 'レイヤの画像に影をつけます。影色を 0xRRGGBB 形式で指定します。数値省略時は 0x000000 扱いです。 shadowopacity,shadowx,shadowy,shadowblur でつける影のパラメータを指定できます。'})
   call add(l:list, {'word': 'shadowopacity=',		'menu': 'shadowで影をつけるときの影の濃度を指定します。未指定時の値は200です。'})
   call add(l:list, {'word': 'shadowx=',		'menu': 'shadowで影をつけるときの影のX方向のずれの量を指定します。未指定時の値は10です。'})
   call add(l:list, {'word': 'shadowy=',		'menu': 'shadowで影をつけるときの影のY方向のずれの量を指定します。未指定時の値は10です。'})
   call add(l:list, {'word': 'shadowblur=',		'menu': 'shadowで影をつけるときの影のぼかし具合を指定します。未指定時の値は 3 です。'})
   call add(l:list, {'word': 'clipleft=',		'menu': '画像クリップ矩形の左端位置を指定し ます。clipleft, cliptop, clipwidth, clipheight で矩形を指定 すると、storage 属性で指定された画像のその矩形のみが切り取られ、 指定されたレイヤの画像になります。画像の一部だけを切り取って 表示したいときなどに使用します。'})
   call add(l:list, {'word': 'cliptop=',		'menu': '画像クリップ矩形の上端位置を指定し ます。'})
   call add(l:list, {'word': 'clipwidth=',		'menu': '画像クリップ矩形の幅を指定します。'})
   call add(l:list, {'word': 'clipheight=',		'menu': '画像クリップ矩形の高さを指定し ます'})
   call add(l:list, {'word': 'flipud=',		'menu': '画像の上下反転を行いたい場合に true を指定します。'})
   call add(l:list, {'word': 'fliplr=',		'menu': '画像の左右反転を行いたい場合に true を指定します。'})
   call add(l:list, {'word': 'visible=',		'menu': 'layer 属性で指定したレイヤを表示するか、しないかを指定 します。visible=true と 指定すれば、レイヤは表示状態になります。visible=false と指定すれば、 非表示状態になります。省略すると表示状態は変わりませ ん。layer=base を指定した場合はこの属性は指定しないでください。'})
   call add(l:list, {'word': 'left=',		'menu': 'layer 属性で指定したレイヤの左端位置を指定します。 省略すると、画像読み込み前の位置を保持します。layer=base と指定した場合は この属性は指定しないでください。'})
   call add(l:list, {'word': 'top=',		'menu': 'layer 属性で指定したレイヤの上端位置を指定します。 省略すると、画像読み込み前の位置を保持します。layer=base と指定した場合は この属性は指定しないでください。'})
   call add(l:list, {'word': 'pos=',		'menu': 'レイヤ位置を自動的に決定します。前景レイヤに対して使います。'})
   call add(l:list, {'word': 'opacity=',		'menu': 'layer 属性で指定したレイヤの不透明度を指定します。'})
   call add(l:list, {'word': 'mapimage=',		'menu': 'クリッカブルマップに用いる領域画像を指定します。'})
   call add(l:list, {'word': 'mapaction=',		'menu': 'クリッカブルマップに用いる領域アクション定義ファイルを指定します。'})
   call add(l:list, {'word': 'index=',		'menu': '背景レイヤには指定しないでください。'})
 elseif l:line =~ '\<input\>'
   call add(l:list, {'word': 'name=',		'menu': '(必)入力したい文字列を格納する変数を指定します。'})
   call add(l:list, {'word': 'prompt=',		'menu': 'ダイアログボックスのプロンプト ( 入力欄のすぐ上に表示される文字列 ) を 指定します。省略すると空欄になります。'})
   call add(l:list, {'word': 'title=',		'menu': 'ダイアログボックスのタイトルを指定します。'})
 elseif l:line =~ '\<jump\>'
   call add(l:list, {'word': 'storage=',		'menu': 'ジャンプ先のシナリオファイルを指定します。省略すると、現在 のシナリオファイル内であると見なされます。'})
   call add(l:list, {'word': 'target=',		'menu': 'ジャンプ先のラベルを指定します。'})
   call add(l:list, {'word': 'countpage=',		'menu': '他のラベルに移行するときに、このタグのある 場所のラベルを「読んだ」とみなすかどうかを指定します。'})
 elseif l:line =~ '\<laycount\>'
   call add(l:list, {'word': 'layers=',		'menu': '前景レイヤの数を指定します。'})
   call add(l:list, {'word': 'messages=',		'menu': 'メッセージレイヤの数を指定します。'})
 elseif l:line =~ '\<layopt\>'
   call add(l:list, {'word': 'layer=',		'menu': '(必)対象となる前景レイヤまたはメッセージレイヤを指定します。 　message とのみ指定した場合は、current タグで指定した、現在の操作対象のメッセージレイヤが対象となります。'})
   call add(l:list, {'word': 'page=',		'menu': ' 表(fore)画面のレイヤを対象とするか、裏(back)画面のレイヤを対象と するかを指定します。省略すると表ページであると見なされます。'})
   call add(l:list, {'word': 'visible=',		'menu': 'layer 属性で指定したレイヤを表示するか、しないかを指定 します。visible=true と 指定すれば、レイヤは表示状態になります。visible=false と指定すれば、 非表示状態になります。省略すると表示状態は変わりませ ん。'})
   call add(l:list, {'word': 'left=',		'menu': 'layer 属性で指定したレイヤの左端位置を指定します。 省略すると位置は変更しません。'})
   call add(l:list, {'word': 'top=',		'menu': 'layer 属性で指定したレイヤの上端位置を指定します。 省略すると位置は変更しません。'})
   call add(l:list, {'word': 'opacity=',		'menu': 'レイヤの不透明度を指定します。'})
   call add(l:list, {'word': 'autohide=',		'menu': '前景レイヤ以外には指定しないでください。'})
   call add(l:list, {'word': 'index=',		'menu': '背景レイヤには指定しないでください。'})
 elseif l:line =~ '\<link\>'
   call add(l:list, {'word': 'storage=',		'menu': 'ジャンプ先のシナリオファイルを指定します。省略すると、現在 のシナリオファイル内であると見なされます。'})
   call add(l:list, {'word': 'target=',		'menu': 'ジャンプ先のラベルを指定します。'})
   call add(l:list, {'word': 'exp=',		'menu': 'クリックされたときに実行される TJS 式を指定します。省略すれば 式は実行されません。storage や target が指定されていた場合、この式 が実行されてからジャンプ先に移動します。'})
   call add(l:list, {'word': 'color=',		'menu': 'リンクが選択されたときに出る半透明の矩形の色を指定します。'})
   call add(l:list, {'word': 'hint=',		'menu': 'リンクを選択し、マウスカーソルを静止させたときに表示される ツールチップヒントを指定します。'})
   call add(l:list, {'word': 'onenter=',		'menu': 'リンク内にマウスカーソルが入ってきたときに実行される TJS 式を 指定します。'})
   call add(l:list, {'word': 'onleave=',		'menu': 'リンク内からマウスカーソルが出ていった時に実行される TJS 式を 指定します。'})
   call add(l:list, {'word': 'countpage=',		'menu': 'リンクを選択して他のラベルに移行するときに、このリンクのある 場所のラベルを「読んだ」とみなすかどうかを指定します。'})
   call add(l:list, {'word': 'clickse=',		'menu': 'クリックされたときに再生する効果音を指定します。指定しなければ 効果音は再生されません。'})
   call add(l:list, {'word': 'clicksebuf=',		'menu': 'clickse で指定した効果音を鳴らす効果音バッファを指定します。 省略すると 0 であると見なされます。'})
   call add(l:list, {'word': 'enterse=',		'menu': 'マウスが進入したときに再生する効果音を指定します。指定しなければ 効果音は再生されません。'})
   call add(l:list, {'word': 'entersebuf=',		'menu': 'enterse で指定した効果音を鳴らす効果音バッファを指定します。 省略すると 0 であると見なされます。'})
   call add(l:list, {'word': 'leavese=',		'menu': 'マウスが退出したときに再生する効果音を指定します。指定しなければ 効果音は再生されません。'})
   call add(l:list, {'word': 'leavesebuf=',		'menu': 'leavese で指定した効果音を鳴らす効果音バッファを指定します。 省略すると 0 であると見なされます。'})
 elseif l:line =~ '\<load\>'
   call add(l:list, {'word': 'place=',		'menu': '栞の番号を指定します。省略すると 0 が指定されたと見なされます。'})
   call add(l:list, {'word': 'ask=',		'menu': 'true を指定すると、栞をたどるかどうかの確認をします。false を 指定すると栞をたどるかどうかの確認はありません。この属性を省略 すると false を指定したとみなされます。'})
 elseif l:line =~ '\<loadplugin\>'
   call add(l:link, {'word': 'module=',		'menu': 'プラグインファイル名	読み込みたいプラグインファイル名を指定します。'})
 elseif l:line =~ '\<locate\>'
   call add(l:list, {'word': 'x=',		'menu': '文字を表示する x 座標位置を指定します。'})
   call add(l:list, {'word': 'y=',		'menu': '文字を表示する y 座標位置を指定します。'})
 elseif l:line =~ '\<macro\>'
   call add(l:list, {'word': 'name=',		'menu': '(必)タグ名を指定します。以後、この名前で新しいタグが定義され、 マクロを使用できるようになります。'})
 elseif l:line =~ '\<mapaction\>'
   call add(l:list, {'word': 'layer=',		'menu': '(必)対象とするレイヤを指定します。'})
   call add(l:list, {'word': 'page=',		'menu': '表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します。 省略すると表ページであると見なされます。'})
   call add(l:list, {'word': 'storage=',		'menu': '(必)領域アクション定義ファイルを指定します。'})
 elseif l:line =~ '\<mapdisable\>'
   call add(l:list, {'word': 'layer=',		'menu': '(必)対象とするレイヤを指定します。'})
   call add(l:list, {'word': 'page=',		'menu': '表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します。 省略すると表ページであると見なされます。'})
 elseif l:line =~ '\<mapimage\>'
   call add(l:list, {'word': 'layer=',		'menu': '(必)対象とするレイヤを指定します。'})
   call add(l:list, {'word': 'page=',		'menu': '表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します。 省略すると表ページであると見なされます。'})
   call add(l:list, {'word': 'storage=',		'menu': '(必)クリッカブルマップの領域画像として用いるファイルを指定します。 　ファイルは 256 色で保存されている必要があります。'})
 elseif l:line =~ '\<mappfont\>'
   call add(l:link, {'word': 'storage=',		'menu': 'ファイル名	現在のフォントに割り当てたいレンダリング済みフォントファイル を指定します。'})
 elseif l:line =~ '\<move\>'
   call add(l:list, {'word': 'layer=',		'menu': '(必)対象となるレイヤを指定します。'})
   call add(l:list, {'word': 'page=',		'menu': 'layer 属性で指定したレイヤが、 表(fore)画面であるか、裏(back)画面であるかを指定します。 省略すると表ページであると見なされます。'})
   call add(l:list, {'word': 'spline=',		'menu': 'true を指定すると、path 属性で指定した位置をＢスプラインで 曲線補間した線上をレイヤが移動するようになります。'})
   call add(l:list, {'word': 'time=',		'menu': '(必)レイヤが path を指定した点から点を移動するのに必要な時間を指定します。'})
   call add(l:list, {'word': 'delay=',		'menu': 'レイヤの自動移動が開始されるまでの時間を ms で指定します。'})
   call add(l:list, {'word': 'path=',		'menu': '(必)移動位置を指定します。'})
   call add(l:list, {'word': 'accel=',		'menu': '加速度的な動きを行わせるかどうかを指定します。'})
 elseif l:line =~ '\<nextskip\>'
   call add(l:list, {'word': 'enabled=',		'menu': '(必)「次の選択肢まで進む」の機能を有効にする場合は true、無 効にする場合は false を指定します。'})
 elseif l:line =~ '\<openvideo\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
   call add(l:list, {'word': 'storage=',		'menu': '(必)再生準備するファイル名を指定します。'})
 elseif l:line =~ '\<pausevideo\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
 elseif l:line =~ '\<pimage\>'
   call add(l:list, {'word': 'storage=',		'menu': '(必)追加して読み込む画像を指定します。'})
   call add(l:list, {'word': 'layer=',		'menu': '(必)画像を追加して読み込むレイヤを指定します。'})
   call add(l:list, {'word': 'page=',		'menu': '表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します。 省略すると表ページであると見なされます。'})
   call add(l:list, {'word': 'key=',		'menu': 'storage で指定した画像の、どの色を抜き色とするかを指定します。 省略すると抜き色は無効になります。 　key=0xRRGGBB という形式で 16 進数で抜き色を指定する と、RR(赤) GG(緑) BB(青)で塗られた部分を抜き色として透明にします。 たとえば、key=0xff00ff では (r,g,b)=(255,0,255) つまり真マゼンダの部 分を抜き色として透明にするという指定になります。'})
   call add(l:link, {'word': 'dx=',		'menu': 'ピクセル単位	重ね合わせ、あるいはコピーする先の左端 x 座標を (対象のレイヤ内の座標で)指定します。'})
   call add(l:link, {'word': 'dy=',		'menu': 'ピクセル単位	重ね合わせ、あるいはコピーする先の上端 y 座標を (対象のレイヤ内の座標で)指定します。'})
   call add(l:link, {'word': 'sx=',		'menu': 'ピクセル単位	重ね合わせ、あるいはコピーする元の左端 x 座標を (追加して読み込む画像内の座標で)指定します。'})
   call add(l:link, {'word': 'sy=',		'menu': 'ピクセル単位	重ね合わせ、あるいはコピーする元の上端 y 座標を (追加して読み込む画像内の座標で)指定します。'})
   call add(l:list, {'word': 'sw=',		'menu': '重ね合わせ、あるいはコピーする幅を 指定します。'})
   call add(l:list, {'word': 'sh=',		'menu': '重ね合わせ、あるいはコピーする高さを 指定します。'})
   call add(l:list, {'word': 'mode=',		'menu': 'sx sy sw sh の各属性で指定した矩形領域を 重ね合わせるか、あるいは 単純にコピーするか、あるいは演算を行うかを指定します。'})
   call add(l:list, {'word': 'opacity=',		'menu': 'mode 属性で "pile" を指定した場合の重ね合わせの不透明度、あるいは "add" "sub" "mul" "dodge" "darken" "lighten" "screen" の いずれかを指定した場合の演算の強度を指定します。'})
 elseif l:line =~ '\<playbgm\>'
   call add(l:list, {'word': 'storage=',		'menu': '(必)演奏する BGM ファイル名を指定します。'})
   call add(l:list, {'word': 'start=',		'menu': 'ループチューナで指定したラベルで BGM の再生開始位置を指定します。'})
   call add(l:list, {'word': 'loop=',		'menu': 'BGM をループするかを指定します。'})
 elseif l:line =~ '\<playse\>'
   call add(l:list, {'word': 'buf=',		'menu': '効果音を再生するバッファを指定します。一つのバッファでは 同時には一つの効果音を鳴らすことができます。'})
   call add(l:list, {'word': 'storage=',		'menu': '(必)演奏する効果音ファイル名を指定します。'})
   call add(l:list, {'word': 'start=',		'menu': 'ループチューナで指定したラベルで SE の再生開始位置を指定します。'})
   call add(l:list, {'word': 'loop=',		'menu': '効果音を繰り返し再生するかどうかを指定します。'})
 elseif l:line =~ '\<playvideo\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
   call add(l:list, {'word': 'storage=',		'menu': '再生するファイル名を指定します。'})
 elseif l:line =~ '\<position\>'
   call add(l:list, {'word': 'layer=',		'menu': '対象とするメッセージレイヤを指定します。'})
   call add(l:list, {'word': 'page=',		'menu': '対象とするページを指定します。'})
   call add(l:list, {'word': 'left=',		'menu': 'メッセージレイヤの左端位置を指定します。'})
   call add(l:list, {'word': 'top=',		'menu': 'メッセージレイヤの上端位置を指定します。'})
   call add(l:list, {'word': 'width=',		'menu': 'メッセージレイヤの幅を指定します。'})
   call add(l:list, {'word': 'height=',		'menu': 'メッセージレイヤの高さを指定します。'})
   call add(l:list, {'word': 'frame=',		'menu': 'メッセージレイヤのフレーム画像として表示させる画像を指定 します。使用しない場合は "" を指定してください。"" を指定す ると、メッセージレイヤが color および opacity 属性で指定した 色、濃度で矩形で表示されます。 　ここで指定したファイル名 (拡張子を除く) 部分に _m を追加 したファイルが、もしあれば、マスク画像として読み込まれます。 マスク画像は必ず 256 色グレースケールで保存してください。'})
   call add(l:list, {'word': 'framekey=',		'menu': 'frame 属性で指定したフレーム画像の、どの色を抜き色と するかを指定します。省略すると抜き色は無効になります。 　key=0xRRGGBB という形式で 16 進数で抜き色を指定する と、RR(赤) GG(緑) BB(青)で塗られた部分を抜き色として透明にします。 たとえば、key=0xff00ff では (r,g,b)=(255,0,255) つまり真マゼンダの部 分を抜き色として透明にするという指定になります。'})
   call add(l:list, {'word': 'color=',		'menu': 'メッセージレイヤの表示色を 0xRRGGBB 形式で指定 します。 frame に "" を指定したときに有効です。'})
   call add(l:list, {'word': 'opacity=',		'menu': 'メッセージレイヤの不透明度を 0 〜 255 の数値で指定しま す(文字の不透明度や、レイヤ自体の不透明度ではありません)。0 で完全 に透明です。frame に "" を指定したときに有効です。'})
   call add(l:link, {'word': 'marginl=',		'menu': '左余白 ( pixel 単位 )	メッセージレイヤの左余白を指定します。'})
   call add(l:link, {'word': 'margint=',		'menu': '上余白 ( pixel 単位 )	メッセージレイヤの上余白を指定します。'})
   call add(l:link, {'word': 'marginr=',		'menu': '右余白 ( pixel 単位 )	メッセージレイヤの右余白を指定します。'})
   call add(l:link, {'word': 'marginb=',		'menu': '下余白 ( pixel 単位 )	メッセージレイヤの下余白を指定します。'})
   call add(l:list, {'word': 'vertical=',		'menu': 'メッセージレイヤを縦書きにモードにするには "true" を指定します。 横書きにするには "false" を指定してください。'})
   call add(l:list, {'word': 'draggable=',		'menu': 'true に設定すると、marginl, margint, marginr, marginb で指定した マージンの部分でかつ、フレーム画像の不透明度が 64 以上の箇所を、マウスで ドラッグすることによりメッセージレイヤをユーザが移動できるようになります。'})
   call add(l:list, {'word': 'visible=',		'menu': 'true に設定すると、メッセージレイヤが可視(表示状態)になります。'})
 elseif l:line =~ '\<preparevideo\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
 elseif l:line =~ '\<ptext\>'
   call add(l:list, {'word': 'layer=',		'menu': '(必)文字を描画するレイヤを指定します。'})
   call add(l:list, {'word': 'page=',		'menu': '表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します。 省略すると表ページであると見なされます。'})
   call add(l:list, {'word': 'x=',		'menu': '(必)文字を描画する横位置を pixel 単位で指定します。'})
   call add(l:list, {'word': 'y=',		'menu': '(必)文字を描画する縦位置を pixel 単位で指定します。'})
   call add(l:list, {'word': 'text=',		'menu': '(必)描画する文字列を指定します。'})
   call add(l:list, {'word': 'vertical=',		'menu': '縦書きかどうかを指定します。true を指定すると縦書きになります。'})
   call add(l:list, {'word': 'angle=',		'menu': '文字描画の角度を指定します。角度の 10 倍の値 ( 0 〜 3600 ) で指定します。'})
   call add(l:list, {'word': 'size=',		'menu': '文字サイズを pixel 単位で指定します。'})
   call add(l:list, {'word': 'face=',		'menu': 'フォント名を指定します。'})
   call add(l:list, {'word': 'color=',		'menu': '文字色を 0xRRGGBB 形式で指定します。'})
   call add(l:list, {'word': 'italic=',		'menu': '文字を斜体にするかどうかを指定します。true を指定すると斜体になりま す。'})
   call add(l:list, {'word': 'shadow=',		'menu': '文字に影をつけるかを指定します。true を指定すると影がつきます。'})
   call add(l:list, {'word': 'edge=',		'menu': '文字を袋文字 ( 縁取り文字 ) にするかを指定します。true を指定すると袋文字になります。'})
   call add(l:list, {'word': 'edgecolor=',		'menu': '文字の袋の色を 0xRRGGBB 形式で指定します。'})
   call add(l:list, {'word': 'shadowcolor=',		'menu': '影の色を 0xRRGGBB 形式で指定します。'})
   call add(l:list, {'word': 'bold=',		'menu': '文字を太文字にするかを指定します。 true を指定すると太文字になります。'})
 elseif l:line =~ '\<quake\>'
   call add(l:list, {'word': 'time=',		'menu': '(必)ここで指定した文字数を表示するのと同じだけの時間、画面を揺らします。'})
   call add(l:list, {'word': 'timemode=',		'menu': 'time 属性の単位を指定します。'})
   call add(l:list, {'word': 'hmax=',		'menu': '揺れの横方向への最大振幅を指定します。省略すると 10 が指定されたと見なされます。'})
   call add(l:list, {'word': 'vmax=',		'menu': '揺れの縦方向への最大振幅を指定します。省略すると 10 が指定されたと見なされます。'})
 elseif l:line =~ '\<r\>'
   call add(l:link, {'word': 'eol=',		'menu': 'true	Config.tjs の ignoreCR が false の場合、KAG は改行の際に r タグを生成しますが、この「改行の際に生成される r タグ」の場合は この属性があり、値が true になっています。シナリオ中に書かれた [r] タグの場合はこの属性はありません。'})
 elseif l:line =~ '\<rclick\>'
   call add(l:list, {'word': 'call=',		'menu': 'true を設定すると、右クリックで storage と target 属性で指定した サブルーチンを呼び出すようになります。jump 属性とこの属性の両方に false を 指定すると、通常の 「メッセージを消す」の動作になります。'})
   call add(l:list, {'word': 'jump=',		'menu': 'true を設定すると、右クリックで storage と target 属性で指定した 場所にジャンプするようになります。call 属性とこの属性の両方に false を 指定すると、通常の「メッセージを消す」の動作になります。'})
   call add(l:list, {'word': 'target=',		'menu': 'call 属性か jump 属性に true を設定した場合、その呼び出し先/ジャンプ先のラベルを指定します。'})
   call add(l:list, {'word': 'storage=',		'menu': 'call 属性か jump 属性に true を設定した場合、その呼び出し先/ジャンプ先のファイルを指定します。'})
   call add(l:list, {'word': 'enabled=',		'menu': 'true を設定すると、右クリックによりメッセージレイヤが隠されたり、 指定のルーチンが呼び出されたり、指定場所にジャンプしたりします。'})
   call add(l:list, {'word': 'name=',		'menu': 'システムメニュー内の「メッセージを消す」のメニュー項目名を指定します。'})
 elseif l:line =~ '\<resumevideo\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
 elseif l:line =~ '\<return\>'
   call add(l:list, {'word': 'storage=',		'menu': '戻り先のシナリオファイルを指定します。storage 属性を省略して、 target 属性だけが書かれていると、現在のシナリオファイル内であると見なされます。'})
   call add(l:list, {'word': 'target=',		'menu': '戻り先のラベルを指定します。'})
   call add(l:list, {'word': 'countpage=',		'menu': '呼び出し元に戻るときに、この return タグのある 場所のラベルを「読んだ」とみなすかどうかを指定します。'})
 elseif l:line =~ '\<rewindvideo\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
 elseif l:line =~ '\<ruby\>'
   call add(l:link, {'word': 'text=',		'menu': 'ルビとして表示される文字	ルビとして表示させる文字を指定します。'})
 elseif l:line =~ '\<save\>'
   call add(l:list, {'word': 'place=',		'menu': '栞の番号を指定します。省略すると 0 が指定されたと見なされます。'})
   call add(l:list, {'word': 'ask=',		'menu': 'true を指定すると、栞を保存するかどうかの確認をします。false を 指定すると栞を保存するかどうかの確認はありません。この属性を省略 すると false を指定したとみなされます。'})
 elseif l:line =~ '\<seopt\>'
   call add(l:list, {'word': 'buf=',		'menu': '設定を変更するバッファを指定します。'})
   call add(l:list, {'word': 'volume=',		'menu': '効果音の音量を % で指定します。初期状態の KAG では 100 % です。省略すれば音量は変更されません。'})
   call add(l:list, {'word': 'gvolume=',		'menu': '効果音の大域音量を % で指定します。初期状態の KAG では 100 % です。省略すれば音量は変更されません。'})
   call add(l:list, {'word': 'pan=',		'menu': 'パン (左右の音像位置) を指定します。'})
 elseif l:line =~ '\<setbgmlabel\>'
   call add(l:list, {'word': 'name=',		'menu': '(必)BGM 中のループチューナで指定したラベル名を指定します。'})
   call add(l:list, {'word': 'storage=',		'menu': 'ラベル通過時の遷移先シナリオファイル名を指定します。'})
   call add(l:list, {'word': 'target=',		'menu': 'ラベル通過時の遷移先ラベル名を指定します。'})
   call add(l:list, {'word': 'exp=',		'menu': 'ラベル通過時に実行される TJS 式を指定します。省略すれば 式は実行されません。storage や target が指定されていた場合、この式 が実行されてからジャンプ先に移動します。'})
 elseif l:line =~ '\<setbgmstop\>'
   call add(l:list, {'word': 'storage=',		'menu': 'BGM停止時の遷移先シナリオファイル名を指定します。'})
   call add(l:list, {'word': 'target=',		'menu': 'BGM停止時の遷移先ラベル名を指定します。'})
   call add(l:list, {'word': 'exp=',		'menu': 'BGM停止時に実行される TJS 式を指定します。省略すれば 式は実行されません。storage や target が指定されていた場合、この式 が実行されてからジャンプ先に移動します。'})
 elseif l:line =~ '\<startanchor\>'
   call add(l:list, {'word': 'enabled=',		'menu': '"true" を指定するかこの属性を省略すると、このタグのある すぐ前のセーブ可能なラベルが「最初に戻る」の戻り先であると され、「最初に戻る」の機能が有効になります。'})
 elseif l:line =~ '\<stopse\>'
   call add(l:list, {'word': 'buf=',		'menu': '効果音を停止するバッファを指定します。'})
 elseif l:line =~ '\<stopvideo\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
 elseif l:line =~ '\<store\>'
   call add(l:list, {'word': 'enabled=',		'menu': '(必)栞機能を有効にする場合は true 、無効にする場合は false を指定 します。false を指定すると栞によるセーブ・ロードができなく なります。'})
 elseif l:line =~ '\<style\>'
   call add(l:list, {'word': 'align=',		'menu': '行の文字揃えを指定します。'})
   call add(l:list, {'word': 'linespacing=',		'menu': '行間を pixel 単位で指定します。一行全体の幅は、この属性で指 定した値と linesize 属性で 指定した値を足した値になります。'})
   call add(l:list, {'word': 'pitch=',		'menu': '字間のオフセットを pixel 単位で指定します。 　0 を指定すると、その文字のデフォルトの字間で表示されます。負の数、たと えば -1 を指定すると、その文字のデフォルトの字間 -1 のピクセル数分、文字 が詰めて表示されます。正の数を表示すると字間をあけることが出来ます。'})
   call add(l:list, {'word': 'linesize=',		'menu': '行の幅を指定します。'})
   call add(l:list, {'word': 'autoreturn=',		'menu': '自動改行・自動改ページを行わせるかどうかを指定します。'})
 elseif l:line =~ '\<tempload\>'
   call add(l:list, {'word': 'place=',		'menu': '栞の番号を指定します。省略すると 0 が指定されたと見なされます。'})
   call add(l:list, {'word': 'se=',		'menu': '読み込むときに、効果音の情報も読み込むかを指定します。'})
   call add(l:list, {'word': 'bgm=',		'menu': '読み込むときに、BGM の情報も読み込むかを指定します。'})
   call add(l:list, {'word': 'backlay=',		'menu': '読み込むときに、前景レイヤの情報は読み込まずに、かつ 背景レイヤには前景レイヤの情報を読み込むかどうかを指定します。'})
 elseif l:line =~ '\<tempsave\>'
   call add(l:list, {'word': 'place=',		'menu': '栞の番号を指定します。省略すると 0 が指定されたと見なされます。'})
 elseif l:line =~ '\<timeout\>'
   call add(l:list, {'word': 'time=',		'menu': '(必)タイムアウトまでの時間を ms で指定します。'})
   call add(l:list, {'word': 'storage=',		'menu': 'ジャンプ先のシナリオファイルを指定します。省略すると、現在 のシナリオファイル内であると見なされます。'})
   call add(l:list, {'word': 'target=',		'menu': 'ジャンプ先のラベルを指定します。'})
   call add(l:list, {'word': 'exp=',		'menu': 'タイムアウト時に実行される TJS 式を指定します。省略すれば 式は実行されません。storage や target が指定されていた場合、この式 が実行されてからジャンプ先に移動します。'})
   call add(l:list, {'word': 'se=',		'menu': 'タイムアウト時に再生する効果音を指定します。指定しなければ 効果音は再生されません。'})
   call add(l:list, {'word': 'sebuf=',		'menu': 'clickse で指定した効果音を鳴らす効果音バッファを指定します。 省略すると 0 であると見なされます。'})
 elseif l:line =~ '\<title\>'
   call add(l:list, {'word': 'name=',		'menu': '(必)表示したいタイトルを指定してください。'})
 elseif l:line =~ '\<trace\>'
   call add(l:list, {'word': 'exp=',		'menu': '(必)評価する TJS 式を指定します。'})
 elseif l:line =~ '\<trans\>'
   call add(l:list, {'word': 'layer=',		'menu': '対象となるレイヤを指定します。'})
   call add(l:list, {'word': 'children=',		'menu': 'トランジションの対象に子レイヤも含めるかどうかを 指定します。true を指定すると子レイヤも含めます。 false を指定すると子レイヤは含まれません。'})
   call add(l:list, {'word': 'time=',		'menu': '(必)トランジションを行っている時間を数値で指定します。'})
   call add(l:list, {'word': 'method=',		'menu': 'トランジションのタイプを指定します。'})
   call add(l:list, {'word': 'rule=',		'menu': 'ユニバーサルトランジションに用いるルール画像を指定します。'})
   call add(l:list, {'word': 'vague=',		'menu': 'ユニバーサルトランジションに適用する あいまい 領域値を指定します。'})
   call add(l:list, {'word': 'from=',		'menu': 'スクロールトランジションにおいて、裏ページの画像がどの 方向から現れてくるかを指定します。"left" = 左、"top"= 上、 "right" = 右、"bottom" = 下'})
   call add(l:list, {'word': 'stay=',		'menu': 'スクロールトランシジョンにおいて、表ページの画像が その場にとどまったまま、裏ページの画像が外部から スクロールしてくるか ( "stayfore" )、'})
 elseif l:line =~ '\<video\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
   call add(l:list, {'word': 'visible=',		'menu': 'ビデオ/SWF の表示領域を表示するか ( true の場合 )、非表示にする か ( false の場合 ) を指定します。 非表示でもビデオ/SWFは再生できます ( 当然表示されません )。'})
   call add(l:list, {'word': 'left=',		'menu': '表示領域の左端位置を指定します。'})
   call add(l:list, {'word': 'top=',		'menu': '表示領域の上端位置を指定します。'})
   call add(l:list, {'word': 'width=',		'menu': '表示領域の幅を指定します。現バージョンではレイヤ描画モードでは指定は無視されます。'})
   call add(l:list, {'word': 'height=',		'menu': '表示領域の高さを指定します。現バージョンではレイヤ描画モードでは指定は無視されます。'})
   call add(l:list, {'word': 'loop=',		'menu': 'ループを行いたい場合は true を指定します。'})
   call add(l:list, {'word': 'position=',		'menu': '指定した時間までビデオの再生位置を移動したい場合に指定します。'})
   call add(l:list, {'word': 'frame=',		'menu': '指定した位置までビデオの再生位置を移動したい場合に指定します。'})
   call add(l:list, {'word': 'mode=',		'menu': 'ムービーの描画モードを指定します。'})
   call add(l:list, {'word': 'playrate=',		'menu': 'メディアの再生速度を設定します。'})
   call add(l:list, {'word': 'volume=',		'menu': '音量を % で指定します。 　100 が上限です。音量の抑制のみをサポートします(増幅は 音源の特性上、できません)。'})
   call add(l:list, {'word': 'pan=',		'menu': 'パン (左右の音像位置) を指定します。'})
   call add(l:list, {'word': 'audiostreamnum=',		'menu': '指定した音声ストリーム番号を有効にします。'})
 elseif l:line =~ '\<videoevent\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
   call add(l:list, {'word': 'frame=',		'menu': '(必)ピリオドイベントを発生させるフレーム番号を指定します。'})
 elseif l:line =~ '\<videolayer\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
   call add(l:list, {'word': 'channel=',		'menu': '(必)レイヤ描画モードでは、同時に二つのチャンネルでビデオを再生できます。'})
   call add(l:list, {'word': 'page=',		'menu': '(必)表ページ("fore")か、裏ページ("back")かを指定します。'})
   call add(l:list, {'word': 'layer=',		'menu': '(必)表示したいレイヤ番号を指定します。'})
 elseif l:line =~ '\<videosegloop\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
   call add(l:list, {'word': 'start=',		'menu': '(必)ループの始点を指定します。'})
   call add(l:list, {'word': 'end=',		'menu': '(必)ループの終点を指定します。'})
 elseif l:line =~ '\<wa\>'
   call add(l:list, {'word': 'layer=',		'menu': '(必)アニメーションの停止を待つするレイヤを指定します。'})
   call add(l:list, {'word': 'page=',		'menu': '表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します。 省略すると表ページであると見なされます。'})
   call add(l:list, {'word': 'seg=',		'menu': '(必)この属性で指定したセグメント番号のアニメーションの停止を待ちます。'})
 elseif l:line =~ '\<wait\>'
   call add(l:list, {'word': 'time=',		'menu': '(必)ウェイトをミリ秒で指定します。'})
   call add(l:list, {'word': 'mode=',		'menu': 'ウェイトの方式を指定します。'})
   call add(l:list, {'word': 'canskip=',		'menu': 'このウェイトを、マウスのクリックやキーボードでスキップできるかを 指定します。false を指定すると、マウスのクリックやキーボード では、このウェイトをスキップできません。'})
 elseif l:line =~ '\<waittrig\>'
   call add(l:list, {'word': 'name=',		'menu': '(必)待つトリガ名を指定します。 　kag オブジェクト ( MainWindow クラス ) の trigger メソッド で引数に同名のトリガ名を指定することにより、 トリガを発動し、待ち状態を解除することができます。'})
   call add(l:list, {'word': 'canskip=',		'menu': 'true を指定すると、クリックにより、待つ動作をスキップすることができます。'})
   call add(l:list, {'word': 'onskip=',		'menu': 'クリックによりスキップされたときに実行する TJS式 を指定します。'})
 elseif l:line =~ '\<wb\>'
   call add(l:list, {'word': 'canskip=',		'menu': 'true を指定するとクリックでフェードの終了待ちをスキップできます。'})
 elseif l:line =~ '\<wc\>'
   call add(l:list, {'word': 'time=',		'menu': '(必)ここで指定した文字数を表示するのと同じだけの時間を待ちます。 一文字に必要な時間は delay タグで指定します。'})
 elseif l:line =~ '\<wf\>'
   call add(l:list, {'word': 'buf=',		'menu': 'フェードの終了を待つバッファを指定します。'})
   call add(l:list, {'word': 'canskip=',		'menu': 'true を指定するとクリックでフェード終了待ちをスキップできます。'})
 elseif l:line =~ '\<wheel\>'
   call add(l:list, {'word': 'storage=',		'menu': 'ジャンプ先のシナリオファイルを指定します。省略すると、現在 のシナリオファイル内であると見なされます。'})
   call add(l:list, {'word': 'target=',		'menu': 'ジャンプ先のラベルを指定します。'})
   call add(l:list, {'word': 'func=',		'menu': 'ホイール時に実行されるメソッド名を指定します。func(shift, delta, x, y) の形で呼び出されます。 省略すれば呼び出しは実行されません。storage や target が指定されていた場合、このメソッド呼び出しが が実行されてからジャンプ先に移動します。'})
   call add(l:list, {'word': 'exp=',		'menu': 'ホイール時に実行される TJS 式を指定します。省略すれば 式は実行されません。storage や target が指定されていた場合、この式 が実行されてからジャンプ先に移動します。'})
   call add(l:list, {'word': 'se=',		'menu': 'ホイール時に再生する効果音を指定します。指定しなければ 効果音は再生されません。'})
   call add(l:list, {'word': 'sebuf=',		'menu': 'clickse で指定した効果音を鳴らす効果音バッファを指定します。 省略すると 0 であると見なされます。'})
 elseif l:line =~ '\<wl\>'
   call add(l:list, {'word': 'canskip=',		'menu': 'true を指定するとクリックで BGM 再生の終了待ちをスキップできます。'})
 elseif l:line =~ '\<wm\>'
   call add(l:list, {'word': 'canskip=',		'menu': 'true を指定するとクリックで自動移動の終了待ちをスキップできます。'})
 elseif l:line =~ '\<wp\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
   call add(l:list, {'word': 'for=',		'menu': '待つイベントの種類を指定します。'})
 elseif l:line =~ '\<wq\>'
   call add(l:list, {'word': 'canskip=',		'menu': 'true を指定するとクリックでトランジションの終了待ちをスキップできます。'})
 elseif l:line =~ '\<ws\>'
   call add(l:list, {'word': 'buf=',		'menu': '再生終了を待つバッファを指定します。'})
   call add(l:list, {'word': 'canskip=',		'menu': '効果音再生をマウスのクリックでスキップできるかを 指定します。'})
 elseif l:line =~ '\<wt\>'
   call add(l:list, {'word': 'canskip=',		'menu': 'true を指定するとクリックでトランジションの終了待ちをスキップできます。'})
 elseif l:line =~ '\<wv\>'
   call add(l:link, {'word': 'slot=',		'menu': 'ムービーオブジェクト番号(0〜)	この操作を行うムービーオブジェクト番号を指定します。'})
   call add(l:list, {'word': 'canskip=',		'menu': 'ビデオ再生をマウスのクリックでスキップできるかを 指定します。'})
 elseif l:line =~ '\<xchgbgm\>'
   call add(l:list, {'word': 'storage=',		'menu': '(必)次に再生する BGM ファイル名または CD トラックを指定します。'})
   call add(l:list, {'word': 'loop=',		'menu': 'BGM をループするかを指定します。'})
   call add(l:list, {'word': 'time=',		'menu': '(必)指定した時間で現在の曲のフェードアウトが行われた後、同じ時間で 指定した曲のフェードインが行われます。'})
   call add(l:list, {'word': 'overlap=',		'menu': 'overlap に時間を設定すると、その時間分、フェードアウトとフェード インの時間が重なります。省略すると 0 であると見なされます。 クロスフェードを行うときに指定します。'})
   call add(l:list, {'word': 'volume=',		'menu': '次の曲のフェード後に到達させる BGM の音量を % で指定します。'})



 elseif l:line =~ '^@\|\['

	if exists('g:kirikiri_macro')
		for l:macro in g:kirikiri_macro
			if l:line =~ '\<'.l:macro.tag.'\>'
				for l:type in l:macro.macrotype
					call add(l:list,{'word': l:type.type.'=','menu': l:type.typemenu})
				endfor
				return neocomplcache#keyword_filter(l:list, a:cur_keyword_str)
			endif
		endfor

		for l:macro in g:kirikiri_macro
			call add(l:list,{'word': l:macro.tag,'menu': l:macro.menu})
		endfor
	endif

   call add(l:list,{'word': 'autowc',		'menu': '自動ウェイト'})
   call add(l:list,{'word': 'clearsysvar',		'menu': 'システム変数の全消去'})
   call add(l:list,{'word': 'clickskip',		'menu': 'クリックスキップの設定'})
   call add(l:list,{'word': 'close',		'menu': 'ウィンドウを閉じる'})
   call add(l:list,{'word': 'cursor',		'menu': 'マウスカーソルの変更'})
   call add(l:list,{'word': 'hidemessage',		'menu': 'メッセージを消す'})
   call add(l:list,{'word': 'loadplugin',		'menu': 'プラグインの読み込み'})
   call add(l:list,{'word': 'mappfont',		'menu': 'レンダリング済みフォントの割り当て'})
   call add(l:list,{'word': 'nextskip',		'menu': '「次の選択肢まですすむ」の設定'})
   call add(l:list,{'word': 'quake',		'menu': '画面を揺らす'})
   call add(l:list,{'word': 'rclick',		'menu': '右クリックの設定'})
   call add(l:list,{'word': 'resetwait',		'menu': 'ウェイトの初期化'})
   call add(l:list,{'word': 's',			'menu': '停止する'})
   call add(l:list,{'word': 'stopquake',		'menu': '画面揺らしの停止'})
   call add(l:list,{'word': 'title',		'menu': 'タイトル指定'})
   call add(l:list,{'word': 'wait',		'menu': 'ウェイトを入れる'})
   call add(l:list,{'word': 'waitclick',		'menu': 'クリックを待つ'})
   call add(l:list,{'word': 'wc',			'menu': '文字数分のウェイトを入れる'})
   call add(l:list,{'word': 'wq',			'menu': '画面揺らしの終了待ち'})
  " フォーム操作
   call add(l:list,{'word': 'checkbox',		'menu': 'チェックボックスの作成'})
   call add(l:list,{'word': 'commit',		'menu': 'フォーム内容の確定'})
   call add(l:list,{'word': 'edit',		'menu': '単一行エディットの作成'})
  " マクロ操作
   call add(l:list,{'word': 'endmacro',		'menu': 'マクロの記述(の終了)'})
   call add(l:list,{'word': 'erasemacro',		'menu': 'マクロの消去'})
   call add(l:list,{'word': 'macro',		'menu': 'マクロの記述'})
  " メッセージ操作
   call add(l:list,{'word': 'cancelautomode',	'menu': '「自動的に読み進む」の解除'})
   call add(l:list,{'word': 'cancelskip',		'menu': 'スキップの解除'})
   call add(l:list,{'word': 'ch',			'menu': '文字を表示する'})
   call add(l:list,{'word': 'cm',			'menu': 'すべてのメッセージレイヤのクリア'})
   call add(l:list,{'word': 'ct',			'menu': 'メッセージレイヤのリセット'})
   call add(l:list,{'word': 'current',		'menu': '操作対象のメッセージレイヤの指定'})
   call add(l:list,{'word': 'deffont',		'menu': 'デフォルトの文字属性設定'})
   call add(l:list,{'word': 'defstyle',		'menu': 'デフォルトのスタイルの設定'})
   call add(l:list,{'word': 'delay',		'menu': '文字の表示速度の設定'})
   call add(l:list,{'word': 'endindent',		'menu': 'インデントの解除'})
   call add(l:list,{'word': 'endnowait',		'menu': '文字表示ノーウェイト(の終了)'})
   call add(l:list,{'word': 'er',			'menu': 'メッセージレイヤの文字の消去'})
   call add(l:list,{'word': 'font',		'menu': '文字属性設定'})
   call add(l:list,{'word': 'glyph',		'menu': 'クリック待ち記号の指定'})
   call add(l:list,{'word': 'graph',		'menu': 'インライン画像表示'})
   call add(l:list,{'word': 'hch',			'menu': '縦中横を表示する'})
   call add(l:list,{'word': 'indent',		'menu': 'インデントの設定'})
   call add(l:list,{'word': 'l',			'menu': '行末クリック待ち'})
   call add(l:list,{'word': 'locate',		'menu': '文字表示位置の指定'})
   call add(l:list,{'word': 'locklink',		'menu': 'リンクのロック'})
   call add(l:list,{'word': 'nowait',		'menu': '文字表示ノーウェイト'})
   call add(l:list,{'word': 'p',			'menu': '改ページクリック待ち'})
   call add(l:list,{'word': 'position',		'menu': 'メッセージレイヤの属性'})
   call add(l:list,{'word': 'r',			'menu': '改行する'})
   call add(l:list,{'word': 'resetfont',		'menu': '文字属性をデフォルトに戻す'})
   call add(l:list,{'word': 'resetstyle',		'menu': 'スタイルをデフォルトに戻す'})
   call add(l:list,{'word': 'ruby',		'menu': 'ルビ指定'})
   call add(l:list,{'word': 'style',		'menu': 'スタイルの設定'})
   call add(l:list,{'word': 'unlocklink',		'menu': 'リンクのロックの解除'})
  " メッセージ履歴操作
   call add(l:list,{'word': 'endhact',		'menu': 'メッセージ履歴アクションの終了'})
   call add(l:list,{'word': 'hact',		'menu': 'メッセージ履歴アクション'})
   call add(l:list,{'word': 'history',		'menu': 'メッセージ履歴の設定'})
   call add(l:list,{'word': 'hr',			'menu': 'メッセージ履歴の改行/改ページ'})
   call add(l:list,{'word': 'showhistory',		'menu': 'メッセージ履歴の表示'})
  " ラベル・ジャンプ操作
   call add(l:list,{'word': 'button',		'menu': 'グラフィカルボタン'})
   call add(l:list,{'word': 'call',		'menu': 'サブルーチンの呼び出し'})
   call add(l:list,{'word': 'cclick',		'menu': 'クリック待ち解除'})
   call add(l:list,{'word': 'click',		'menu': 'クリック待ちジャンプ'})
   call add(l:list,{'word': 'ctimeout',		'menu': 'タイムアウト待ち解除'})
   call add(l:list,{'word': 'cwheel',		'menu': 'ホイール待ち解除'})
   call add(l:list,{'word': 'endlink',		'menu': 'ハイパーリンク(の終了)'})
   call add(l:list,{'word': 'jump',		'menu': 'シナリオのジャンプ'})
   call add(l:list,{'word': 'link',		'menu': 'ハイパーリンク'})
   call add(l:list,{'word': 'return',		'menu': 'サブルーチンから戻る'})
   call add(l:list,{'word': 'timeout',		'menu': 'タイムアウト待ちジャンプ'})
   call add(l:list,{'word': 'wheel',		'menu': 'ホイール待ちジャンプ'})
  " レイヤ操作
   call add(l:list,{'word': 'animstart',		'menu': 'アニメーションの開始'})
   call add(l:list,{'word': 'animstop',		'menu': 'アニメーションの停止'})
   call add(l:list,{'word': 'backlay',		'menu': 'レイヤ情報の表ページから裏ページへのコピー'})
   call add(l:list,{'word': 'copylay',		'menu': 'レイヤ情報のコピー'})
   call add(l:list,{'word': 'freeimage',		'menu': 'レイヤ画像の解放'})
   call add(l:list,{'word': 'image',		'menu': '画像の読み込み'})
   call add(l:list,{'word': 'laycount',		'menu': 'レイヤの数の変更'})
   call add(l:list,{'word': 'layopt',		'menu': 'レイヤの属性'})
   call add(l:list,{'word': 'mapaction',		'menu': 'クリッカブルマップ用領域アクション定義ファイルの指定'})
   call add(l:list,{'word': 'mapdisable',		'menu': 'クリッカブルマップの無効化'})
   call add(l:list,{'word': 'mapimage',		'menu': 'クリッカブルマップ用領域画像の指定'})
   call add(l:list,{'word': 'move',		'menu': 'レイヤの自動移動'})
   call add(l:list,{'word': 'pimage',		'menu': '画像の部分追加読み込み'})
   call add(l:list,{'word': 'ptext',		'menu': 'レイヤへの文字描画'})
   call add(l:list,{'word': 'stopmove',		'menu': 'レイヤの自動移動の停止'})
   call add(l:list,{'word': 'stoptrans',		'menu': 'レイヤのトランジションの停止'})
   call add(l:list,{'word': 'trans',		'menu': 'レイヤのトランジション'})
   call add(l:list,{'word': 'wa',			'menu': 'アニメーションの停止待ち'})
   call add(l:list,{'word': 'wm',			'menu': '自動移動の終了待ち'})
   call add(l:list,{'word': 'wt',			'menu': 'トランジションの終了待ち'})
  " 効果音・BGM・ビデオ操作
   call add(l:list,{'word': 'bgmopt',		'menu': 'BGM の設定'})
   call add(l:list,{'word': 'cancelvideoevent',	'menu': 'ピリオドイベントの解除'})
   call add(l:list,{'word': 'cancelvideosegloop',	'menu': 'ビデオのセグメントループ再生の解除'})
   call add(l:list,{'word': 'clearbgmlabel',	'menu': 'BGM のラベル通過処理の解除'})
   call add(l:list,{'word': 'clearbgmstop',	'menu': 'BGM の停止処理の解除'})
   call add(l:list,{'word': 'clearvideolayer',	'menu': 'ビデオレイヤ解除'})
   call add(l:list,{'word': 'fadebgm',		'menu': 'BGMのフェード'})
   call add(l:list,{'word': 'fadeinbgm',		'menu': 'フェードインしながらのBGM再生開始'})
   call add(l:list,{'word': 'fadeinse',		'menu': '効果音のフェードイン再生'})
   call add(l:list,{'word': 'fadeoutbgm',		'menu': 'BGMのフェードアウト'})
   call add(l:list,{'word': 'fadeoutse',		'menu': '効果音のフェードアウト'})
   call add(l:list,{'word': 'fadepausebgm',	'menu': 'BGM 演奏のフェードアウトしながらの一時停止'})
   call add(l:list,{'word': 'fadese',		'menu': '効果音のフェード'})
   call add(l:list,{'word': 'openvideo',		'menu': 'ビデオ/SWFの再生準備'})
   call add(l:list,{'word': 'pausebgm',		'menu': 'BGM 演奏の一時停止'})
   call add(l:list,{'word': 'pausevideo',		'menu': 'ビデオの一時停止'})
   call add(l:list,{'word': 'playbgm',		'menu': 'BGM の演奏'})
   call add(l:list,{'word': 'playse',		'menu': '効果音の再生'})
   call add(l:list,{'word': 'playvideo',		'menu': 'ビデオ/SWFの再生'})
   call add(l:list,{'word': 'preparevideo',	'menu': 'ビデオの再生準備'})
   call add(l:list,{'word': 'resumebgm',		'menu': 'BGM 演奏の再開'})
   call add(l:list,{'word': 'resumevideo',		'menu': 'ビデオ再生の再開'})
   call add(l:list,{'word': 'rewindvideo',		'menu': 'ビデオの巻き戻し'})
   call add(l:list,{'word': 'seopt',		'menu': '効果音の設定'})
   call add(l:list,{'word': 'setbgmlabel',		'menu': 'BGM のラベル通過処理の登録'})
   call add(l:list,{'word': 'setbgmstop',		'menu': 'BGM の停止処理の登録'})
   call add(l:list,{'word': 'stopbgm',		'menu': 'BGM 演奏の停止'})
   call add(l:list,{'word': 'stopse',		'menu': '効果音再生の停止'})
   call add(l:list,{'word': 'stopvideo',		'menu': 'ビデオ/SWF再生の停止'})
   call add(l:list,{'word': 'video',		'menu': 'ビデオ/SWF表示領域の属性を指定'})
   call add(l:list,{'word': 'videoevent',		'menu': 'ピリオドイベントの発生'})
   call add(l:list,{'word': 'videolayer',		'menu': 'ビデオレイヤ設定'})
   call add(l:list,{'word': 'videosegloop',	'menu': 'ビデオのセグメントループ再生'})
   call add(l:list,{'word': 'wb',			'menu': 'BGM フェードの終了待ち'})
   call add(l:list,{'word': 'wf',			'menu': '効果音フェードの終了待ち'})
   call add(l:list,{'word': 'wl',			'menu': 'BGM 再生の終了待ち'})
   call add(l:list,{'word': 'wp',			'menu': 'ビデオピリオドイベント待ち'})
   call add(l:list,{'word': 'ws',			'menu': '効果音再生の終了待ち'})
   call add(l:list,{'word': 'wv',			'menu': 'ビデオ再生の終了待ち'})
   call add(l:list,{'word': 'xchgbgm',		'menu': 'BGM を入れ替える'})
  " 変数・TJS 操作
   call add(l:list,{'word': 'clearvar',		'menu': 'ゲーム変数の全消去'})
   call add(l:list,{'word': 'else',		'menu': 'if の中身が実行されなかったときに実行'})
   call add(l:list,{'word': 'elsif',		'menu': 'それまでの if の中身が実行されていなかったときに、条件付きで実行'})
   call add(l:list,{'word': 'emb',			'menu': '式評価結果の埋め込み'})
   call add(l:list,{'word': 'endif',		'menu': '条件によりシナリオを実行(の終了)'})
   call add(l:list,{'word': 'endignore',		'menu': '条件によりシナリオを無視(の終了)'})
   call add(l:list,{'word': 'endscript',		'menu': 'TJS スクリプトの記述(の終了)'})
   call add(l:list,{'word': 'eval',		'menu': '式の評価'})
   call add(l:list,{'word': 'if',			'menu': '条件によりシナリオを実行'})
   call add(l:list,{'word': 'ignore',		'menu': '条件によりシナリオを無視'})
   call add(l:list,{'word': 'input',		'menu': '文字列の入力'})
   call add(l:list,{'word': 'iscript',		'menu': 'TJS スクリプトの記述'})
   call add(l:list,{'word': 'trace',		'menu': 'コンソールへ値の出力'})
   call add(l:list,{'word': 'waittrig',		'menu': 'トリガを待つ'})
  " 栞・通過記録操作
   call add(l:list,{'word': 'copybookmark',	'menu': '栞のコピー'})
   call add(l:list,{'word': 'disablestore',	'menu': '栞の機能の一時的な使用不可'})
   call add(l:list,{'word': 'erasebookmark',	'menu': '栞の消去'})
   call add(l:list,{'word': 'goback',		'menu': '前に戻る'})
   call add(l:list,{'word': 'gotostart',		'menu': '最初に戻る'})
   call add(l:list,{'word': 'load',		'menu': '栞の読み込み'})
   call add(l:list,{'word': 'locksnapshot',	'menu': 'スナップショットのロック'})
   call add(l:list,{'word': 'record',		'menu': '通過記録を行う'})
   call add(l:list,{'word': 'save',		'menu': '栞の保存'})
   call add(l:list,{'word': 'startanchor',		'menu': '「最初に戻る」の有効・無効'})
   call add(l:list,{'word': 'store',		'menu': '栞機能の設定'})
   call add(l:list,{'word': 'tempload',		'menu': '栞のメモリ上からの読み込み'})
   call add(l:list,{'word': 'tempsave',		'menu': '栞のメモリ上への保存'})
   call add(l:list,{'word': 'unlocksnapshot',	'menu': 'スナップショットのロックの解除'})

  endif

  return neocomplcache#keyword_filter(l:list, a:cur_keyword_str)
endfunction

function! neocomplcache#sources#kirikiri_complete#define()
  return s:source
endfunction



" vim: ts=2 sw=2 sts=2 foldmethod=marker

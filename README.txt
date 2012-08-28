吉里吉里/Kagのタグと属性を補完するための
neocomplcache用プラグイン

マクロも補完するためには次のようにする
let g:kirikiri_macro = [
			\{'tag': 'マクロ名','menu': '必要なら説明','macrotype': [{'type': 'マクロの属性','typemenu': '必要なら説明'}]},
			\]
例
@macro name=haikei
@image storage=%storage layer=base page=fore
@endmacro

@macro name=tu
@trans method=universal rule=%rule time=%time vague=%vague
@endmacro
このようにマクロを設定した場合
let g:kirikiri_macro = [
			\{'tag': 'haikei','menu': '','macrotype': [{'type': 'storage','typemenu': ''}]},
			\{'tag': 'tu','menu': '','macrotype': [{'type': 'rule','typemenu': ''},{'type': 'time','typemenu': ''},{'type': 'vague','typemenu': ''}]},
			\]


vimで吉里吉里/Kagのタグと属性を補完するための  
neocomplcacheのsource  
  
  
必要な設定  
```  
neocomplcacheをインストールする  
ファイルタイプをkirikiriにする  
autocmd BufNew,BufRead *.ks	set filetype=kirikiri  
  
マクロも補完するためには次のようにする  
let g:kirikiri_neocomplcache_macro_list = [  
			\{'tag': 'マクロ名','menu': '必要なら説明',  
			\'macrotype': [{'type': 'マクロの属性名','typemenu': '必要なら説明'}]},  
			\]  
例  
@macro name=haikei  
@image storage=%storage layer=base page=fore  
@endmacro  
  
@macro name=tu  
@trans method=universal rule=%rule time=%time vague=%vague  
@endmacro  
このようにマクロを設定した場合なら次のように設定する  
let g:kirikiri_neocomplcache_macro_list = [  
			\{'tag': 'haikei','menu': '',  
			\'macrotype': [{'type': 'storage','typemenu': ''}]},  
			\{'tag': 'tu','menu': '',  
			\'macrotype': [{'type': 'rule','typemenu': ''},  
				      \{'type': 'time','typemenu': ''},  
				      \{'type': 'vague','typemenu': ''}]},  
			\]  
  
  
属性値も補完するためには次のようなリストをつくってから  
let s:kirikiri_example_list = [  
			\{'word': '属性値','menu': '必要なら説明も'}  
			\]  
このように登録する  
let g:kirikiri_neocomplcache_list = [  
			\{'tagname': '対象とするタグの名前,複数あるときは\|で区切る',   
			\'typename': '補完する属性名','list': s:kirikiri_example_list}  
			\]  
  
例  
let s:kirikiri_picture_list = [  
			\{'word': '01.jpg','menu': ''},  
			\{'word': '02.jpg','menu': ''},  
			\{'word': '03.jpg','menu': ''}  
			\]  
let s:kirikiri_rule_list = []  
let s:kirikiri_scenario_list = []  
let s:kirikiri_label_list = []  
let s:kirikiri_bgm_list = []  
let s:kirikiri_se_list = []  
  
  
let g:kirikiri_neocomplcache_list = [  
			\{'tagname': 'image',  
			\'typename': 'storage',  
			\'list': s:kirikiri_picture_list},  
			\{'tagname': 'trans',  
			\'typename': 'rule',  
			\'list': s:kirikiri_rule_list},  
			\{'tagname': 'link\|jump\|call',  
			\'typename': 'storage',	  
			\'list': s:kirikiri_scenario_list},  
			\{'tagname': 'link\|jump\|call',  
			\'typename': 'target',		  
			\'list': s:kirikiri_label_list},  
			\{'tagname': 'playbgm\|fadein',		  
			\'typename': 'storage',		  
			\'list': s:kirikiri_bgm_list},  
			\{'tagname': 'playse',			  
			\'typename': 'storage',		  
			\'list': s:kirikiri_se_list}  
			\]  
```
  
こんな感じ  
![1](http://akakyouryuu.blog.fc2.com/img/neo1.png/)  
![2](http://akakyouryuu.blog.fc2.com/img/neo2.png/)  
![3](http://akakyouryuu.blog.fc2.com/img/neo3.png/)  
![4](http://akakyouryuu.blog.fc2.com/img/neo4.png/)  
![5](http://akakyouryuu.blog.fc2.com/img/neo5.png/)  
![6](http://akakyouryuu.blog.fc2.com/img/neo4.png/)  


vim�ŋg���g��/Kag�̃^�O�Ƒ�����⊮���邽�߂�  
neocomplcache��source  
  
  
�K�v�Ȑݒ�  
```  
neocomplcache���C���X�g�[������  
�t�@�C���^�C�v��kirikiri�ɂ���  
autocmd BufNew,BufRead *.ks	set filetype=kirikiri  
  
�}�N�����⊮���邽�߂ɂ͎��̂悤�ɂ���  
let g:kirikiri_neocomplcache_macro_list = [  
			\{'tag': '�}�N����','menu': '�K�v�Ȃ����',  
			\'macrotype': [{'type': '�}�N���̑�����','typemenu': '�K�v�Ȃ����'}]},  
			\]  
��  
@macro name=haikei  
@image storage=%storage layer=base page=fore  
@endmacro  
  
@macro name=tu  
@trans method=universal rule=%rule time=%time vague=%vague  
@endmacro  
���̂悤�Ƀ}�N����ݒ肵���ꍇ�Ȃ玟�̂悤�ɐݒ肷��  
let g:kirikiri_neocomplcache_macro_list = [  
			\{'tag': 'haikei','menu': '',  
			\'macrotype': [{'type': 'storage','typemenu': ''}]},  
			\{'tag': 'tu','menu': '',  
			\'macrotype': [{'type': 'rule','typemenu': ''},  
				      \{'type': 'time','typemenu': ''},  
				      \{'type': 'vague','typemenu': ''}]},  
			\]  
  
  
�����l���⊮���邽�߂ɂ͎��̂悤�ȃ��X�g�������Ă���  
let s:kirikiri_example_list = [  
			\{'word': '�����l','menu': '�K�v�Ȃ������'}  
			\]  
���̂悤�ɓo�^����  
let g:kirikiri_neocomplcache_list = [  
			\{'tagname': '�ΏۂƂ���^�O�̖��O,��������Ƃ���\|�ŋ�؂�',   
			\'typename': '�⊮���鑮����','list': s:kirikiri_example_list}  
			\]  
  
��  
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
  
����Ȋ���  
![1](http://akakyouryuu.blog.fc2.com/img/neo1.png/)  
![2](http://akakyouryuu.blog.fc2.com/img/neo2.png/)  
![3](http://akakyouryuu.blog.fc2.com/img/neo3.png/)  
![4](http://akakyouryuu.blog.fc2.com/img/neo4.png/)  
![5](http://akakyouryuu.blog.fc2.com/img/neo5.png/)  
![6](http://akakyouryuu.blog.fc2.com/img/neo4.png/)  


�g���g��/Kag�̃^�O�Ƒ�����⊮���邽�߂�
neocomplcache�p�v���O�C��

�}�N�����⊮���邽�߂ɂ͎��̂悤�ɂ���
let g:kirikiri_macro = [
			\{'tag': '�}�N����','menu': '�K�v�Ȃ����','macrotype': [{'type': '�}�N���̑���','typemenu': '�K�v�Ȃ����'}]},
			\]
��
@macro name=haikei
@image storage=%storage layer=base page=fore
@endmacro

@macro name=tu
@trans method=universal rule=%rule time=%time vague=%vague
@endmacro
���̂悤�Ƀ}�N����ݒ肵���ꍇ
let g:kirikiri_macro = [
			\{'tag': 'haikei','menu': '','macrotype': [{'type': 'storage','typemenu': ''}]},
			\{'tag': 'tu','menu': '','macrotype': [{'type': 'rule','typemenu': ''},{'type': 'time','typemenu': ''},{'type': 'vague','typemenu': ''}]},
			\]


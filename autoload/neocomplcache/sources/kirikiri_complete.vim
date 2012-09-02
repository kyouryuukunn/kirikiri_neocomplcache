
" plugin for neocomplcache <http://github.com/Shougo/neocomplcache>
"
" This plugin requires ghc-mod <http://www.mew.org/~kazu/proj/ghc-mod/>

let s:source = {
      \ 'name' : 'kirikiri_complete',
      \ 'kind' : 'ftplugin',
      \ 'filetypes': { 'kirikiri': 1 },
      \ }

function! s:source.initialize()
		" {{{ s:type_list
	let s:type_list = [
				\{'tagname': 'animstart',	'typename': 'layer',		'list': [{'word': 'base'},{'word': '0'},{'word': '1'},{'word': '2'}]},
				\{'tagname': 'animstart',	'typename': 'page',		'list': [{'word': 'back'},{'word': 'fore'}]},
				\{'tagname': 'animstart',	'typename': 'seg',		'list': [{'word': ' ','menu': '1 �ȏ�̐���'}]},
				\{'tagname': 'animstart',	'typename': 'target',		'list': [{'word': ' ','menu': '�J�n���x����'}]},
				\{'tagname': 'animstop',	'typename': 'layer',		'list': [{'word': 'base'},{'word': '0'},{'word': '1'},{'word': '2'}]},
				\{'tagname': 'animstop',	'typename': 'page',		'list': [{'word': 'back'},{'word': 'fore'}]},
				\{'tagname': 'animstop',	'typename': 'seg',		'list': [{'word': ' ','menu': '1 �ȏ�̐���'}]},
				\{'tagname': 'autowc',		'typename': 'enabled',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'autowc',		'typename': 'ch',		'list': [{'word': ' ','menu': '�Ώۂ̕���'}]},
				\{'tagname': 'autowc',		'typename': 'time',		'list': [{'word': ' ','menu': '�E�F�C�g(�������P��)'}]},
				\{'tagname': 'backlay',		'typename': 'layer',		'list': [{'word': ' ','menu': '"base" �܂��� 0 �ȏ�̐��� �܂� �� message0 �܂��� message1 �܂��� message'}]},
				\{'tagname': 'bgmopt',		'typename': 'volume',		'list': [{'word': ' ','menu': '����% (0�`100)'}]},
				\{'tagname': 'bgmopt',		'typename': 'gvolume',		'list': [{'word': ' ','menu': '����% (0�`100)'}]},
				\{'tagname': 'button',		'typename': 'graphic',		'list': [{'word': ' ','menu': '�摜�t�@�C����'}]},
				\{'tagname': 'button',		'typename': 'graphickey',		'list': [{'word': 'adapt','menu': '0xRRGGBB �`�� �܂��� �p���b�g�C���f�b�N�X�ԍ� �܂��� "adapt"'}]},
				\{'tagname': 'button',		'typename': 'storage',		'list': [{'word': ' ','menu': '�V�i���I�t�@�C����'}]},
				\{'tagname': 'button',		'typename': 'target',		'list': [{'word': ' ','menu': '���x����'}]},
				\{'tagname': 'button',		'typename': 'recthit',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'button',		'typename': 'exp',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'button',		'typename': 'hint',		'list': [{'word': ' ','menu': '�q���g�Ƃ��ĕ\�������镶����'}]},
				\{'tagname': 'button',		'typename': 'onenter',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'button',		'typename': 'onleave',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'button',		'typename': 'countpage',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'button',		'typename': 'clickse',		'list': [{'word': ' ','menu': '���ʉ��t�@�C����'}]},
				\{'tagname': 'button',		'typename': 'clicksebuf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�'}]},
				\{'tagname': 'button',		'typename': 'enterse',		'list': [{'word': ' ','menu': '���ʉ��t�@�C����'}]},
				\{'tagname': 'button',		'typename': 'entersebuf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�'}]},
				\{'tagname': 'button',		'typename': 'leavese',		'list': [{'word': ' ','menu': '���ʉ��t�@�C����'}]},
				\{'tagname': 'button',		'typename': 'leavesebuf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�'}]},
				\{'tagname': 'call',		'typename': 'storage',		'list': [{'word': ' ','menu': '�V�i���I�t�@�C����'}]},
				\{'tagname': 'call',		'typename': 'target',		'list': [{'word': ' ','menu': '���x����'}]},
				\{'tagname': 'call',		'typename': 'countpage',		'list': [{'word': ' ','menu': 'false(�f�t�H���g) �܂��� true'}]},
				\{'tagname': 'cancelvideoevent',	'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'cancelvideosegloop',	'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'ch',		'typename': 'text',		'list': [{'word': ' ','menu': '����'}]},
				\{'tagname': 'checkbox',	'typename': 'name',		'list': [{'word': ' ','menu': '�ϐ���'}]},
				\{'tagname': 'checkbox',	'typename': 'bgcolor',		'list': [{'word': ' ','menu': '0xRRGGBB �`��'}]},
				\{'tagname': 'checkbox',	'typename': 'opacity',		'list': [{'word': ' ','menu': '0(���S����) �` 255(���S�s����)'}]},
				\{'tagname': 'checkbox',	'typename': 'color',		'list': [{'word': ' ','menu': '0xRRGGBB �`��'}]},
				\{'tagname': 'clearvideolayer',	'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'clearvideolayer',	'typename': 'channel',		'list': [{'word': '1'},{'word': '2'}]},
				\{'tagname': 'click',		'typename': 'storage',		'list': [{'word': ' ','menu': '�V�i���I�t�@�C����'}]},
				\{'tagname': 'click',		'typename': 'target',		'list': [{'word': ' ','menu': '���x����'}]},
				\{'tagname': 'click',		'typename': 'exp',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'click',		'typename': 'se',		'list': [{'word': ' ','menu': '���ʉ��t�@�C����'}]},
				\{'tagname': 'click',		'typename': 'sebuf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�'}]},
				\{'tagname': 'clickskip',	'typename': 'enabled',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'close',		'typename': 'ask',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'copybookmark',	'typename': 'from',		'list': [{'word': ' ','menu': '0�܂��͐��̐���'}]},
				\{'tagname': 'copybookmark',	'typename': 'to',		'list': [{'word': ' ','menu': '0�܂��͐��̐���'}]},
				\{'tagname': 'copylay',		'typename': 'srclayer',		'list': [{'word': 'base'},{'word': '0'},{'word': '1'},{'word': '2'},{'word': 'message0'},{'word': 'message1'},{'word': 'message'}]},
				\{'tagname': 'copylay',		'typename': 'destlayer',		'list': [{'word': 'base'},{'word': '0'},{'word': '1'},{'word': '2'},{'word': 'message0'},{'word': 'message1'},{'word': 'message'}]},
				\{'tagname': 'copylay',		'typename': 'srcpage',		'list': [{'word': 'fore'},{'word': 'back'}]},
				\{'tagname': 'copylay',		'typename': 'destpage',		'list': [{'word': 'fore'},{'word': 'back'}]},
				\{'tagname': 'current',		'typename': 'layer',		'list': [{'word': ' ','menu': '"message0" �܂��� "message1"'}]},
				\{'tagname': 'current',		'typename': 'page',		'list': [{'word': 'fore','menu': 'default'},{'word': 'back'}]},
				\{'tagname': 'current',		'typename': 'withback',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'cursor',		'typename': 'default',		'list': [{'word': ' ','menu': 'cr �Ŏn�܂�J�[�\���萔 �܂��� �J�[�\���t�@�C����'}]},
				\{'tagname': 'cursor',		'typename': 'pointed',		'list': [{'word': ' ','menu': 'cr �Ŏn�܂�J�[�\���萔 �܂��� �J�[�\���t�@�C����'}]},
				\{'tagname': 'cursor',		'typename': 'click',		'list': [{'word': ' ','menu': 'cr �Ŏn�܂�J�[�\���萔 �܂��� �J�[�\���t�@�C����'}]},
				\{'tagname': 'cursor',		'typename': 'draggable',		'list': [{'word': ' ','menu': 'cr �Ŏn�܂�J�[�\���萔 �܂��� �J�[�\���t�@�C����'}]},
				\{'tagname': 'deffont',		'typename': 'size',		'list': [{'word': ' ','menu': '�����T�C�Y(pixel�P��)'}]},
				\{'tagname': 'deffont',		'typename': 'face',		'list': [{'word': 'user','menu': '�t�H���g�� �܂��� "user"'}]},
				\{'tagname': 'deffont',		'typename': 'color',		'list': [{'word': ' ','menu': '0xRRGGBB �`��'}]},
				\{'tagname': 'deffont',		'typename': 'rubysize',		'list': [{'word': ' ','menu': '���r�̕����T�C�Y(pixel�P��)'}]},
				\{'tagname': 'deffont',		'typename': 'rubyoffset',		'list': [{'word': ' ','menu': '���r�̕\���I�t�Z�b�g(pixel�P��)'}]},
				\{'tagname': 'deffont',		'typename': 'shadow',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'deffont',		'typename': 'edge',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'deffont',		'typename': 'edgecolor',		'list': [{'word': ' ','menu': '0xRRGGBB �`��'}]},
				\{'tagname': 'deffont',		'typename': 'shadowcolor',		'list': [{'word': ' ','menu': '0xRRGGBB �`��'}]},
				\{'tagname': 'deffont',		'typename': 'bold',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'defstyle',	'typename': 'linespacing',		'list': [{'word': ' ','menu': '�s�� (pixel�P��)'}]},
				\{'tagname': 'defstyle',	'typename': 'pitch',		'list': [{'word': ' ','menu': '���ԃI�t�Z�b�g(pixel�P��)'}]},
				\{'tagname': 'defstyle',	'typename': 'linesize',		'list': [{'word': ' ','menu': '�\��T�C�Y(pixel�P��)'}]},
				\{'tagname': 'delay',		'typename': 'speed',		'list': [{'word': ' ','menu': '"nowait" �܂��� "user" �܂��̓E�F�C�g�̒l(ms�P��)'}]},
				\{'tagname': 'disablestore',	'typename': 'store',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'disablestore',	'typename': 'restore',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'edit',		'typename': 'name',		'list': [{'word': ' ','menu': '�ϐ���'}]},
				\{'tagname': 'edit',		'typename': 'length',		'list': [{'word': ' ','menu': '�� (pixel �P��)'}]},
				\{'tagname': 'edit',		'typename': 'bgcolor',		'list': [{'word': ' ','menu': '0xRRGGBB �`��'}]},
				\{'tagname': 'edit',		'typename': 'opacity',		'list': [{'word': ' ','menu': '0(���S����) �` 255(���S�s����)'}]},
				\{'tagname': 'edit',		'typename': 'color',		'list': [{'word': ' ','menu': '0xRRGGBB �`��'}]},
				\{'tagname': 'edit',		'typename': 'maxchars',		'list': [{'word': ' ','menu': '�ő啶����'}]},
				\{'tagname': 'elsif',		'typename': 'exp',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'emb',		'typename': 'exp',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'erasebookmark',	'typename': 'place',		'list': [{'word': ' ','menu': '0�܂��͐��̐���(0���f�t�H���g)'}]},
				\{'tagname': 'erasemacro',	'typename': 'name',		'list': [{'word': ' ','menu': '�^�O��'}]},
				\{'tagname': 'eval',		'typename': 'exp',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'fadebgm',		'typename': 'volume',		'list': [{'word': ' ','menu': '����% (0�`100)'}]},
				\{'tagname': 'fadebgm',		'typename': 'time',		'list': [{'word': ' ','menu': '����(ms�P��)'}]},
				\{'tagname': 'fadeinbgm',	'typename': 'storage',		'list': [{'word': ' ','menu': 'BGM �t�@�C���� �܂��� CD �g���b�N�ԍ�'}]},
				\{'tagname': 'fadeinbgm',	'typename': 'start',		'list': [{'word': ' ','menu': 'BGM �J�n�ʒu�w��'}]},
				\{'tagname': 'fadeinbgm',	'typename': 'loop',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'fadeinbgm',	'typename': 'time',		'list': [{'word': ' ','menu': '����(ms�P��)'}]},
				\{'tagname': 'fadeinse', 	'typename': 'buf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�( 0(�f�t�H���g) �` )'}]},
				\{'tagname': 'fadeinse', 	'typename': 'storage',		'list': [{'word': ' ','menu': '���ʉ��t�@�C����'}]},
				\{'tagname': 'fadeinse', 	'typename': 'start',		'list': [{'word': ' ','menu': 'SE �J�n�ʒu�w��'}]},
				\{'tagname': 'fadeinse', 	'typename': 'time',		'list': [{'word': ' ','menu': '�t�F�[�h�C������(ms)'}]},
				\{'tagname': 'fadeinse', 	'typename': 'loop',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'fadeoutbgm',	'typename': 'time',		'list': [{'word': ' ','menu': '����(ms�P��)'}]},
				\{'tagname': 'fadeoutse',	'typename': 'buf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�( 0(�f�t�H���g) �` )'}]},
				\{'tagname': 'fadeoutse',	'typename': 'time',		'list': [{'word': ' ','menu': '�t�F�[�h�A�E�g����(ms)'}]},
				\{'tagname': 'fadepausebg',	'typename': 'time',		'list': [{'word': ' ','menu': '����(ms�P��)'}]},
				\{'tagname': 'fadese',		'typename': 'buf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�( 0(�f�t�H���g) �` )'}]},
				\{'tagname': 'fadese',		'typename': 'time',		'list': [{'word': ' ','menu': '�t�F�[�h����(ms)'}]},
				\{'tagname': 'fadese',		'typename': 'volume',		'list': [{'word': ' ','menu': '����% (0�`100)'}]},
				\{'tagname': 'font',		'typename': 'size',		'list': [{'word': 'default'}]},
				\{'tagname': 'font',		'typename': 'face',		'list': [{'word': 'default'},{'word': 'user'}]},
				\{'tagname': 'font',		'typename': 'color',		'list': [{'word': 'default'}]},
				\{'tagname': 'font',		'typename': 'italic',		'list': [{'word': 'true'},{'word': 'false'},{'word': 'default'}]},
				\{'tagname': 'font',		'typename': 'rubysize',		'list': [{'word': 'default'}]},
				\{'tagname': 'font',		'typename': 'rubyoffset',		'list': [{'word': 'default'}]},
				\{'tagname': 'font',		'typename': 'shadow',		'list': [{'word': 'true'},{'word': 'false'},{'word': 'default'}]},
				\{'tagname': 'font',		'typename': 'edge',		'list': [{'word': 'true'},{'word': 'false'},{'word': 'default'}]},
				\{'tagname': 'font',		'typename': 'edgecolor',		'list': [{'word': 'default'}]},
				\{'tagname': 'font',		'typename': 'shadowcolor',		'list': [{'word': 'default'}]},
				\{'tagname': 'font',		'typename': 'bold',		'list': [{'word': 'true'},{'word': 'false'},{'word': 'default'}]},
				\{'tagname': 'freeimage',	'typename': 'layer',		'list': [{'word': 'base'},{'word': '0'},{'word': '1'},{'word': '2'}]},
				\{'tagname': 'freeimage',	'typename': 'page',		'list': [{'word': 'back'},{'word': 'fore'}]},
				\{'tagname': 'glyph',		'typename': 'line',		'list': [{'word': ' ','menu': '�s���N���b�N�҂��L���t�@�C����'}]},
				\{'tagname': 'glyph',		'typename': 'linekey',		'list': [{'word': 'adapt','menu': '0xRRGGBB �`�� �܂��� �p���b�g�C���f�b�N�X�ԍ� �܂��� "adapt"'}]},
				\{'tagname': 'glyph',		'typename': 'page',		'list': [{'word': ' ','menu': '���y�[�W�N���b�N�҂��L���t�@�C����'}]},
				\{'tagname': 'glyph',		'typename': 'pagekey',		'list': [{'word': 'adapt','menu': '0xRRGGBB �`�� �܂��� �p���b�g�C���f�b�N�X�ԍ� �܂��� "adapt"'}]},
				\{'tagname': 'glyph',		'typename': 'fix',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'glyph',		'typename': 'left',		'list': [{'word': ' ','menu': '���[�ʒu(pixel�P��)'}]},
				\{'tagname': 'glyph',		'typename': 'top',		'list': [{'word': ' ','menu': '��[�ʒu(pixel�P��)'}]},
				\{'tagname': 'goback',		'typename': 'ask',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'gotostart',	'typename': 'ask',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'graph',		'typename': 'storage',		'list': [{'word': ' ','menu': '�摜�t�@�C����'}]},
				\{'tagname': 'graph',		'typename': 'key',		'list': [{'word': 'adapt','menu': '0xRRGGBB �`�� �܂��� �p���b�g�C���f�b�N�X�ԍ� �܂��� "adapt"'}]},
				\{'tagname': 'graph',		'typename': 'char',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'graph',		'typename': 'alt',		'list': [{'word': ' ','menu': '��֕���'}]},
				\{'tagname': 'hact',		'typename': 'exp',		'list': [{'word': ' ','menu': 'TJS��'}]},
				\{'tagname': 'hch',		'typename': 'text',		'list': [{'word': ' ','menu': '����'}]},
				\{'tagname': 'hch',		'typename': 'expand',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'history',		'typename': 'output',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'history',		'typename': 'enabled',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'hr',		'typename': 'repage',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'if',		'typename': 'exp',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'ignore',		'typename': 'exp',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'image',		'typename': 'storage',		'list': [{'word': ' ','menu': '�摜�t�@�C����'}]},
				\{'tagname': 'image',		'typename': 'layer',		'list': [{'word': 'base'},{'word': '0'},{'word': '1'},{'word': '2'}]},
				\{'tagname': 'image',		'typename': 'page',		'list': [{'word': 'back'},{'word': 'fore'}]},
				\{'tagname': 'image',		'typename': 'key',		'list': [{'word': 'adapt','menu': '0xRRGGBB �`�� �܂��� �p���b�g�C���f�b�N�X�ԍ� �܂��� "adapt"'}]},
				\{'tagname': 'image',		'typename': 'mode',		'list': [{'word': 'alpha','menu': 'default'},{'word': 'transp'},{'word': 'opaque'},{'word': 'rect'},{'word': 'add'},{'word': 'sub'},{'word': 'mul'},{'word': 'dodge'},{'word': 'darken'},{'word': 'lighten'},{'word': 'screen'},{'word': 'psadd'},{'word': 'pssub'},{'word': 'psmul'},{'word': 'psscreen'},{'word': 'psoverlay'},{'word': 'pshlight'},{'word': 'psslight'},{'word': 'psdodge'},{'word': 'psdodge5'},{'word': 'psburn'},{'word': 'pslighten'},{'word': 'psdarken'},{'word': 'psdiff'},{'word': 'psdiff5'},{'word': 'psexcl'}]},
				\{'tagname': 'image',		'typename': 'grayscale',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'image',		'typename': 'rgamma',		'list': [{'word': ' ','menu': '�K���}�␳�l (0.1 �` 1.0(�f�t�H���g) �` 9.9)'}]},
				\{'tagname': 'image',		'typename': 'ggamma',		'list': [{'word': ' ','menu': '�K���}�␳�l (0.1 �` 1.0(�f�t�H���g) �` 9.9)'}]},
				\{'tagname': 'image',		'typename': 'bgamma',		'list': [{'word': ' ','menu': '�K���}�␳�l (0.1 �` 1.0(�f�t�H���g) �` 9.9)'}]},
				\{'tagname': 'image',		'typename': 'rfloor',		'list': [{'word': ' ','menu': '�P�x�Œ�l ( 0(�f�t�H���g) �` 255 )'}]},
				\{'tagname': 'image',		'typename': 'gfloor',		'list': [{'word': ' ','menu': '�P�x�Œ�l ( 0(�f�t�H���g) �` 255 )'}]},
				\{'tagname': 'image',		'typename': 'bfloor',		'list': [{'word': ' ','menu': '�P�x�Œ�l ( 0(�f�t�H���g) �` 255 )'}]},
				\{'tagname': 'image',		'typename': 'rceil',		'list': [{'word': ' ','menu': '�P�x�ō��l ( 0 �` 255(�f�t�H���g) )'}]},
				\{'tagname': 'image',		'typename': 'gceil',		'list': [{'word': ' ','menu': '�P�x�ō��l ( 0 �` 255(�f�t�H���g) )'}]},
				\{'tagname': 'image',		'typename': 'bceil',		'list': [{'word': ' ','menu': '�P�x�ō��l ( 0 �` 255(�f�t�H���g) )'}]},
				\{'tagname': 'image',		'typename': 'mcolor',		'list': [{'word': ' ','menu': '0xRRGGBB �`��'}]},
				\{'tagname': 'image',		'typename': 'mopacity',		'list': [{'word': ' ','menu': '�s�����x(0 �` 255)'}]},
				\{'tagname': 'image',		'typename': 'lightcolor',		'list': [{'word': ' ','menu': '0xAARRGGBB�`��'}]},
				\{'tagname': 'image',		'typename': 'lighttype',		'list': [{'word': ' ','menu': 'mode �Ɠ���'}]},
				\{'tagname': 'image',		'typename': 'shadow',		'list': [{'word': ' ','menu': '0xRRGGBB �`��'}]},
				\{'tagname': 'image',		'typename': 'shadowopacity',		'list': [{'word': ' ','menu': '�Z�x�w��(0�`255)'}]},
				\{'tagname': 'image',		'typename': 'shadowx',		'list': [{'word': ' ','menu': '�s�N�Z���l'}]},
				\{'tagname': 'image',		'typename': 'shadowy',		'list': [{'word': ' ','menu': '�s�N�Z���l'}]},
				\{'tagname': 'image',		'typename': 'shadowblur',		'list': [{'word': ' ','menu': '���l�w��(0�`)'}]},
				\{'tagname': 'image',		'typename': 'clipleft',		'list': [{'word': ' ','menu': '�N���b�v��`���[�ʒu(pixel�P��)'}]},
				\{'tagname': 'image',		'typename': 'cliptop',		'list': [{'word': ' ','menu': '�N���b�v��`��[�ʒu(pixel�P��)'}]},
				\{'tagname': 'image',		'typename': 'clipwidth',		'list': [{'word': ' ','menu': '�N���b�v��`��(pixel�P��)'}]},
				\{'tagname': 'image',		'typename': 'clipheight',		'list': [{'word': ' ','menu': '�N���b�v��`����(pixel�P��)'}]},
				\{'tagname': 'image',		'typename': 'flipud',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'image',		'typename': 'fliplr',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'image',		'typename': 'visible',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'image',		'typename': 'left',		'list': [{'word': ' ','menu': '���[�ʒu(pixel�P��)'}]},
				\{'tagname': 'image',		'typename': 'top',		'list': [{'word': ' ','menu': '��[�ʒu(pixel�P��)'}]},
				\{'tagname': 'image',		'typename': 'pos',		'list': [{'word': 'left_center'},{'word': 'center'},{'word': 'right_center'},{'word': 'right'}]},
				\{'tagname': 'image',		'typename': 'opacity',		'list': [{'word': ' ','menu': '�s�����x ( 0 (�S���̓���) �` 255 (�S���̕s���� ) )'}]},
				\{'tagname': 'image',		'typename': 'mapimage',		'list': [{'word': ' ','menu': '�摜�t�@�C����'}]},
				\{'tagname': 'image',		'typename': 'mapaction',		'list': [{'word': ' ','menu': '�̈�A�N�V������`�t�@�C����'}]},
				\{'tagname': 'image',		'typename': 'index',		'list': [{'word': ' ','menu': '���̐���'}]},
				\{'tagname': 'input',		'typename': 'name',		'list': [{'word': ' ','menu': '�ϐ���'}]},
				\{'tagname': 'input',		'typename': 'prompt',		'list': [{'word': ' ','menu': '�v�����v�g�Ƃ��ĕ\�����镶����'}]},
				\{'tagname': 'input',		'typename': 'title',		'list': [{'word': ' ','menu': '�_�C�A���O�{�b�N�X�̃^�C�g��'}]},
				\{'tagname': 'jump',		'typename': 'storage',		'list': [{'word': ' ','menu': '�V�i���I�t�@�C����'}]},
				\{'tagname': 'jump',		'typename': 'target',		'list': [{'word': ' ','menu': '���x����'}]},
				\{'tagname': 'jump',		'typename': 'countpage',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'laycount',	'typename': 'layers',		'list': [{'word': ' ','menu': '0 �܂��͐��̐���'}]},
				\{'tagname': 'laycount',	'typename': 'messages',		'list': [{'word': ' ','menu': '���̐���'}]},
				\{'tagname': 'layopt',		'typename': 'layer',		'list': [{'word': '0'},{'word': '1'},{'word': '2'},{'word': 'message0'},{'word': 'message1'},{'word': 'message'}]},
				\{'tagname': 'layopt',		'typename': 'page',		'list': [{'word': 'fore','menu': 'default'},{'word': 'back'}]},
				\{'tagname': 'layopt',		'typename': 'visible',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'layopt',		'typename': 'left',		'list': [{'word': ' ','menu': '���[�ʒu(pixel�P��)'}]},
				\{'tagname': 'layopt',		'typename': 'top',		'list': [{'word': ' ','menu': '��[�ʒu(pixel�P��)'}]},
				\{'tagname': 'layopt',		'typename': 'opacity',		'list': [{'word': ' ','menu': '�s�����x ( 0 (�S���̓���) �` 255 (�S���̕s���� ) )'}]},
				\{'tagname': 'layopt',		'typename': 'autohide',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'layopt',		'typename': 'index',		'list': [{'word': ' ','menu': '���̐���'}]},
				\{'tagname': 'link',		'typename': 'storage',		'list': [{'word': ' ','menu': '�V�i���I�t�@�C����'}]},
				\{'tagname': 'link',		'typename': 'target',		'list': [{'word': ' ','menu': '���x����'}]},
				\{'tagname': 'link',		'typename': 'exp',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'link',		'typename': 'color',		'list': [{'word': ' ','menu': '0xRRGGBB �`��'}]},
				\{'tagname': 'link',		'typename': 'hint',		'list': [{'word': ' ','menu': '�q���g�Ƃ��ĕ\�������镶����'}]},
				\{'tagname': 'link',		'typename': 'onenter',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'link',		'typename': 'onleave',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'link',		'typename': 'countpage',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'link',		'typename': 'clickse',		'list': [{'word': ' ','menu': '���ʉ��t�@�C����'}]},
				\{'tagname': 'link',		'typename': 'clicksebuf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�'}]},
				\{'tagname': 'link',		'typename': 'enterse',		'list': [{'word': ' ','menu': '���ʉ��t�@�C����'}]},
				\{'tagname': 'link',		'typename': 'entersebuf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�'}]},
				\{'tagname': 'link',		'typename': 'leavese',		'list': [{'word': ' ','menu': '���ʉ��t�@�C����'}]},
				\{'tagname': 'link',		'typename': 'leavesebuf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�'}]},
				\{'tagname': 'load',		'typename': 'place',		'list': [{'word': ' ','menu': '0�܂��͐��̐���(0���f�t�H���g)'}]},
				\{'tagname': 'load',		'typename': 'ask',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'loadplugin',	'typename': 'module',		'list': [{'word': ' ','menu': '�v���O�C���t�@�C����'}]},
				\{'tagname': 'locate',		'typename': 'x',		'list': [{'word': ' ','menu': '�������ʒu (pixel�P��)'}]},
				\{'tagname': 'locate',		'typename': 'y',		'list': [{'word': ' ','menu': '�c�����ʒu (pixel�P��)'}]},
				\{'tagname': 'macro',		'typename': 'name',		'list': [{'word': ' ','menu': '�^�O��'}]},
				\{'tagname': 'mapaction',		'typename': 'layer',		'list': [{'word': 'base'},{'word': '0'},{'word': '1'},{'word': '2'}]},
				\{'tagname': 'mapaction',		'typename': 'page',		'list': [{'word': 'back'},{'word': 'fore'}]},
				\{'tagname': 'mapaction',		'typename': 'storage',		'list': [{'word': ' ','menu': '�̈�A�N�V������`�t�@�C����'}]},
				\{'tagname': 'mapdisable',		'typename': 'layer',		'list': [{'word': 'base'},{'word': '0'},{'word': '1'},{'word': '2'}]},
				\{'tagname': 'mapdisable',		'typename': 'page',		'list': [{'word': 'back'},{'word': 'fore'}]},
				\{'tagname': 'mapimage',		'typename': 'layer',		'list': [{'word': 'base'},{'word': '0'},{'word': '1'},{'word': '2'}]},
				\{'tagname': 'mapimage',		'typename': 'page',		'list': [{'word': 'back'},{'word': 'fore'}]},
				\{'tagname': 'mapimage',		'typename': 'storage',		'list': [{'word': ' ','menu': '�摜�t�@�C����'}]},
				\{'tagname': 'mappfont',		'typename': 'storage',		'list': [{'word': ' ','menu': '�t�@�C����'}]},
				\{'tagname': 'move',		'typename': 'layer',		'list': [{'word': '0'},{'word': '1'},{'word': '2'},{'word': 'message0'},{'word': 'message1'},{'word': 'message'}]},
				\{'tagname': 'move',		'typename': 'page',		'list': [{'word': 'back'},{'word': 'fore'}]},
				\{'tagname': 'move',		'typename': 'spline',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'move',		'typename': 'time',		'list': [{'word': ' ','menu': '����(ms�P��)'}]},
				\{'tagname': 'move',		'typename': 'delay',		'list': [{'word': ' ','menu': '����(ms�P��)'}]},
				\{'tagname': 'move',		'typename': 'path',		'list': [{'word': ' ','menu': '"(x1,y1,opacity1) (x2,y2,opacity2) ..."'}]},
				\{'tagname': 'move',		'typename': 'accel',		'list': [{'word': ' ','menu': '-1 �����̐��܂��� 0(�f�t�H���g) �܂��� 1 ���傫����'}]},
				\{'tagname': 'nextskip',		'typename': 'enabled',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'openvideo',		'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'openvideo',		'typename': 'storage',		'list': [{'word': ' ','menu': '�t�@�C����'}]},
				\{'tagname': 'pausevideo',		'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'pimage',		'typename': 'storage',		'list': [{'word': ' ','menu': '�摜�t�@�C����'}]},
				\{'tagname': 'pimage',		'typename': 'layer',		'list': [{'word': 'base'},{'word': '0'},{'word': '1'},{'word': '2'}]},
				\{'tagname': 'pimage',		'typename': 'page',		'list': [{'word': 'back'},{'word': 'fore'}]},
				\{'tagname': 'pimage',		'typename': 'key',		'list': [{'word': 'adapt','menu': '0xRRGGBB �`�� �܂��� �p���b�g�C���f�b�N�X�ԍ� �܂��� "adapt"'}]},
				\{'tagname': 'pimage',		'typename': 'dx',		'list': [{'word': ' ','menu': '�s�N�Z���P��'}]},
				\{'tagname': 'pimage',		'typename': 'dy',		'list': [{'word': ' ','menu': '�s�N�Z���P��'}]},
				\{'tagname': 'pimage',		'typename': 'sx',		'list': [{'word': ' ','menu': '�s�N�Z���P��'}]},
				\{'tagname': 'pimage',		'typename': 'sy',		'list': [{'word': ' ','menu': '�s�N�Z���P��'}]},
				\{'tagname': 'pimage',		'typename': 'sw',		'list': [{'word': ' ','menu': '�s�N�Z���P��'}]},
				\{'tagname': 'pimage',		'typename': 'sh',		'list': [{'word': ' ','menu': '�s�N�Z���P��'}]},
				\{'tagname': 'pimage',		'typename': 'mode',		'list': [{'word': 'opaque'},{'word': 'copy'},{'word': 'pile','menu': 'default'}, {'word': 'alpha'},{'word': 'add'},{'word': 'sub'},{'word': 'mul'},{'word': 'dodge'},{'word': 'darken'},{'word': 'lighten'},{'word': 'screen'},{'word': 'psadd'},{'word': 'pssub'},{'word': 'psmul'},{'word': 'psscreen'},{'word': 'psoverlay'},{'word': 'pshlight'},{'word': 'psslight'},{'word': 'psdodge'},{'word': 'psdodge5'},{'word': 'psburn'},{'word': 'pslighten'},{'word': 'psdarken'},{'word': 'psdiff'},{'word': 'psdiff5'},{'word': 'psexcl'},]},
				\{'tagname': 'pimage',		'typename': 'opacity',		'list': [{'word': ' ','menu': '�s�����x ( 0 (�S���̓���) �` 255 (�S���̕s���� ) )'}]},
				\{'tagname': 'playbgm',		'typename': 'storage',		'list': [{'word': ' ','menu': 'BGM �t�@�C����'}]},
				\{'tagname': 'playbgm',		'typename': 'start',		'list': [{'word': ' ','menu': 'BGM �J�n�ʒu�w��'}]},
				\{'tagname': 'playbgm',		'typename': 'loop',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'playse',		'typename': 'buf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�( 0(�f�t�H���g) �` )'}]},
				\{'tagname': 'playse',		'typename': 'storage',		'list': [{'word': ' ','menu': '���ʉ��t�@�C����'}]},
				\{'tagname': 'playse',		'typename': 'start',		'list': [{'word': ' ','menu': 'SE �J�n�ʒu�w��'}]},
				\{'tagname': 'playse',		'typename': 'loop',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'playvideo',		'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'playvideo',		'typename': 'storage',		'list': [{'word': ' ','menu': '�t�@�C����'}]},
				\{'tagname': 'position',		'typename': 'layer',		'list': [{'word': 'message0'},{'word': 'message1'},{'word': 'message'}]},
				\{'tagname': 'position',		'typename': 'page',		'list': [{'word': 'fore'},{'word': 'back'}]},
				\{'tagname': 'position',		'typename': 'left',		'list': [{'word': ' ','menu': '���[�ʒu ( pixel �P�� )'}]},
				\{'tagname': 'position',		'typename': 'top',		'list': [{'word': ' ','menu': '��[�ʒu ( pixel �P�� )'}]},
				\{'tagname': 'position',		'typename': 'width',		'list': [{'word': ' ','menu': '�� ( pixel �P�� )'}]},
				\{'tagname': 'position',		'typename': 'height',		'list': [{'word': ' ','menu': '���� ( pixel �P�� )'}]},
				\{'tagname': 'position',		'typename': 'frame',		'list': [{'word': ' ','menu': '�t���[���摜�̃t�@�C����'}]},
				\{'tagname': 'position',		'typename': 'framekey',		'list': [{'word': 'adapt','menu': '0xRRGGBB �`�� �܂��� �p���b�g�C���f�b�N�X�ԍ� �܂��� "adapt"'}]},
				\{'tagname': 'position',		'typename': 'color',		'list': [{'word': ' ','menu': '0xRRGGBB �`��'}]},
				\{'tagname': 'position',		'typename': 'opacity',		'list': [{'word': ' ','menu': '�s�����x ( 0 �` 255 )'}]},
				\{'tagname': 'position',		'typename': 'marginl',		'list': [{'word': ' ','menu': '���]�� ( pixel �P�� )'}]},
				\{'tagname': 'position',		'typename': 'margint',		'list': [{'word': ' ','menu': '��]�� ( pixel �P�� )'}]},
				\{'tagname': 'position',		'typename': 'marginr',		'list': [{'word': ' ','menu': '�E�]�� ( pixel �P�� )'}]},
				\{'tagname': 'position',		'typename': 'marginb',		'list': [{'word': ' ','menu': '���]�� ( pixel �P�� )'}]},
				\{'tagname': 'position',		'typename': 'vertical',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'position',		'typename': 'draggable',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'position',		'typename': 'visible',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'preparevideo',		'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'ptext',		'typename': 'layer',		'list': [{'word': 'base'},{'word': '0'},{'word': '1'},{'word': '2'}]},
				\{'tagname': 'ptext',		'typename': 'page',		'list': [{'word': 'back'},{'word': 'fore'}]},
				\{'tagname': 'ptext',		'typename': 'x',		'list': [{'word': ' ','menu': 'pixel�P��'}]},
				\{'tagname': 'ptext',		'typename': 'y',		'list': [{'word': ' ','menu': 'pixel�P��'}]},
				\{'tagname': 'ptext',		'typename': 'text',		'list': [{'word': ' ','menu': '������'}]},
				\{'tagname': 'ptext',		'typename': 'vertical',		'list': [{'word': ' ','menu': 'false(�f�t�H���g) �܂��� true'}]},
				\{'tagname': 'ptext',		'typename': 'angle',		'list': [{'word': ' ','menu': '�p�x��10�{'}]},
				\{'tagname': 'ptext',		'typename': 'size',		'list': [{'word': ' ','menu': '�����T�C�Y(pixel�P��)'}]},
				\{'tagname': 'ptext',		'typename': 'face',		'list': [{'word': ' ','menu': '�t�H���g��'}]},
				\{'tagname': 'ptext',		'typename': 'color',		'list': [{'word': ' ','menu': '0xRRGGBB �`��'}]},
				\{'tagname': 'ptext',		'typename': 'italic',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'ptext',		'typename': 'shadow',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'ptext',		'typename': 'edge',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'ptext',		'typename': 'edgecolor',		'list': [{'word': ' ','menu': '0xRRGGBB �`��'}]},
				\{'tagname': 'ptext',		'typename': 'shadowcolor',		'list': [{'word': ' ','menu': '0xRRGGBB �`��'}]},
				\{'tagname': 'ptext',		'typename': 'bold',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'quake',		'typename': 'time',		'list': [{'word': ' ','menu': '�������܂��� ms(�~���b)'}]},
				\{'tagname': 'quake',		'typename': 'timemode',		'list': [{'word': 'ms'},{'word': 'delay'}]},
				\{'tagname': 'quake',		'typename': 'hmax',		'list': [{'word': ' ','menu': 'pixel �P��'}]},
				\{'tagname': 'quake',		'typename': 'vmax',		'list': [{'word': ' ','menu': 'pixel �P��'}]},
				\{'tagname': 'r',		'typename': 'eol',		'list': [{'word': ' ','menu': 'true'}]},
				\{'tagname': 'rclick',		'typename': 'call',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'rclick',		'typename': 'jump',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'rclick',		'typename': 'target',		'list': [{'word': ' ','menu': '���x��'}]},
				\{'tagname': 'rclick',		'typename': 'storage',		'list': [{'word': ' ','menu': '�t�@�C��'}]},
				\{'tagname': 'rclick',		'typename': 'enabled',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'rclick',		'typename': 'name',		'list': [{'word': ' ','menu': '���j���[���ږ��܂��� "default"'}]},
				\{'tagname': 'resumevideo',		'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'return',		'typename': 'storage',		'list': [{'word': ' ','menu': '�V�i���I�t�@�C����'}]},
				\{'tagname': 'return',		'typename': 'target',		'list': [{'word': ' ','menu': '���x����'}]},
				\{'tagname': 'return',		'typename': 'countpage',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'rewindvideo',		'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'ruby',		'typename': 'text',		'list': [{'word': ' ','menu': '���r�Ƃ��ĕ\������镶��'}]},
				\{'tagname': 'save',		'typename': 'place',		'list': [{'word': ' ','menu': '0�܂��͐��̐���(0���f�t�H���g)'}]},
				\{'tagname': 'save',		'typename': 'ask',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'seopt',		'typename': 'buf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�( 0(�f�t�H���g) �` )'}]},
				\{'tagname': 'seopt',		'typename': 'volume',		'list': [{'word': ' ','menu': '����% (0�`100)'}]},
				\{'tagname': 'seopt',		'typename': 'gvolume',		'list': [{'word': ' ','menu': '����% (0�`100)'}]},
				\{'tagname': 'seopt',		'typename': 'pan',		'list': [{'word': ' ','menu': '�p�� (-100�`0�`100)'}]},
				\{'tagname': 'setbgmlabel',		'typename': 'name',		'list': [{'word': ' ','menu': '���x����'}]},
				\{'tagname': 'setbgmlabel',		'typename': 'storage',		'list': [{'word': ' ','menu': '�V�i���I�t�@�C����'}]},
				\{'tagname': 'setbgmlabel',		'typename': 'target',		'list': [{'word': ' ','menu': '���x����'}]},
				\{'tagname': 'setbgmlabel',		'typename': 'exp',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'setbgmstop',		'typename': 'storage',		'list': [{'word': ' ','menu': '�V�i���I�t�@�C����'}]},
				\{'tagname': 'setbgmstop',		'typename': 'target',		'list': [{'word': ' ','menu': '���x����'}]},
				\{'tagname': 'setbgmstop',		'typename': 'exp',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'startanchor',		'typename': 'enabled',		'list': [{'word': ' ','menu': '"true"(�f�t�H���g) �܂��� "false"'}]},
				\{'tagname': 'stopse',		'typename': 'buf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�( 0(�f�t�H���g) �` )'}]},
				\{'tagname': 'stopvideo',		'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'store',		'typename': 'enabled',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'style',		'typename': 'align',		'list': [{'word': 'left'},{'word': 'top'},{'word': 'center'},{'word': 'right'},{'word': 'bottom'},{'word': 'default'}]},
				\{'tagname': 'style',		'typename': 'linespacing',		'list': [{'word': ' ','menu': '�s�� (pixel�P��)'}]},
				\{'tagname': 'style',		'typename': 'pitch',		'list': [{'word': ' ','menu': '���ԃI�t�Z�b�g(pixel�P��)'}]},
				\{'tagname': 'style',		'typename': 'linesize',		'list': [{'word': ' ','menu': '�\��T�C�Y(pixel�P��) �܂��� "default"'}]},
				\{'tagname': 'style',		'typename': 'autoreturn',		'list': [{'word': 'true'},{'word': 'false'},{'word': 'default'}]},
				\{'tagname': 'tempload',		'typename': 'place',		'list': [{'word': ' ','menu': '0�܂��͐��̐���(0���f�t�H���g)'}]},
				\{'tagname': 'tempload',		'typename': 'se',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'tempload',		'typename': 'bgm',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'tempload',		'typename': 'backlay',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'tempsave',		'typename': 'place',		'list': [{'word': ' ','menu': '0�܂��͐��̐���(0���f�t�H���g)'}]},
				\{'tagname': 'timeout',		'typename': 'time',		'list': [{'word': ' ','menu': '�^�C���A�E�g����'}]},
				\{'tagname': 'timeout',		'typename': 'storage',		'list': [{'word': ' ','menu': '�V�i���I�t�@�C����'}]},
				\{'tagname': 'timeout',		'typename': 'target',		'list': [{'word': ' ','menu': '���x����'}]},
				\{'tagname': 'timeout',		'typename': 'exp',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'timeout',		'typename': 'se',		'list': [{'word': ' ','menu': '���ʉ��t�@�C����'}]},
				\{'tagname': 'timeout',		'typename': 'sebuf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�'}]},
				\{'tagname': 'title',		'typename': 'name',		'list': [{'word': ' ','menu': '�^�C�g��'}]},
				\{'tagname': 'trace',		'typename': 'exp',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'trans',		'typename': 'layer',		'list': [{'word': 'base'},{'word': '0'},{'word': '1'},{'word': '2'},{'word': 'message0'},{'word': 'message1'},{'word': 'message'}]},
				\{'tagname': 'trans',		'typename': 'children',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'trans',		'typename': 'time',		'list': [{'word': ' ','menu': '����(ms�P��)'}]},
				\{'tagname': 'trans',		'typename': 'method',		'list': [{'word': 'scroll'},{'word': 'universal','menu': 'default'},{'word': 'crossfade'}]},
				\{'tagname': 'trans',		'typename': 'rule',		'list': [{'word': ' ','menu': '���[���摜��'}]},
				\{'tagname': 'trans',		'typename': 'vague',		'list': [{'word': ' ','menu': '�����܂��̈�l (0�`)'}]},
				\{'tagname': 'trans',		'typename': 'from',		'list': [{'word': 'top'},{'word': 'bottom'},{'word': 'left'},{'word': 'right'}]},
				\{'tagname': 'trans',		'typename': 'stay',		'list': [{'word': 'stay'},{'word': 'stayback'},{'word': 'nostay','menu': 'default'}]},
				\{'tagname': 'video',		'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'video',		'typename': 'visible',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'video',		'typename': 'left',		'list': [{'word': ' ','menu': '���[�ʒu ( pixel �P�� )'}]},
				\{'tagname': 'video',		'typename': 'top',		'list': [{'word': ' ','menu': '��[�ʒu ( pixel �P�� )'}]},
				\{'tagname': 'video',		'typename': 'width',		'list': [{'word': ' ','menu': '�� ( pixel �P�� )'}]},
				\{'tagname': 'video',		'typename': 'height',		'list': [{'word': ' ','menu': '���� ( pixel �P�� )'}]},
				\{'tagname': 'video',		'typename': 'loop',		'list': [{'word': 'true'},{'word': 'false'}]},
				\{'tagname': 'video',		'typename': 'position',		'list': [{'word': ' ','menu': '���� ( ms �P�� )'}]},
				\{'tagname': 'video',		'typename': 'frame',		'list': [{'word': ' ','menu': '�t���[���ԍ�'}]},
				\{'tagname': 'video',		'typename': 'mode',		'list': [{'word': 'overlay'},{'word': 'layer'}]},
				\{'tagname': 'video',		'typename': 'playrate',		'list': [{'word': ' ','menu': '�Đ����x(0.0���傫���l)'}]},
				\{'tagname': 'video',		'typename': 'volume',		'list': [{'word': ' ','menu': '����% (0�`100)'}]},
				\{'tagname': 'video',		'typename': 'pan',		'list': [{'word': ' ','menu': '�p�� (-100�`0�`100)'}]},
				\{'tagname': 'video',		'typename': 'audiostreamnum',		'list': [{'word': ' ','menu': '�����X�g���[���ԍ�(0�`)'}]},
				\{'tagname': 'videoevent',		'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'videoevent',		'typename': 'frame',		'list': [{'word': ' ','menu': '�t���[���ԍ�'}]},
				\{'tagname': 'videolayer',		'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'videolayer',		'typename': 'channel',		'list': [{'word': ' ','menu': '1 �܂��� 2'}]},
				\{'tagname': 'videolayer',		'typename': 'page',		'list': [{'word': 'fore'},{'word': 'back'}]},
				\{'tagname': 'videolayer',		'typename': 'layer',		'list': [{'word': ' ','menu': '���C���ԍ�(0�`)'}]},
				\{'tagname': 'videosegloop',		'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'videosegloop',		'typename': 'start',		'list': [{'word': ' ','menu': '�t���[���ԍ�'}]},
				\{'tagname': 'videosegloop',		'typename': 'end',		'list': [{'word': ' ','menu': '�t���[���ԍ�'}]},
				\{'tagname': 'wa',		'typename': 'layer',		'list': [{'word': 'base'},{'word': '0'},{'word': '1'},{'word': '2'}]},
				\{'tagname': 'wa',		'typename': 'page',		'list': [{'word': 'back'},{'word': 'fore'}]},
				\{'tagname': 'wa',		'typename': 'seg',		'list': [{'word': ' ','menu': '0 �܂��͐��̐���'}]},
				\{'tagname': 'wait',		'typename': 'time',		'list': [{'word': ' ','menu': '����(�~���b)'}]},
				\{'tagname': 'wait',		'typename': 'mode',		'list': [{'word': 'normal','menu': 'default'},{'word': 'until'}]},
				\{'tagname': 'wait',		'typename': 'canskip',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'waittrig',		'typename': 'name',		'list': [{'word': ' ','menu': '�g���K��'}]},
				\{'tagname': 'waittrig',		'typename': 'canskip',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'waittrig',		'typename': 'onskip',		'list': [{'word': ' ','menu': 'TJS��'}]},
				\{'tagname': 'wb',		'typename': 'canskip',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'wc',		'typename': 'time',		'list': [{'word': ' ','menu': '������'}]},
				\{'tagname': 'wf',		'typename': 'buf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�( 0(�f�t�H���g) �` )'}]},
				\{'tagname': 'wf',		'typename': 'canskip',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'wheel',		'typename': 'storage',		'list': [{'word': ' ','menu': '�V�i���I�t�@�C����'}]},
				\{'tagname': 'wheel',		'typename': 'target',		'list': [{'word': ' ','menu': '���x����'}]},
				\{'tagname': 'wheel',		'typename': 'func',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'wheel',		'typename': 'exp',		'list': [{'word': ' ','menu': 'TJS ��'}]},
				\{'tagname': 'wheel',		'typename': 'se',		'list': [{'word': ' ','menu': '���ʉ��t�@�C����'}]},
				\{'tagname': 'wheel',		'typename': 'sebuf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�'}]},
				\{'tagname': 'wl',		'typename': 'canskip',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'wm',		'typename': 'canskip',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'wp',		'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'wp',		'typename': 'for',		'list': [{'word': ' ','menu': '"loop","period","prepare","segLoop"�̂����ꂩ'}]},
				\{'tagname': 'wq',		'typename': 'canskip',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'ws',		'typename': 'buf',		'list': [{'word': ' ','menu': '���ʉ��o�b�t�@�ԍ�( 0(�f�t�H���g) �` )'}]},
				\{'tagname': 'ws',		'typename': 'canskip',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'wt',		'typename': 'canskip',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'wv',		'typename': 'slot',		'list': [{'word': ' ','menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)'}]},
				\{'tagname': 'wv',		'typename': 'canskip',		'list': [{'word': 'true'},{'word': 'false','menu': 'default'}]},
				\{'tagname': 'xchgbgm',		'typename': 'storage',		'list': [{'word': ' ','menu': 'BGM �t�@�C����'}]},
				\{'tagname': 'xchgbgm',		'typename': 'loop',		'list': [{'word': 'true','menu': 'default'},{'word': 'false'}]},
				\{'tagname': 'xchgbgm',		'typename': 'time',		'list': [{'word': ' ','menu': '�t�F�[�h���s���Ă��鎞�� (ms�P��)'}]},
				\{'tagname': 'xchgbgm',		'typename': 'overlap',		'list': [{'word': ' ','menu': '�I�[�o�[���b�v���s������(ms�P��)'}]},
				\{'tagname': 'xchgbgm',		'typename': 'volume',		'list': [{'word': ' ','menu': '����% (0�`100)'}]},
				\] "}}}
		let s:type_list = g:kirikiri_neocomplcache_list + s:type_list
endfunction

function! s:source.finalize()
	unlet! s:type_list
endfunction

function! s:source.get_keyword_pos(cur_text) "{{{
  if neocomplcache#within_comment()
    return -1
  endif
	if a:cur_text =~ '=\([^a-z0-9"]\|$\|[a-z0-0"]*=\)'
		for l:file in s:type_list
			if a:cur_text =~ '\['.l:file.tagname.' [^]]*'.l:file.typename.'=\([^a-z0-9"]\|$\)\|^@'.l:file.tagname.' .*'.l:file.typename.'=\([^a-z0-9"]\|$\)'
					return matchend(a:cur_text, '^@.*'.l:file.typename.'=\|\[.*'.l:file.typename.'=')
			endif
		endfor
	endif
	if a:cur_text =~ '^@\([^a-z0-9]\|$\)\|\[\([^a-z0-9]\|$\)'
    return matchend(a:cur_text, '^@\([^a-z0-9]\|$\)\|\[\([^a-z0-9]\|$\)')
	elseif a:cur_text =~ '^@.* \|\[.* '
    return matchend(a:cur_text, '^@.* \|\[.* ')
  endif
endfunction "}}}

function! s:source.get_complete_words(cur_keyword_pos, cur_keyword_str) "{{{
  let l:list = []
  let l:line = getline('.')
	if l:line =~ '^@\([^a-z0-9]\|$\)\|\[\([^a-z0-9]\|$\)'
 "{{{ tagname
		if exists('g:kirikiri_neocomplcache_macro_list')
			for l:macro in g:kirikiri_neocomplcache_macro_list
				call add(l:list,{'word': l:macro.tag,'menu': l:macro.menu})
			endfor
		endif
   call add(l:list,{'word': 'autowc',		'menu': '�����E�F�C�g'})
   call add(l:list,{'word': 'clearsysvar',		'menu': '�V�X�e���ϐ��̑S����'})
   call add(l:list,{'word': 'clickskip',		'menu': '�N���b�N�X�L�b�v�̐ݒ�'})
   call add(l:list,{'word': 'close',		'menu': '�E�B���h�E�����'})
   call add(l:list,{'word': 'cursor',		'menu': '�}�E�X�J�[�\���̕ύX'})
   call add(l:list,{'word': 'hidemessage',		'menu': '���b�Z�[�W������'})
   call add(l:list,{'word': 'loadplugin',		'menu': '�v���O�C���̓ǂݍ���'})
   call add(l:list,{'word': 'mappfont',		'menu': '�����_�����O�ς݃t�H���g�̊��蓖��'})
   call add(l:list,{'word': 'nextskip',		'menu': '�u���̑I�����܂ł����ށv�̐ݒ�'})
   call add(l:list,{'word': 'quake',		'menu': '��ʂ�h�炷'})
   call add(l:list,{'word': 'rclick',		'menu': '�E�N���b�N�̐ݒ�'})
   call add(l:list,{'word': 'resetwait',		'menu': '�E�F�C�g�̏�����'})
   call add(l:list,{'word': 's',			'menu': '��~����'})
   call add(l:list,{'word': 'stopquake',		'menu': '��ʗh�炵�̒�~'})
   call add(l:list,{'word': 'title',		'menu': '�^�C�g���w��'})
   call add(l:list,{'word': 'wait',		'menu': '�E�F�C�g������'})
   call add(l:list,{'word': 'waitclick',		'menu': '�N���b�N��҂�'})
   call add(l:list,{'word': 'wc',			'menu': '���������̃E�F�C�g������'})
   call add(l:list,{'word': 'wq',			'menu': '��ʗh�炵�̏I���҂�'})
  " �t�H�[������
   call add(l:list,{'word': 'checkbox',		'menu': '�`�F�b�N�{�b�N�X�̍쐬'})
   call add(l:list,{'word': 'commit',		'menu': '�t�H�[�����e�̊m��'})
   call add(l:list,{'word': 'edit',		'menu': '�P��s�G�f�B�b�g�̍쐬'})
  " �}�N������
   call add(l:list,{'word': 'endmacro',		'menu': '�}�N���̋L�q(�̏I��)'})
   call add(l:list,{'word': 'erasemacro',		'menu': '�}�N���̏���'})
   call add(l:list,{'word': 'macro',		'menu': '�}�N���̋L�q'})
  " ���b�Z�[�W����
   call add(l:list,{'word': 'cancelautomode',	'menu': '�u�����I�ɓǂݐi�ށv�̉���'})
   call add(l:list,{'word': 'cancelskip',		'menu': '�X�L�b�v�̉���'})
   call add(l:list,{'word': 'ch',			'menu': '������\������'})
   call add(l:list,{'word': 'cm',			'menu': '���ׂẴ��b�Z�[�W���C���̃N���A'})
   call add(l:list,{'word': 'ct',			'menu': '���b�Z�[�W���C���̃��Z�b�g'})
   call add(l:list,{'word': 'current',		'menu': '����Ώۂ̃��b�Z�[�W���C���̎w��'})
   call add(l:list,{'word': 'deffont',		'menu': '�f�t�H���g�̕��������ݒ�'})
   call add(l:list,{'word': 'defstyle',		'menu': '�f�t�H���g�̃X�^�C���̐ݒ�'})
   call add(l:list,{'word': 'delay',		'menu': '�����̕\�����x�̐ݒ�'})
   call add(l:list,{'word': 'endindent',		'menu': '�C���f���g�̉���'})
   call add(l:list,{'word': 'endnowait',		'menu': '�����\���m�[�E�F�C�g(�̏I��)'})
   call add(l:list,{'word': 'er',			'menu': '���b�Z�[�W���C���̕����̏���'})
   call add(l:list,{'word': 'font',		'menu': '���������ݒ�'})
   call add(l:list,{'word': 'glyph',		'menu': '�N���b�N�҂��L���̎w��'})
   call add(l:list,{'word': 'graph',		'menu': '�C�����C���摜�\��'})
   call add(l:list,{'word': 'hch',			'menu': '�c������\������'})
   call add(l:list,{'word': 'indent',		'menu': '�C���f���g�̐ݒ�'})
   call add(l:list,{'word': 'l',			'menu': '�s���N���b�N�҂�'})
   call add(l:list,{'word': 'locate',		'menu': '�����\���ʒu�̎w��'})
   call add(l:list,{'word': 'locklink',		'menu': '�����N�̃��b�N'})
   call add(l:list,{'word': 'nowait',		'menu': '�����\���m�[�E�F�C�g'})
   call add(l:list,{'word': 'p',			'menu': '���y�[�W�N���b�N�҂�'})
   call add(l:list,{'word': 'position',		'menu': '���b�Z�[�W���C���̑���'})
   call add(l:list,{'word': 'r',			'menu': '���s����'})
   call add(l:list,{'word': 'resetfont',		'menu': '�����������f�t�H���g�ɖ߂�'})
   call add(l:list,{'word': 'resetstyle',		'menu': '�X�^�C�����f�t�H���g�ɖ߂�'})
   call add(l:list,{'word': 'ruby',		'menu': '���r�w��'})
   call add(l:list,{'word': 'style',		'menu': '�X�^�C���̐ݒ�'})
   call add(l:list,{'word': 'unlocklink',		'menu': '�����N�̃��b�N�̉���'})
  " ���b�Z�[�W���𑀍�
   call add(l:list,{'word': 'endhact',		'menu': '���b�Z�[�W�����A�N�V�����̏I��'})
   call add(l:list,{'word': 'hact',		'menu': '���b�Z�[�W�����A�N�V����'})
   call add(l:list,{'word': 'history',		'menu': '���b�Z�[�W�����̐ݒ�'})
   call add(l:list,{'word': 'hr',			'menu': '���b�Z�[�W�����̉��s/���y�[�W'})
   call add(l:list,{'word': 'showhistory',		'menu': '���b�Z�[�W�����̕\��'})
  " ���x���E�W�����v����
   call add(l:list,{'word': 'button',		'menu': '�O���t�B�J���{�^��'})
   call add(l:list,{'word': 'call',		'menu': '�T�u���[�`���̌Ăяo��'})
   call add(l:list,{'word': 'cclick',		'menu': '�N���b�N�҂�����'})
   call add(l:list,{'word': 'click',		'menu': '�N���b�N�҂��W�����v'})
   call add(l:list,{'word': 'ctimeout',		'menu': '�^�C���A�E�g�҂�����'})
   call add(l:list,{'word': 'cwheel',		'menu': '�z�C�[���҂�����'})
   call add(l:list,{'word': 'endlink',		'menu': '�n�C�p�[�����N(�̏I��)'})
   call add(l:list,{'word': 'jump',		'menu': '�V�i���I�̃W�����v'})
   call add(l:list,{'word': 'link',		'menu': '�n�C�p�[�����N'})
   call add(l:list,{'word': 'return',		'menu': '�T�u���[�`������߂�'})
   call add(l:list,{'word': 'timeout',		'menu': '�^�C���A�E�g�҂��W�����v'})
   call add(l:list,{'word': 'wheel',		'menu': '�z�C�[���҂��W�����v'})
  " ���C������
   call add(l:list,{'word': 'animstart',		'menu': '�A�j���[�V�����̊J�n'})
   call add(l:list,{'word': 'animstop',		'menu': '�A�j���[�V�����̒�~'})
   call add(l:list,{'word': 'backlay',		'menu': '���C�����̕\�y�[�W���痠�y�[�W�ւ̃R�s�['})
   call add(l:list,{'word': 'copylay',		'menu': '���C�����̃R�s�['})
   call add(l:list,{'word': 'freeimage',		'menu': '���C���摜�̉��'})
   call add(l:list,{'word': 'image',		'menu': '�摜�̓ǂݍ���'})
   call add(l:list,{'word': 'laycount',		'menu': '���C���̐��̕ύX'})
   call add(l:list,{'word': 'layopt',		'menu': '���C���̑���'})
   call add(l:list,{'word': 'mapaction',		'menu': '�N���b�J�u���}�b�v�p�̈�A�N�V������`�t�@�C���̎w��'})
   call add(l:list,{'word': 'mapdisable',		'menu': '�N���b�J�u���}�b�v�̖�����'})
   call add(l:list,{'word': 'mapimage',		'menu': '�N���b�J�u���}�b�v�p�̈�摜�̎w��'})
   call add(l:list,{'word': 'move',		'menu': '���C���̎����ړ�'})
   call add(l:list,{'word': 'pimage',		'menu': '�摜�̕����ǉ��ǂݍ���'})
   call add(l:list,{'word': 'ptext',		'menu': '���C���ւ̕����`��'})
   call add(l:list,{'word': 'stopmove',		'menu': '���C���̎����ړ��̒�~'})
   call add(l:list,{'word': 'stoptrans',		'menu': '���C���̃g�����W�V�����̒�~'})
   call add(l:list,{'word': 'trans',		'menu': '���C���̃g�����W�V����'})
   call add(l:list,{'word': 'wa',			'menu': '�A�j���[�V�����̒�~�҂�'})
   call add(l:list,{'word': 'wm',			'menu': '�����ړ��̏I���҂�'})
   call add(l:list,{'word': 'wt',			'menu': '�g�����W�V�����̏I���҂�'})
  " ���ʉ��EBGM�E�r�f�I����
   call add(l:list,{'word': 'bgmopt',		'menu': 'BGM �̐ݒ�'})
   call add(l:list,{'word': 'cancelvideoevent',	'menu': '�s���I�h�C�x���g�̉���'})
   call add(l:list,{'word': 'cancelvideosegloop',	'menu': '�r�f�I�̃Z�O�����g���[�v�Đ��̉���'})
   call add(l:list,{'word': 'clearbgmlabel',	'menu': 'BGM �̃��x���ʉߏ����̉���'})
   call add(l:list,{'word': 'clearbgmstop',	'menu': 'BGM �̒�~�����̉���'})
   call add(l:list,{'word': 'clearvideolayer',	'menu': '�r�f�I���C������'})
   call add(l:list,{'word': 'fadebgm',		'menu': 'BGM�̃t�F�[�h'})
   call add(l:list,{'word': 'fadeinbgm',		'menu': '�t�F�[�h�C�����Ȃ����BGM�Đ��J�n'})
   call add(l:list,{'word': 'fadeinse',		'menu': '���ʉ��̃t�F�[�h�C���Đ�'})
   call add(l:list,{'word': 'fadeoutbgm',		'menu': 'BGM�̃t�F�[�h�A�E�g'})
   call add(l:list,{'word': 'fadeoutse',		'menu': '���ʉ��̃t�F�[�h�A�E�g'})
   call add(l:list,{'word': 'fadepausebgm',	'menu': 'BGM ���t�̃t�F�[�h�A�E�g���Ȃ���̈ꎞ��~'})
   call add(l:list,{'word': 'fadese',		'menu': '���ʉ��̃t�F�[�h'})
   call add(l:list,{'word': 'openvideo',		'menu': '�r�f�I/SWF�̍Đ�����'})
   call add(l:list,{'word': 'pausebgm',		'menu': 'BGM ���t�̈ꎞ��~'})
   call add(l:list,{'word': 'pausevideo',		'menu': '�r�f�I�̈ꎞ��~'})
   call add(l:list,{'word': 'playbgm',		'menu': 'BGM �̉��t'})
   call add(l:list,{'word': 'playse',		'menu': '���ʉ��̍Đ�'})
   call add(l:list,{'word': 'playvideo',		'menu': '�r�f�I/SWF�̍Đ�'})
   call add(l:list,{'word': 'preparevideo',	'menu': '�r�f�I�̍Đ�����'})
   call add(l:list,{'word': 'resumebgm',		'menu': 'BGM ���t�̍ĊJ'})
   call add(l:list,{'word': 'resumevideo',		'menu': '�r�f�I�Đ��̍ĊJ'})
   call add(l:list,{'word': 'rewindvideo',		'menu': '�r�f�I�̊����߂�'})
   call add(l:list,{'word': 'seopt',		'menu': '���ʉ��̐ݒ�'})
   call add(l:list,{'word': 'setbgmlabel',		'menu': 'BGM �̃��x���ʉߏ����̓o�^'})
   call add(l:list,{'word': 'setbgmstop',		'menu': 'BGM �̒�~�����̓o�^'})
   call add(l:list,{'word': 'stopbgm',		'menu': 'BGM ���t�̒�~'})
   call add(l:list,{'word': 'stopse',		'menu': '���ʉ��Đ��̒�~'})
   call add(l:list,{'word': 'stopvideo',		'menu': '�r�f�I/SWF�Đ��̒�~'})
   call add(l:list,{'word': 'video',		'menu': '�r�f�I/SWF�\���̈�̑������w��'})
   call add(l:list,{'word': 'videoevent',		'menu': '�s���I�h�C�x���g�̔���'})
   call add(l:list,{'word': 'videolayer',		'menu': '�r�f�I���C���ݒ�'})
   call add(l:list,{'word': 'videosegloop',	'menu': '�r�f�I�̃Z�O�����g���[�v�Đ�'})
   call add(l:list,{'word': 'wb',			'menu': 'BGM �t�F�[�h�̏I���҂�'})
   call add(l:list,{'word': 'wf',			'menu': '���ʉ��t�F�[�h�̏I���҂�'})
   call add(l:list,{'word': 'wl',			'menu': 'BGM �Đ��̏I���҂�'})
   call add(l:list,{'word': 'wp',			'menu': '�r�f�I�s���I�h�C�x���g�҂�'})
   call add(l:list,{'word': 'ws',			'menu': '���ʉ��Đ��̏I���҂�'})
   call add(l:list,{'word': 'wv',			'menu': '�r�f�I�Đ��̏I���҂�'})
   call add(l:list,{'word': 'xchgbgm',		'menu': 'BGM �����ւ���'})
  " �ϐ��ETJS ����
   call add(l:list,{'word': 'clearvar',		'menu': '�Q�[���ϐ��̑S����'})
   call add(l:list,{'word': 'else',		'menu': 'if �̒��g�����s����Ȃ������Ƃ��Ɏ��s'})
   call add(l:list,{'word': 'elsif',		'menu': '����܂ł� if �̒��g�����s����Ă��Ȃ������Ƃ��ɁA�����t���Ŏ��s'})
   call add(l:list,{'word': 'emb',			'menu': '���]�����ʂ̖��ߍ���'})
   call add(l:list,{'word': 'endif',		'menu': '�����ɂ��V�i���I�����s(�̏I��)'})
   call add(l:list,{'word': 'endignore',		'menu': '�����ɂ��V�i���I�𖳎�(�̏I��)'})
   call add(l:list,{'word': 'endscript',		'menu': 'TJS �X�N���v�g�̋L�q(�̏I��)'})
   call add(l:list,{'word': 'eval',		'menu': '���̕]��'})
   call add(l:list,{'word': 'if',			'menu': '�����ɂ��V�i���I�����s'})
   call add(l:list,{'word': 'ignore',		'menu': '�����ɂ��V�i���I�𖳎�'})
   call add(l:list,{'word': 'input',		'menu': '������̓���'})
   call add(l:list,{'word': 'iscript',		'menu': 'TJS �X�N���v�g�̋L�q'})
   call add(l:list,{'word': 'trace',		'menu': '�R���\�[���֒l�̏o��'})
   call add(l:list,{'word': 'waittrig',		'menu': '�g���K��҂�'})
  " �x�E�ʉߋL�^����
   call add(l:list,{'word': 'copybookmark',	'menu': '�x�̃R�s�['})
   call add(l:list,{'word': 'disablestore',	'menu': '�x�̋@�\�̈ꎞ�I�Ȏg�p�s��'})
   call add(l:list,{'word': 'erasebookmark',	'menu': '�x�̏���'})
   call add(l:list,{'word': 'goback',		'menu': '�O�ɖ߂�'})
   call add(l:list,{'word': 'gotostart',		'menu': '�ŏ��ɖ߂�'})
   call add(l:list,{'word': 'load',		'menu': '�x�̓ǂݍ���'})
   call add(l:list,{'word': 'locksnapshot',	'menu': '�X�i�b�v�V���b�g�̃��b�N'})
   call add(l:list,{'word': 'record',		'menu': '�ʉߋL�^���s��'})
   call add(l:list,{'word': 'save',		'menu': '�x�̕ۑ�'})
   call add(l:list,{'word': 'startanchor',		'menu': '�u�ŏ��ɖ߂�v�̗L���E����'})
   call add(l:list,{'word': 'store',		'menu': '�x�@�\�̐ݒ�'})
   call add(l:list,{'word': 'tempload',		'menu': '�x�̃������ォ��̓ǂݍ���'})
   call add(l:list,{'word': 'tempsave',		'menu': '�x�̃�������ւ̕ۑ�'})
   call add(l:list,{'word': 'unlocksnapshot',	'menu': '�X�i�b�v�V���b�g�̃��b�N�̉���'})
 "}}}
  return neocomplcache#keyword_filter(l:list, a:cur_keyword_str)
  endif
 "{{{ filename
	if l:line =~ '=\([^a-z0-9]\|$\|[a-z0-0]*=\)'
		for l:file in s:type_list
			if search('\['.l:file.tagname.' [^]]*'.l:file.typename.'=\%#\|^@'.l:file.tagname.' .*'.l:file.typename.'=\%#','bcn',line('.'))
					call extend(l:list,l:file.list)
					return neocomplcache#keyword_filter(l:list, a:cur_keyword_str)
			endif
		endfor
	endif
 "}}}
 " {{{ typename
	if exists('g:kirikiri_neocomplcache_macro_list')
		for l:macro in g:kirikiri_neocomplcache_macro_list
			if search('\['.l:macro.tag.'\>[^]]*\%#\|^@'.l:macro.tag.'\>','bcn',line('.'))
				for l:type in l:macro.macrotype
					call add(l:list,{'word': l:type.type.'=','menu': l:type.typemenu})
				endfor
				return neocomplcache#keyword_filter(l:list, a:cur_keyword_str)
			endif
		endfor
	endif

if search('\[animstart\>[^]]*\%#\|^@animstart\>','bcn',line('.'))
   call add(l:list, {'word': 'layer=',		'menu': '(�K)�A�j���[�V�������J�n���郌�C�����w�肵�܂��B'})
   call add(l:list, {'word': 'page=',		'menu': '�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂��B �ȗ�����ƕ\�y�[�W�ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'seg=',		'menu': '(�K)���̑����Ŏw�肵���Z�O�����g�ԍ��ŃA�j���[�V�������J�n���܂��B'})
   call add(l:list, {'word': 'target=',		'menu': '(�K)�A�j���[�V�������J�n���邽�߂� asd �t�@�C�����̃��x���� �w�肵�܂��B'})
  elseif search('\[animstop\>[^]]*\%#\|^@animstop\>','bcn',line('.'))
   call add(l:list, {'word': 'layer=',		'menu': '(�K)�A�j���[�V�������~���郌�C�����w�肵�܂��B'})
   call add(l:list, {'word': 'page=',		'menu': '�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂��B �ȗ�����ƕ\�y�[�W�ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'seg=',		'menu': '(�K)���̑����Ŏw�肵���Z�O�����g�ԍ��̃A�j���[�V�������~���܂��B'})
  elseif search('\[autowc\>[^]]*\%#\|^@autowc\>','bcn',line('.'))
   call add(l:list, {'word': 'enabled=',		'menu': '�����E�F�C�g��L���ɂ���ꍇ�� true ���A�����ɂ���ɂ� false ���w�肵�܂��B'})
   call add(l:list, {'word': 'ch=',		'menu': '�����E�F�C�g�����镶�����w�肵�܂��B�w�肳�ꂽ�����̂��ƂɁAtime ������ �w�肵�����������̃E�F�C�g������܂��B'})
   call add(l:list, {'word': 'time=',		'menu': '�����E�F�C�g�����鎞�Ԃ𕶎����P�ʂŎw�肵�܂��B'})
  elseif search('\[backlay\>[^]]*\%#\|^@backlay\>','bcn',line('.'))
   call add(l:list, {'word': 'layer=',		'menu': '�ΏۂƂȂ郌�C�����w�肵�܂��B'})
  elseif search('\[bgmopt\>[^]]*\%#\|^@bgmopt\>','bcn',line('.'))
   call add(l:list, {'word': 'volume=',		'menu': 'BGM �̉��ʂ� % �Ŏw�肵�܂��B������Ԃ� KAG �ł� 100 % �ł��B�ȗ�����Ή��ʂ͕ύX����܂���B'})
   call add(l:list, {'word': 'gvolume=',		'menu': 'BGM �̑�批�ʂ� % �Ŏw�肵�܂��B������Ԃ� KAG �ł� 100 % �ł��B�ȗ�����Ή��ʂ͕ύX����܂���B'})
  elseif search('\[button\>[^]]*\%#\|^@button\>','bcn',line('.'))
   call add(l:list, {'word': 'graphic=',		'menu': '(�K)�{�^���ɂ���摜���w�肵�܂��B'})
   call add(l:link, {'word': 'graphickey=',		'menu': '0xRRGGBB �`�� �܂��� �p���b�g�C���f�b�N�X�ԍ� �܂��� "adapt"	�{�^���ɂ���摜�̃J���[�L�[���w�肵�܂��B'})
   call add(l:list, {'word': 'storage=',		'menu': '�W�����v��̃V�i���I�t�@�C�����w�肵�܂��B�ȗ�����ƁA���� �̃V�i���I�t�@�C�����ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'target=',		'menu': '�W�����v��̃��x�����w�肵�܂��B'})
   call add(l:list, {'word': 'recthit=',		'menu': '��`�œ����蔻����s�����ǂ������w�肵�܂��Btrue ���w�肳��Ă���ƁA �{�^���̕\������Ă����`�S��Ń}�E�X�̃N���b�N�Ȃǂɔ������܂��B false ���w�肳��Ă���ƁA�{�^���̕s�����x�� 64 �����̗̈�ł� �}�E�X�̃N���b�N�Ȃǂɔ������Ȃ��Ȃ�܂��B'})
   call add(l:list, {'word': 'exp=',		'menu': '�N���b�N���ꂽ�Ƃ��Ɏ��s����� TJS �����w�肵�܂��B�ȗ������ ���͎��s����܂���Bstorage �� target ���w�肳��Ă����ꍇ�A���̎� �����s����Ă���W�����v��Ɉړ����܂��B'})
   call add(l:list, {'word': 'hint=',		'menu': '�����N��I�����A�}�E�X�J�[�\����Î~�������Ƃ��ɕ\������� �c�[���`�b�v�q���g���w�肵�܂��B'})
   call add(l:list, {'word': 'onenter=',		'menu': '�{�^�����Ƀ}�E�X�J�[�\���������Ă����Ƃ��Ɏ��s����� TJS ���� �w�肵�܂��B'})
   call add(l:list, {'word': 'onleave=',		'menu': '�{�^��������}�E�X�J�[�\�����o�Ă��������Ɏ��s����� TJS ���� �w�肵�܂��B'})
   call add(l:list, {'word': 'countpage=',		'menu': '�{�^����I�����đ��̃��x���Ɉڍs����Ƃ��ɁA���̃����N�̂��� �ꏊ�̃��x�����u�ǂ񂾁v�Ƃ݂Ȃ����ǂ������w�肵�܂��B'})
   call add(l:list, {'word': 'clickse=',		'menu': '�N���b�N���ꂽ�Ƃ��ɍĐ�������ʉ����w�肵�܂��B�w�肵�Ȃ���� ���ʉ��͍Đ�����܂���B'})
   call add(l:list, {'word': 'clicksebuf=',		'menu': 'clickse �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂��B �ȗ������ 0 �ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'enterse=',		'menu': '�}�E�X���i�������Ƃ��ɍĐ�������ʉ����w�肵�܂��B�w�肵�Ȃ���� ���ʉ��͍Đ�����܂���B'})
   call add(l:list, {'word': 'entersebuf=',		'menu': 'enterse �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂��B �ȗ������ 0 �ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'leavese=',		'menu': '�}�E�X���ޏo�����Ƃ��ɍĐ�������ʉ����w�肵�܂��B�w�肵�Ȃ���� ���ʉ��͍Đ�����܂���B'})
   call add(l:list, {'word': 'leavesebuf=',		'menu': 'leavese �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂��B �ȗ������ 0 �ł���ƌ��Ȃ���܂��B'})
  elseif search('\[call\>[^]]*\%#\|^@call\>','bcn',line('.'))
   call add(l:list, {'word': 'storage=',		'menu': '�Ăяo�������T�u���[�`���̂���̃V�i���I�t�@�C���� �w�肵�܂��B�ȗ�����ƁA���� �̃V�i���I�t�@�C�����ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'target=',		'menu': '�Ăяo���T�u���[�`���̃��x�����w�肵�܂��B'})
   call add(l:list, {'word': 'countpage=',		'menu': '���̃��x���Ɉڍs����Ƃ��ɁA���̃^�O�̂��� �ꏊ�̃��x�����u�ǂ񂾁v�Ƃ݂Ȃ����ǂ������w�肵�܂��B'})
  elseif search('\[cancelvideoevent\>[^]]*\%#\|^@cancelvideoevent\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
videoevent�^�O�Őݒ肵���s���I�h�C�x���g���������܂��B
  elseif search('\[cancelvideosegloop\>[^]]*\%#\|^@cancelvideosegloop\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
videosegloop�^�O�Őݒ肵���Z�O�����g���[�v���������܂��B
  elseif search('\[ch\>[^]]*\%#\|^@ch\>','bcn',line('.'))
   call add(l:list, {'word': 'text=',		'menu': '(�K)�����Ŏw�肵���������\������܂��B'})
  elseif search('\[checkbox\>[^]]*\%#\|^@checkbox\>','bcn',line('.'))
   call add(l:list, {'word': 'name=',		'menu': '(�K)�`�F�b�N�{�b�N�X�̏�Ԃ��i�[����ϐ����w�肵�܂��B'})
   call add(l:list, {'word': 'bgcolor=',		'menu': '�w�i�F�� 0xRRGGBB �`���Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'opacity=',		'menu': 'bgcolor �����Ŏw�肵���w�i�F�̕s�����x�� 0 �` 255 �Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'color=',		'menu': '�`�F�b�N�}�[�N�̐F�� 0xRRGGBB �`���Ŏw�肵�܂��B'})
  elseif search('\[clearvideolayer\>[^]]*\%#\|^@clearvideolayer\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
   call add(l:list, {'word': 'channel=',		'menu': '(�K)���C���`�惂�[�h�ɂ��`��������������`�����l�����w�肵�܂��B'})
  elseif search('\[click\>[^]]*\%#\|^@click\>','bcn',line('.'))
   call add(l:list, {'word': 'storage=',		'menu': '�W�����v��̃V�i���I�t�@�C�����w�肵�܂��B�ȗ�����ƁA���� �̃V�i���I�t�@�C�����ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'target=',		'menu': '�W�����v��̃��x�����w�肵�܂��B'})
   call add(l:list, {'word': 'exp=',		'menu': '�N���b�N���Ɏ��s����� TJS �����w�肵�܂��B�ȗ������ ���͎��s����܂���Bstorage �� target ���w�肳��Ă����ꍇ�A���̎� �����s����Ă���W�����v��Ɉړ����܂��B'})
   call add(l:list, {'word': 'se=',		'menu': '�N���b�N���ɍĐ�������ʉ����w�肵�܂��B�w�肵�Ȃ���� ���ʉ��͍Đ�����܂���B'})
   call add(l:list, {'word': 'sebuf=',		'menu': 'clickse �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂��B �ȗ������ 0 �ł���ƌ��Ȃ���܂��B'})
  elseif search('\[clickskip\>[^]]*\%#\|^@clickskip\>','bcn',line('.'))
   call add(l:list, {'word': 'enabled=',		'menu': '(�K)�N���b�N�X�L�b�v�@�\��L���ɂ���ꍇ�� true�A�����ɂ���ꍇ�� false ���w�肵�܂��B'})
  elseif search('\[close\>[^]]*\%#\|^@close\>','bcn',line('.'))
   call add(l:list, {'word': 'ask=',		'menu': 'true ���w�肷��ƁA�I�����邩�ǂ����̊m�F�����܂��Bfalse �� �w�肷��Ƃ��̊m�F�͂���܂���B���̑������ȗ� ����ƁA true ���w�肵���Ƃ݂Ȃ���܂��B'})
  elseif search('\[copybookmark\>[^]]*\%#\|^@copybookmark\>','bcn',line('.'))
   call add(l:list, {'word': 'from=',		'menu': '(�K)�R�s�[���̞x�̔ԍ����w�肵�܂��B�ȗ������ 0 ���w�肳�ꂽ�ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'to=',		'menu': '(�K)�R�s�[��̞x�̔ԍ����w�肵�܂��B�ȗ������ 0 ���w�肳�ꂽ�ƌ��Ȃ���܂��B'})
  elseif search('\[copylay\>[^]]*\%#\|^@copylay\>','bcn',line('.'))
   call add(l:list, {'word': 'srclayer=',		'menu': '(�K)�R�s�[���ƂȂ郌�C�����w�肵�܂��B'})
   call add(l:list, {'word': 'destlayer=',		'menu': '(�K)�R�s�[��ƂȂ郌�C�����w�肵�܂��B'})
   call add(l:list, {'word': 'srcpage=',		'menu': '�R�s�[���ƂȂ�y�[�W���w�肵�܂��B'})
   call add(l:list, {'word': 'destpage=',		'menu': '�R�s�[��ƂȂ�y�[�W���w�肵�܂��B'})
  elseif search('\[current\>[^]]*\%#\|^@current\>','bcn',line('.'))
   call add(l:list, {'word': 'layer=',		'menu': '����ΏۂƂ��郁�b�Z�[�W���C�����w�肵�܂��B'})
   call add(l:list, {'word': 'page=',		'menu': ' �\(fore)��ʂ̃��C����ΏۂƂ��邩�A��(back)��ʂ̃��C����Ώۂ� ���邩���w�肵�܂��B�ȗ�����ƕ\�y�[�W�ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'withback=',		'menu': '�\�y�[�W���Ώۂ̏ꍇ�A���y�[�W�ɂ����l�ɕ�����`�悷�邩�� �w�肵�܂��B���̑������ȗ������ false ���w�肳�ꂽ�Ƃ݂Ȃ���܂��B �@���y�[�W�ɓ����ɕ�����`�悷��K�v������̂́A�����Ƀg�����W�V������ �i�s������ꍇ�Ȃǂł��B'})
  elseif search('\[cursor\>[^]]*\%#\|^@cursor\>','bcn',line('.'))
   call add(l:link, {'word': 'default=',		'menu': 'cr �Ŏn�܂�J�[�\���萔 �܂��� �J�[�\���t�@�C����	�ʏ�̃}�E�X�J�[�\�����w�肵�܂��B'})
   call add(l:link, {'word': 'pointed=',		'menu': 'cr �Ŏn�܂�J�[�\���萔 �܂��� �J�[�\���t�@�C����	�����N��{�^�����|�C���g�����Ƃ��̃}�E�X�J�[�\�����w�肵�܂��B'})
   call add(l:link, {'word': 'click=',		'menu': 'cr �Ŏn�܂�J�[�\���萔 �܂��� �J�[�\���t�@�C����	�N���b�N�҂��̃}�E�X�J�[�\�����w�肵�܂��B'})
   call add(l:link, {'word': 'draggable=',		'menu': 'cr �Ŏn�܂�J�[�\���萔 �܂��� �J�[�\���t�@�C����	position �^�O�� draggable=true �Ƃ����Ƃ��ɁA �}�E�X�����b�Z�[�W���C�����h���b�O�\�Ȉʒu�ɗ����Ƃ��ɕ\������� �}�E�X�J�[�\�����w�肵�܂��B'})
  elseif search('\[deffont\>[^]]*\%#\|^@deffont\>','bcn',line('.'))
   call add(l:list, {'word': 'size=',		'menu': '�f�t�H���g�̕����T�C�Y���w�肵�܂��B'})
   call add(l:list, {'word': 'face=',		'menu': '�f�t�H���g�̃t�H���g�����w�肵�܂��B'})
   call add(l:list, {'word': 'color=',		'menu': '�f�t�H���g�̕����F���w�肵�܂��B'})
   call add(l:list, {'word': 'rubysize=',		'menu': '�f�t�H���g�̃��r�̕����̃T�C�Y���w�肵�܂��B'})
   call add(l:list, {'word': 'rubyoffset=',		'menu': '�f�t�H���g�̃��r�̕\���I�t�Z�b�g���w�肵�܂��B'})
   call add(l:list, {'word': 'shadow=',		'menu': '�f�t�H���g�ŕ����ɉe�����邩���w�肵�܂��B'})
   call add(l:list, {'word': 'edge=',		'menu': '�f�t�H���g�ŕ�����ܕ��� ( ����蕶�� ) �ɂ��邩���w�肵�܂��B'})
   call add(l:list, {'word': 'edgecolor=',		'menu': '�f�t�H���g�̕����̑܂̐F���w�肵�܂��B'})
   call add(l:list, {'word': 'shadowcolor=',		'menu': '�f�t�H���g�̉e�̐F���w�肵�܂��B'})
   call add(l:list, {'word': 'bold=',		'menu': '�f�t�H���g�ŕ����𑾕����ɂ��邩���w�肵�܂��B'})
  elseif search('\[defstyle\>[^]]*\%#\|^@defstyle\>','bcn',line('.'))
   call add(l:list, {'word': 'linespacing=',		'menu': '�f�t�H���g�̍s�Ԃ��w�肵�܂��B'})
   call add(l:list, {'word': 'pitch=',		'menu': '�f�t�H���g�̎��Ԃ̃I�t�Z�b�g�� pixel �P�ʂŎw�肵�܂��B'})
   call add(l:list, {'word': 'linesize=',		'menu': '�f�t�H���g�̍s�̕����w�肵�܂��B'})
  elseif search('\[delay\>[^]]*\%#\|^@delay\>','bcn',line('.'))
   call add(l:list, {'word': 'speed=',		'menu': '(�K)"nowait" ���w�肷��ƁA�����̕\���ɃE�F�C�g���������ɁA ��C�ɕ������\������܂��B"user" ���w�肷��ƁA [�V�X�e��|�������x] �Ń��[�U�[���w�肵�����x�ɂȂ�� ��(�f�t�H���g)�B�E�F�C�g�̒l���w�肷��ƁA�l�Ŏ����� ���Ԃɂ� 1 �����̑��x�ŕ�����\�����܂��B'})
  elseif search('\[disablestore\>[^]]*\%#\|^@disablestore\>','bcn',line('.'))
   call add(l:list, {'word': 'store=',		'menu': '�u�x���͂��ށv�̋@�\���g�p�s�ɂ��邩���w�肵�܂��B'})
   call add(l:list, {'word': 'restore=',		'menu': '�u�x�����ǂ�v�̋@�\���g�p�s�ɂ��邩���w�肵�܂��B'})
  elseif search('\[edit\>[^]]*\%#\|^@edit\>','bcn',line('.'))
   call add(l:list, {'word': 'name=',		'menu': '(�K)���͂�����������i�[����ϐ����w�肵�܂��B'})
   call add(l:list, {'word': 'length=',		'menu': '�P��s�G�f�B�b�g�̕� ( �c�����̏ꍇ�͍��� ) ���s�N�Z���P�ʂŎw�肵�܂��B'})
   call add(l:list, {'word': 'bgcolor=',		'menu': '�w�i�F�� 0xRRGGBB �`���Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'opacity=',		'menu': 'bgcolor �����Ŏw�肵���w�i�F�̕s�����x�� 0 �` 255 �Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'color=',		'menu': '�����F�� 0xRRGGBB �`���Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'maxchars=',		'menu': '���͂ł���ő啶�������w�肵�܂��B0 ���w�肷��Ɩ������ɂȂ�܂��B'})
  elseif search('\[elsif\>[^]]*\%#\|^@elsif\>','bcn',line('.'))
   call add(l:list, {'word': 'exp=',		'menu': '(�K)�]������ TJS �����w�肵�܂��B'})
  elseif search('\[emb\>[^]]*\%#\|^@emb\>','bcn',line('.'))
   call add(l:list, {'word': 'exp=',		'menu': '(�K)�]������ TJS �����w�肵�܂��B�����ŕ]�����ꂽ���̌��ʂ��A ���� emb �^�O�ƒu�������܂��B'})
  elseif search('\[erasebookmark\>[^]]*\%#\|^@erasebookmark\>','bcn',line('.'))
   call add(l:list, {'word': 'place=',		'menu': '�x�̔ԍ����w�肵�܂��B�ȗ������ 0 ���w�肳�ꂽ�ƌ��Ȃ���܂��B'})
  elseif search('\[erasemacro\>[^]]*\%#\|^@erasemacro\>','bcn',line('.'))
   call add(l:list, {'word': 'name=',		'menu': '(�K)��������^�O���w�肵�܂��B�}�N���Ƃ��Ē�`���ꂽ�^�O�݂̂� �������邱�Ƃ��o���܂��B'})
  elseif search('\[eval\>[^]]*\%#\|^@eval\>','bcn',line('.'))
   call add(l:list, {'word': 'exp=',		'menu': '(�K)�]������ TJS �����w�肵�܂��B'})
  elseif search('\[fadebgm\>[^]]*\%#\|^@fadebgm\>','bcn',line('.'))
   call add(l:list, {'word': 'volume=',		'menu': '(�K)�t�F�[�h��ɓ��B������ BGM �̉��ʂ� % �Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'time=',		'menu': '(�K)�t�F�[�h���s���Ă��鎞�Ԃ� ms �P�ʂŎw�肵�܂��B 3000 �Ǝw�肷��� 3 �b�Ԃ̊ԁA�t�F�[�h���s���Ă��܂��B'})
  elseif search('\[fadeinbgm\>[^]]*\%#\|^@fadeinbgm\>','bcn',line('.'))
   call add(l:list, {'word': 'storage=',		'menu': '(�K)���t���� BGM �t�@�C�����܂��� CD �g���b�N�ԍ����w�肵�܂��B'})
   call add(l:list, {'word': 'start=',		'menu': '���[�v�`���[�i�Ŏw�肵�����x���� BGM �̍Đ��J�n�ʒu���w�肵�܂��B'})
   call add(l:list, {'word': 'loop=',		'menu': 'BGM �����[�v���邩���w�肵�܂��B'})
   call add(l:list, {'word': 'time=',		'menu': '(�K)�t�F�[�h�C�����s���Ă��鎞�Ԃ� ms �P�ʂŎw�肵�܂��B 3000 �Ǝw�肷��� 3 �b�Ԃ̊ԁA�t�F�[�h�C�����s���Ă��܂��B'})
  elseif search('\[fadeinse\>[^]]*\%#\|^@fadeinse\>','bcn',line('.'))
   call add(l:list, {'word': 'buf=',		'menu': '���ʉ����Đ�����o�b�t�@���w�肵�܂��B��̃o�b�t�@�ł� �����ɂ͈�̌��ʉ���炷���Ƃ��ł��܂��B'})
   call add(l:list, {'word': 'storage=',		'menu': '(�K)���t������ʉ��t�@�C�������w�肵�܂��B'})
   call add(l:list, {'word': 'start=',		'menu': '���[�v�`���[�i�Ŏw�肵�����x���� SE �̍Đ��J�n�ʒu���w�肵�܂��B'})
   call add(l:list, {'word': 'time=',		'menu': '(�K)�t�F�[�h�C�����s���Ă��鎞�Ԃ��~���b�P�ʂŎw�肵�܂��B'})
   call add(l:list, {'word': 'loop=',		'menu': '���ʉ����J��Ԃ��Đ����邩�ǂ������w�肵�܂��B'})
  elseif search('\[fadeoutbgm\>[^]]*\%#\|^@fadeoutbgm\>','bcn',line('.'))
   call add(l:list, {'word': 'time=',		'menu': '(�K)�t�F�[�h�A�E�g���s���Ă��鎞�Ԃ� ms �P�ʂŎw�肵�܂��B 3000 �Ǝw�肷��� 3 �b�Ԃ̊ԁA�t�F�[�h�A�E�g���s���Ă��܂��B'})
  elseif search('\[fadeoutse\>[^]]*\%#\|^@fadeoutse\>','bcn',line('.'))
   call add(l:list, {'word': 'buf=',		'menu': '���ʉ����t�F�[�h�A�E�g����o�b�t�@���w�肵�܂��B'})
   call add(l:list, {'word': 'time=',		'menu': '(�K)�t�F�[�h�A�E�g���s���Ă��鎞�Ԃ��~���b�P�ʂŎw�肵�܂��B'})
  elseif search('\[fadepausebgm\>[^]]*\%#\|^@fadepausebgm\>','bcn',line('.'))
   call add(l:list, {'word': 'time=',		'menu': '(�K)�t�F�[�h�A�E�g���s���Ă��鎞�Ԃ� ms �P�ʂŎw�肵�܂��B 3000 �Ǝw�肷��� 3 �b�Ԃ̊ԁA�t�F�[�h�A�E�g���s���Ă��܂��B'})
  elseif search('\[fadese\>[^]]*\%#\|^@fadese\>','bcn',line('.'))
   call add(l:list, {'word': 'buf=',		'menu': '���ʉ����t�F�[�h����o�b�t�@���w�肵�܂��B'})
   call add(l:list, {'word': 'time=',		'menu': '(�K)�t�F�[�h���s���Ă��鎞�Ԃ��~���b�P�ʂŎw�肵�܂��B'})
   call add(l:list, {'word': 'volume=',		'menu': '(�K)�t�F�[�h�̓��B���ʂ� % �Ŏw�肵�܂��B �@100 ������ł��B���ʂ̗}���݂̂��T�|�[�g���܂�(������ �����̓�����A�ł��܂���)�B'})
  elseif search('\[font\>[^]]*\%#\|^@font\>','bcn',line('.'))
   call add(l:list, {'word': 'size=',		'menu': '�����T�C�Y�� pixel �P�ʂŎw�肵�܂��B'})
   call add(l:list, {'word': 'face=',		'menu': '�t�H���g�����w�肵�܂��B'})
   call add(l:list, {'word': 'color=',		'menu': '�����F�� 0xRRGGBB �`���Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'italic=',		'menu': '�������Α̂ɂ��邩�ǂ������w�肵�܂��Btrue ���w�肷��ƎΑ̂ɂȂ�� ���B'})
   call add(l:list, {'word': 'rubysize=',		'menu': '���r(�ǂ݉���)�̕����̃T�C�Y�� pixel �P�ʂŎw�肵�܂��B'})
   call add(l:list, {'word': 'rubyoffset=',		'menu': '���r�̕\���I�t�Z�b�g�� pixel �P�ʂŎw�肵�܂��B���̐����w�肷��Ɩ{���� ���߂��ʒu�ɕ\������܂��B'})
   call add(l:list, {'word': 'shadow=',		'menu': '�����ɉe�����邩���w�肵�܂��Btrue ���w�肷��Ɖe�����܂��B'})
   call add(l:list, {'word': 'edge=',		'menu': '������ܕ��� ( ����蕶�� ) �ɂ��邩���w�肵�܂��Btrue ���w�肷��Ƒܕ����ɂȂ�܂��B'})
   call add(l:list, {'word': 'edgecolor=',		'menu': '�����̑܂̐F�� 0xRRGGBB �`���Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'shadowcolor=',		'menu': '�e�̐F�� 0xRRGGBB �`���Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'bold=',		'menu': '�����𑾕����ɂ��邩���w�肵�܂��B true ���w�肷��Ƒ������ɂȂ�܂��B'})
  elseif search('\[freeimage\>[^]]*\%#\|^@freeimage\>','bcn',line('.'))
   call add(l:list, {'word': 'layer=',		'menu': '(�K)�摜��������郌�C�����w�肵�܂��B'})
   call add(l:list, {'word': 'page=',		'menu': '�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂��B �ȗ�����ƕ\�y�[�W�ł���ƌ��Ȃ���܂��B'})
  elseif search('\[glyph\>[^]]*\%#\|^@glyph\>','bcn',line('.'))
   call add(l:list, {'word': 'line=',		'menu': '�s���N���b�N�҂��L���摜�̃t�@�C�������w�肵�܂��B �g���q�͎w�肵�Ȃ��ł��������B'})
   call add(l:link, {'word': 'linekey=',		'menu': '0xRRGGBB �`�� �܂��� �p���b�g�C���f�b�N�X�ԍ� �܂��� "adapt"	�J���[�L�[���w�肵�܂��B'})
   call add(l:list, {'word': 'page=',		'menu': '���y�[�W�҂��L���摜�̃t�@�C�������w�肵�܂��B'})
   call add(l:link, {'word': 'pagekey=',		'menu': '0xRRGGBB �`�� �܂��� �p���b�g�C���f�b�N�X�ԍ� �܂��� "adapt"	�J���[�L�[���w�肵�܂��B'})
   call add(l:list, {'word': 'fix=',		'menu': '�L���\���ʒu���w��ʒu�ɌŒ肷�邩�ǂ������w�肵�܂��Btrue ���w�肷��� �L���� left ����� top ���w�肵���ʒu�ɕ\������܂��B'})
   call add(l:list, {'word': 'left=',		'menu': 'fix ������ true �ɂ����Ƃ��ɋL����\������ʒu�̂����A���[�ʒu�� �w�肵�܂��B'})
   call add(l:list, {'word': 'top=',		'menu': 'fix ������ true �ɂ����Ƃ��ɋL����\������ʒu�̂����A��[�ʒu�� �w�肵�܂��B'})
  elseif search('\[goback\>[^]]*\%#\|^@goback\>','bcn',line('.'))
   call add(l:list, {'word': 'ask=',		'menu': 'true ���w�肷��ƁA�O�ɖ߂邩�ǂ����̊m�F�����܂��Bfalse �� �w�肷��ƑO�ɖ߂邩�ǂ����̊m�F�͂���܂���B���̑������ȗ� ����� false ���w�肵���Ƃ݂Ȃ���܂��B'})
  elseif search('\[gotostart\>[^]]*\%#\|^@gotostart\>','bcn',line('.'))
   call add(l:list, {'word': 'ask=',		'menu': 'true ���w�肷��ƁA�ŏ��ɖ߂邩�ǂ����̊m�F�����܂��Bfalse �� �w�肷��ƍŏ��ɖ߂邩�ǂ����̊m�F�͂���܂���B���̑������ȗ� ����� false ���w�肵���Ƃ݂Ȃ���܂��B'})
  elseif search('\[graph\>[^]]*\%#\|^@graph\>','bcn',line('.'))
   call add(l:list, {'word': 'storage=',		'menu': '(�K)�\�����������摜�t�@�C�������w�肵�܂��B �ǂݍ��߂�`���� image�^�O�œǂݍ��߂� �`���Ɠ����ł��B �@�����Ŏw�肵���t�@�C���� (�g���q������) ������ _m ��ǉ� �����t�@�C�����A��������΁A�}�X�N�摜�Ƃ��ēǂݍ��܂�܂��B �}�X�N�摜�͕K�� 256 �F�O���[�X�P�[���ŕۑ����Ă��������B'})
   call add(l:list, {'word': 'key=',		'menu': '�ǂ̐F�𔲂��F�Ƃ��邩���w�肵�܂��B�ȗ�����Ɣ����F�͖����ɂȂ�܂��B �@key=0xRRGGBB �Ƃ����`���� 16 �i���Ŕ����F���w�肷�� �ƁARR(��) GG(��) BB(��)�œh��ꂽ�����𔲂��F�Ƃ��ē����ɂ��܂��B ���Ƃ��΁Akey=0xff00ff �ł� (r,g,b)=(255,0,255) �܂�^�}�[���_�̕� ���𔲂��F�Ƃ��ē����ɂ���Ƃ����w��ɂȂ�܂��B'})
   call add(l:list, {'word': 'char=',		'menu': 'true ���w�肷��ƁA�摜��font �^�O�� �w�肵���F�A�e�A�ܕ����̏�Ԃ��A�������l�ɕ\������܂��B ���̂��߁Atrue ��ݒ肷��Ɖ摜�̐F���͖�������܂��B �܂��A�摜���e��ܕ����ł���K�v�͂���܂���B'})
   call add(l:list, {'word': 'alt=',		'menu': '���b�Z�[�W�����ɕ\������A���̉摜�̑�֕������w�肵�܂��B ���b�Z�[�W�����͕�����񂵂��\���ł��܂���̂ŁAalt ������ �w�肳�ꂽ����������ɕ\������܂��B'})
  elseif search('\[hact\>[^]]*\%#\|^@hact\>','bcn',line('.'))
   call add(l:list, {'word': 'exp=',		'menu': '(�K)���b�Z�[�W���N���b�N�����Ƃ��Ɏ��s���� TJS �����w�肵�܂��B'})
  elseif search('\[hch\>[^]]*\%#\|^@hch\>','bcn',line('.'))
   call add(l:list, {'word': 'text=',		'menu': '(�K)�����Ŏw�肵�����������������������ŕ\������܂��B'})
   call add(l:list, {'word': 'expand=',		'menu': 'true ���w�肷��ƁA�����c������`�悵�悤�Ƃ����Ƃ��� �s�Ԃ������I�Ɋg�����܂��Bfalse ���w�肷��ƁA�c������ �s����͂ݏo�Đ���ɕ`�悳��Ȃ��\��������܂����A �s�Ԃ͂��̂܂܂ɂȂ�܂� ( �ʏ피�p�Q���Ȃ�� false �� OK )�B'})
  elseif search('\[history\>[^]]*\%#\|^@history\>','bcn',line('.'))
   call add(l:list, {'word': 'output=',		'menu': '���b�Z�[�W�����ւ̕������̏o�͂����邩�ǂ������w�肵�܂��B'})
   call add(l:list, {'word': 'enabled=',		'menu': '���b�Z�[�W������\���\���ǂ������w�肵�܂��B'})
  elseif search('\[hr\>[^]]*\%#\|^@hr\>','bcn',line('.'))
   call add(l:list, {'word': 'repage=',		'menu': '���y�[�W���s�����ǂ������w�肵�܂��B'})
  elseif search('\[if\>[^]]*\%#\|^@if\>','bcn',line('.'))
   call add(l:list, {'word': 'exp=',		'menu': '(�K)�]������ TJS �����w�肵�܂��B���̎��̌��ʂ� false ( �܂��� 0 �� ��΁Aelsif�Eelse�Eendif �^�O�܂ł̕��͂�^�O����������܂��B'})
  elseif search('\[ignore\>[^]]*\%#\|^@ignore\>','bcn',line('.'))
   call add(l:list, {'word': 'exp=',		'menu': '(�K)�]������ TJS �����w�肵�܂��B���̎��̌��ʂ� true ( �܂��� 0 �ȊO )�� ��΁Aendignore �^�O�܂ł̕��͂�^�O����������܂��B'})
  elseif search('\[image\>[^]]*\%#\|^@image\>','bcn',line('.'))
   call add(l:list, {'word': 'storage=',		'menu': '(�K)�ǂݍ��݂����摜���w�肵�܂��B�g���q�͏ȗ��\�ł��B'})
   call add(l:list, {'word': 'layer=',		'menu': '(�K)�摜��ǂݍ��ރ��C�����w�肵�܂��B'})
   call add(l:list, {'word': 'page=',		'menu': '�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂��B �ȗ�����ƕ\�y�[�W�ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'key=',		'menu': '�ǂ̐F�𔲂��F�Ƃ��邩���w�肵�܂��B�ȗ�����Ɣ����F�͖����ɂȂ�܂��B'})
   call add(l:list, {'word': 'mode=',		'menu': '�O�i���C���̓��߃��[�h���w�肵�܂��B�O�i���C���ȊO�ɂ� �w�肵�Ȃ��ł��������B'})
   call add(l:list, {'word': 'grayscale=',		'menu': '�摜���O���[�X�P�[���ɂ��邩�ǂ������w�肵�܂��B grayscale=true �Ǝw�肷��ƁA�摜���O���[�X�P�[���ɂ��܂��B �ȗ������ false �ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'rgamma=',		'menu': 'r (��) �Ag (��) �A b (��) �̊e�����̃K���}�l���w�肵�܂��B ���Ƃ��Ή摜���Z�s�A���ɂ���ɂ́A grayscale=true rgamma=1.3 ggamma=1.1 �Ǝw�肵�܂��B'})
   call add(l:list, {'word': 'ggamma=',		'menu': 'r (��) �Ag (��) �A b (��) �̊e�����̃K���}�l���w�肵�܂��B ���Ƃ��Ή摜���Z�s�A���ɂ���ɂ́A grayscale=true rgamma=1.3 ggamma=1.1 �Ǝw�肵�܂��B'})
   call add(l:list, {'word': 'bgamma=',		'menu': 'r (��) �Ag (��) �A b (��) �̊e�����̃K���}�l���w�肵�܂��B ���Ƃ��Ή摜���Z�s�A���ɂ���ɂ́A grayscale=true rgamma=1.3 ggamma=1.1 �Ǝw�肵�܂��B'})
   call add(l:list, {'word': 'rfloor=',		'menu': '�e�����̋P�x�Œ�l���w�肵�܂��B'})
   call add(l:list, {'word': 'gfloor=',		'menu': '�e�����̋P�x�Œ�l���w�肵�܂��B'})
   call add(l:list, {'word': 'bfloor=',		'menu': '�e�����̋P�x�Œ�l���w�肵�܂��B'})
   call add(l:list, {'word': 'rceil=',		'menu': '�e�����̋P�x�ō��l���w�肵�܂��B ���Ƃ��΁A rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0 �� �w�肷��ƁA�F�����]���܂��B'})
   call add(l:list, {'word': 'gceil=',		'menu': '�e�����̋P�x�ō��l���w�肵�܂��B ���Ƃ��΁A rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0 �� �w�肷��ƁA�F�����]���܂��B'})
   call add(l:list, {'word': 'bceil=',		'menu': '�e�����̋P�x�ō��l���w�肵�܂��B ���Ƃ��΁A rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0 �� �w�肷��ƁA�F�����]���܂��B'})
   call add(l:list, {'word': 'mcolor=',		'menu': '�F�u�����h�ɂ��F�����ʂɂ����āA�u�����h����F�� 0xRRGGBB �`���Ŏw�肵�� ���B�Z�x�� mopacity �����Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'mopacity=',		'menu': '�F�u�����h�ɂ��F�����ʂŁAmcolor �Ŏw�肵���F���ǂꂮ�炢�̕s�� ���x�Ńu�����h���邩���w�肵�܂��B'})
   call add(l:list, {'word': 'lightcolor=',		'menu': '���u�����h�ɂ��F�����ʂ́A�u�����h����F�� 0xAARRGGBB �`���Ŏw�肵�܂��B ���l���܂ނ̂ɒ��ӂ��Ă��������B'})
   call add(l:list, {'word': 'lighttype=',		'menu': '���u�����h�ɂ��F�����ʂ́A�������[�h���w�肵�܂��B'})
   call add(l:list, {'word': 'shadow=',		'menu': '���C���̉摜�ɉe�����܂��B�e�F�� 0xRRGGBB �`���Ŏw�肵�܂��B���l�ȗ����� 0x000000 �����ł��B shadowopacity,shadowx,shadowy,shadowblur �ł���e�̃p�����[�^���w��ł��܂��B'})
   call add(l:list, {'word': 'shadowopacity=',		'menu': 'shadow�ŉe������Ƃ��̉e�̔Z�x���w�肵�܂��B���w�莞�̒l��200�ł��B'})
   call add(l:list, {'word': 'shadowx=',		'menu': 'shadow�ŉe������Ƃ��̉e��X�����̂���̗ʂ��w�肵�܂��B���w�莞�̒l��10�ł��B'})
   call add(l:list, {'word': 'shadowy=',		'menu': 'shadow�ŉe������Ƃ��̉e��Y�����̂���̗ʂ��w�肵�܂��B���w�莞�̒l��10�ł��B'})
   call add(l:list, {'word': 'shadowblur=',		'menu': 'shadow�ŉe������Ƃ��̉e�̂ڂ�������w�肵�܂��B���w�莞�̒l�� 3 �ł��B'})
   call add(l:list, {'word': 'clipleft=',		'menu': '�摜�N���b�v��`�̍��[�ʒu���w�肵 �܂��Bclipleft, cliptop, clipwidth, clipheight �ŋ�`���w�� ����ƁAstorage �����Ŏw�肳�ꂽ�摜�̂��̋�`�݂̂��؂����A �w�肳�ꂽ���C���̉摜�ɂȂ�܂��B�摜�̈ꕔ������؂����� �\���������Ƃ��ȂǂɎg�p���܂��B'})
   call add(l:list, {'word': 'cliptop=',		'menu': '�摜�N���b�v��`�̏�[�ʒu���w�肵 �܂��B'})
   call add(l:list, {'word': 'clipwidth=',		'menu': '�摜�N���b�v��`�̕����w�肵�܂��B'})
   call add(l:list, {'word': 'clipheight=',		'menu': '�摜�N���b�v��`�̍������w�肵 �܂�'})
   call add(l:list, {'word': 'flipud=',		'menu': '�摜�̏㉺���]���s�������ꍇ�� true ���w�肵�܂��B'})
   call add(l:list, {'word': 'fliplr=',		'menu': '�摜�̍��E���]���s�������ꍇ�� true ���w�肵�܂��B'})
   call add(l:list, {'word': 'visible=',		'menu': 'layer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�� ���܂��Bvisible=true �� �w�肷��΁A���C���͕\����ԂɂȂ�܂��Bvisible=false �Ǝw�肷��΁A ��\����ԂɂȂ�܂��B�ȗ�����ƕ\����Ԃ͕ς��܂� ��Blayer=base ���w�肵���ꍇ�͂��̑����͎w�肵�Ȃ��ł��������B'})
   call add(l:list, {'word': 'left=',		'menu': 'layer �����Ŏw�肵�����C���̍��[�ʒu���w�肵�܂��B �ȗ�����ƁA�摜�ǂݍ��ݑO�̈ʒu��ێ����܂��Blayer=base �Ǝw�肵���ꍇ�� ���̑����͎w�肵�Ȃ��ł��������B'})
   call add(l:list, {'word': 'top=',		'menu': 'layer �����Ŏw�肵�����C���̏�[�ʒu���w�肵�܂��B �ȗ�����ƁA�摜�ǂݍ��ݑO�̈ʒu��ێ����܂��Blayer=base �Ǝw�肵���ꍇ�� ���̑����͎w�肵�Ȃ��ł��������B'})
   call add(l:list, {'word': 'pos=',		'menu': '���C���ʒu�������I�Ɍ��肵�܂��B�O�i���C���ɑ΂��Ďg���܂��B'})
   call add(l:list, {'word': 'opacity=',		'menu': 'layer �����Ŏw�肵�����C���̕s�����x���w�肵�܂��B'})
   call add(l:list, {'word': 'mapimage=',		'menu': '�N���b�J�u���}�b�v�ɗp����̈�摜���w�肵�܂��B'})
   call add(l:list, {'word': 'mapaction=',		'menu': '�N���b�J�u���}�b�v�ɗp����̈�A�N�V������`�t�@�C�����w�肵�܂��B'})
   call add(l:list, {'word': 'index=',		'menu': '�w�i���C���ɂ͎w�肵�Ȃ��ł��������B'})
  elseif search('\[input\>[^]]*\%#\|^@input\>','bcn',line('.'))
   call add(l:list, {'word': 'name=',		'menu': '(�K)���͂�������������i�[����ϐ����w�肵�܂��B'})
   call add(l:list, {'word': 'prompt=',		'menu': '�_�C�A���O�{�b�N�X�̃v�����v�g ( ���͗��̂�����ɕ\������镶���� ) �� �w�肵�܂��B�ȗ�����Ƌ󗓂ɂȂ�܂��B'})
   call add(l:list, {'word': 'title=',		'menu': '�_�C�A���O�{�b�N�X�̃^�C�g�����w�肵�܂��B'})
  elseif search('\[jump\>[^]]*\%#\|^@jump\>','bcn',line('.'))
   call add(l:list, {'word': 'storage=',		'menu': '�W�����v��̃V�i���I�t�@�C�����w�肵�܂��B�ȗ�����ƁA���� �̃V�i���I�t�@�C�����ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'target=',		'menu': '�W�����v��̃��x�����w�肵�܂��B'})
   call add(l:list, {'word': 'countpage=',		'menu': '���̃��x���Ɉڍs����Ƃ��ɁA���̃^�O�̂��� �ꏊ�̃��x�����u�ǂ񂾁v�Ƃ݂Ȃ����ǂ������w�肵�܂��B'})
  elseif search('\[laycount\>[^]]*\%#\|^@laycount\>','bcn',line('.'))
   call add(l:list, {'word': 'layers=',		'menu': '�O�i���C���̐����w�肵�܂��B'})
   call add(l:list, {'word': 'messages=',		'menu': '���b�Z�[�W���C���̐����w�肵�܂��B'})
  elseif search('\[layopt\>[^]]*\%#\|^@layopt\>','bcn',line('.'))
   call add(l:list, {'word': 'layer=',		'menu': '(�K)�ΏۂƂȂ�O�i���C���܂��̓��b�Z�[�W���C�����w�肵�܂��B �@message �Ƃ̂ݎw�肵���ꍇ�́Acurrent �^�O�Ŏw�肵���A���݂̑���Ώۂ̃��b�Z�[�W���C�����ΏۂƂȂ�܂��B'})
   call add(l:list, {'word': 'page=',		'menu': ' �\(fore)��ʂ̃��C����ΏۂƂ��邩�A��(back)��ʂ̃��C����Ώۂ� ���邩���w�肵�܂��B�ȗ�����ƕ\�y�[�W�ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'visible=',		'menu': 'layer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�� ���܂��Bvisible=true �� �w�肷��΁A���C���͕\����ԂɂȂ�܂��Bvisible=false �Ǝw�肷��΁A ��\����ԂɂȂ�܂��B�ȗ�����ƕ\����Ԃ͕ς��܂� ��B'})
   call add(l:list, {'word': 'left=',		'menu': 'layer �����Ŏw�肵�����C���̍��[�ʒu���w�肵�܂��B �ȗ�����ƈʒu�͕ύX���܂���B'})
   call add(l:list, {'word': 'top=',		'menu': 'layer �����Ŏw�肵�����C���̏�[�ʒu���w�肵�܂��B �ȗ�����ƈʒu�͕ύX���܂���B'})
   call add(l:list, {'word': 'opacity=',		'menu': '���C���̕s�����x���w�肵�܂��B'})
   call add(l:list, {'word': 'autohide=',		'menu': '�O�i���C���ȊO�ɂ͎w�肵�Ȃ��ł��������B'})
   call add(l:list, {'word': 'index=',		'menu': '�w�i���C���ɂ͎w�肵�Ȃ��ł��������B'})
  elseif search('\[link\>[^]]*\%#\|^@link\>','bcn',line('.'))
   call add(l:list, {'word': 'storage=',		'menu': '�W�����v��̃V�i���I�t�@�C�����w�肵�܂��B�ȗ�����ƁA���� �̃V�i���I�t�@�C�����ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'target=',		'menu': '�W�����v��̃��x�����w�肵�܂��B'})
   call add(l:list, {'word': 'exp=',		'menu': '�N���b�N���ꂽ�Ƃ��Ɏ��s����� TJS �����w�肵�܂��B�ȗ������ ���͎��s����܂���Bstorage �� target ���w�肳��Ă����ꍇ�A���̎� �����s����Ă���W�����v��Ɉړ����܂��B'})
   call add(l:list, {'word': 'color=',		'menu': '�����N���I�����ꂽ�Ƃ��ɏo�锼�����̋�`�̐F���w�肵�܂��B'})
   call add(l:list, {'word': 'hint=',		'menu': '�����N��I�����A�}�E�X�J�[�\����Î~�������Ƃ��ɕ\������� �c�[���`�b�v�q���g���w�肵�܂��B'})
   call add(l:list, {'word': 'onenter=',		'menu': '�����N���Ƀ}�E�X�J�[�\���������Ă����Ƃ��Ɏ��s����� TJS ���� �w�肵�܂��B'})
   call add(l:list, {'word': 'onleave=',		'menu': '�����N������}�E�X�J�[�\�����o�Ă��������Ɏ��s����� TJS ���� �w�肵�܂��B'})
   call add(l:list, {'word': 'countpage=',		'menu': '�����N��I�����đ��̃��x���Ɉڍs����Ƃ��ɁA���̃����N�̂��� �ꏊ�̃��x�����u�ǂ񂾁v�Ƃ݂Ȃ����ǂ������w�肵�܂��B'})
   call add(l:list, {'word': 'clickse=',		'menu': '�N���b�N���ꂽ�Ƃ��ɍĐ�������ʉ����w�肵�܂��B�w�肵�Ȃ���� ���ʉ��͍Đ�����܂���B'})
   call add(l:list, {'word': 'clicksebuf=',		'menu': 'clickse �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂��B �ȗ������ 0 �ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'enterse=',		'menu': '�}�E�X���i�������Ƃ��ɍĐ�������ʉ����w�肵�܂��B�w�肵�Ȃ���� ���ʉ��͍Đ�����܂���B'})
   call add(l:list, {'word': 'entersebuf=',		'menu': 'enterse �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂��B �ȗ������ 0 �ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'leavese=',		'menu': '�}�E�X���ޏo�����Ƃ��ɍĐ�������ʉ����w�肵�܂��B�w�肵�Ȃ���� ���ʉ��͍Đ�����܂���B'})
   call add(l:list, {'word': 'leavesebuf=',		'menu': 'leavese �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂��B �ȗ������ 0 �ł���ƌ��Ȃ���܂��B'})
  elseif search('\[load\>[^]]*\%#\|^@load\>','bcn',line('.'))
   call add(l:list, {'word': 'place=',		'menu': '�x�̔ԍ����w�肵�܂��B�ȗ������ 0 ���w�肳�ꂽ�ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'ask=',		'menu': 'true ���w�肷��ƁA�x�����ǂ邩�ǂ����̊m�F�����܂��Bfalse �� �w�肷��ƞx�����ǂ邩�ǂ����̊m�F�͂���܂���B���̑������ȗ� ����� false ���w�肵���Ƃ݂Ȃ���܂��B'})
  elseif search('\[loadplugin\>[^]]*\%#\|^@loadplugin\>','bcn',line('.'))
   call add(l:link, {'word': 'module=',		'menu': '�v���O�C���t�@�C����	�ǂݍ��݂����v���O�C���t�@�C�������w�肵�܂��B'})
  elseif search('\[locate\>[^]]*\%#\|^@locate\>','bcn',line('.'))
   call add(l:list, {'word': 'x=',		'menu': '������\������ x ���W�ʒu���w�肵�܂��B'})
   call add(l:list, {'word': 'y=',		'menu': '������\������ y ���W�ʒu���w�肵�܂��B'})
  elseif search('\[macro\>[^]]*\%#\|^@macro\>','bcn',line('.'))
   call add(l:list, {'word': 'name=',		'menu': '(�K)�^�O�����w�肵�܂��B�Ȍ�A���̖��O�ŐV�����^�O����`����A �}�N�����g�p�ł���悤�ɂȂ�܂��B'})
  elseif search('\[mapaction\>[^]]*\%#\|^@mapaction\>','bcn',line('.'))
   call add(l:list, {'word': 'layer=',		'menu': '(�K)�ΏۂƂ��郌�C�����w�肵�܂��B'})
   call add(l:list, {'word': 'page=',		'menu': '�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂��B �ȗ�����ƕ\�y�[�W�ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'storage=',		'menu': '(�K)�̈�A�N�V������`�t�@�C�����w�肵�܂��B'})
  elseif search('\[mapdisable\>[^]]*\%#\|^@mapdisable\>','bcn',line('.'))
   call add(l:list, {'word': 'layer=',		'menu': '(�K)�ΏۂƂ��郌�C�����w�肵�܂��B'})
   call add(l:list, {'word': 'page=',		'menu': '�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂��B �ȗ�����ƕ\�y�[�W�ł���ƌ��Ȃ���܂��B'})
  elseif search('\[mapimage\>[^]]*\%#\|^@mapimage\>','bcn',line('.'))
   call add(l:list, {'word': 'layer=',		'menu': '(�K)�ΏۂƂ��郌�C�����w�肵�܂��B'})
   call add(l:list, {'word': 'page=',		'menu': '�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂��B �ȗ�����ƕ\�y�[�W�ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'storage=',		'menu': '(�K)�N���b�J�u���}�b�v�̗̈�摜�Ƃ��ėp����t�@�C�����w�肵�܂��B �@�t�@�C���� 256 �F�ŕۑ�����Ă���K�v������܂��B'})
  elseif search('\[mappfont\>[^]]*\%#\|^@mappfont\>','bcn',line('.'))
   call add(l:link, {'word': 'storage=',		'menu': '�t�@�C����	���݂̃t�H���g�Ɋ��蓖�Ă��������_�����O�ς݃t�H���g�t�@�C�� ���w�肵�܂��B'})
  elseif search('\[move\>[^]]*\%#\|^@move\>','bcn',line('.'))
   call add(l:list, {'word': 'layer=',		'menu': '(�K)�ΏۂƂȂ郌�C�����w�肵�܂��B'})
   call add(l:list, {'word': 'page=',		'menu': 'layer �����Ŏw�肵�����C�����A �\(fore)��ʂł��邩�A��(back)��ʂł��邩���w�肵�܂��B �ȗ�����ƕ\�y�[�W�ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'spline=',		'menu': 'true ���w�肷��ƁApath �����Ŏw�肵���ʒu���a�X�v���C���� �Ȑ���Ԃ�����������C�����ړ�����悤�ɂȂ�܂��B'})
   call add(l:list, {'word': 'time=',		'menu': '(�K)���C���� path ���w�肵���_����_���ړ�����̂ɕK�v�Ȏ��Ԃ��w�肵�܂��B'})
   call add(l:list, {'word': 'delay=',		'menu': '���C���̎����ړ����J�n�����܂ł̎��Ԃ� ms �Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'path=',		'menu': '(�K)�ړ��ʒu���w�肵�܂��B'})
   call add(l:list, {'word': 'accel=',		'menu': '�����x�I�ȓ������s�킹�邩�ǂ������w�肵�܂��B'})
  elseif search('\[nextskip\>[^]]*\%#\|^@nextskip\>','bcn',line('.'))
   call add(l:list, {'word': 'enabled=',		'menu': '(�K)�u���̑I�����܂Ői�ށv�̋@�\��L���ɂ���ꍇ�� true�A�� ���ɂ���ꍇ�� false ���w�肵�܂��B'})
  elseif search('\[openvideo\>[^]]*\%#\|^@openvideo\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
   call add(l:list, {'word': 'storage=',		'menu': '(�K)�Đ���������t�@�C�������w�肵�܂��B'})
  elseif search('\[pausevideo\>[^]]*\%#\|^@pausevideo\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
  elseif search('\[pimage\>[^]]*\%#\|^@pimage\>','bcn',line('.'))
   call add(l:list, {'word': 'storage=',		'menu': '(�K)�ǉ����ēǂݍ��މ摜���w�肵�܂��B'})
   call add(l:list, {'word': 'layer=',		'menu': '(�K)�摜��ǉ����ēǂݍ��ރ��C�����w�肵�܂��B'})
   call add(l:list, {'word': 'page=',		'menu': '�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂��B �ȗ�����ƕ\�y�[�W�ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'key=',		'menu': 'storage �Ŏw�肵���摜�́A�ǂ̐F�𔲂��F�Ƃ��邩���w�肵�܂��B �ȗ�����Ɣ����F�͖����ɂȂ�܂��B �@key=0xRRGGBB �Ƃ����`���� 16 �i���Ŕ����F���w�肷�� �ƁARR(��) GG(��) BB(��)�œh��ꂽ�����𔲂��F�Ƃ��ē����ɂ��܂��B ���Ƃ��΁Akey=0xff00ff �ł� (r,g,b)=(255,0,255) �܂�^�}�[���_�̕� ���𔲂��F�Ƃ��ē����ɂ���Ƃ����w��ɂȂ�܂��B'})
   call add(l:link, {'word': 'dx=',		'menu': '�s�N�Z���P��	�d�ˍ��킹�A���邢�̓R�s�[�����̍��[ x ���W�� (�Ώۂ̃��C�����̍��W��)�w�肵�܂��B'})
   call add(l:link, {'word': 'dy=',		'menu': '�s�N�Z���P��	�d�ˍ��킹�A���邢�̓R�s�[�����̏�[ y ���W�� (�Ώۂ̃��C�����̍��W��)�w�肵�܂��B'})
   call add(l:link, {'word': 'sx=',		'menu': '�s�N�Z���P��	�d�ˍ��킹�A���邢�̓R�s�[���錳�̍��[ x ���W�� (�ǉ����ēǂݍ��މ摜���̍��W��)�w�肵�܂��B'})
   call add(l:link, {'word': 'sy=',		'menu': '�s�N�Z���P��	�d�ˍ��킹�A���邢�̓R�s�[���錳�̏�[ y ���W�� (�ǉ����ēǂݍ��މ摜���̍��W��)�w�肵�܂��B'})
   call add(l:list, {'word': 'sw=',		'menu': '�d�ˍ��킹�A���邢�̓R�s�[���镝�� �w�肵�܂��B'})
   call add(l:list, {'word': 'sh=',		'menu': '�d�ˍ��킹�A���邢�̓R�s�[���鍂���� �w�肵�܂��B'})
   call add(l:list, {'word': 'mode=',		'menu': 'sx sy sw sh �̊e�����Ŏw�肵����`�̈�� �d�ˍ��킹�邩�A���邢�� �P���ɃR�s�[���邩�A���邢�͉��Z���s�������w�肵�܂��B'})
   call add(l:list, {'word': 'opacity=',		'menu': 'mode ������ "pile" ���w�肵���ꍇ�̏d�ˍ��킹�̕s�����x�A���邢�� "add" "sub" "mul" "dodge" "darken" "lighten" "screen" �� �����ꂩ���w�肵���ꍇ�̉��Z�̋��x���w�肵�܂��B'})
  elseif search('\[playbgm\>[^]]*\%#\|^@playbgm\>','bcn',line('.'))
   call add(l:list, {'word': 'storage=',		'menu': '(�K)���t���� BGM �t�@�C�������w�肵�܂��B'})
   call add(l:list, {'word': 'start=',		'menu': '���[�v�`���[�i�Ŏw�肵�����x���� BGM �̍Đ��J�n�ʒu���w�肵�܂��B'})
   call add(l:list, {'word': 'loop=',		'menu': 'BGM �����[�v���邩���w�肵�܂��B'})
  elseif search('\[playse\>[^]]*\%#\|^@playse\>','bcn',line('.'))
   call add(l:list, {'word': 'buf=',		'menu': '���ʉ����Đ�����o�b�t�@���w�肵�܂��B��̃o�b�t�@�ł� �����ɂ͈�̌��ʉ���炷���Ƃ��ł��܂��B'})
   call add(l:list, {'word': 'storage=',		'menu': '(�K)���t������ʉ��t�@�C�������w�肵�܂��B'})
   call add(l:list, {'word': 'start=',		'menu': '���[�v�`���[�i�Ŏw�肵�����x���� SE �̍Đ��J�n�ʒu���w�肵�܂��B'})
   call add(l:list, {'word': 'loop=',		'menu': '���ʉ����J��Ԃ��Đ����邩�ǂ������w�肵�܂��B'})
  elseif search('\[playvideo\>[^]]*\%#\|^@playvideo\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
   call add(l:list, {'word': 'storage=',		'menu': '�Đ�����t�@�C�������w�肵�܂��B'})
  elseif search('\[position\>[^]]*\%#\|^@position\>','bcn',line('.'))
   call add(l:list, {'word': 'layer=',		'menu': '�ΏۂƂ��郁�b�Z�[�W���C�����w�肵�܂��B'})
   call add(l:list, {'word': 'page=',		'menu': '�ΏۂƂ���y�[�W���w�肵�܂��B'})
   call add(l:list, {'word': 'left=',		'menu': '���b�Z�[�W���C���̍��[�ʒu���w�肵�܂��B'})
   call add(l:list, {'word': 'top=',		'menu': '���b�Z�[�W���C���̏�[�ʒu���w�肵�܂��B'})
   call add(l:list, {'word': 'width=',		'menu': '���b�Z�[�W���C���̕����w�肵�܂��B'})
   call add(l:list, {'word': 'height=',		'menu': '���b�Z�[�W���C���̍������w�肵�܂��B'})
   call add(l:list, {'word': 'frame=',		'menu': '���b�Z�[�W���C���̃t���[���摜�Ƃ��ĕ\��������摜���w�� ���܂��B�g�p���Ȃ��ꍇ�� "" ���w�肵�Ă��������B"" ���w�肷 ��ƁA���b�Z�[�W���C���� color ����� opacity �����Ŏw�肵�� �F�A�Z�x�ŋ�`�ŕ\������܂��B �@�����Ŏw�肵���t�@�C���� (�g���q������) ������ _m ��ǉ� �����t�@�C�����A��������΁A�}�X�N�摜�Ƃ��ēǂݍ��܂�܂��B �}�X�N�摜�͕K�� 256 �F�O���[�X�P�[���ŕۑ����Ă��������B'})
   call add(l:list, {'word': 'framekey=',		'menu': 'frame �����Ŏw�肵���t���[���摜�́A�ǂ̐F�𔲂��F�� ���邩���w�肵�܂��B�ȗ�����Ɣ����F�͖����ɂȂ�܂��B �@key=0xRRGGBB �Ƃ����`���� 16 �i���Ŕ����F���w�肷�� �ƁARR(��) GG(��) BB(��)�œh��ꂽ�����𔲂��F�Ƃ��ē����ɂ��܂��B ���Ƃ��΁Akey=0xff00ff �ł� (r,g,b)=(255,0,255) �܂�^�}�[���_�̕� ���𔲂��F�Ƃ��ē����ɂ���Ƃ����w��ɂȂ�܂��B'})
   call add(l:list, {'word': 'color=',		'menu': '���b�Z�[�W���C���̕\���F�� 0xRRGGBB �`���Ŏw�� ���܂��B frame �� "" ���w�肵���Ƃ��ɗL���ł��B'})
   call add(l:list, {'word': 'opacity=',		'menu': '���b�Z�[�W���C���̕s�����x�� 0 �` 255 �̐��l�Ŏw�肵�� ��(�����̕s�����x��A���C�����̂̕s�����x�ł͂���܂���)�B0 �Ŋ��S �ɓ����ł��Bframe �� "" ���w�肵���Ƃ��ɗL���ł��B'})
   call add(l:link, {'word': 'marginl=',		'menu': '���]�� ( pixel �P�� )	���b�Z�[�W���C���̍��]�����w�肵�܂��B'})
   call add(l:link, {'word': 'margint=',		'menu': '��]�� ( pixel �P�� )	���b�Z�[�W���C���̏�]�����w�肵�܂��B'})
   call add(l:link, {'word': 'marginr=',		'menu': '�E�]�� ( pixel �P�� )	���b�Z�[�W���C���̉E�]�����w�肵�܂��B'})
   call add(l:link, {'word': 'marginb=',		'menu': '���]�� ( pixel �P�� )	���b�Z�[�W���C���̉��]�����w�肵�܂��B'})
   call add(l:list, {'word': 'vertical=',		'menu': '���b�Z�[�W���C�����c�����Ƀ��[�h�ɂ���ɂ� "true" ���w�肵�܂��B �������ɂ���ɂ� "false" ���w�肵�Ă��������B'})
   call add(l:list, {'word': 'draggable=',		'menu': 'true �ɐݒ肷��ƁAmarginl, margint, marginr, marginb �Ŏw�肵�� �}�[�W���̕����ł��A�t���[���摜�̕s�����x�� 64 �ȏ�̉ӏ����A�}�E�X�� �h���b�O���邱�Ƃɂ�胁�b�Z�[�W���C�������[�U���ړ��ł���悤�ɂȂ�܂��B'})
   call add(l:list, {'word': 'visible=',		'menu': 'true �ɐݒ肷��ƁA���b�Z�[�W���C������(�\�����)�ɂȂ�܂��B'})
  elseif search('\[preparevideo\>[^]]*\%#\|^@preparevideo\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
  elseif search('\[ptext\>[^]]*\%#\|^@ptext\>','bcn',line('.'))
   call add(l:list, {'word': 'layer=',		'menu': '(�K)������`�悷�郌�C�����w�肵�܂��B'})
   call add(l:list, {'word': 'page=',		'menu': '�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂��B �ȗ�����ƕ\�y�[�W�ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'x=',		'menu': '(�K)������`�悷�鉡�ʒu�� pixel �P�ʂŎw�肵�܂��B'})
   call add(l:list, {'word': 'y=',		'menu': '(�K)������`�悷��c�ʒu�� pixel �P�ʂŎw�肵�܂��B'})
   call add(l:list, {'word': 'text=',		'menu': '(�K)�`�悷�镶������w�肵�܂��B'})
   call add(l:list, {'word': 'vertical=',		'menu': '�c�������ǂ������w�肵�܂��Btrue ���w�肷��Əc�����ɂȂ�܂��B'})
   call add(l:list, {'word': 'angle=',		'menu': '�����`��̊p�x���w�肵�܂��B�p�x�� 10 �{�̒l ( 0 �` 3600 ) �Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'size=',		'menu': '�����T�C�Y�� pixel �P�ʂŎw�肵�܂��B'})
   call add(l:list, {'word': 'face=',		'menu': '�t�H���g�����w�肵�܂��B'})
   call add(l:list, {'word': 'color=',		'menu': '�����F�� 0xRRGGBB �`���Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'italic=',		'menu': '�������Α̂ɂ��邩�ǂ������w�肵�܂��Btrue ���w�肷��ƎΑ̂ɂȂ�� ���B'})
   call add(l:list, {'word': 'shadow=',		'menu': '�����ɉe�����邩���w�肵�܂��Btrue ���w�肷��Ɖe�����܂��B'})
   call add(l:list, {'word': 'edge=',		'menu': '������ܕ��� ( ����蕶�� ) �ɂ��邩���w�肵�܂��Btrue ���w�肷��Ƒܕ����ɂȂ�܂��B'})
   call add(l:list, {'word': 'edgecolor=',		'menu': '�����̑܂̐F�� 0xRRGGBB �`���Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'shadowcolor=',		'menu': '�e�̐F�� 0xRRGGBB �`���Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'bold=',		'menu': '�����𑾕����ɂ��邩���w�肵�܂��B true ���w�肷��Ƒ������ɂȂ�܂��B'})
  elseif search('\[quake\>[^]]*\%#\|^@quake\>','bcn',line('.'))
   call add(l:list, {'word': 'time=',		'menu': '(�K)�����Ŏw�肵����������\������̂Ɠ��������̎��ԁA��ʂ�h�炵�܂��B'})
   call add(l:list, {'word': 'timemode=',		'menu': 'time �����̒P�ʂ��w�肵�܂��B'})
   call add(l:list, {'word': 'hmax=',		'menu': '�h��̉������ւ̍ő�U�����w�肵�܂��B�ȗ������ 10 ���w�肳�ꂽ�ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'vmax=',		'menu': '�h��̏c�����ւ̍ő�U�����w�肵�܂��B�ȗ������ 10 ���w�肳�ꂽ�ƌ��Ȃ���܂��B'})
  elseif search('\[r\>[^]]*\%#\|^@r\>','bcn',line('.'))
   call add(l:link, {'word': 'eol=',		'menu': 'true	Config.tjs �� ignoreCR �� false �̏ꍇ�AKAG �͉��s�̍ۂ� r �^�O�𐶐����܂����A���́u���s�̍ۂɐ�������� r �^�O�v�̏ꍇ�� ���̑���������A�l�� true �ɂȂ��Ă��܂��B�V�i���I���ɏ����ꂽ [r] �^�O�̏ꍇ�͂��̑����͂���܂���B'})
  elseif search('\[rclick\>[^]]*\%#\|^@rclick\>','bcn',line('.'))
   call add(l:list, {'word': 'call=',		'menu': 'true ��ݒ肷��ƁA�E�N���b�N�� storage �� target �����Ŏw�肵�� �T�u���[�`�����Ăяo���悤�ɂȂ�܂��Bjump �����Ƃ��̑����̗����� false �� �w�肷��ƁA�ʏ�� �u���b�Z�[�W�������v�̓���ɂȂ�܂��B'})
   call add(l:list, {'word': 'jump=',		'menu': 'true ��ݒ肷��ƁA�E�N���b�N�� storage �� target �����Ŏw�肵�� �ꏊ�ɃW�����v����悤�ɂȂ�܂��Bcall �����Ƃ��̑����̗����� false �� �w�肷��ƁA�ʏ�́u���b�Z�[�W�������v�̓���ɂȂ�܂��B'})
   call add(l:list, {'word': 'target=',		'menu': 'call ������ jump ������ true ��ݒ肵���ꍇ�A���̌Ăяo����/�W�����v��̃��x�����w�肵�܂��B'})
   call add(l:list, {'word': 'storage=',		'menu': 'call ������ jump ������ true ��ݒ肵���ꍇ�A���̌Ăяo����/�W�����v��̃t�@�C�����w�肵�܂��B'})
   call add(l:list, {'word': 'enabled=',		'menu': 'true ��ݒ肷��ƁA�E�N���b�N�ɂ�胁�b�Z�[�W���C�����B���ꂽ��A �w��̃��[�`�����Ăяo���ꂽ��A�w��ꏊ�ɃW�����v�����肵�܂��B'})
   call add(l:list, {'word': 'name=',		'menu': '�V�X�e�����j���[���́u���b�Z�[�W�������v�̃��j���[���ږ����w�肵�܂��B'})
  elseif search('\[resumevideo\>[^]]*\%#\|^@resumevideo\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
  elseif search('\[return\>[^]]*\%#\|^@return\>','bcn',line('.'))
   call add(l:list, {'word': 'storage=',		'menu': '�߂��̃V�i���I�t�@�C�����w�肵�܂��Bstorage �������ȗ����āA target ����������������Ă���ƁA���݂̃V�i���I�t�@�C�����ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'target=',		'menu': '�߂��̃��x�����w�肵�܂��B'})
   call add(l:list, {'word': 'countpage=',		'menu': '�Ăяo�����ɖ߂�Ƃ��ɁA���� return �^�O�̂��� �ꏊ�̃��x�����u�ǂ񂾁v�Ƃ݂Ȃ����ǂ������w�肵�܂��B'})
  elseif search('\[rewindvideo\>[^]]*\%#\|^@rewindvideo\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
  elseif search('\[ruby\>[^]]*\%#\|^@ruby\>','bcn',line('.'))
   call add(l:link, {'word': 'text=',		'menu': '���r�Ƃ��ĕ\������镶��	���r�Ƃ��ĕ\�������镶�����w�肵�܂��B'})
  elseif search('\[save\>[^]]*\%#\|^@save\>','bcn',line('.'))
   call add(l:list, {'word': 'place=',		'menu': '�x�̔ԍ����w�肵�܂��B�ȗ������ 0 ���w�肳�ꂽ�ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'ask=',		'menu': 'true ���w�肷��ƁA�x��ۑ����邩�ǂ����̊m�F�����܂��Bfalse �� �w�肷��ƞx��ۑ����邩�ǂ����̊m�F�͂���܂���B���̑������ȗ� ����� false ���w�肵���Ƃ݂Ȃ���܂��B'})
  elseif search('\[seopt\>[^]]*\%#\|^@seopt\>','bcn',line('.'))
   call add(l:list, {'word': 'buf=',		'menu': '�ݒ��ύX����o�b�t�@���w�肵�܂��B'})
   call add(l:list, {'word': 'volume=',		'menu': '���ʉ��̉��ʂ� % �Ŏw�肵�܂��B������Ԃ� KAG �ł� 100 % �ł��B�ȗ�����Ή��ʂ͕ύX����܂���B'})
   call add(l:list, {'word': 'gvolume=',		'menu': '���ʉ��̑�批�ʂ� % �Ŏw�肵�܂��B������Ԃ� KAG �ł� 100 % �ł��B�ȗ�����Ή��ʂ͕ύX����܂���B'})
   call add(l:list, {'word': 'pan=',		'menu': '�p�� (���E�̉����ʒu) ���w�肵�܂��B'})
  elseif search('\[setbgmlabel\>[^]]*\%#\|^@setbgmlabel\>','bcn',line('.'))
   call add(l:list, {'word': 'name=',		'menu': '(�K)BGM ���̃��[�v�`���[�i�Ŏw�肵�����x�������w�肵�܂��B'})
   call add(l:list, {'word': 'storage=',		'menu': '���x���ʉߎ��̑J�ڐ�V�i���I�t�@�C�������w�肵�܂��B'})
   call add(l:list, {'word': 'target=',		'menu': '���x���ʉߎ��̑J�ڐ惉�x�������w�肵�܂��B'})
   call add(l:list, {'word': 'exp=',		'menu': '���x���ʉߎ��Ɏ��s����� TJS �����w�肵�܂��B�ȗ������ ���͎��s����܂���Bstorage �� target ���w�肳��Ă����ꍇ�A���̎� �����s����Ă���W�����v��Ɉړ����܂��B'})
  elseif search('\[setbgmstop\>[^]]*\%#\|^@setbgmstop\>','bcn',line('.'))
   call add(l:list, {'word': 'storage=',		'menu': 'BGM��~���̑J�ڐ�V�i���I�t�@�C�������w�肵�܂��B'})
   call add(l:list, {'word': 'target=',		'menu': 'BGM��~���̑J�ڐ惉�x�������w�肵�܂��B'})
   call add(l:list, {'word': 'exp=',		'menu': 'BGM��~���Ɏ��s����� TJS �����w�肵�܂��B�ȗ������ ���͎��s����܂���Bstorage �� target ���w�肳��Ă����ꍇ�A���̎� �����s����Ă���W�����v��Ɉړ����܂��B'})
  elseif search('\[startanchor\>[^]]*\%#\|^@startanchor\>','bcn',line('.'))
   call add(l:list, {'word': 'enabled=',		'menu': '"true" ���w�肷�邩���̑������ȗ�����ƁA���̃^�O�̂��� �����O�̃Z�[�u�\�ȃ��x�����u�ŏ��ɖ߂�v�̖߂��ł���� ����A�u�ŏ��ɖ߂�v�̋@�\���L���ɂȂ�܂��B'})
  elseif search('\[stopse\>[^]]*\%#\|^@stopse\>','bcn',line('.'))
   call add(l:list, {'word': 'buf=',		'menu': '���ʉ����~����o�b�t�@���w�肵�܂��B'})
  elseif search('\[stopvideo\>[^]]*\%#\|^@stopvideo\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
  elseif search('\[store\>[^]]*\%#\|^@store\>','bcn',line('.'))
   call add(l:list, {'word': 'enabled=',		'menu': '(�K)�x�@�\��L���ɂ���ꍇ�� true �A�����ɂ���ꍇ�� false ���w�� ���܂��Bfalse ���w�肷��ƞx�ɂ��Z�[�u�E���[�h���ł��Ȃ� �Ȃ�܂��B'})
  elseif search('\[style\>[^]]*\%#\|^@style\>','bcn',line('.'))
   call add(l:list, {'word': 'align=',		'menu': '�s�̕����������w�肵�܂��B'})
   call add(l:list, {'word': 'linespacing=',		'menu': '�s�Ԃ� pixel �P�ʂŎw�肵�܂��B��s�S�̂̕��́A���̑����Ŏw �肵���l�� linesize ������ �w�肵���l�𑫂����l�ɂȂ�܂��B'})
   call add(l:list, {'word': 'pitch=',		'menu': '���Ԃ̃I�t�Z�b�g�� pixel �P�ʂŎw�肵�܂��B �@0 ���w�肷��ƁA���̕����̃f�t�H���g�̎��Ԃŕ\������܂��B���̐��A���� ���� -1 ���w�肷��ƁA���̕����̃f�t�H���g�̎��� -1 �̃s�N�Z�������A���� ���l�߂ĕ\������܂��B���̐���\������Ǝ��Ԃ������邱�Ƃ��o���܂��B'})
   call add(l:list, {'word': 'linesize=',		'menu': '�s�̕����w�肵�܂��B'})
   call add(l:list, {'word': 'autoreturn=',		'menu': '�������s�E�������y�[�W���s�킹�邩�ǂ������w�肵�܂��B'})
  elseif search('\[tempload\>[^]]*\%#\|^@tempload\>','bcn',line('.'))
   call add(l:list, {'word': 'place=',		'menu': '�x�̔ԍ����w�肵�܂��B�ȗ������ 0 ���w�肳�ꂽ�ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'se=',		'menu': '�ǂݍ��ނƂ��ɁA���ʉ��̏����ǂݍ��ނ����w�肵�܂��B'})
   call add(l:list, {'word': 'bgm=',		'menu': '�ǂݍ��ނƂ��ɁABGM �̏����ǂݍ��ނ����w�肵�܂��B'})
   call add(l:list, {'word': 'backlay=',		'menu': '�ǂݍ��ނƂ��ɁA�O�i���C���̏��͓ǂݍ��܂��ɁA���� �w�i���C���ɂ͑O�i���C���̏���ǂݍ��ނ��ǂ������w�肵�܂��B'})
  elseif search('\[tempsave\>[^]]*\%#\|^@tempsave\>','bcn',line('.'))
   call add(l:list, {'word': 'place=',		'menu': '�x�̔ԍ����w�肵�܂��B�ȗ������ 0 ���w�肳�ꂽ�ƌ��Ȃ���܂��B'})
  elseif search('\[timeout\>[^]]*\%#\|^@timeout\>','bcn',line('.'))
   call add(l:list, {'word': 'time=',		'menu': '(�K)�^�C���A�E�g�܂ł̎��Ԃ� ms �Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'storage=',		'menu': '�W�����v��̃V�i���I�t�@�C�����w�肵�܂��B�ȗ�����ƁA���� �̃V�i���I�t�@�C�����ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'target=',		'menu': '�W�����v��̃��x�����w�肵�܂��B'})
   call add(l:list, {'word': 'exp=',		'menu': '�^�C���A�E�g���Ɏ��s����� TJS �����w�肵�܂��B�ȗ������ ���͎��s����܂���Bstorage �� target ���w�肳��Ă����ꍇ�A���̎� �����s����Ă���W�����v��Ɉړ����܂��B'})
   call add(l:list, {'word': 'se=',		'menu': '�^�C���A�E�g���ɍĐ�������ʉ����w�肵�܂��B�w�肵�Ȃ���� ���ʉ��͍Đ�����܂���B'})
   call add(l:list, {'word': 'sebuf=',		'menu': 'clickse �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂��B �ȗ������ 0 �ł���ƌ��Ȃ���܂��B'})
  elseif search('\[title\>[^]]*\%#\|^@title\>','bcn',line('.'))
   call add(l:list, {'word': 'name=',		'menu': '(�K)�\���������^�C�g�����w�肵�Ă��������B'})
  elseif search('\[trace\>[^]]*\%#\|^@trace\>','bcn',line('.'))
   call add(l:list, {'word': 'exp=',		'menu': '(�K)�]������ TJS �����w�肵�܂��B'})
  elseif search('\[trans\>[^]]*\%#\|^@trans\>','bcn',line('.'))
   call add(l:list, {'word': 'layer=',		'menu': '�ΏۂƂȂ郌�C�����w�肵�܂��B'})
   call add(l:list, {'word': 'children=',		'menu': '�g�����W�V�����̑ΏۂɎq���C�����܂߂邩�ǂ����� �w�肵�܂��Btrue ���w�肷��Ǝq���C�����܂߂܂��B false ���w�肷��Ǝq���C���͊܂܂�܂���B'})
   call add(l:list, {'word': 'time=',		'menu': '(�K)�g�����W�V�������s���Ă��鎞�Ԃ𐔒l�Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'method=',		'menu': '�g�����W�V�����̃^�C�v���w�肵�܂��B'})
   call add(l:list, {'word': 'rule=',		'menu': '���j�o�[�T���g�����W�V�����ɗp���郋�[���摜���w�肵�܂��B'})
   call add(l:list, {'word': 'vague=',		'menu': '���j�o�[�T���g�����W�V�����ɓK�p���� �����܂� �̈�l���w�肵�܂��B'})
   call add(l:list, {'word': 'from=',		'menu': '�X�N���[���g�����W�V�����ɂ����āA���y�[�W�̉摜���ǂ� �������猻��Ă��邩���w�肵�܂��B"left" = ���A"top"= ��A "right" = �E�A"bottom" = ��'})
   call add(l:list, {'word': 'stay=',		'menu': '�X�N���[���g�����V�W�����ɂ����āA�\�y�[�W�̉摜�� ���̏�ɂƂǂ܂����܂܁A���y�[�W�̉摜���O������ �X�N���[�����Ă��邩 ( "stayfore" )�A'})
  elseif search('\[video\>[^]]*\%#\|^@video\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
   call add(l:list, {'word': 'visible=',		'menu': '�r�f�I/SWF �̕\���̈��\�����邩 ( true �̏ꍇ )�A��\���ɂ��� �� ( false �̏ꍇ ) ���w�肵�܂��B ��\���ł��r�f�I/SWF�͍Đ��ł��܂� ( ���R�\������܂��� )�B'})
   call add(l:list, {'word': 'left=',		'menu': '�\���̈�̍��[�ʒu���w�肵�܂��B'})
   call add(l:list, {'word': 'top=',		'menu': '�\���̈�̏�[�ʒu���w�肵�܂��B'})
   call add(l:list, {'word': 'width=',		'menu': '�\���̈�̕����w�肵�܂��B���o�[�W�����ł̓��C���`�惂�[�h�ł͎w��͖�������܂��B'})
   call add(l:list, {'word': 'height=',		'menu': '�\���̈�̍������w�肵�܂��B���o�[�W�����ł̓��C���`�惂�[�h�ł͎w��͖�������܂��B'})
   call add(l:list, {'word': 'loop=',		'menu': '���[�v���s�������ꍇ�� true ���w�肵�܂��B'})
   call add(l:list, {'word': 'position=',		'menu': '�w�肵�����Ԃ܂Ńr�f�I�̍Đ��ʒu���ړ��������ꍇ�Ɏw�肵�܂��B'})
   call add(l:list, {'word': 'frame=',		'menu': '�w�肵���ʒu�܂Ńr�f�I�̍Đ��ʒu���ړ��������ꍇ�Ɏw�肵�܂��B'})
   call add(l:list, {'word': 'mode=',		'menu': '���[�r�[�̕`�惂�[�h���w�肵�܂��B'})
   call add(l:list, {'word': 'playrate=',		'menu': '���f�B�A�̍Đ����x��ݒ肵�܂��B'})
   call add(l:list, {'word': 'volume=',		'menu': '���ʂ� % �Ŏw�肵�܂��B �@100 ������ł��B���ʂ̗}���݂̂��T�|�[�g���܂�(������ �����̓�����A�ł��܂���)�B'})
   call add(l:list, {'word': 'pan=',		'menu': '�p�� (���E�̉����ʒu) ���w�肵�܂��B'})
   call add(l:list, {'word': 'audiostreamnum=',		'menu': '�w�肵�������X�g���[���ԍ���L���ɂ��܂��B'})
  elseif search('\[videoevent\>[^]]*\%#\|^@videoevent\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
   call add(l:list, {'word': 'frame=',		'menu': '(�K)�s���I�h�C�x���g�𔭐�������t���[���ԍ����w�肵�܂��B'})
  elseif search('\[videolayer\>[^]]*\%#\|^@videolayer\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
   call add(l:list, {'word': 'channel=',		'menu': '(�K)���C���`�惂�[�h�ł́A�����ɓ�̃`�����l���Ńr�f�I���Đ��ł��܂��B'})
   call add(l:list, {'word': 'page=',		'menu': '(�K)�\�y�[�W("fore")���A���y�[�W("back")�����w�肵�܂��B'})
   call add(l:list, {'word': 'layer=',		'menu': '(�K)�\�����������C���ԍ����w�肵�܂��B'})
  elseif search('\[videosegloop\>[^]]*\%#\|^@videosegloop\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
   call add(l:list, {'word': 'start=',		'menu': '(�K)���[�v�̎n�_���w�肵�܂��B'})
   call add(l:list, {'word': 'end=',		'menu': '(�K)���[�v�̏I�_���w�肵�܂��B'})
  elseif search('\[wa\>[^]]*\%#\|^@wa\>','bcn',line('.'))
   call add(l:list, {'word': 'layer=',		'menu': '(�K)�A�j���[�V�����̒�~��҂��郌�C�����w�肵�܂��B'})
   call add(l:list, {'word': 'page=',		'menu': '�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂��B �ȗ�����ƕ\�y�[�W�ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'seg=',		'menu': '(�K)���̑����Ŏw�肵���Z�O�����g�ԍ��̃A�j���[�V�����̒�~��҂��܂��B'})
  elseif search('\[wait\>[^]]*\%#\|^@wait\>','bcn',line('.'))
   call add(l:list, {'word': 'time=',		'menu': '(�K)�E�F�C�g���~���b�Ŏw�肵�܂��B'})
   call add(l:list, {'word': 'mode=',		'menu': '�E�F�C�g�̕������w�肵�܂��B'})
   call add(l:list, {'word': 'canskip=',		'menu': '���̃E�F�C�g���A�}�E�X�̃N���b�N��L�[�{�[�h�ŃX�L�b�v�ł��邩�� �w�肵�܂��Bfalse ���w�肷��ƁA�}�E�X�̃N���b�N��L�[�{�[�h �ł́A���̃E�F�C�g���X�L�b�v�ł��܂���B'})
  elseif search('\[waittrig\>[^]]*\%#\|^@waittrig\>','bcn',line('.'))
   call add(l:list, {'word': 'name=',		'menu': '(�K)�҂g���K�����w�肵�܂��B �@kag �I�u�W�F�N�g ( MainWindow �N���X ) �� trigger ���\�b�h �ň����ɓ����̃g���K�����w�肷�邱�Ƃɂ��A �g���K�𔭓����A�҂���Ԃ��������邱�Ƃ��ł��܂��B'})
   call add(l:list, {'word': 'canskip=',		'menu': 'true ���w�肷��ƁA�N���b�N�ɂ��A�҂�����X�L�b�v���邱�Ƃ��ł��܂��B'})
   call add(l:list, {'word': 'onskip=',		'menu': '�N���b�N�ɂ��X�L�b�v���ꂽ�Ƃ��Ɏ��s���� TJS�� ���w�肵�܂��B'})
  elseif search('\[wb\>[^]]*\%#\|^@wb\>','bcn',line('.'))
   call add(l:list, {'word': 'canskip=',		'menu': 'true ���w�肷��ƃN���b�N�Ńt�F�[�h�̏I���҂����X�L�b�v�ł��܂��B'})
  elseif search('\[wc\>[^]]*\%#\|^@wc\>','bcn',line('.'))
   call add(l:list, {'word': 'time=',		'menu': '(�K)�����Ŏw�肵����������\������̂Ɠ��������̎��Ԃ�҂��܂��B �ꕶ���ɕK�v�Ȏ��Ԃ� delay �^�O�Ŏw�肵�܂��B'})
  elseif search('\[wf\>[^]]*\%#\|^@wf\>','bcn',line('.'))
   call add(l:list, {'word': 'buf=',		'menu': '�t�F�[�h�̏I����҂o�b�t�@���w�肵�܂��B'})
   call add(l:list, {'word': 'canskip=',		'menu': 'true ���w�肷��ƃN���b�N�Ńt�F�[�h�I���҂����X�L�b�v�ł��܂��B'})
  elseif search('\[wheel\>[^]]*\%#\|^@wheel\>','bcn',line('.'))
   call add(l:list, {'word': 'storage=',		'menu': '�W�����v��̃V�i���I�t�@�C�����w�肵�܂��B�ȗ�����ƁA���� �̃V�i���I�t�@�C�����ł���ƌ��Ȃ���܂��B'})
   call add(l:list, {'word': 'target=',		'menu': '�W�����v��̃��x�����w�肵�܂��B'})
   call add(l:list, {'word': 'func=',		'menu': '�z�C�[�����Ɏ��s����郁�\�b�h�����w�肵�܂��Bfunc(shift, delta, x, y) �̌`�ŌĂяo����܂��B �ȗ�����ΌĂяo���͎��s����܂���Bstorage �� target ���w�肳��Ă����ꍇ�A���̃��\�b�h�Ăяo���� �����s����Ă���W�����v��Ɉړ����܂��B'})
   call add(l:list, {'word': 'exp=',		'menu': '�z�C�[�����Ɏ��s����� TJS �����w�肵�܂��B�ȗ������ ���͎��s����܂���Bstorage �� target ���w�肳��Ă����ꍇ�A���̎� �����s����Ă���W�����v��Ɉړ����܂��B'})
   call add(l:list, {'word': 'se=',		'menu': '�z�C�[�����ɍĐ�������ʉ����w�肵�܂��B�w�肵�Ȃ���� ���ʉ��͍Đ�����܂���B'})
   call add(l:list, {'word': 'sebuf=',		'menu': 'clickse �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂��B �ȗ������ 0 �ł���ƌ��Ȃ���܂��B'})
  elseif search('\[wl\>[^]]*\%#\|^@wl\>','bcn',line('.'))
   call add(l:list, {'word': 'canskip=',		'menu': 'true ���w�肷��ƃN���b�N�� BGM �Đ��̏I���҂����X�L�b�v�ł��܂��B'})
  elseif search('\[wm\>[^]]*\%#\|^@wm\>','bcn',line('.'))
   call add(l:list, {'word': 'canskip=',		'menu': 'true ���w�肷��ƃN���b�N�Ŏ����ړ��̏I���҂����X�L�b�v�ł��܂��B'})
  elseif search('\[wp\>[^]]*\%#\|^@wp\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
   call add(l:list, {'word': 'for=',		'menu': '�҂C�x���g�̎�ނ��w�肵�܂��B'})
  elseif search('\[wq\>[^]]*\%#\|^@wq\>','bcn',line('.'))
   call add(l:list, {'word': 'canskip=',		'menu': 'true ���w�肷��ƃN���b�N�Ńg�����W�V�����̏I���҂����X�L�b�v�ł��܂��B'})
  elseif search('\[ws\>[^]]*\%#\|^@ws\>','bcn',line('.'))
   call add(l:list, {'word': 'buf=',		'menu': '�Đ��I����҂o�b�t�@���w�肵�܂��B'})
   call add(l:list, {'word': 'canskip=',		'menu': '���ʉ��Đ����}�E�X�̃N���b�N�ŃX�L�b�v�ł��邩�� �w�肵�܂��B'})
  elseif search('\[wt\>[^]]*\%#\|^@wt\>','bcn',line('.'))
   call add(l:list, {'word': 'canskip=',		'menu': 'true ���w�肷��ƃN���b�N�Ńg�����W�V�����̏I���҂����X�L�b�v�ł��܂��B'})
  elseif search('\[wv\>[^]]*\%#\|^@wv\>','bcn',line('.'))
   call add(l:link, {'word': 'slot=',		'menu': '���[�r�[�I�u�W�F�N�g�ԍ�(0�`)	���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂��B'})
   call add(l:list, {'word': 'canskip=',		'menu': '�r�f�I�Đ����}�E�X�̃N���b�N�ŃX�L�b�v�ł��邩�� �w�肵�܂��B'})
  elseif search('\[xchgbgm\>[^]]*\%#\|^@xchgbgm\>','bcn',line('.'))
   call add(l:list, {'word': 'storage=',		'menu': '(�K)���ɍĐ����� BGM �t�@�C�����܂��� CD �g���b�N���w�肵�܂��B'})
   call add(l:list, {'word': 'loop=',		'menu': 'BGM �����[�v���邩���w�肵�܂��B'})
   call add(l:list, {'word': 'time=',		'menu': '(�K)�w�肵�����ԂŌ��݂̋Ȃ̃t�F�[�h�A�E�g���s��ꂽ��A�������Ԃ� �w�肵���Ȃ̃t�F�[�h�C�����s���܂��B'})
   call add(l:list, {'word': 'overlap=',		'menu': 'overlap �Ɏ��Ԃ�ݒ肷��ƁA���̎��ԕ��A�t�F�[�h�A�E�g�ƃt�F�[�h �C���̎��Ԃ��d�Ȃ�܂��B�ȗ������ 0 �ł���ƌ��Ȃ���܂��B �N���X�t�F�[�h���s���Ƃ��Ɏw�肵�܂��B'})
   call add(l:list, {'word': 'volume=',		'menu': '���̋Ȃ̃t�F�[�h��ɓ��B������ BGM �̉��ʂ� % �Ŏw�肵�܂��B'})
  endif "}}}
  return neocomplcache#keyword_filter(l:list, a:cur_keyword_str)
endfunction "}}}

function! neocomplcache#sources#kirikiri_complete#define()
  return s:source
endfunction




" vim: ts=2 sw=2 sts=2 foldmethod=marker

#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY
��� �����������������������������������~�5�J(P�Cw�x�{��=���7w���}����=}�V�W��^}�K!&����mm�m�ݾ��D&�h�m	�O5�<�Ҟ�����4OF���G�mOT�#���Rz����e?&�ꟕ?#T���~Jo&��LLh�=T��?LzF�4cI���P���h4�e2=)�=Oz�i�M4e<J~44ѵj0��L	�cT�0���
zh��12=&&#ja b�I�M6T��2� ���=)�B�SH&H�i�cH�&�3)��Lda2�@�� S�$x�z���mOS�L#�H4�i��)�)��"<Sjzi���ȍ�y&��ئ��L&�jj�����cP�M�����鄞�15~�?RyF�4�z#��Tɧ��Q�P�OP�� m&C�4=@�j3P4��44�L�50� �hL��1L�d�ڣ	�Fɨhb#M��A�mF�2m@F�z�=@i�h��ɡ����h� ���A�$ș Ѡ&M0��F��h�	��5=���M4��OSh�jlI�CM56���S���y4�M����F��h���z���4h�I�D3=MO)�d	V�͡e��~��%�u��Ӊ�4OT�;E�?!an���7d�f ��T�4�wC��qNđa���`w�U�GK|A�8�2PÅK�Jr�CUx)os	�Қ`�ȍpƐ��)������,���N�:�7L���N��$Ͷ")׹+�!0�m8���L���)��O��Hn0�ץ3�(��M!O�Y4D�1'�V�Q1ȈU�ڊU�&�Ɂ��R5a&�&+R^�
i7M�{�YTp�e�,���I�Ҭ�T�bmR��>`�?d!'d�=7��rBD�%��bb��=:�¦��<�
�8�"�ZĀ�5��G
��[����u�s�l|�Y1E*�pJv^m����"
�:W2��0  $em*7�G)�|�@��IB�lr*�1��H|�bg�Z�?Á�g�#��r�%��G:Ξ3о�&#�<��-����_�U���cE��f�s�_�i`�!���KQG�Y��^^Qy�}�T������ ѥZ`Jn�-�8��C��h]4d	�OG���4Q��ݧ_��]+��uﷁ��j繰@l�&X�K[��V���֖D����Yǚ�N�����g�b ���A @�@�H�@� ��� �D�{�w�\l��g/��3����DFdf�1��$GF���d9��pH#�@e� :GfD��ʹ���Fx�`� !T:B��a�i�F*$D@K,� %4�E}�!˭�P�rvJ4`�fc!HuH��P���X�r�\���p\-!D<��z>"�(NjA��'��"H��`�"I��DV�sͯ�o�w�جc�h9Z�k��8�H$$ !�"�$BD)$��J'�`@�X
�Љ�ib����V8R�~���ݮo%��\��k�f�;Ù,�dY�������A�®=��&1�ݠP�@7�A#�Bc]ƛ��t�=���hZ����k`�I\(�z�HG}R�{E�>����&t �d� N1z(�Ю]��ױ �DH� 8$&- z;�5B~Ѭ+�?��hx�g��G��Ĉ���	%��"�3a)i�^S[��\-R|���ԾD����I�q{+%��G�b�/F�]����V��{鲓����&�Ĩ�`�����8B�7܆E�ݙ��*L9�^����3��_g�w���"*$�TM:#� #��1�Q�ώ���P�1�q>����U����.r, �J�D�3ڜ���n�u�a������|C�t�5%�v>���xS�E� 	��"�x�auЏ�s�4�8�$�'�@w���` �C���?;�C�����Î�V��l�g�����Q��)u�+)vM1�I,ˢi�]_�����*O�6��[��*��?"{�%�s�i@���`�A�}�	'�Z�@8�v��A�~��t�w?:ñ�R�ň"o�ݳ�`�:;w��jml�r�>���VR3R��aP��Fg�+i�?��3� �$�)�s��6��4,�1�hѳ����*��%�|H/����(f�7�-�85b����f�9\��G})��!�*88��U_ೣ��f�󥚓d�ʗɥ���:�$P �a	 @����<`�,��l`,T�A�9�\��1���o<�s�9�6��3x���������K6���Y��'�0������ԛ���~+0�B�c8���)�e�w������~Z��yz�}/%����P��x$���Is�a�!(\Du��P�e����m�@�����H �����n�Ն�E, @�b�5��k��@�֟��L�?��`7q5��Zj��Q��yq�f�*R���9�@�}C�!W��s+w(ABO Dk�E����*�ۺe�L!ڡ��T�9��Z8lR���=8����!KK�B��Q%�Dg�0l� ����q�1KZk��3�l���Ca*-��i���&��"��$񲿭��<�n�E3�1�p����c���P���� �0� ��o].�q<e�>�|���8pA4���;v�����<�{K��h��/��e�v���`1��:
L�a�bs}����~3�L�����
)v�O	��
�K�ʈ�m�C)a�	��2��x�?�nR��&��VI/�>mv��6�I�[� q���4Z&�����sz��^�&�O%�6n]	r̦�����fP��Lh�=Т c@�V>�m_+1�� </�p���l8�N�T�3ex�ʰLs���-�� K��`">dq���T�lI������Y��)xs� �_v��j\EWǩ6��%���O��g�=P�g���"�O?�O:����#iߌA�`=��]���0*Y���i� �&Fa�6��e������+�N��`�
'���d�Y�`|���I �2qyP��1m�<����N�ۂڗm�=�����+��q�L�]�#ۏj ���?n-ͭb�6l��o��TMҸ�Q�&���u�P���9G���mK��)����|�nG�
�~W�p��ܹ��՝W�I�xƦu?����;g�W���Ѭ(<B��_�w�`E����ܶYCu�^�-�)�3�K��H3�����'b�w�� �x�	�FY� 54Ā��";�B�ZįbH�C�y�yE�O�-����__����[Kg������#˖gם��&�-�O�U����m+��_�m�T�|Jm"���O��-ՕV=����i9_L)b/�--�׿�F�16]��ھ�V�n�{�W6 ��S��Q�,g$u����q�zK��'C�����9eO��2p�Fb���i���S`��[J�A���`&�^�q��$�7ug�a[-�ϧ�?�F��6��>�o�G�9��Z�SBhOx5�ĺ��!-b�����)�!MĐg�7��[R�1`	�ݷ�����K� V��%�4+�J��D�{5iq
�ਲ�fHМ<��ߕ%J�Ǻ��~d�ir=�Na�o#�ܜ��tI�|�[�����Fz��O�zI-��s����V6nf��{�f��|�;�k��Y+8�̥����Kwh&�z�	q�D�D� �29܆�4^=zv�z�2��q��d��9�@���Ϻp�g�e��R�y#�la�F�ܜ�f��#D�A�9�ocE6r�L�0���N~1�S�x���a���s�'�*�Q��I��W౷�-ƾ�v�@��'��Wb�AN�ߚ��~�v�&ħ��Q�ٚ���ۖvqB�����_����&�  C�M^nL"���oS��'� �Sz	B�Wԧ�j���w��x9b�V�:�0A!$$�}���#�' Uˀ�!�R���n��-[�����ZKګ�^p� G�fx(�6�m��������h���a���9��q]��gXYA�h�ь��f�����
\T��7H�M�I��0BT|'��|T($���#�q�RA]��&jx�!mʕ���E���� ���+0��S�����v^Vb�HM!}��̝z#��!����ONT�NbDʆ�(t���u..��DV�ȍ��+uw�� uČ�����1��meO�+��=NK�2}�q�U;��؁�Jl�����p���{��,ᢂ"����݁1I���d������T�r'?
�)6�����;/+��Y�3�rM�B�C���Ao�����p�A�cv��Y���۞f��'AW�˭}1S�u�4�1��r��,�$�1���ϣ�d]�È����8�o3h�[9��7��]�`��]��w����5FZN5#(�k=붭?tyezj\�LRԦa���H�K��7�;\����%���x�� c����n��g�H-�l�Аb��n�_p��XZ�[`������v�W�>��L��q��*�(Ta>J���etw:����ޣ��z��e�m�䟕j�ͥ������ob
���j2]r/�RAo���>�l�������g+>Q��
氣 ߿z
ʨ�z�¡���b����W�����n�P�̪bŁ ��}� �?Z>����/�5.�?�j}��N�\��]]��Y���F(�
Z)������R��6�������]��py�F�X�d�`�. 2T?�gx�q�!nP�@ï��1#PʥB�}kD���Z���h�;ޱ(9��I������=(��Q�t3�SJ����aF�.��U�NԁsB��'Uo5u���<�
ˑw�j�h5� �ؾΪ�!�2�X�2D��3.�t��c�k������F���_���H��c����������
��R��f*F�� -"��Q����	�(F5��a��#m^�p�9>���T���:󒟷z���RT#�02)�=���,d�$�L�L������'��y�@ٙ0��j���50��k+�F���w����Xn���h3�֩7G��'�;����Htp�A��na�H�$c
8���)!YX����(y3�]�~MJ���d�^C�"�h]�+�l0�6׋Y��13�m>�n 瘟D�^���e�T0d�Y��6k+=p�Sp2v#c����ނjA!�o��һ=��~J����Y>ѵ�e8'��xs��M����Oq.�D�~վF���)Oo�sX_����?��an�	�ǋ��l>��� >�������ž���}o5k]�3�]�9;�AY{'�X!!�9��C��Mq�^�:,|�h��x�i��͵����0ZOJ��
�6��
sc4�TB	�� `�@$���&��{�e0RS�ABF�L�1�Z!y�#�J8�FB��H�.� b��s�y���6�V����%k"�f��N&��Ō��g	ӣY���T,�ʌ�R�]�sYIb���r��=[:�]�#Rѓ��Iq��ǈ�7(
+��'[�^��y�����Z��)Π�F«�&�U_�r,����s�?䎈pc� ��('� �'��:��D�.4��[�❇A���e!�ϋ�g���qغTr�������)}�n2�k��pxh.���cj��Nl���;E�n�6��]OI���ʁ�u7��8�1b簭��K V ^�ݵ�,��3�6��4�=��0��r:�#�l��'"d�X��o�r�ï���ϵ,�;��i�>e�M�NY��&D�		`ͷ�g �^+[	e�4�w�*3*�:��r&絸�߯����
CB�>�����cOϻ��ʠs'�����F���9q*�2(I�a�f(���}$���78�S/o�tR��@<�����w/K}�����H���83k]s��v��4�ۻ�e�0Q��1�e�3,�6L⡂�gm���H@Ji��l�p�S�o�j�M�yw�_������re�|=�˥���X\�]Ddɶ`A�q!��R͙� @# h��D��>�<	�#H�=���}V���Ro��/Søڗ�s*P71�M�Ʃ�K��E`BщN�:΍dA뜹�#����B@0�T|�R�\A�9�L�+�ޓh��ocf�_yO��s$��H#����� �NLC���Iֵ��r���$+�x�QM���
:�����m^��.�Ea�nWq�f�c��u�V5�Xe�c�[C���a�H�@���qyjL�
WP�Hj�#�[�/����E���퍺ɿk���t/��W��U�]��N�I���k+�g鷞��������2n*~7p����}�,�0��)V���Z)�n�`IP@1����|'���(��p�9����R��g�j�PJ+)�@6����Z��yX&�H3���� 5�c��Ԙ�O�j6j�X�d���?���r�?��ô��ޥ�>���EcbF�����{�v�$Ϧ�,~E�g'�;{�\y
|Χ��'n�|�"H�������5�������d��a3����*
�"�g�6>�/#���ɐ}���)Kn��ɸ4��LӨv���n�)'��z&�b͜��0�UϮ�o{�"�ʀ���{��-t��1���1�ᨙ��P�!�����(����u�${�k\�g?��%AJ,�7��2Wm����3����߈@%C��M/S�Kb��7��j?��R V�d#H�����r����摋�謕
�%�
�？û���%�竘XX-yP��FΖS�(��������V��^c��_0w�6Sp4��x��㩘�x<�Wb��+U���;��
U����(��Bx��yP�oQ��I$p��= ��⯥�������V2�����c%��<�]o���Mh?�D��S��Q�My��57������d�J����d�Zg$�j������}j%��������r�w� $�4lks �n�%�jxH�ڙ��[zw��B{Il2�`�t��E���ۣ8���| "��_���kr���%3
�Q�0��3hz{����u��������_�P �m��ꃞ����-�R�19�^uf׼�N�U��E��A:���%[�Р�%��+r����r����ɇ�ڝSt� �EY�'y��	��{��P�KҖi����77�Lz����G�W��P�ϱ}.�7�/��`�	����B��"Oޒ����K��,H�T�El�!�Y_�0D����� �����Z�p��/�D���;��Ā�Q��t������W�Z���� �7��w彬�҈�ɁD�m(W�y��^d�m�"֊�0��v׳_ݯ�r�R�Q%�r�K�0ȣBL'��&Dv�����x�$��|���~��*H:#\)V?y����@Ӑ�ٹ�>>Yc���xRBT���)c����_פ�{�nn3�,���d�1�3��%��ʢ����۞n>f��e������H^��Z��WQ�/����g"��a�6�p��t�����<_F��q���Jô2`D��hv�Á�ezˍ�z; OsX�ĭ�q��󭧮6���Od��(��\�H�FĽ�k�)/��su���M��N�9���/t!γKST��JW��/�1Y��oy�;<��6>��U3��\���lu]im��G}�|�8$�K$HA���)�;x�<�*yaS,����b����ɹ���3����zfj7;����XN���r�A�f �*�P���p����C�rq\r���?|W�a��̧�����k��̀I2�!B��wx��-��̩���|<��e�Vdk���>6��	�iovC�`���뀔�@� ��+'{�XE�h��حs�p���|�F:�w7�V����R��g���h�7o�Y��]��^�#��!����|�i4�& t'@��(����
[���c�%3y�����.��y4k	�������[Hk%~���6���ri������_ط��)���)a���f��x�!>�8�o|B�Y�	�k�E
��71�"4��H��Cgb�$���	%,���L�WJf���= jl����C����Z��ǅf��'}���v~�W�����j����!�'�a���Qf=�Y�o����q~�����N����2&R�Jv"U��Mh{$���~>W	NK�S6+q�1q��u�S��v�#�R^��ٳ��,����Fu��ϛZe磡��*�V���(q9�����[�3��_�mN�Y��G�۲��nUL��s9�$�¬��� q٠ J �;�`Ĉ�|lG!{t5�q� �h�$��1��6\�RE�����{�Ε!+�B��Q �?q6�=!#(%`)f����φ7�JMRFr��iBc&H c"7�kާ) �DFE,�YF�Re�6��� X�Q!]z�o
��,�J�H�"D������bu�Z�' �h�P��rE8P�
���
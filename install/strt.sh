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
BZh91AY&SY.ʠ� �����������������������������������|Ν�����ݟy}���>��z��>�_w��"k;3y��u�����FM'�ɲ�O�����)�14���Rm2��L"z'��byC&�l�� 4�xL�����<eLmS�z�M�b1����S��A���2i�S4	������T��Q�44�ژ5<�LHɩ�h��L���&�����hLh�i�M�='���L�CH�&�i��#A���44�O@5!�i�{4�z��'���I���~��zGꞦ@���Q�z��4z���� �����=F�@�A�i ���G��Ҟ�OF��1Fhh&�i�m!��24z��SC 4ѐ 22i�4�i��hh h��@24��R��D����z��dh4ɡ��4�@��ѡ�@d�M�L��Cjh@�@bi��4h3P1A��d4� M4�H�F�M #FM4hMOѣBz)�S���P�S�#P<�G��I��M4~�������()�������OP�zL��OPhzF�@z�1��)L,�NWӍ��̷N� -7�l��	%��d�D�d�����UE�;~0V�¹d-x�Y������1/���%�ʙ+�
��L�"5�H�\4��WI�Ʊks�s�"إ0":&�kK��7�$���r��	��	�mx��+Ԑ���5�mqPd�)��*)��ͪ�-Ub�x#
���� ��~S`�Bkm�N b�Ć��	*�K�=��)G��R�:G� �Fbi��s��,��⹵�u5��NK���	���R}kQ�|rO�b�mnx�j���_�E�#�@�RO��8�m.��&��z�2�
%�Њ��H&�e��G��>������w��;N�%`^��Hoi��穿(�Q�Fo8F�j����Q~8��H�D��R�+j�5��8~1`��{���� �DD�ߍ��Z����D���F�1l�j UM�S�5k���5<�I�[���4�)�B$ ��@"0(�{TTp~+�`�X5X���M��M$�Rx�Rm�'6���3��Y��*�8j|ο�����}�V�o�8���5���-�cZ�*#�*�HRk)U<%�ƉWJ��^���� &@И؂�	Ɓn�C T�[���IJ@uK�U��7�nn%)6�sQ�i�]��I�J&Ԇƴm��ЧP������
E���LY��I�������U�&�Q�HAS�_��H%��:�RR�i����m
�PJ�]xZ�0��9%�}�R�Utmb�M�T�q_|U����&��6�26P1"�rH.��@]�����<�m����B�{x$�дF:�$�HHm�
��E&������;�w�Q�a�g{!���F������q���.=�;��//������K!�'�+��+2��ct�+q�-68��r[M��@�M$�_wW��]��'R1�=��W�N�l�ξw�T��ٗc�<���n�`@�GJľ�[֎���@I������,ޖ�Di�+�l�H�&�4h̜b��oB�#1�*:},7����-���Zp�L�\�g����Z�3�"y��E�!�ah�R��lEEviV�x�3���
�/����.��'Kb�����_���lk!.ݤ��bEf��_hĳ�nX���԰�4p��i�i6��X����ќ>˳�)S*P�mr������ͬ��D�c@�IqZF�����[Fx��4�6�/Bз�`L~61g����LZ���х�Nֹ!q�VG�p��h�qe̛l�ԡXS��F�HL��vUr�VKQ�njjY*P�Н-)૥h�c\66�qs�n:�e�}����4��c�eh�!Bg��q=(���J�U�]�K�գ8�n�+��4��Mr�s M c\�˄)چ!�C6z�V���Os�/sy7M���P�\7wf�1�N�'��䦵[�u9�a�[�^0�m}�^]�����9�εg������}v`�	d��@�5xNi�kv��Z?Ob	D�a����r�#>�݈e����Bv0K��d㒱u���y��i�r]��WY���	%�A�i"9�(8��!-3���2�OZ��8��@��WdACH5z0Ͼ6ﱲ�����T�ڻ;K�vyK����nj�\b-�1��&0���`Š�����m�&��A��}/�#yQ�ɬ�&K&��8�o4Zk�n�,P >t���n&���!7��@j�f�����'dF�hq4�p��,������	]NU�ʘ����6��h��++KQ,����>k��4���Fc������G�
�L���]�B�Aّ���tT�����S������hkV��F_Լ���ȭ�ſ�3���Y������m��	%z���14|��-�[�ڻF��Y"�U��f�CF��\�TǬX�Y�x�cX)��˯\�;Ew��*�u��Wֲ��]I���{U9^�_񂩨���B�e{�SH�fĔ��Biq�4ᶀ��R��P�F���|���$���{{n߸qp��Q�9W2- F�"ޅ����\Fӎ�`�K����Q�kY!J_a�'7��=/��[�V�yk��3S�ā��y�crX����I���;m�(���`�"b�.�N,(6�N��֗�(��NvHI�H5����Ke�3���O͉��o�`]�~қl��6CD���!�`�Xu����g:�rM7����/kSzR	n�A���]����o�5MԒ�އ��d=�3�{����=�����s����t���,��΄4�h�9��T­ֶ��,�a
]�}�?ZzJ�ǅ�͢X��h6��F��~=͹���!�䟂=Ng�M0�`W�2���m��5x�ǫ{�ɮ;3�\��Z� `h2Zs&���7﹩�I������Gj�3	v\t1����d�����wh-���8X����@U&�Ks-�
���l�	��T3�ݍ�����>�L6��׽gg�G��f��ĭ��k����X@pΥ<����&e������Tϯ�����pͪ���L�q[�������]$����z�x j6.2B �9��N__A37� T���vM��C��Ae/E�����W��9h)�*?��Ǆ��i���z��1��U�7��\[���aP�U�z�^�X���x+�Rƍ#�PCE1�X��91.��>j&H6X��k��L'�;@����*5~��)�1W�N?�����. !2줃��D�U\��a�vz{����\�SU^�iVE�
��k�g9Y�'-���Af�}�)�V��r�)�����T��c"���ԅY�8�K8���x��.��5���Y�jPP֛�����8����(q����݉�xбT�1����� ��wa(^��|\&�C*����b����d�d$������Z��n�ٹ&�<�pǊo �ԴM�z{��ʥ<�w�:4ΥngM9K�����^�_L
MuV�@gx~*����!H��,;7�9�-V�S���Q25�b�,�0Ӆ����Ai}�Xft�}~������zݿ�I1����<��A����`��i��i�i}��{���5ă��4W0��;���b0 �"T�B�:pl�Gp��-��[�7�/OQi�]�O|�!ǎH�ppv����)b[J?�R��vr��X����8���7}�GMkib��WP����r�j������~��M�;x%�F�	�W�t��C@'��d"�k|�m�V�zB�hKW��r8H�aUN"��4$�C�e�I��Pb�C�U�=S�$LOŞ�����T
�;Pe����� c@���P4R��]��1���ʣ,��yZ�3��n�����+���ޛ;<n+lk���s�ȴq���X�ղ�3��� 7�Ln%|�5�
jD�p�]|�a7��$bv����=��:궶PU�zݼ�T���L/e�Tʴ��n�SXZ�gE|�T��f�
��<�c���Eţ.-�
T 9|m���;�l�s�]�/��Ix�K ��@,5��s�
���5O����ҽ�:v��[
DGF�x�,X!b�j��]�S%�Z�N�n�����[ 8��ÙL �!^eX�Ra����{�w�&���\v;9
�b�Hr��B�a~nӜ�_���vg8h�_��7���7�.�\^�$�� �qn��aD���5"$���P����I�Y�\S�)���ׇ�O:s ���!.�WL�6�V�����"�XQ�)�(*D�P1�i]z'[��N�����0j�n��h�ك޴�:�Z��M�N��>��5Uh;l�N 4��VY��lBY��Ib`�q����rP�=ރ=��}!xں>"��z�
��E(\�jD��Q 6T�y2;n�=>h�k���U���-H�i=��dL�l�>���X�ɂ�aY�I��!+V/��L�a����w0������"#U-}�+���4��W
�44[���ePA�b_
�m ���Z�C�n���ٛk^��魹v�lK)4�@����hK��m��޺�.���qv{O�C��b��IF�a���9�����uw+vQ�����{���B#A��e����[2��Tz55~7}�σXω�Ō+e�t��;���F-�s��2�0c��OəP�� 6���%Ѻf�br�k]ߜ�5EO4��}�+%��y��T�f8vP\�wEP��1�������)�zۜ~�{���9��C�	G.gO�H�����k�����w��`��Fz<F���ȓ?<����/n�����c-����\�q5q{��.?~�cr٥V���"v� �6�èd�{�o�U�g����&���/׺I��<Bg1�����U8�F�]R��8��mcѶ�9ܴ�3�%��i�,��Ρ�/V��]�d(𜼉��ۭ�^5���+�������vu�a�f�# � Cj��l5��ъ�x�z)�-�<��T�r�.��9�(I�g?)S��/,O'X*�a�U�F c0�~��U�v�'��ø� `A.1�^ ѕ�#9U" u��{t(ê����Nj�Ri� PR��l��RM���AӢrUVJC�L�ڴ;V��ܸ�bb���O�S���^�Z��Q�ѣ��u5)��"��"�D�C�R9� jPLH	�7^.b�l�����>�s�D�Z�f��w�sЪ�~� dO�M�['� /j�1�c> p͖ڷ.Y����F s�[�����c/��3���xJ]�x��'ޚ�����uט�Ug�Yr.<^��Q|0��CM�B �;>FS���UH������gcٞ��sǜUc�<6V���y�Yk�[X��Te�^�����>=�%�r�f��h+��k�oa10��X�P;tX19�([ь�A�KdZ̉P�D@�� �w�1c�^^����T}S%��	��h�8<uC�s�����ku�u��(wN.�������r�� ��W>Nk���5D��=��=TG[S4^ɴ��Z��1�HӀ�q	�V%�0;�|�X�A�������cN�Y?�au�x^˟�3Cg#���<�OF�����`J���Hb0A�&����ps�������K�mdaT��{wD�w�/+�N��X�>]6k��G��<b%�5Z������K��#Z�l#V1~�� ��B5�z��F~��YŧV'0��?r���~>����BߌB��M�3�R��^ʹ��&�ר�>�M�M���j���|��mt����^��h��)^�2��wo��%�0P�� r�lhG����"�6�η�����խ�ìYs���y��u	|2��&$���A�aӽO��vHʵp�&��>�qw?�L�r�yC�j.�Dj+�p�.F�@hm�8!��z�9�D�,�^�$ns ����@B���z��j
���Ŷk�d)��69kM^�=i��f�e�d�(P��g���ըV� Vӵ!���"�(HePz�
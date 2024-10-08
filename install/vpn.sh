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
BZh91AY&SY�� �����������������������������������!>䪔��>���lG{��q���+{����qL��Oz����Y����}Ӿ�o�6��=���֣�Q�.�n�g����6ۛ��M�ެ��x�hS��4���z�i��FM��bb0L	�OL4�#LF&L�dɴ���'�I�`j`�	���Jx`(U4&��zT��4�&FMS�ɓj0&F�!�4����S�	�	�6�50& 4Q�5<!�h`�1��42d�zaP��F@aMS��1��bdh�)�cF�zcJ~&�4�ѦLMO�1&����?T�M2h�T��zT�?G�yO(�)��<��T�����6#Se4z�)�6�a)����&�4f���d��Sɴd�i)��i����FS�4�m##L5M�F������O	�����d��0&�M��jyS�Bl���T�Q�2���zi���b��MO�M==(�3�<SMM�2m'��z����=&�i�b4���ڍCA�A�=M1�ɦ�SA�5D���?R<��i��M �i�m	��I&�	�'��� hCLh&L�=#$�M���0LS�bz�5F&�4�Sɣ���zI�L��4��M�����&�G��joT��/]I�����~��C'� x�)�� J�ڠ������n��Y�ܮ��@i]�D���̻�"*%��H��?�,ϐ �DÖ3��0��%�V�d���(��Vh=��iQ0j�F�8�*�劉>��>Jk+���ӌ���<��+�;a�0�py�ii`K�����
�&��!Mp�%l*	h2�J0���SZ@���h��r1+I`�q�ȈXx��n��'��Q&g��c+�Xj�l%����5�*�q8���v��,[��Q
ڜ�U�:���l1�z>Z6�Vw2s��?]%J�boY?K5��F�P]P�"2���lȉ�
����^�}�����[���`�t��֍��]�;-^���+  B�N�����>� bpM��r��X�1��n� Yv$��O��]�|9����}�!��3��@�m�Z�/_����j�]�����k�k�j��-��0� �߮c;x��@��1��צd�h��V�~�?lۈ�b�Ʌ"&���|��T�Sob�a,�ֽ̇�~DMoG�l���S e�b�vZ�:j�wa��`���<9I9�4��	�^�͈i�QA"��&�� �D�|�E�P� �D���́�E5D4B"3#5� �D�$k� \S Y͍E� ���D�B�ꌬx�4� ����C�`� !�ݓQ����Na	R� ��I���!�hI &0�̅3�@k`)�� �!��?�U�2�Y��D�.}MK�ek�|>�y��]�D�	q L(h�,��v��j�Z1�,s�S"-膗�g  ��$�@� ����C�Gg�$��H3�aN� D@Q���2@Y����!�t�s�b��w?����U�����Lg�+"��^j5���rl�M��o8I�G��@"� �$�"E'�F�KD�Jƽ� ��ݒ���W0����m���g0
��ޗ�]���&�"zK-ta��5b"Ԧ�
;�uHl0�4& (� >�f��* ����l�)��[B��=��x>8i0)(D^�|FK���e%n�Q-[ʥ�)~,��8S	�d����:����q�l�ZDK���B���i	}C�\W��L��&W���ڳ�7�#�ָ��Fs�2<ǅ�v����M�:^���r`��"�-˕��M�g2���	�C^� ��H�@Z�P�'"x�?�� 8�:� �~� �U�k湘n�j�#\�	� g=��
�{�?���kJ%�d<ej��mXB0C���X��|B������vB�֢xP�G9 ځ��b��"}+#~+���`�r�d{C ��[�>��l�ZE�� {�?40k��q6l ��0 TD!᭱�� y�:�=�8f�
L[���SdO2'vm6��V����R��?Uw�/�]���ꝯʹ����R���v�W��{��5�~F�l��HK��z��q��ދ�^uT���ZO�ӻ�ݜ5�,o��Q.���6��d�E	�M���Dx[�Gw��S�N��Ɯͧ��=wu�<.Ƴav�~VK����*!=@���X�'�]�=�A�;�]*7߭�(�-~�lb��� )�y1U��bj[4�J�V�θ����E� ��tOx���`I�9�j�������\ IYr�iV�G��̓Ș7�~��v�_=b�J)���D���@̍~�mbKw��	�80ե��1	�2mK�˃S�n$�/J��w����)7t܍���F��	�+;Vb|
i<T���N��t,*�Ջf/Jpͳ��#��x�Q'�����j�:��[��~�G��6������5�T����`2�0� JUq����� ��h�84!{�8+v�U�^~	�r!6���;�x��   �$0c�2�b,�I:�*��~�����NH�O���	�q,	�7A� u�ćl��9�����Ȯ��V�Kf����M�g�h"���j]K�YPI>��CA�0�@�Q-,w�uPɮ�5��,���U}���ZCf���2ܠ�[��(�0�9¶XCDJ�2��_mr|�m���z����p=HSWyh����suk4�4 /R�#چl���@��Lz�VL��y?��YH��
Y)�'��4��_ቌ`F/|L��F7Ur{�(����v5�Y�����K�px��#�"�7�E�k��7EM���yR���e8��c�� k.�=m��l�r�ųߪ҄�r�Ǟ�
M����c��� �K:G�#o��0t�.�<Ӂ�
�{έiw��	08 �
�XI�*��/�4�}.F��!|яp�N!��K��]|�Zi.�u�#�.�q¥G��zݤ��������h��0���!�Ƴ�(·��><#���3m=��� t���E8�r[�:_'�e�"����9�<�Y4��ZHH�j�Y�
�61��<�I!��s��&5d1{m��
#LZ�Ũ>%O����߳i�y!�9��G��~��<�.�q�975#d�,��������h�g>e���I��|Q����H:;��r�B�ҹC�VV�-c��Q� �ҮT6�.�ȹX[��o�N�� X'����~���mr�3�<�O��||f�t{Z��tSk�΋Y{�o������2�&"��A3�4�K�� ��	��S��X�Bᝦ]ۛ��܀R�.b���� ���� 3مm�Ⲗ@ 0MH��3�Y���� ��Z�)���͹9#+̵�3���	��%�^��p�2����Q��~��?����$��H�?*�u���,����J?4��Z�g�����Q�>�Z�I(Y�VZ
#�=�@�B�Ō���aC�pk��N�K�i��?���Nn�zŏ�ry��?1��D���Ca�M/�L�'�5 �?��8;��(��V�*���i4�E<v-����lO����Y�&+)��ڢ�1�/!���~.J�L~�!ԏ�G'8P���Jr_��XA��¼���٬��g_7�A�|�jO��×��n����)`�e���I|�t#���9�K����H��-��J����7
~~E0�7[��1��hV�"9�m5d^��3��ԓ{�}h�K�i�������������(��"��5������E��p-2�7��u�7�4�׼S�7o�.l�5\���i��jۜ���Q/=!J!�Z/e�P���l~w����L��%KGu!��*VKL[SS�Q-���T�&���&]��e>���/��@�<�y�]L����jG�Ȟ�>��#�P2wyWE:��,����h�\_�ҹ�n$g�R�+�0z�R�޹�<-[�/C�f,�{Z�&
Hf^c�F�cV�9�>!S�}�'�ђ�z~IXl��1��/��d[,���%��6�oN��ut����22��� è15�r�9��	�Z�Rh,��@��&#W�N�[�\56�r~=F	�h��e��H��I��%C}��I�i �f*���P�R8�����!����s����
܀Y��o�;�3ʗ]sBM��H�$���/�T�ȍ"��g�e�&e-a�B`X�G�k�,�M��q��@��s�{un��Ot����zb:t2��?Q�"��@uW��Vw��T1=R
(��C���k��&.Z+JN���{�j��㲦���gtn���|%�r@X��VԦ�)�hUh�0��X��զ� 8`t ���*�[�T���w-��l0�3NR�����y�!�/5(@h�E^�*)'��,R��&)�sE*�NEo�/ܤ(�c4Ez��*���� �_����o�nn@�.��wF&*�=�Ժ$�c��ӱ�S���׬���H�>^o����G�v�.���>�!b�;��`����C������B->q�����!�� ��fr�f/8�÷�1���׺>�{%J�B"�i/�?&;�l��rX������X@C>�}�� ��ui�<іiK�.)҇�u�tT��z���8eP�(�?TF_�S�X�Ų5>�X����CJ9��G�`��l'�q���B��� ~��S�4��b�f��Qs2sᾼ�B8���qLO/G@��P{���������7`A��3e,�>���gJi�ڰ?�1[v�4
�#��TNG�fi������t��y�d����:���}�O��[�J>�[7� H7�;6��n�M���7OҚ�>�ZV� ��K���y+�]��_�X��ҟp m�F��,2s@7�^�k9�x���L���  џ��P~�+6��=UE�HCMO`�n$_5�0b��4��s��ru����-�z���[N��#o�O�yx�s.�fG0W6%�A���8Z%�����p��C����%��X��7��Q��iyy���b��!�:�?�KaU���U,�儴��y�5nΟFn�<	׶AQ���EGrQ�Fp��k�u���ܗMQ���w�<�.�ӥHP� 	�_o��d�<;Y�vK�"��;/��G̏�=�C��rՆ��I�&m1_<<��P�J��t@�'��W��������A;W1IEsC�WIr̖��\C�� ��JH2�z�0�U�>�g�򱟴W�^;���Db̃��l�l�k#�{"ߒ6�5��`�)@L�Nr��aA�+�U�M�zy`@GͶ� ��ԑ,&������v�Ɏ�/NB>��p��~R���;{�?�����<~�!k:
T��Q�5\��1��^Ѣ0`:�!G�S�l��I�Y�1������r��BVՌt�r���uzvI���
�/�%��ļ�rt�nQ�
ܭ���i�����\��
�R�: !�)/�9=�)#��gWM���w�EH���������m' ��2��:|��7�<l��Y�J��O������+�Zi��a�WH�=藗�%Q�N��Z��O>:�V�/Y��%��M(�QmԮ[;m�R)gP������Ă� �	1]�!]�Kϐ�a��������\��i|i�h�3�%�D4�:�i��ZO��-�QP��S��t?�62
��n�ք�ŏ��£f�]?����FSUN�L �������l�����tɱ���������6��<�����lq�s�Ԭ�=0ДpT��#T�,�Mrq��hʉ�aC	�Q���� \�����9
�Ж�95�d�f�wC�7�\49�P
}J3�ײ���O��.��Qn���	$��OI�s��,kF�l�F?h�[�RU�%��������y	��@� �V�%"�X��;�܆Ԋ�? >3�n�?eC�:�û�����j�_D2���M�̼��7;��[��7禙irV�K3:qPg(\+ۆ�U�󢫪M�e�א��L��G%��c�Vx&C�u�[]�1�۷�^蔣��ɄB�A�	?�,��z���a�q�	4�v��1n�Б���<�G�Eq�/f	j�iڸKf�j�c���~�͕H�faъ��P�?���}���v3��4̵HSҊk�Z{<6� kw�����p�Ā 0BU�h�B�)`%�t&x�k��(ɴ��Kʔp��Ў�|����؇���~:�!�dxG�&DjH']6�;���+AQ
C2L����痀$���:@�=t@a ���l��<8F�h������Ss�n���(��-~L�}Q�R��|훛��H>�����ld�#��h-ǣ�ZM�(��� ������&e��T	����Aۙwjv�qN���(�XЦ�f����8t���6r�Jp����&�`iF!y�b��Z�ɍl���|�����#y	�	�ʴ���0�I�i?F-�v郕����M��ٲjk�GD�e���Єo�/2��j^�f4w�@���<�@~��w,	ٔ��ix.���^���K�u�~��J 3&�'!�vz����v�a���8`��� ��+n0N4�p[�@��A(թ򗠌�(��O[gS�G�r��eP,p���2Z���ܸ��ܭ(��" '�������������"��-[��z��2C����s��S9}C��G���An��\��N�����w���l���̦���EY�.{���������H�3T�q�k�k�c���J��`?J9|Jˎ����G�6�5��U1g'_�����)h����*���kkDp���`�t��a,hl��]&��Ci�nC��}p�496� �*v8I���Yl̶`Y�H�r'�� ��8bB���P��s��������{O������b�I�\�Z���H0,#x7pM���@�`�pm~��6J�����l���j�v\�x�Cڿ/�j�6���w^6o	�s��؜U��S���X���Mr�]޾���3��o�(�1ʜ�ñۅ�E�X՚�T(�N����2��	쉬@x����#�	G��M�dw<��#܀� ���:�����z���a��D���\�G8�>_��	�~������%�p�O�3���*�j�ڿ����w�'閝�N��j�6\
��m�*3�/y���v�Q
���oK��ɿ��U�R�ɖ�m�񫨹ʐ�N�������=Z�ow���2�w��F�y1�жZ�f@2W�.�����n�1˹-ή����K�)�2��>����il�a�+΃o����s隻J?� 
�F��X�}��=j��k�D��4W�/}+޸��c�]O�-{֌���p��#e�k��
� �4:�rm�����F�Sx�į4����a���5	J�f�섲S�J9,|������λV�fu����딀��LS;���+	�T��B�b�:��O7��=Z�v֨{��-��QB�ج�T���Vu�*��n��+'�{ltfG�e���KLoq�V���&ɕ-݃a֠�����X�%ڪQ]��ܪ�[�W-u����ޤ:\'��N�7�o 7�@"&7�@�{��S���p芵��q�ٷ򟡚��>qz�l�HͲ(_����ݸ}���ɳ��	��㵨�GČ\�10����$����@��[����UQ'Խdf�����F�݁~��=��z۟B�i�9�F��ߣT�y�c��)ߪk��j&����j���oM��fn���J�ׯ:,���, (@Z��O�_�E}��0.H�^ЀWw�a(��b�{+��M��K1q"��8�f�Q��D k>Ǒ좩F���%�,�Z%�\}\���sW��R�+�G`�RB(�89�A���6!�0���Qn�W�k�Q�#4A���v@���wUNU͹|���"�b�yU�6~"
:�����G�Q�ta�?	�
$7��	�0��W�u�n �4K���'�XY}v6cicr�C�SE�������|�p��"k7���FV��y�O�En�H�� e0�!�@V{t��d4�@`�6�mqb�;��T�jY�������T��G�X��U���2v9Ӌ_|�O����h��`?�=��N: j�;*����a�+T,Y̺��S�wV��O;�pmU�)1/�SG�u��U����Y/kq��{��:gF�
 ���ݠe�z�w�����'�L� L#3Y����0��'�#�Y��s����<���m�~Q��w܆D�Ja�殄o.���M�W�N7�$��!�SU9G�^��ܿ�(���ai��1Ʉ� ��0$�m�c���,�8�A��m���a>��L3�~�\ ���p7l�2#�0^/����i���5�;�����D���/)xg�3���Y�U���nr��	U%:�9,\�U��o� ��\�qƁ�����	�f�o�*�}>7��;�=���e�*�|<�=bʱ��Rn�u�*L��Ȳ{�^#�d^�u�2�������o����}C
��%B�?��1@�f�E?��x��A*PU5�_=��Mʵ�����О�r-^�J�%c׮r�|�7�p0��7���x������7K��(�	G�%cTÅE���e�ќq�OF(s�n��/4˜Ej�'�>C���6��x��rD�T+��Pv�X.��:��Iܴ����އ	^6�5�x�&*������������eQqf@eܞԷ��C~tq�v�F�>�?F���opO@��,�8`�Sɢ}�H}�9�d�m��c+�gB"�bNY^��`TKP��� ��M��o��|�K: ��q��J&��0?1LȾ	�e+i[�|X^��=iW����d���T~��F=.T�Vi���=3C���Y�1��N�4����M}ɪk�FϓuBJO}%Ƙ�t�c�M��h�Qܢ~20ݨ�X	���wl�)d!��j���L���!�����	��<����dx����c5�`����9�p�~�	X_ꓞ��Јc��v��g\����p��`���,W�u��A�QC��_�l�'1�Z>��sU9Ҝ��Ҿ�l�*�I#"�v��=f+��x��/�<('�[^]Z�4�W;�nAj��_���Wto@T�fM��ǥ@Y9�V��b���}_v�B��J'k�q�+�����[��Ml���Aâ�o������߾L�p]������Yȫ��	�^E�.w?���_��#lt�O�uC*K"7;�����*>������V;�9��;�y�ul�U��H�3���]=骾q��p+�p���{����ݹb>�mP��wn�2tNpx��.��i�6k��u���#�[����~Q}M�.�ھ������LAh ����	��6O����;84����7��6%�e=S�
��I>#rF�eG͡Uk?,5�R��D�e�������\�7�#�-T����ޭ�܁���$��Ή��b�oG}q�����0�����(�NA���]�8u2���B�x�W��H�[������ a�D 9+T��
@gD.�g~�~ři��.0Dp�)�c��~O�4U���5�lޢU튛�����3����вi��́@6�A�AFS�CRO��:$��SƉ�&meD���S"�����C^c��y�L����2�%�����ȕ�e����/��Iݞ� �>���ΎFq�<�^!�nmoѺ�ȥ�ݹ|!�r�l=|TRZsX�\��fڜX�*E�7:k���X5h�?��؄�Ud�����S�@P҉���j	�~Z-E�i�-�Ӷ-���#�w  �w��0�,�|1<@n��wWGm����ۃ��ٿ1�=1|�����kh;��%���t6�br�j�sn�]#ν���\\�� ]�զ;�00��ѽ���<�PJ�X7�3�����2���T}k��Y����3T]�(m�i5_��=X��������� v@==�/J���rIH KĖ$��i�"J�UU��>|����	�1�jB� _Ur�R��d,�������wuB�vM~��X`*<ro�/#� #Yg�P���M�guS�X�uFo��6Bt��� �G�/g���Zu��}�ۄ�1�G�?N�٥����Ee�9�q�<X8i��fN���G�w��U����s`=]��Rꀉ�ͅ��U��//���`06(LEXM޲��k߆��	zӽ�k����U鮝˔�ˈ�,�?6�]��齓��[ZZ&Xv?����1+�q�.���_
��2 ��Kݷ�]S�j�������j�:���0UP�cK!�MqWO��U_�{���"�!��)�m.~����)}�0[��\�c���E��i��u!��)F+&�������ԮS}����2"/��x��߾�t����d�]o�g�{�sW~��2.�
*&�
�V>];���gǙ�^��������;I	Qu�WwC����#U�?�����a�@d[/��S;��0��"�>�%ł�$�9�~��3�9�Z���9�70z��|-6>B�� 4�
m����!��[���_\G�����Ee�뾭D��zU#n�Eb���y��r��& >��O�u^;q6��%+o�d/;{��:J~��)]_�$jD��,]�4��bW����n��J'yDS9�V�nu���E[�+$סe�zNkM��v���V�@n\�p��F!Q��i�z�x�m;5��������m���<�&2��L���q��`O,�S����f�︌=�����g{�O�M��-qθ@���1���P�Qt�be�N�Ӥ�w�����kБvp.w������y�=b�ũ|=|F���=�?A�Y]�-<|�}�/}�\r'�r��`�h�D��W���^#�+cg�u�.I�� 7EJ�#s(w�.t���y}i�lq�5C���td�9Khf�eŭ��-�1�`�A�ĭ�CϘ����=0�( ��X���=����T��,,{F��?���8��A�VH:g�C{A+۴Hv��M�b�����_Z����"�-fKz��H��#8p��`���׺Xj���?e~��ƀ�bN����TK���P�*3ެ��Z���(����`�����[/ǸtB͹嚳/�t���������s��G�r�'��R#`hy����>/��d�h��d��?�{��-�i�r��g�Gc[� ��~���
�E����2*���ۧ���s��m۴�\���8VAd����{��u	@��ZʮO6�tb4?��D-K��d�����+��y䬪�v�w����A�
&��k��B��*�|�~ H��ݥw���Ĩf�8���B�m��u�Yl��q{+�tխ�_t�t���Ξ������F����
*zD�M��]���ȡ��>t���wT�$�`a�n��H�",�j�I�u���Wi���XzO��;,:f�(߾{E�.�]�ŝUkGܘ�	�G��^�u�yv�2jX/OMCy�c���,��˶�v'� �Ήѥ�@� �}�xi�1�!T�֡9�FV�y�ۡ�����4j�/��z�-�+��כ�����5��g�E2��Z������0��j�p������*Q��!���,}�.W�"oa���[�����_�"
q����·^�:k@�A
 ��VɎ�����y��B>�y��#�@�^$��Z'�L�V)��.�����W�
��$o��|��X��3DF֚�^�1��'*!�[-Ϲ����{���__��⽟e�1�
冥�"O��b��WU�$r�M�)Iw}����u�6�=SW���2�DS]����=X<�2B _�pu���t���	�{������䥺E�޾��1�S��@H�33X�ߑ(Z�(��Q�%Z�:��Y���ͧ�y���0�r������y8�w�N.O��ؙ��-W5z2���"kI�ΫC��Βrabk�ȗ%�V�.\ذ��ۚ80O
�����i�'��G���
���,����_*Wv`�
�{��#��)�p�Z�r��ԣ{EE��lg:U�|�:�hۃ�(>wl�����!G2Vٯ��rѿk�?�Ϸ�w��`TMJ���*z\����/Rb/;*i�d�h�I)�7"j(�5����f��o|ˑ�mi�e�|S]�=�9s������oKc���ǯ��o|�|>e����]����>^gv�dM��\Yk����k��@_#u��0 ��.o��$��q���zK���"<�Gs��q�#0���C��@kT�R:M�2H��V4)��/�����	��
�=Q�H��H��rnd��#(�`)���>=�R��!�G9� s2ci`�df��{����F@��r9��Oe	�9�U�=���j�5۽ͭ�H�"D�y���ԑ)u-!�Ko��]��BC($
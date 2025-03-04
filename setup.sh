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
BZh91AY&SY���� ��v0�����������r��  �0 `,]`뮻}��{�5{���WKn�e���>���z�q�;�:�=����bO�Yd�꫽W���%��Vew*Qwk�ݡN��lD����uL�ݎv����MTw���uw)[3�;g�V�(� M4e6�LA�S��=2��4�G�O��M=OҞMOj�����S�z� � ���������4�i�� �h�   �!��ɥ=�S��)��I��24�h h  ��ɢ`��eOeG�=M�Ԟ?T�� z�S�� M Q���4�a'���O5=S����ѠM<��M#@h4 2=� ���i�4�h@�z�'�F�G����142M4@2'S��U$?�Y!���Z�R"�(��5���bJ��s�1,_�(�3���t-^��g^����҂���-�b͖\�*��l�AfD9dq���]�ܭDpWT/�@����SO��(�L�Lb�ᖁ]l��l9���7\��M��Wb�Y��ۇnՐ�%;ଌ^\�@�hO�ҫ�L3o?���t���xW�*t¡_S.;�TvX��%��A���{|0��DA�a��'j9���m�5{��|���W��$6�o��**)ޡt��p���!L�"�����g;F�t�C�סl&qC������Uf��:aEZ��7�vy+[�߈�s�s�N�ՃW�L��v����2��#����Y�kk��wytTs*��J]�$��p�n�޳i�.%/�z��-֌�&�J��0	6�RG$?<��q3F�ҫ~���*e��-�Q�����(�[��J�Ց���	Q��s�lV�6X���ƭ�	p��Tr�x�n<'?���)?����qVN;Y�u4�,m�M�չz��X��&Pm<aj��5'���A	��k��#|�sZ�F����ji��V�W��{��D@��O�ݜ{�c�8Qxc|��n]jy���7Z׫��.3L���R�y�Ĳ/ˆ�Ezbk.�|��Q�e_�Hb(Ѯ�:ߜ��a��qoE�
%������>�9;��Y���|�v��� a׼v���F���Rd���l����|v�%Q�!��^#b�k�v�d��L��|ż�[��`
�G2�ehP�l�z�0��լ���E�`��[��	8 �{̇��R؜;���\NFJVbF=��}��X�@=�Vv�O��$f�1�����>���(	���-8�x�z>?��[���4I{b�7̍T@�p�'�X!G�S��&o�e�mܹ���.�k�͆;$9�n��X�b#f�:�����P�D#Nm������a�h��u��>a�R2 �LHoQ�qxk���F7�N+)�Uv@YV�R3�{��աҵ���畺�K���n���U�sŕ|� :�Mgxs:K΋�3$
�;�-��� ������h;Ւ����b ���۞�w�W��9��n<������ьD�**mH��:>�w�dQx��6��P��f��q��(�=�K"�����sռ"u����~�5�]�KB�D$�ٺ��)d��S�]zr�%a��沰�a{$�I������pE}V��As�A-�֪��D�1y�35��m�B�T���bj7�
�����C����eY�����P�����붨 ��:��p�8���7�E��tl� \$�/�˄4�5�b�j�����[I|��g�ew"���s�pֳ�.��C,	m�
	�'}�j�vyGi6<���/q�A#T��DL��_��:;��"^�_�-S�!kñ,q�Sw��J�n���碕Z��#�TO�����{ŌĔ	�����2���Q�vg@�w���-Р��
hTѣ����0�0M�$Co��NŽ��UPB9�!�r��K�916GuS����Wgň�5���&׿���k��? �E�~�"�&��` !S�ZS�b�`vNs��#�J޺T����\�Ӳ��ch1b"��"��z/Nr]��f�_4�@���
�,ЩY'~^����[YcH
��!�/� �b��.�&y[���,�Ru��drα�H�6R�b�Nb��HdxO;v̟wf�0�*ǵ p7.�n�ՠı�DA��)��^���M�X�f��:�=��l��zY.*�F^I,v6� ��TL(����@�jӿ�rY���e	�SC���=�i�r�f/�تq۫�3�K��h�p�|Ȥ[B�r����b}e��8������ϻt�[�*�Η�U��W�G�����O!�&f�䤎8�+�c��Hg���j�2*�]���`�LM��e,�(��j���B��ҡ��:��j�f=�t������t$���וd�O��XV
X~���:\Q5�ۑ���� ��b�T�u襯� w�B�%$��60�:mC���B�}9]�|��:��w�BUPA
g;����rNQ��ٕR��B���B�pQ`�~�cq��]0mj
cG}�
�g)c/�,��P��4��v|؟����/�����c�6�mF���H)H\%�K몐C\���F�Z�y��y�Z2��f���մ�.���t_�7	k�;�@-�"#���8]d:8�~,��x�J��y!ӗ��ɸ��k�q���z(	E�|{�ƺ��)�ku5�ԊOih�	+a6�,�q莙b�ٯ���gTB��2Ϲ��c�����>���W���j>6���Q�:.��S��I	wS7�{\�C��H��͂>����F�����ms�{���&��X�Aɑ�$G�
%�������ld�"H����!�+���m"�~�4s.6���)"HC!��y�`6�6Y�e�r��K�E-Qŀf���#Sݭ(aʏ){��|7�A�"�:����f��@�%8��zU���w3����h�,Av��.ϛ:�&���(jy�U3&����Of� ��C��W>���eF���l1�@�fqqeַ��oq6�U'��k�����!���&�(�+Z�ۗ)ϔ�H҆�_iSxn�h� \�<Y��ԭlKJ�<<��̤l��|��A�28+��P�}P$��4Lp�@v[��1�=�����h��1���>��X����0�@�b�M�3)4�Yۂ�� �i�DP�a@�j�O�0W��NUY��&݁g-4��}Q!D�`]$�U$)PPYR,X(
�=&�6�n��d�n��ظA��~5ɗ׈��l�zi���:��ueF#r��"��@ABӥT����Q	JHt�θ���H�V��QU�F�#���SqX��74�����_:�3���eq�|#�a��c�b��[��B���MC{���{S�l!6 a�ph�g*�Ulx���B҃>�)A��Q��Ѭ�nX�`��R|�j=�͛G|"E�I���*�Q&n!"UX��K���8��{ߙ.�u|Ӳ�;c�tSɁ�9㡫�_>�͚WS&>r��k��@8uaG4.�a���Q'�	��'�:���;}�����o~9���T��:C�愸���f�~���ٯ�hXf���=����q������R+�7	ICA� �+���j�04L�����:Z`�D=�k��@�^��ll��x3��,�H� :����⪨eZ�P�T-S�pF��3-��b$�����pؔ�銗
k�l^������J������#]�D~��������V��u�?���Nh��ވ�[{��y%C'��B�L�"S%E~��g�!?s�~����_���ᮤ ����芈m�S�����Ϲ�X��k�s~�*�U�߬�:��ޟm��Fߖ�����y�L�8[�-͍�?
�~��P��F�GT�q7q�fQT�nh���a��~K��K�\�K'n�- ���z@VE%��$*@�к+`��?� 1Hghf�ݮ�Έx��#���?jd��!�p}�a�"L?]Y`�4M%8�0���j'�C�|f�X7p��"/���W VR$|w���	)5�/�Y�w������n���ŀhl�W`����ǘ ����;\4�|���[�w9h���H�&$"���@u�=���{��G(��af�{��4�Ny ����SNq�~$��:5�Z��B�e�ça;�$Ru�G�"2F��P����W�T�h#;Z�g�S��)e����0GOv��!$y�q�!~8=�ݑhA݂K�"X��g��<�����.C��z+�x�×5d��~5q*�����;ïå�b᠓�Sǲ�
���X}l��Z+��Q��,�z�i\��&��X����6I�%�9��hg"Т:؍��a�O�bg�&�������mBޫ �^^u�(���v�K��Z"�.%��@��/�!��)� ���e s�bup��Q\u�ǔʒ'A��A�h<��>h�4h���,�D�6W֎���D)z�Gx�1B⨔\�,0�������&it���i��f&f̾�m쳘��0����`���Ѕ�S�$	�-��-C�q�Q+X�a֋úB�Y�2)u��M�;��B߉k��u��l�Ơ��O�Qw��R;�0�I'�LfU��gb��$5�����Jp����FvR�W�1��q �H� D�^)�'^�<�B֛	꽘�䩶��[�Z��pu����������z�\����|�*���L>�%Z�u�;�2�O;Wyܭ��'�KG� �EU �&D�Xr�'����s�8�Z�YMċ�zԊA@�i|���>����#$���>��!;ǫ�{�p����{�Nd~>���p\���+|�D9������J�r"O����g �0�#p��L���w�v��c蠦����Տ��A���wI,��TuJHG���>��x��^���}K�	��}�Δ��V�������{x�p\���`�Y^'�HzAf��v�P�ҽRG�a�	>v@;D����U_��\�C�ƾ	(`~l���H�
�I4$��74H���/I�WcC�Vph=���;���X������~�=��Se!�;zRBՆ�]�(<A�fd��Q=+*qP�:o啨�0�ޒ,2a;/i�Ϝ�d�y߱hd��r���.2\��[�@���������6G��1_cA�B���r�RE��,@���Ɔ���A�S�Bb�������+V�Q�;��E��b�bQF�$d�<��)ӷ,�ʀ��c�������`���!��*��&Q����EEl)4D(���μ��v����	�n_x#�B p�&DϨ5�DlU���}`�k�CB&��P��ȴ�ŏ����#j��B�!�N6����F,��C|� [0���KD^�dA$�T�!T���h�cy�(i!Q�Up���U�!f��9���:�u����g��\
�4��J����>�L9 ���])M�[����܅��,BD������h�8���:�5�����!f��7�i��x5�еTtB�]ص{�y��:GGSǶ�;�W���3�nb2*��ç��]�1�LM�"�T��4�f���j���`\��ݙ�� `�xB
����$+�i�� �X*�[�fbUm���g�Dح?D}ɐ��9K&�����#�L����/f�͛Rw�
�.$δm�[�<'$e�J���s���
.�r"�JY��e���%411���y\��J�����E,Q�K>�Yi(�('�V�S2��E,�K^+�g�+t^+�����	��X'Xm� ����X�d*l�-�۲�2��у43TL8�d;���&l1H�OƐb��^c��39�� fJ$�`���	VFnAs�(���F���;��Ȱ�t�_@&���A20GDJ��bf٠�b:��R� �`I�㙷%6U�.*�E�+�� �s�L�� v������L��qN�Ks�ؖ�h����>Wi*P@ O�/��J$��,qd<*4���	�"lY1�d ��e.����1���A�`�G0��:�m����ia�a�H aP�Z�r�N�ͦ~ƈ��~\�I������zA��bǜbi����1
�KvQ��=�Q���Z��FB��9�g~��!߂Zʴ*-���&�x�"6+`�n����ض�e�J��� H[����hS�j�����DY�y�ԁ���ܐ.oxœ�剑�� �Tb_�@�a�d�Bh	|�ds�ɍW�u�~��8*(���	�L��DtV�y���`�/����Q���x�'��+�
Ka�*+BS���^���D�*#-U ]��d"�p�7�Խ�43Ȣ}�Hl����-P�hhUB���au-�4Wf�R�d�d�ց0Kp1��m�f�b�Gt�_&9d��y���N{+]���.}R��e�|C��+���K"�q�ځ+z@�Ҵ������J�^�-��%C�ێ�Q�R�2�cU�BJbX��]�܊��*���V�U#�]�QF@�cn�q3�Ê��t;�a~�
^r�.��i�f`Zx��	0)�"sΝ$� *���v�1r��w7\�paGY�@U�	�{!D��)<�S��h��� \=ȧavO�H"e䪊M�C�>P����1B�ѷ=����	�w��ej�X�o:���� ��!�p�n��着���!�],a��a<̹F����HO
o�4 n<a����"�(Y�q� bϞL;H�6�1�R7�HC$IIP�(�����!�k�:�yg��&إo�S�duT
��F��}���������W<�|�^p�⹷!K�Ъ��芻�XKP�^���Aͨ��(#3en��}� ��ԳV��J��w����k�vD�3�UN�(��2*��$�ÊU��~��P��0XT.A�V�	%���r�{Cڌ�@Q&H&���Ä�m���'�	����sWa`a��$H�'3�a�`A ��{-\�`l�.cB��Zg՚F;}��J��Z�����'n�c����Щ�S��aF!2&�s<�W1��@iE�sT($%m:_-���c�m��>$J�q�J+���n����>�6,��^׿�p�?��\��KV���kZ��r6�9�L�5h=e���7nZ�{��V�~��(-��5��z
N\:�řjKV�6���t��>G}h+⯥�E((��8ٍ(IY��J�H@ژ���ɇ˷�{�P�_=�OB	{�|x���*H#�@�>��>�T���B��b�Xg)0:�9Nbp��^�5�ϊ��,�K�^���Hw"]L��4�B����h�b�B�,��2i$�h���<)B��c��8��o^^���	�/*6ERЌE��A�ŗM@-RH�BPP�P)'�Bq&%�=��a3�aY2�bhhJd]
�A"FT�X��9*0�R�^8K��lBB��*	$��]�
&�i�Md���^�K�ZdB��rS�U��-�C0[E�����)8Wз$�K�Pa#� �ၠ~Cc��6 �!�r@4ș1�Ӂ4+I�47Q�J�o��j �UJ�zZ9#�����R�fS�Z^�5�&�52%ᐛb�`ꆁ2�Dz	��΃/He(l*8ڂ��;��A�ea|�.$#@�f`�Y4�б�L{�Z���*�\fI$�	a%9�� ���'��6}lz�A� {�*0/ڵD��Ϙ���S)R�����Ld} �p�Ќg�\q����^��*�Wz?l�@E���L��C1H���yPα���<��v��~�0�7.b�;���}�	5R7�� �����(��,�ky B(�5U���V!T�+(ҕ�=�c��T��4�nb������f&����ː��=�q*���p�
1�P�. ��H%�������4��$+�L�f����s�����VҺ�`[�_�`X2�́Y��}=���o �Yh��mj�O��uK���Yԭ�?�����;\�FA� h"�;\�ێ�J�!�T���j`X�q��QDVAV���e��5�=e�T-UWƃ���%�TULh|Q��/H�!(���5���8U��I9`}�������˴y�����b�l��
c�_��S;x��Æ-b||M=�*���Ё�6P���҂����"�Q]�

 ��ab{��Bx��@�I,S�:@3a��h�Q�Hdm�J�7f�Q&�:=8��s�ܾf#~hp�����&%�ǃ8��K�r�o>
 ���*D�
@� �T8$x�[u *���+_��S�+G��kP�Y�3��}|J�L4�gEQ���,+��v��e
�vb�Hu��K�}eس��_I�$
 3����an��!pQPP ,��hP�b1�)RL��u����.�~�9Gs|�~_Gr��x�b���-JW�0�(I��H{,��j��4
_�>%��!�"���}�'�ɋ���#���bC*3.ԗ^T�
H4�e��LВFF�Ê4Y4A\�o�[]�lA�!-�#�`�a�L�K������d��S�t�%� Hb4�6U	�(R�Zp�`�
$�����ԓ��y��!��m��Ά�;!b�ܠ��3g
��XP�HG�q�)S`�k��>F�[a��W9%d����*����	i�bDC��'71���[�o�����qϊ�Uk�N,�.�c�@���.R͂Y�A�����r��nd1\SSe}[]��X-L�Fu��,>Qw*��l�\j��y�e�#(痒��������ᖍ%��^ױ*ɝY�6&��u7t�b���g+� ʚU�՚P��}a 	v,d�Q���gAPrG�H�I���#�4ԫ�\�2j�rb�3"�9!�M'�l�����*�T@!���>.H] b#Ք��� Hn�rVLʔ�$a�ZƻY�($�6!������@x4y�	�^d�2���H7jU���&Xm&��u"�kN������4nVD &a��
1���ѕ5���m[Q�2X��O����u��4Z!�;y�l�T�t��CYȒAQ#<��+��Mbg�p�ܡN��"e540t7��Jivb<��<��l0��iܧ�Z_��w��,�RFbFД�t�A;k�����/I��Xs�:�!�&�Ec��6�L[�c�൲�h\>�-��!�b����ƻ� 7$��Wɏ�qh�omB�܍���!�5b(�LI.�s�b�5��_y����|G]� �M�:�/�fHǀ�V
*{-r�i߯`@�.9��ۮ>4 *��]�bbi���є���Q;��Ԝ'��<� ��!���c�[���09�����UV(Ȉl��̙���U�JBBUs��n�t�nĜg���pQ���$t1��ҩL��Ɋ1�Ɓ��*���u�h`Cq�b��N�=��NT�=J,�R�U�X5�5"�Dʞ!�i����. H�#�
���!0�)U2d�Q��� �ԡ�n��XY	�S%G9I,�$��_㹟��?6�*:��tmQ�x�!�h���/��̂����r�4�^��>(;�Agt�r�,�Q�]p{K�I+7����v��
��>��~G�����?ڢ����<����|����}?V?B���` �����PA*@A���"�(Hqi��
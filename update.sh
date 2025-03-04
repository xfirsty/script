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
BZh91AY&SY/xǒ  �_�Tp}���~�ގ����  D   � P P.�m���^���i����<S'�Q�4�=CCM 4��OP�54 ��M6��M�4�  2    �Rji��ꌙ4z��@h@    �ML�i���z�24hѠ����h4 �*�yM1=M4�@4 �@ �� (�~=X�)���&0O�l���8��h�2a�涣�U%UЕ`J8i�3"��
�xq�,D�1Td>yE1<�݊���Ĝp0	��5�Y״�"�k�!�F�Da�}6��_��P�"���D���H�c���+���(�}$�U�
�T��Գ��a6 �ha�Q�19qUe�P�J�#ms\y�"@� �N�r�q��"ѓmN=�)5���[DM�U�����|n��AU�ŠBˆ�k��m��ZZ�$I=b%��V�t�2<�n3�����@���d�+��U�Z�?���ˁ(�t8RE�i�:������%�D�ng��a�����s��@1�;#�L�BA�G@B#n|.@�e��������p��(s�l]0�je\}�2�J�?CE�M��*�ҖB	
3[bh��11w�'ݯH�2*(�j>z;��@yLj�VG�dW�'+2�Q�EV:du��#[ �t��b�@��f�%/C!�UC�m
If�
$��D�"�YH�q�'TM$"pzȮ.�1R`zAG5�*6�v&��cXF\$`sӘS0j1!���9���Һ�)C�+��'�ai�N �a ��Z�f��Μ���|��Jt(�Vc��4�k�l��F�`I	������="���`d�T"ն�!+U�"vȎ�ĲU�ꎆv�+0�Iz��(�"��X���&��`�T�+a���|��f�+̤P!6t)�Nq�2�k�H�/	_¼K*�s4��@�&H?�ܑN$�1�
FasdUAS 1.101.10   ��   ��    k             i         I      �� 	���� 0 	call_menu   	  
�� 
 o      ���� 0 	menu_name  ��  ��    k            O    
    I   	������
�� .miscactvnull��� ��� null��  ��    m       �                                                                                  SMUG  alis    F  Macintosh HD               �/�yH+     GCapo.app                                                        05�ԥt�        ����  	                Applications    �/�Y      ԥf}       G  #Macintosh HD:Applications: Capo.app     C a p o . a p p    M a c i n t o s h   H D  Applications/Capo.app   / ��     ��  I    �� ���� 0 
menu_click     ��  J           m       �    C a p o      m       �    C o n t r o l   ��  o    ���� 0 	menu_name  ��  ��  ��  ��        l     ��������  ��  ��       !   l     �� " #��   " 1 + `menu_click`, by Jacob Rus, September 2006    # � $ $ V   ` m e n u _ c l i c k ` ,   b y   J a c o b   R u s ,   S e p t e m b e r   2 0 0 6 !  % & % l     �� ' (��   ' P J found here: http://hints.macworld.com/article.php?story=20060921045743404    ( � ) ) �   f o u n d   h e r e :   h t t p : / / h i n t s . m a c w o r l d . c o m / a r t i c l e . p h p ? s t o r y = 2 0 0 6 0 9 2 1 0 4 5 7 4 3 4 0 4 &  * + * l     �� , -��   ,       - � . .    +  / 0 / l     �� 1 2��   1 I C Accepts a list of form: `{"Finder", "View", "Arrange By", "Date"}`    2 � 3 3 �   A c c e p t s   a   l i s t   o f   f o r m :   ` { " F i n d e r " ,   " V i e w " ,   " A r r a n g e   B y " ,   " D a t e " } ` 0  4 5 4 l     �� 6 7��   6 K E Execute the specified menu item.  In this case, assuming the Finder     7 � 8 8 �   E x e c u t e   t h e   s p e c i f i e d   m e n u   i t e m .     I n   t h i s   c a s e ,   a s s u m i n g   t h e   F i n d e r   5  9 : 9 l     �� ; <��   ; I C is the active application, arranging the frontmost folder by date.    < � = = �   i s   t h e   a c t i v e   a p p l i c a t i o n ,   a r r a n g i n g   t h e   f r o n t m o s t   f o l d e r   b y   d a t e . :  > ? > l     ��������  ��  ��   ?  @ A @ i     B C B I      �� D���� 0 
menu_click   D  E�� E o      ���� 0 mlist mList��  ��   C k     T F F  G H G q       I I �� J�� 0 appname appName J �� K�� 0 topmenu topMenu K ������ 0 r  ��   H  L M L l     ��������  ��  ��   M  N O N l     �� P Q��   P   Validate our input    Q � R R &   V a l i d a t e   o u r   i n p u t O  S T S Z     U V���� U A      W X W n     Y Z Y 1    ��
�� 
leng Z o     ���� 0 mlist mList X m    ����  V R    �� [��
�� .ascrerr ****      � **** [ m   
  \ \ � ] ] 8 M e n u   l i s t   i s   n o t   l o n g   e n o u g h��  ��  ��   T  ^ _ ^ l   ��������  ��  ��   _  ` a ` l   �� b c��   b ; 5 Set these variables for clarity and brevity later on    c � d d j   S e t   t h e s e   v a r i a b l e s   f o r   c l a r i t y   a n d   b r e v i t y   l a t e r   o n a  e f e r    + g h g l    i���� i n     j k j 7  �� l m
�� 
cobj l m    ����  m m    ����  k o    ���� 0 mlist mList��  ��   h J       n n  o p o o      ���� 0 appname appName p  q�� q o      ���� 0 topmenu topMenu��   f  r s r r   , ; t u t l  , 9 v���� v n   , 9 w x w 7 - 9�� y z
�� 
cobj y m   1 3����  z l  4 8 {���� { n  4 8 | } | 1   6 8��
�� 
leng } o   4 6���� 0 mlist mList��  ��   x o   , -���� 0 mlist mList��  ��   u o      ���� 0 r   s  ~  ~ l  < <��������  ��  ��     � � � l  < <�� � ���   � A ; This overly-long line calls the menu_recurse function with    � � � � v   T h i s   o v e r l y - l o n g   l i n e   c a l l s   t h e   m e n u _ r e c u r s e   f u n c t i o n   w i t h �  � � � l  < <�� � ���   � > 8 two arguments: r, and a reference to the top-level menu    � � � � p   t w o   a r g u m e n t s :   r ,   a n d   a   r e f e r e n c e   t o   t h e   t o p - l e v e l   m e n u �  ��� � O  < T � � � n  @ S � � � I   A S�� ����� 0 menu_click_recurse   �  � � � o   A B���� 0 r   �  ��� � l  B O ����� � n  B O � � � l  L O ����� � 4   L O�� �
�� 
menE � o   M N���� 0 topmenu topMenu��  ��   � n  B L � � � l  I L ����� � 4   I L�� �
�� 
mbri � o   J K���� 0 topmenu topMenu��  ��   � n  B I � � � l 	 F I ����� � l  F I ����� � 4   F I�� �
�� 
mbar � m   G H���� ��  ��  ��  ��   � l  B F ����� � 4   B F�� �
�� 
prcs � o   D E���� 0 appname appName��  ��  ��  ��  ��  ��   �  f   @ A � m   < = � ��                                                                                  sevs  alis    �  Macintosh HD               �/�yH+     (System Events.app                                               ����)Q        ����  	                CoreServices    �/�Y      ��1       (   '   &  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��   A  � � � l     ��������  ��  ��   �  ��� � i     � � � I      �� ����� 0 menu_click_recurse   �  � � � o      ���� 0 mlist mList �  ��� � o      ���� 0 parentobject parentObject��  ��   � k     H � �  � � � q       � � �� ��� 0 f   � ������ 0 r  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � , & `f` = first item, `r` = rest of items    � � � � L   ` f `   =   f i r s t   i t e m ,   ` r `   =   r e s t   o f   i t e m s �  � � � r      � � � n      � � � 4    �� �
�� 
cobj � m    ����  � o     ���� 0 mlist mList � o      ���� 0 f   �  � � � Z   " � ����� � ?     � � � n   
 � � � 1    
��
�� 
leng � o    ���� 0 mlist mList � m   
 ����  � r     � � � l    ����� � n     � � � 7  �� � �
�� 
cobj � m    ����  � l    ���� � n    � � � 1    �~
�~ 
leng � o    �}�} 0 mlist mList��  �   � o    �|�| 0 mlist mList��  ��   � o      �{�{ 0 r  ��  ��   �  � � � l  # #�z�y�x�z  �y  �x   �  � � � l  # #�w � ��w   � < 6 either actually click the menu item, or recurse again    � � � � l   e i t h e r   a c t u a l l y   c l i c k   t h e   m e n u   i t e m ,   o r   r e c u r s e   a g a i n �  ��v � O   # H � � � Z   ' G � ��u � � =  ' , � � � n  ' * � � � 1   ( *�t
�t 
leng � o   ' (�s�s 0 mlist mList � m   * +�r�r  � I  / 7�q ��p
�q .prcsclicnull��� ��� uiel � n  / 3 � � � 4   0 3�o �
�o 
menI � o   1 2�n�n 0 f   � o   / 0�m�m 0 parentobject parentObject�p  �u   � n  : G � � � I   ; G�l ��k�l 0 menu_click_recurse   �  � � � o   ; <�j�j 0 r   �  ��i � l  < C ��h�g � n  < C � � � l  @ C ��f�e � 4   @ C�d �
�d 
menE � o   A B�c�c 0 f  �f  �e   � n  < @ � � � l  = @ ��b�a � 4   = @�` �
�` 
menI � o   > ?�_�_ 0 f  �b  �a   � o   < =�^�^ 0 parentobject parentObject�h  �g  �i  �k   �  f   : ; � m   # $ � ��                                                                                  sevs  alis    �  Macintosh HD               �/�yH+     (System Events.app                                               ����)Q        ����  	                CoreServices    �/�Y      ��1       (   '   &  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �v  ��       �] � � � ��]   � �\�[�Z�\ 0 	call_menu  �[ 0 
menu_click  �Z 0 menu_click_recurse   � �Y �X�W � ��V�Y 0 	call_menu  �X �U ��U  �  �T�T 0 	menu_name  �W   � �S�S 0 	menu_name   �  �R  �Q
�R .miscactvnull��� ��� null�Q 0 
menu_click  �V � *j UO*��mvk+  � �P C�O�N � ��M�P 0 
menu_click  �O �L �L    �K�K 0 mlist mList�N   � �J�I�H�G�J 0 mlist mList�I 0 appname appName�H 0 topmenu topMenu�G 0 r   � 	�F \�E ��D�C�B�A�@
�F 
leng
�E 
cobj
�D 
prcs
�C 
mbar
�B 
mbri
�A 
menE�@ 0 menu_click_recurse  �M U��,m 	)j�Y hO�[�\[Zk\Zl2E[�k/E�Z[�l/E�ZO�[�\[Zm\Z��,2E�O� )�*�/�k/�/�/l+ U � �? ��>�=�<�? 0 menu_click_recurse  �> �;�;   �:�9�: 0 mlist mList�9 0 parentobject parentObject�=   �8�7�6�5�8 0 mlist mList�7 0 parentobject parentObject�6 0 f  �5 0 r   �4�3 ��2�1�0�/
�4 
cobj
�3 
leng
�2 
menI
�1 .prcsclicnull��� ��� uiel
�0 
menE�/ 0 menu_click_recurse  �< I��k/E�O��,k �[�\[Zl\Z��,2E�Y hO� "��,k  ��/j Y )���/�/l+ Uascr  ��ޭ
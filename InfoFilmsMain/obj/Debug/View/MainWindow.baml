   M S B A M L   `   `   `  ����H  DInfoFilmsMain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:InfoFilmsMainInfoFilmsMain  5   	       InfoFilmsMain.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:InfoFilmsMain     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null:MD1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $	��600��5      $
��1260��6'     � 
ResizeMode$  NoResize=�64    � WindowStartupLocation$ CenterScreen=�6J    � WindowStyle$
 None=�6o    � Icon$5 //InfoFilmsMain;component/Resources/logoMini.png��6�   .��5	      � .+�5   
   � $��60��6   $	��Top=�6   
���   �.+�5      �� $��Center=�6   $��Center=�61   $5��//InfoFilmsMain;component/Resources/logoMini.png��6L   $��43��6�   $	��131��6�   6�   �� 5      -   5        $��Right=�5      
���   �$��60��6[    � Cursor$
 Hand��6f   ��6t   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$ Close=�6   
�������$��50��6?   $��50��6K   6X   5      5      � 5   
   $	��150��6   
������� J� RenderTransformOrigin$ 0.5,0.5&�6/   $��
0,0,1010,0q�6O   z�5      V� 5      .~�5      �� �� 5      �� 5      T� 5      5      5      � 5   
   -   5         �Name$ GridMenu��5      $��70��6!   $
��Left=�6,   ��5      �� 5       �� EndPoint$ 0.5,1&�6&   	 � MappingMode$	 RelativeToBoundingBox=�67   
 �� 
StartPoint$
 0.5,0&�6[   .��5       �  � Color$ Black��6#    � Offset$ 0.135Q�61   � 5!      $ 	#FF5EA2C5��6#   $ 1Q�65   5"      .+�5$      �� .+�5%      � $��60��6   .+�5&      �� -   5         ��Name$ ButtonOpenMenu��5&      
���   �
���������6[   Z� .��5'        $
 Menu=�6&   $��50��62   $��54��6=   5(      �� 5)      -   5        $ ButtonCloseMenu��5)      $y�	Collapsed=�66   $��Right=�6N   
���   �
���������6}   Z� .��5*        $ 	ArrowLeft=�6&   $��50��67   $��54��6B   5+      5-      �� 5.      -   5         ��Name$ ListViewMenu��5.      
�������$��Disabled=�6Z   ��6D   Z� ��6�   Z� .@�5/      �� -   5         ��Name$ ItemHome��5/   #   .��50      ��  �� Orientation$ 
Horizontal=�6%   .+�51        $ ViewDashboard=�6*   $��40��6?   $��40��6K   $��10q�6V   �� 52      $
��Home��6(   $��Center=�64   $��20 10q�6O   53      54      �� 55      -   5        $ TopRated��55   #   $��60��65   .��56      �� $ 
Horizontal=�6%   .+�57        $ Medal=�6*   $��40��67   $��40��6C   $��10q�6N   �� 58      $��Top Rated Movies��6(   $��Center=�6@   $��20 10q�6[   59      5:      �� 5;      -   5        $ UpcomingMovies��5;   /   $��60��6#   .��5<      �� $ 
Horizontal=�6%   .+�5=        $ Timer=�6*   $��40��67   $��40��6C   $��10q�6N   �� 5>      $��Upcoming Movies��6(   $��Center=�6?   $��20 10q�6[   5?      5@      �� 5A      -	   5        $ 
NowPlaying��5A   /   $��60��6#   .��5B      �� $ 
Horizontal=�6%   .+�5C        $ Ticket=�6*   $��40��68   $��40��6D   $��10q�6O   �� 5D      $��Now Playing Movies��6(   $��Center=�6B   $��20 10q�6^   5E      5F      �� 5G      -
   5        $ MyList��5G   0   $��60��6$   .��5H      �� $ 
Horizontal=�6%   .+�5I        $ Heart=�6*   $��40��67   $��40��6C   $��10q�6N   �� 5J      $��My list��6(   $��Center=�67   $��20 10q�6R   5K      5L      �� 5N      -   5        $ People��5N   ,   $��60��6    .��5O      �� $ 
Horizontal=�6!   .+�5P        $ Person=�6&   $��40��64   $��40��6@   $��10q�6K   �� 5Q      $��People��6$   $��Center=�62   $��20 10q�6M   5R      5S      5T      5W      5X      � 5Y   
   -   5        $ GridMain��5Y      $��Right=�6!   $��Bottom=�6=   $	��540��6X   $	��830��6e   $��	0,0,180,0q�6q   5\      5^      5_      
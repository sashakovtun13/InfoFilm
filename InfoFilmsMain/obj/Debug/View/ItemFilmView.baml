   M S B A M L   `   `   `  ����H  DInfoFilmsMain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:InfoFilmsMain.MainViewModelsInfoFilmsMain.MainViewModels  5      %    InfoFilmsMain.View.ItemFilmView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      =local1*clr-namespace:InfoFilmsMain.MainViewModels     5      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null:md1http://materialdesigninxaml.net/winfx/xaml/themes  5      
�������  � DataContext  5      4   .InfoFilmsMain.MainViewModels.ItemFilmViewModel  5   
   6%   .��5      � .+�5   
   �� $��Hidden=�6   $��1��6<   .��5      �� $��1��68   ��6   �� *Film+��5      �� 5      .R�5      �� .+�5      � ��5   "   �� 5   &    j� Stretch$
 Fill=�6W    �� ImageSource 61   �� *Backdrop_path+6W   .+�5   "   � ��5   &   �� 5   *   $2 ,/InfoFilmsMain;component/Resources/black.jpg��65    �� Opacity$	 0.5Q�6p   $
 Fill=�6~    � ColumnDefinitions 5#   &   �� 5$   *   $	��330 �6;   6I   �� 5%   *   $	��470 �6<   6J   .+�5'   &   �� 
����������	#FF29E7E3
���   �$��79��5)   *   $
��Left=�65   $��30��6P   $	��Top=�6\   ��5(   *   �� *DataContext.Back+ �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType$ UserControlL�.��5*   *   '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$ 	ArrowLeft=�66   $��36��6G   $��30��6R   6a   5+   '   �� 5,   &   $��0��6K   $	��540��6[   $	��250��6h   	 J� Opacity$	 1Q�6v   ��6,   �� *Poster_path+5.   '   �� 50   &   $��1��61   $��	0,50,10,0q�6A   .+�53   *   �� .+�54   .   �� $
��Wrap=�6O   $��25(�6c   $��0,10,0,0q�6q   
�������$��Segoe UI Black)�6�   ��68   �� *Title+
 J� Effect
 55   2   3  -System.Windows.Media.Effects.DropShadowEffect  56   6   �� 58   *   .�6.   (61    �� 59   .   $��20(�6Q   
�������$��Normal"�6s   $��Myanmar Text)�6�   �62   �� *Release_date+6�    �� 5:   .   .�62   )65   5;   /   5>   +   �� 5?   *    �� Orientation$ 
Horizontal=�65   .+�5A   .   �� $��	10,10,0,0q�6V   $��Arial)�6i   $��30(�6|   
�������$��Center=�6�   $��Center=�6�   ��68   �� *Vote_average+5C   /   �� 5D   .   $��0,8,0,0q�68     5E   .   $��0,5,0,0q�6;   $ Percent=�6M   $��Center=�6\   $��Center=�6y   
�������$��30��6�   $��30��6�   5G   /   5H   /   �� 5I   .   $��5,12,0,0q�69   .+�5J   2   �� 
�������$
��User��6O   $��13(�6[   6k   �� 5K   2   $��Score��6<   
�������$��13(�6\   6l   5L   /   �� 5N   .   $��	50,13,0,0q�66   
����������	#FF29E7E3
���   �$��35��6�   $��35��6�   ��6�   �� *DataContext.AddToList+ �� $ FindAncestor=�$ UserControlL���5O   .   �� .��5P   2     $ Heart=�6>   6M   5Q   /   �� 5R   .   $��	10,13,0,0q�67   
����������	#FF29E7E3
���   ���6�   �� *DataContext.PlayTrailer+ �� $ FindAncestor=�$ UserControlL���5S   .   �� .��6L   Play tailer5U   /   5V   +   �� 5W   *   $��	10,20,0,0q�64   $��Run Time��6G   $��Segoe UI Black)�6W   $��16(�6s   
�������6�   �� 5X   *   $��	10,5,10,0q�64   $��Segoe UI)�6`   $
��Wrap=�6v   $��14(�6�   
���������6G   �� *	Runtime+�� 5Y   *   .�6/   min.65   5Z   +   �� 5[   *   $��	10,10,0,0q�64   $��Overview��6G   $��Segoe UI Black)�6W   $��16(�6s   
�������6�   �� 5\   *   $��	10,5,10,0q�64   $��Segoe UI)�6a   $
��Wrap=�6w   $��14(�6�   
���������6G   �� *
Overview+6�   �� 5]   *   $��	10,20,0,5q�64   $��Genres��6G   $��Segoe UI Black)�6U   $��16(�6q   
�������6�   �� 5_   *   ��67   �� *Genres_list+��5`   .   �� 5a   2   .R�5b   6   �� $��	10,5,10,0q�6]   $��Segoe UI)�6q   $
��Wrap=�6�   $��14(�6�   
���������6@   �� *Genres_Name+6�   5c   3   ��5e   .   �� 5f   2   .R�5g   6   A�  A� Columns$ 5��6C   5h   3   5j   +   5k   '   5l   #   5m      5n      5o      5r      5s      � 5u   
   -   5         �Name$ GridMain��5u      $��Right=�6!   $��Bottom=�6=   $	��540��6X   $	��830��6e   $��2��6r   6�   5x      5y      
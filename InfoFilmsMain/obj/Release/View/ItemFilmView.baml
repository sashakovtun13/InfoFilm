   M S B A M L   `   `   `  ���� H  DInfoFilmsMain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:InfoFilmsMain.MainViewModelsInfoFilmsMain.MainViewModels  %    InfoFilmsMain.View.ItemFilmView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     =local1*clr-namespace:InfoFilmsMain.MainViewModels     V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null:md1http://materialdesigninxaml.net/winfx/xaml/themes  
�������  � DataContext  4   .InfoFilmsMain.MainViewModels.ItemFilmViewModel  .��� .+��� $��Hidden=�$��1��.���� $��1������ *Film+���� .R��� .+�� ����  j� Stretch$
 Fill=� �� ImageSource �� *Backdrop_path+.+�� ���� $2 ,/InfoFilmsMain;component/Resources/black.jpg�� �� Opacity$	 0.5Q�$
 Fill=� � ColumnDefinitions �� $	��330 ��� $	��470 �.+��� 
����������	#FF29E7E3
���   �$��79��$
��Left=�$��30��$	��Top=����� *DataContext.Back+ �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType$ UserControlL�.��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$ 	ArrowLeft=�$��36��$��30���� $��0��$	��540��$	��250��	 J� Opacity$	 1Q����� *Poster_path+�� $��1��$��	0,50,10,0q�.+��� .+��� $
��Wrap=�$��25(�$��0,10,0,0q�
�������$��Segoe UI Black)����� *Title+
 J� Effect
 3  -System.Windows.Media.Effects.DropShadowEffect  �� .�( �� $��20(�
�������$��Normal"�$��Myanmar Text)���� *Release_date+ �� .�)��  �� Orientation$ 
Horizontal=�.+��� $��	10,10,0,0q�$��Arial)�$��30(�
�������$��Center=�$��Center=����� *Vote_average+�� $��0,8,0,0q�  $��0,5,0,0q�$ Percent=�$��Center=�$��Center=�
�������$��30��$��30���� $��5,12,0,0q�.+��� 
�������$
��User��$��13(��� $��Score��
�������$��13(��� $��	50,13,0,0q�
����������	#FF29E7E3
���   �$��35��$��35������ *DataContext.AddToList+ �� $ FindAncestor=�$ UserControlL����� .��  $ Heart=��� $��	10,13,0,0q�
����������	#FF29E7E3
���   ����� *DataContext.PlayTrailer+ �� $ FindAncestor=�$ UserControlL����� .��Play tailer�� $��	10,20,0,0q�$��Run Time��$��Segoe UI Black)�$��16(�
��������� $��	10,5,10,0q�$��Segoe UI)�$
��Wrap=�$��14(�
����������� *	Runtime+�� .�min.�� $��	10,10,0,0q�$��Overview��$��Segoe UI Black)�$��16(�
��������� $��	10,5,10,0q�$��Segoe UI)�$
��Wrap=�$��14(�
����������� *
Overview+�� $��	10,20,0,5q�$��Genres��$��Segoe UI Black)�$��16(�
��������� ���� *Genres_list+���� .R��� $��	10,5,10,0q�$��Segoe UI)�$
��Wrap=�$��14(�
����������� *Genres_Name+���� .R�A�  A� Columns$ 5��� -    �Name$ GridMain��$��Right=�$��Bottom=�$	��540��$	��830��$��2��
   M S B A M L   `   `   `  ���� H  DInfoFilmsMain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:InfoFilmsMain.ViewInfoFilmsMain.View  K*clr-namespace:InfoFilmsMain.MainViewModelsInfoFilmsMain.MainViewModels  #    InfoFilmsMain.View.MyListView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     2local clr-namespace:InfoFilmsMain.View     >local11*clr-namespace:InfoFilmsMain.MainViewModels     V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null:md1http://materialdesigninxaml.net/winfx/xaml/themes  
�������  � DataContext  2   ,InfoFilmsMain.MainViewModels.MyListViewModel  .���  � RowDefinitions �� $	��41* ��� $
��499* �.+��� $��My List��$��Segoe UI Black)�$��20(�$
��Left=�$��Center=�� $��1��.+��� $��Hidden=�.���� 
�������
���   �$
��Left=����� *	MyListCol+��Z� ���� .R�� $��	0,20,0,20q� � ColumnDefinitions �� $
��100* ��� $
��111* �.+��� $��0��$
��auto��$
��auto��$
��Left=�$	��Top=����� *Poster_path+� $��1��$��0,0,10,0q� �� $	��204 ��� $
��auto �.+��� $��10,0,0,0q�$��0��.+��� $��Right=�$��Bottom=�$��30��$��30��$��0,0,10,5q�
�������
���  ��
����������� *DataContext.RemoveId+ �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType$ UserControlL����� .��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$ Delete=�$��30��$��30��$��Center=�$��Center=��� $��16(�$��Segoe UI Black)�$
��Wrap=����� *Title+�� $��20(����� *Vote_average+  $ 
StarBorder=�$��Center=�$��Bottom=�$��20��$��20���� $��11(� J� Opacity$	 0.6Q����� *Release_date+�� $
��Wrap=�$��0,10,0,0q����� *
Overview+�� $��1��
���   �$
��Left=�
������ $��Bottom=�$��	10,43,0,0q�$��30��$	��100�� � Cursor$
 Hand������ *DataContext.Show+ �� $ FindAncestor=�$ UserControlL����� .���� 	 �� Orientation$	 
Horizontal=�
������ .+��� $��14(�$��Segoe UI Black)�$��Right=�$��Center=�
������ $��	More info������ .R�A� 
 A� Columns$
 2��$	��800��$
��Left=�� -    �Name$ GridMain��$��Right=�$��Bottom=�$	��540��$	��830��$��2��
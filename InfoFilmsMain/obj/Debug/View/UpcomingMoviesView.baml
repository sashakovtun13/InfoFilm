   M S B A M L   `   `   `  ����H  DInfoFilmsMain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:InfoFilmsMain.ViewInfoFilmsMain.View  5      K*clr-namespace:InfoFilmsMain.MainViewModelsInfoFilmsMain.MainViewModels  5      +    %InfoFilmsMain.View.UpcomingMoviesView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:InfoFilmsMain.View     5      >local11*clr-namespace:InfoFilmsMain.MainViewModels     5      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null:md1http://materialdesigninxaml.net/winfx/xaml/themes  5      
�������  � DataContext  5      :   4InfoFilmsMain.MainViewModels.UpcomingMoviesViewModel  5   
   6,   .��5      �  � RowDefinitions 5   
   �� 5      $	��41* �6   �� 5      $
��499* �6   6,   .+�5   
   �� $��Upcoming Movies��6   $��Segoe UI Black)�6+   $��20(�6G   $
��Left=�6U   $��Center=�6p   6�   � 5   
   $��1��6   .+�5      �� $��Hidden=�6   .��5      �� 
�������
���   �$
��Left=�6�   ��6   �� *TopUpcomingCollection+��6s   Z� ��5      �� 5      .R�5      � $��	0,20,0,20q�6#    � ColumnDefinitions 5   "   �� 5   &   $
��100* �67   6F   �� 5   &   $
��111* �67   6F   .+�5"   "   �� $��0��6(   $
��auto��6Y   $
��auto��6f   $
��Left=�6t   $	��Top=�6�   ��68   �� *Poster_path+5%   #   � 5&   "   $��1��6'   $��0,0,10,0q�67    5'   &   �� 5(   *   $	��204 �68   6G   �� 5)   *   $
��auto �68   6H   .+�5+   &   �� $��10,0,0,0q�61   $��0��6C   .+�5-   *   �� $��16(�6L   $��Segoe UI Black)�6Z   $
��Wrap=�6v   ��64   �� *Title+6�   �� 5.   *   $��20(�6R   ��64   �� *Vote_average+'  !MaterialDesignThemes.Wpf.PackIcon  5/   *   �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$ 
StarBorder=�66   $��Center=�6H   $��Bottom=�6e   $��20��6�   $��20��6�   6�   50   +   �� 51   *   $��11(�6R    J� Opacity$	 0.6Q�6`   ��64   �� *Release_date+6q   �� 52   *   $
��Wrap=�6N   $��0,10,0,0q�6b   ��64   �� *
Overview+6v   54   '   �� 56   &   $��1��6.   
���   �$
��Left=�6O   
������ $��Bottom=�6�   $��	10,43,0,0q�6�   $��30��6�   $	��100��6�    � Cursor$
 Hand��58   L   ��57   .   �� *DataContext.Show+ �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType$ UserControlL���58   .   �� .��59   *   �� 	 �� Orientation$	 
Horizontal=�65   
������ .+�5:   .   �� $��14(�68   $��Segoe UI Black)�6F   $��Right=�6b   $��Center=�6~   
������ $��	More info��6�   6�   5;   +   5<   '   5>   #   5?      5A      ��5D      �� 5E      .R�5F      A� 
 A� Columns$
 2��6+   $	��800��67   $
��Left=�6C   5G      5I      5K      5M      � 5N   
   -   5         �Name$ GridMain��5N      $��Right=�6!   $��Bottom=�6=   $	��540��6X   $	��830��6e   $��2��6r   6�   5O      5P      
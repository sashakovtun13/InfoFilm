   M S B A M L   `   `   `  ����H  DInfoFilmsMain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:InfoFilmsMain.MainViewModelsInfoFilmsMain.MainViewModels  5      %    InfoFilmsMain.View.ItemHomeView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      >local11*clr-namespace:InfoFilmsMain.MainViewModels     5      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null:md1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5          >�Name$  Window��5      
������� � DataContext 5      4   .InfoFilmsMain.MainViewModels.ItemHomeViewModel  5   
   6&   .��5      �  � RowDefinitions 5   
   �� 5      $	��41* �6   �� 5      $
��499* �6   6,   .+�5   
   �� $��Popular Movies��6   $��Segoe UI Black)�6*   $��20(�6F   $
��Left=�6T   $��Center=�6o   6�   � 5   
   $��1��6   .+�5      �� $��Hidden=�6   .��5      �� 
�������
���   �$
��Left=�6�   ��6   �� *PopularCollection+��6o   Z� ��5      �� 5      .R�5      � $��	0,20,0,20q�6    � ColumnDefinitions 5      �� 5   "   $
��100* �63   6B   �� 5   "   $
��111* �63   6B   .+�5"      �� $��0��6$   $
��auto��6U   $
��auto��6b   $
��Left=�6p   $	��Top=�6�   ��64   �� *Poster_path+5%      � 5&      $��1��6#   $��0,0,10,0q�63    5'   "   �� 5(   &   $	��204 �64   6C   �� 5)   &   $
��auto �64   6D   .+�5+   "   �� $��10,0,0,0q�6-   $��0��6?   .+�5-   &   �� $��16(�6H   $��Segoe UI Black)�6V   $
��Wrap=�6r   ��60   �� *Title+6�   �� 5.   &   $��20(�6N   ��60   �� *Vote_average+'  !MaterialDesignThemes.Wpf.PackIcon  5/   *   �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$ 
StarBorder=�66   $��Center=�6H   $��Bottom=�6e   $��20��6�   $��20��6�   6�   50   '   �� 51   &   $��11(�6N    J� Opacity$	 0.6Q�6\   ��60   �� *Release_date+6m   �� 52   &   $
��Wrap=�6J   $��0,10,0,0q�6^   ��60   �� *
Overview+6r   54   #   �� 56   "   $��1��6*   
���   �$
��Left=�6K   
������ $��Bottom=�6   $��	10,43,0,0q�6�   $��30��6�   $	��100��6�    � Cursor$
 Hand��58   L   ��57   .   �� *DataContext.Show+ �� RelativeSource ��  �� Mode$ FindAncestor=�	 �� AncestorType$	 UserControlL���58   .   �� .��59   &   �� 
 �� Orientation$
 
Horizontal=�61   
������ .+�5:   *   �� $��14(�64   $��Segoe UI Black)�6B   $��Right=�6^   $��Center=�6z   
������ $��	More info��6�   6�   5;   '   5<   #   5>      5?      5A      ��5D      �� 5E      .R�5F      A�  A� Columns$ 2��6+   $	��800��67   $
��Left=�6C   5G      5I      5K      5M      � 5N   
   -   5         �Name$ GridMain��5N      $��Right=�6!   $��Bottom=�6=   $	��540��6X   $	��830��6e   $��2��6r   6�   5O      5P      
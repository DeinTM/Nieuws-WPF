   M S B A M L   `   `   `  ����W  SDehouwerDein_a2.1_DM_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:DehouwerDein_a2._1_DM_ProjectDehouwerDein_a2._1_DM_Project  5   	   3    -DehouwerDein_a2._1_DM_Project.GebruikersLijst   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:DehouwerDein_a2._1_DM_Project     5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962ac _MaterialDesignThemes.MahApps, Version=0.2.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   -   5           MaterialDesignBody#���   5	   	     MaterialDesignPaper#���  5
   	   $��Medium"�5   	   $��14(�5   	     � Title$  GebruikersLijst��5   	   $	��800��5   	   $
��1000��5   	   $
��1200��5   	   ��5   	   :  4MaterialDesignThemes.Wpf.MaterialDesignFontExtension  .��5      �  � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!    � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��10q�5      $��2��5       .+�5"   
   �� $��ZOEKEN:��6   $	��0 5q�5#      5%      �� 5'   
   -   5         ��Name$ txtZoekOpdracht��5(      $	��Top=�5)      $��35��5*      $	��200��5+       �� TextWrapping$
 Wrap=�5,      " �� VerticalScrollBarVisibility$
 Auto=�5-      $��0��5.      $��0��5/      $��2q�50      �� 52      -   5         ��Name$ btnZoekOpdrachtVoornaam��52      $��Zoek op voornaam��53      $��5 0 0 0q�54      57      �� 59      -   5        $ btnZoekOpdrachtAchternaam��59      $��Zoek op achternaam��5:      $��5 0 0 0q�5;      5>      �� 5@      -   5        $ btnZoekOpdrachtEmail��5@      $��Zoek op email��5A      $��5 0 0 0q�5B      5E      �� 5G      -   5        $ btnVernieuwen��5G       � ToolTip$ Vernieuw Gebruikerslijst��5H      $��5 0 0 0q�5I      .��5K      '  !MaterialDesignThemes.Wpf.PackIcon  	   Kind$	 ArrowRotateLeft=�6*   $��24��5L   *   $��24��5M   *   5N      5P      � 5R   
   $
��auto��6   $��1��6   $��0��6)   $��2��69   .+�5S      &   System.Windows.Controls.DataGrid  -   5        
  Name$
 dataGebruikers��5S         AutoGenerateColumns .     
IsReadOnly .    Columns 5T      0  *System.Windows.Controls.DataGridTextColumn  5U      ,  &System.Windows.Controls.DataGridColumn   Header$ Voornaam��5V   )   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5U   )   �� *
voornaam+5X        5Y      $ 
Achternaam��5Z   )    5Y   )   �� *naam+5\        5]      $ E-mail��5^   )    5]   )   �� *email+5`        5a      $ Geslacht��5b   )    5a   )   �� *
geslacht+5d        5e      $ Beroep��5f   )    5e   )   �� *beroep+5h        5i      $ Website��5j   )    5i   )   �� *
homepage+5l      5n      5o      5p      5q      
   M S B A M L   `   `   `  ����W  SDehouwerDein_a2.1_DM_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:DehouwerDein_a2._1_DM_ProjectDehouwerDein_a2._1_DM_Project  5   	   .    (DehouwerDein_a2._1_DM_Project.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:DehouwerDein_a2._1_DM_Project     5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962ac _MaterialDesignThemes.MahApps, Version=0.2.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   -   5           MaterialDesignBody#���   5	   	     MaterialDesignPaper#���  5
   	   $��Medium"�5   	   $��14(�5   	     � Title$  Nieuws Overzicht��5   	   $
��1000��5   	   $	��970��5   	   $	��900��5   	   $	��970��5   	   $
��1200��5   	   $
��1100��5   	   ��5   	   :  4MaterialDesignThemes.Wpf.MaterialDesignFontExtension  .��5      �  � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!    � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $	��600 �6   6+   �� 5       $
��auto �6   6,   �� 5!      $
��auto �6   6,   .+�5$   
   �� $��Nieuws Overzicht��6   $��0��5%      $��0��5&      $��2��5'      $��25(�5(      $��Center=�5)      5*      '  !MaterialDesignThemes.Wpf.PackIcon  5,   
      Kind$ Search=�6"   $��1��5-   "    J� RenderTransformOrigin$ 
23.8,1.548&�5.   "   $��308.2,5,0,0q�5/   "   $��29��50   "   $��40��51   "   ]� 56   
   $	��900��6   $��2��57      $��4��58      .+�59      �� $
��Auto=�6   .��5:      �� -   5         ��Name$ icNieuwsOverzicht��5:      $	��100q�5;      $��2��5<      ��5>      �� 5?      .R�5@      A�  A� Columns$ 2��6*   }�.  5A   *   5B      ��5E      �� 5G       � 	Resources 5I       �� 
TargetType	 �� Property
 �� Value��%V   '��       �� 5K   "   " ��6(   .�5L   &   �� 	 � ��$
 18(�5M      5N   #   5O      .R�5Q      #  MaterialDesignThemes.Wpf.Card  $	��300��62   $��30q�5R   *   .��5S   "   �  5T   &   �� 5U   *   $	��140 �68   �� 5V   *   $��* �68   �� 5W   *   $
��auto �68   .+�5Y   &   �� $	��140��5[   #   $��UniformToFill=�5\   #   ��5Z   #   �� *cover+5\   #   �� 5]   &   $��1��61   $��8 24 8 0q�6>   .+�5^   *   �� $
��Bold"�64   ��5_   ,   �� *titel+5b   +   �� 5c   *   $
��Wrap=�64   $��Center=�5d   )   ��5e   )   �� *samenvatting+5f   +   5g   '   �� 5h   &   $��Right=�61   $��2��5i   )    �� Orientation$ 
Horizontal=�5j   )   $��8q�5k   )   .+�5l   *   ��   MaterialDesignToolButton#��[ 61   $��30��5m   )   $��2 0 2 0q�5n   )   +  %MaterialDesignThemes.Wpf.RippleAssist   
IsCentered . 5o   )   5q   '   �� 5r   &    ��Name$ btnLeesMeer��6-   -   5           MaterialDesignOutlinedButton#��[ 5s   -   $��
8,0,174,16q�5u   -   $��2��5v   -   
 � Tag 5t   -   �� *id+.��5w   G   	LEES MEER5{   '     5}   &   $��btnBewerken��6>   -   5        
����� � � ToolTip$ Bewerk dit artikel��5�   >   $ Pencil=�5�   >   $ 0.29,-13.23&�5�   >   $��
262,18,0,0q�5�   >   $��28��5�   >   $��23��5�   >    � Cursor$
 Hand��5�   >    5~   >   �� *id+5�   >   #  MaterialDesignThemes.Wpf.Chip  5�   &     Name$ chipCategorie��6:   $��190,100,0,18q�5�   :   $��1��5�   :   $ 1.552,0.581&�5�   :   $��2��5�   :   $ Arrow��5�   :   ��5�   :   �� *Categorie.naam+5�   :   5�   #   5�      5�      5�      5�      5�      �� 5�   
   $ Vertical=�6   $	��Top=�6,   $
��Left=�6D   .+�5�   
   �� -   5        $ btnNieuwArtikel��5�       , (MaterialDesignFloatingActionAccentButton#��[ 5�      $ Voeg Nieuw Artikel Toe��5�      $��0��5�      $��0��5�      $��10q�5�      .��5�        $
 Plus=�6&   $��24��5�   &   $��24��5�   &   5�      �� 5�   
   -   5        $ btnGebruikers��5�      #��[ 5�      $ Gebruikerslijst��5�      $��0��5�      $��0��5�      $��10q�5�      .��5�        $
 User=�6&   $��24��5�   &   $��24��5�   &   5�      �� 5�   
   -   5        $ btnVernieuwen��5�      #��[ 5�      $ Vernieuw Nieuwsoverzicht��5�      $��0��5�      $��0��5�      $��10q�5�      .��5�        $ ArrowRotateLeft=�6*   $��24��5�   *   $��24��5�   *   5�      5�      5�      5�      
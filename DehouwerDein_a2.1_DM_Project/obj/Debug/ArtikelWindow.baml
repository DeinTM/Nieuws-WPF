   M S B A M L   `   `   `  ����W  SDehouwerDein_a2.1_DM_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:DehouwerDein_a2._1_DM_ProjectDehouwerDein_a2._1_DM_Project  5   	   1    +DehouwerDein_a2._1_DM_Project.ArtikelWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:DehouwerDein_a2._1_DM_Project     5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962ac _MaterialDesignThemes.MahApps, Version=0.2.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   -   5           MaterialDesignBody#���   5	   	     MaterialDesignPaper#���  5
   	   $��Medium"�5   	   $��14(�5   	     � Title$  Artikel��5   	   $
��1500��5   	   $	��800��5   	   $
��1200��5   	   $	��800��5   	   ��5   	   :  4MaterialDesignThemes.Wpf.MaterialDesignFontExtension  .��5      �  � ColumnDefinitions 5   
    � RowDefinitions 5   
   �� 5      $��50 �6   6*   �� 5      6   �� 5      $
��auto �6   6,   �� 5      6   .+�5!   
   #  MaterialDesignThemes.Wpf.Card  $	��700��6   $��50q�5"      $��1��5#      .��5%      �  5&      �� 5'      $	��140 �6$   �� 5(      $��* �6$   �� 5)      $��50 �6$   .+�5,      �� -   5         ��Name$ 
Afbeelding��5,      $	��250��5.      $��UniformToFill=�5/      ��5-      ��  �� Path$ ImageSource�5/      �� 51      $��1��6   $��8 24 8 0q�52      .+�54      �� -   5         ��Name$ Titel��55       $
��Bold"�54       57      �� 59      -   5        $ Artikel��5;       $
��Wrap=�59       $��Center=�5:       5=      5?      �� 5@      $��Right=�6   $��2��5A       �� Orientation$ 
Horizontal=�5B      $��8q�5C      .+�5E      ��   MaterialDesignToolButton#��[ 6   $��30��5F      $��2 0 2 0q�5G      +  %MaterialDesignThemes.Wpf.RippleAssist   
IsCentered . 5H      �� 5J      #��[ 6   $��30��5K      $��2 0 2 0q�5L       . .��5O      '  !MaterialDesignThemes.Wpf.PackIcon  -   5          Name$ btnBewerken��5S   2   	   Kind$	 Pencil=�5O   2   
 � ToolTip$
 Bewerk dit artikel��5Q   2    � Cursor$
 Hand��5R   2   
 � Tag 5P   2   �� *	ArtikelId+5T   2   5V      5X      5Y      5Z      �� 5^   
   $��Reacties��6   $��2��5_      $��50q�5`      $��25(�5a      $
��Bold"�5b      5d      �� 5f   
   -   5         ��Name$ icReactieOverzicht��5h       � IsSharedSizeScope . $��3��5g      $��50 10 50 10q�5i      ��5k      �� 5l      .R�5m      ��  ��Name$ Border��6    �� Padding$ 8q�5n      $��0 0 0 1q�5o        MaterialDesignDivider#���  5p      ._�5q      �  5r      �� 5s   "    z� SharedSizeGroup$ Checkerz��63   �� 5t   "   .+�5v      A� $��50��6&   $��50��5w   &   ��5y   "   �� 5z   &    �� ImageSource 61   �� *Gebruiker.avatar+5}      �� 5~      $��8 0 0 0q�6)   $��1��5   )   .+�5�   "   �� $ 
Horizontal=�6-   .+�5�   "   �� $
��Bold"�6,   $��0 0 5 0q�5�   ,   ��5�   ,   �� *Gebruiker.naam+5�   ,   �� 5�   "   $
��Bold"�6,   ��5�   ,   �� *Gebruiker.voornaam+5�   #   �� 5�   "   ��6,   �� *
reactie1+5�      5�      5�       �� Triggers 5�      �� 5�       �� Value$
 True��5�   &    �� Binding 5�   &   �� *
IsSelected+.a�5�      ��  �� 
TargetName$ Border��6%     MaterialDesignSelection �� Value# �  5�   %    �� Property � ��5�      5�      5�      5�      5�      
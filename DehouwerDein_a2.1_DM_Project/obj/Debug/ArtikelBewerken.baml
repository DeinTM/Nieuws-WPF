   M S B A M L   `   `   `  ����W  SDehouwerDein_a2.1_DM_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:DehouwerDein_a2._1_DM_ProjectDehouwerDein_a2._1_DM_Project  5   	   3    -DehouwerDein_a2._1_DM_Project.ArtikelBewerken   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:DehouwerDein_a2._1_DM_Project     5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962ac _MaterialDesignThemes.MahApps, Version=0.2.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   
   -   5           MaterialDesignBody#���   5	   	     MaterialDesignPaper#���  5
   	   $��Medium"�5   	   $��14(�5   	     � Title$  Artikel Bewerken��5   	   $
��1000��5   	   $	��800��5   	   $
��1000��5   	   $	��800��5   	   $��Visible=�5   	   ��5   	   :  4MaterialDesignThemes.Wpf.MaterialDesignFontExtension  .��5      � $��50q�6   $
��auto��5       � ColumnDefinitions 5   
   �� 5      6!    � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5       $
��auto �6   6,   �� 5!      $
��auto �6   6,   �� 5"      $
��auto �6   6,   �� 5#      $
��auto �6   6,   �� 5$      $
��auto �6   6,   �� 5%      $
��auto �6   6,   �� 5&      $
��auto �6   6,   .+�5*   
   �� -   5         ��Name$ lblTitel��5*      $��Titel��5+      $��0��5,      $��0��5-      $��25(�5.      $
��Bold"�5/      �� 51   
   -   5         ��Name$ tbTitelBewerken��51      $	��Top=�52      $��50��53       �� AcceptsReturn .  �� TextWrapping$
 Wrap=�55      " �� VerticalScrollBarVisibility$
 Auto=�56      $��0��57      $��1��58      $��2q�59      �� 5;   
   -   5        $ 
lblArtikel��5;      $��Artikel��5<      $��0��5=      $��2��5>      $��25(�5?      $
��Bold"�5@      �� 5B   
   -   5        $ tbArtikelBewerken��5B      $	��Top=�5C      $	��400��5D       . $
 Wrap=�5F      $
 Auto=�5G      $��0��5H      $��3��5I      $��2q�5J      �� 5L   
   -   5        $ lblAfbeelding��5L      $��
Afbeelding��5M      $��0��5N      $��4��5O      $��25(�5P      $
��Bold"�5Q      �� 5S   
   -   5        $ tbUploadBewerken��5S      $	��Top=�5T      $��50��5U       . $
 Wrap=�5W      $
 Auto=�5X      $��0��5Y      $��5��5Z      $��2q�5[      �� 5]   
   -   5         ��Name$ btnUploadBewerken��5]       # MaterialDesignRaisedLightButton#��[ 5^      $	��150��5_      $��50��5`      $��0��5a      $��5��5b      $��544,0.2,-0.4,0.2q�6   .��5c   1   UPLOAD5g      �� 5i   
   -	   5        $ lblCategorie��5i      $��	Categorie��5j      $��0��5k      $��6��5l      $��25(�5m      $
��Bold"�5n      �� 5p   
   -
   5        	 ��Name$	 cbCategorieBewerken��5p      .  (MaterialDesignThemes.Wpf.TextFieldAssist
   HasClearButton
 .  & "MaterialDesignFloatingHintComboBox#��[ 5r      )  #MaterialDesignThemes.Wpf.HintAssist   
HelperText$ Selecteer één categorie��5s      $��0��5t      $��7��5u      $	��250��5v       J� RenderTransformOrigin$ -0.853,0.532&�5w      $��0,0.2,443.6,96.4q�5x      $��2��5y      5{      �� 5�   
   -   5        $ btnPostBewerken��5�      #��[ 5�      $
��auto��5�      $��50��5�      $��0��5�      $��8��5�      .��5�   /   
BEWERKEN5�      �� 5�   
   -   5        $ btnArtikelVerwijderen��5�      #��[ 5�      $
��auto��5�      $��50��5�      $��0��5�      $��9��5�      
���\\��.��5�   5   VERWIJDEREN5�      5�      5�      
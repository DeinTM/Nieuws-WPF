   M S B A M L   `   `   `  ����W  SDehouwerDein_a2.1_DM_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:DehouwerDein_a2._1_DM_ProjectDehouwerDein_a2._1_DM_Project  5   	   3    -DehouwerDein_a2._1_DM_Project.ArtikelAanmaken   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:DehouwerDein_a2._1_DM_Project     5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962ac _MaterialDesignThemes.MahApps, Version=0.2.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   -   5           MaterialDesignBody#���   5	   	     MaterialDesignPaper#���  5
   	   $��Medium"�5   	   $��14(�5   	     � Title$  Artikel Aanmaken��5   	   $
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
��auto �6   6,   .+�5)   
   �� -   5         ��Name$ lblTitel��5)      $��Titel��5*      $��0��5+      $��0��5,      $��25(�5-      $
��Bold"�5.      �� 50   
   -   5         ��Name$ tbTitel��51      $	��Top=�52      $��50��53       �� AcceptsReturn .  �� TextWrapping$
 Wrap=�55      " �� VerticalScrollBarVisibility$
 Auto=�56      $��0��57      $��1��58      $��2q�59      �� 5;   
   -   5        $ 
lblArtikel��5;      $��Artikel��5<      $��0��5=      $��2��5>      $��25(�5?      $
��Bold"�5@      �� 5B   
   -   5        $ 	tbArtikel��5C      $	��Top=�5D      $	��400��5E       . $
 Wrap=�5G      $
 Auto=�5H      $��0��5I      $��3��5J      $��2q�5K      �� 5M   
   -   5        $ lblAfbeelding��5M      $��
Afbeelding��5N      $��0��5O      $��4��5P      $��25(�5Q      $
��Bold"�5R      �� 5T   
   -   5        $ tbUpload��5U      $	��Top=�5V      $��50��5W       . $
 Wrap=�5Y      $
 Auto=�5Z      $��0��5[      $��5��5\      $��2q�5]      �� 5_   
   -   5         ��Name$ 	btnUpload��5`       # MaterialDesignRaisedLightButton#��[ 5a      $	��150��5b      $��50��5c      	 � ToolTip$4	 .Resource name: MaterialDesignRaisedLightButton��5d      $��0��5e      $��5��5f      $��544,0.2,-0.4,0.2q�6   .��5g   %   UPLOAD5k      �� 5m   
   -	   5        $ lblCategorie��5m      $��	Categorie��5n      $��0��5o      $��6��5p      $��25(�5q      $
��Bold"�5r      �� 5t   
   -
   5        
 ��Name$
 cbCategorie��5t      .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton .  & "MaterialDesignFloatingHintComboBox#��[ 5v      )  #MaterialDesignThemes.Wpf.HintAssist   
HelperText$ Selecteer één categorie��5w      $��0��5x      $��7��5y      $	��250��5z       J� RenderTransformOrigin$ -0.853,0.532&�5{      $��0,0.2,443.6,96.4q�5|      $��2��5}      5      �� 5�   
   -   5        $ btnPost��5�      #��[ 5�      $
��auto��5�      $��50��5�      $4	 .Resource name: MaterialDesignRaisedLightButton��5�      $��0��5�      $��8��5�      .��5�   '   POST5�      5�      5�      
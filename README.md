# zybo-lane-detection
Implementacja asystenta pasa ruchu na Xilinx Zynq

# TODO:
- wybra� jak wykrywa� pasy na podstawie Canny - Hough?

# Uruchomienie toru wizyjnego na Zybo
1. Pobra� "HDMI-VGA Zybo" z UPEL
2. Synteza projektu w Vivado
3. Podpi�cie kamery przez HDMI, monitora przez VGA, jest tylko 1 z��cze HDMI
[Nie dzia�a przez splitter, tylko bezpo�rednio z kamery]

# Canny - import
1. Otworzy� projekt hdmi... z google drive
2. Blok Canny wyeksportowa� jako IP

# Zadania

1. Analiza, poprawa i uruchomienie na Zybo detekcji kraw�dzi metod� Canny. Sprawdzenie, czy to mo�e dzia�a� w HD (platforma VC707).
2. Poprawa opisu algorytmu Canny (w oparciu o dostarczone �r�d�a).
3. Analiza artyku�u o Cannym (max 2, tylko nowsze).
4. Prze�wiczy� metodologi� HW/SW na tym prostym przyk�adzie.
5. Analiza artyku��w jak wykrywa� pasy ruchu. Na tej podstawie decyzja "co dalej".

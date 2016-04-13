# zybo-lane-detection
Implementacja asystenta pasa ruchu na Xilinx Zynq

# TODO:
- wybraæ jak wykrywaæ pasy na podstawie Canny - Hough?

# Uruchomienie toru wizyjnego na Zybo
1. Pobraæ "HDMI-VGA Zybo" z UPEL
2. Synteza projektu w Vivado
3. Podpiêcie kamery przez HDMI, monitora przez VGA, jest tylko 1 z³¹cze HDMI
[Nie dzia³a przez splitter, tylko bezpoœrednio z kamery]

# Canny - import
1. Otworzyæ projekt hdmi... z google drive
2. Blok Canny wyeksportowaæ jako IP

# Zadania

1. Analiza, poprawa i uruchomienie na Zybo detekcji krawêdzi metod¹ Canny. Sprawdzenie, czy to mo¿e dzia³aæ w HD (platforma VC707).
2. Poprawa opisu algorytmu Canny (w oparciu o dostarczone Ÿród³a).
3. Analiza artyku³u o Cannym (max 2, tylko nowsze).
4. Przeæwiczyæ metodologiê HW/SW na tym prostym przyk³adzie.
5. Analiza artyku³ów jak wykrywaæ pasy ruchu. Na tej podstawie decyzja "co dalej".

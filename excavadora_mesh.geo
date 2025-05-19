// Puntos --> Defino todos los puntos de la malla (nodos)
Point(1) = {0, 0, 0, 1.0};
Point(2) = {-1256, 628, 0, 1.0};
Point(3) = {2154, 2154, 0, 1.0};
Point(4) = {2912, 1931, 0, 1.0};
Point(5) = {3073, 2478, 0, 1.0};
Point(6) = {7052, 739, 0, 1.0};
Point(7) = {6583, 1517, 0, 1.0};
Point(8) = {9040, -2541, 0, 1.0};
Point(9) = {5901, 1074, 0, 1.0};
Point(10) = {7052, 739, 0, 1.0};


// Líneas (conectan los puntos)
Line(1) = {1, 3};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 5};
Line(5) = {4, 9};
Line(6) = {5, 7};
Line(7) = {9, 6};
Line(8) = {10, 7};
Line(9) = {10, 8};
Line(10) = {6, 10};


// Línea física (etiqueta para FEM)
Physical Line("Barra") = {1,6};
Physical Line("Viga") = {2,3,4,5,7,8,9};
Physical Line("Conector") = {10};


// Mallado transfinito: se discretizan con 2 nodos por línea
Transfinite Line {1,2,3,4,5,6,7,8,9,10} = 2 Using Progression 1;
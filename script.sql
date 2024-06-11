    
--1.2 Faça um programa que calcule o determinante de uma matriz quadrada de ordem 3
--utilizando a regra de Sarrus. 
--Preencha a matriz com valores inteiros aleatórios no intervalo de 1 a 12.
DO $$
DECLARE
matriz INT[] := ARRAY[
[valor_aleatorio_entre(1, 12), valor_aleatorio_entre(1, 12), valor_aleatorio_entre(1, 12)],
[valor_aleatorio_entre(1, 12), valor_aleatorio_entre(1, 12), valor_aleatorio_entre(1, 12)],
[valor_aleatorio_entre(1, 12), valor_aleatorio_entre(1, 12), valor_aleatorio_entre(1, 12)]
];
matriz_sarrus INT[][];
linha1 INT[];
linha2 INT[];
dig_princ INT;
dig_secund INT;
det INT;
BEGIN
	linha1 := ARRAY[matriz[1][1], matriz[1][2], matriz[1][3]];
	linha2 := ARRAY[matriz[2][1], matriz[2][2], matriz[2][3]];
	
	matriz_sarrus := matriz || ARRAY[linha1] || ARRAY[linha2];
	RAISE NOTICE 'matriz sarrus %', matriz_sarrus;
	dig_princ := matriz[1][1] * matriz[2][2] * matriz[3][3] +
                 matriz[1][2] * matriz[2][3] * matriz[3][1] +
				 matriz[1][3] * matriz[2][1] * matriz[3][2];
				 
	dig_secund := matriz[3][1] * matriz[2][2] * matriz[1][3] +
                 matriz[3][2] * matriz[2][3] * matriz[1][1] +
				 matriz[3][3] * matriz[2][1] * matriz[1][2];
	RAISE NOTICE ' as diagonais  são: % e %', dig_princ, dig_secund;
	det := dig_princ - dig_secund;
	RAISE NOTICE 'o determinante da matriz % é : %', matriz, det;
END;				 
$$
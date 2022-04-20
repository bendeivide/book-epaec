# exportar dados
dados <- c(84 , 49 , 61 , 40 , 83 , 67 , 45 , 66 , 70 , 69 , 80 , 58, 
    68 , 60 , 67 , 72 , 73 , 70 , 57 , 63 , 70 , 78 , 52 , 67 ,
    53 , 67 , 75 , 61 , 70 , 81 , 76 , 79 , 75 , 76 , 58 , 31 )
write(dados, file = "challenger.txt", sep = "\t", ncolumns = 1)

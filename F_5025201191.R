#no 1
#a
#kita bisa menggunakan fungsi sd(), (https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/sd)
#untuk mencari standard deviasi dari suatu data. pertama data akan disimpan dalam array variabel, lalu variabel
#tersebut akan dimasukkan kedalam fungsi untuk me returnkan nilai deviasi standart nya. untuk mengetahui 
#deviasi standart dari selisihnya, maka masukkan selisih dalam fungsi deviasi standard
x1a <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y1a <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

Dx1a <- sd(x1a)
Dy1a <- sd(y1a)
solve1a <- sd (y1a-x1a)
solve1a
#b
#kita bisa menggunakan fungsi t.test(), (https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/t.test)
#untuk mencari t value dari suatu data. data yang digunakan adalah data dari array variabel y1a dan x1a, karena data
#yang kita masukan merupakan data yang bisa dikaitkan atau terkait(paired), maka nilai paired pada parameternya
#kita jadikan sebagai TRUE
a2 <- t.test(y1a, x1a, paired = TRUE)
a2
#c
#berdasarkan hasil dari test t, dengan t value yang didapatkan ternyata lebih dari 5, maka H0 tidak benar karena 
#terjadi pengaruh yang signifikan secara statistika sebelum dan sesudah melakukan aktivitas A
#..............
#2
#a
#saya setuju
#b
#kita bisa menggunakan fungsi z.test(),(https://www.rdocumentation.org/packages/BSDA/versions/1.2.1/topics/z.test)
#untuk mencari mean dari random value yang dibangkitkan dengan fungsi rnorm dengan seed yang di set sebagai 0
library('BSDA')
seed(0)
x2b <- rnorm(100,23500,3900)
z.test(x2b, alternative = 'greater', mu = 2300, sigma.x = 3500 )
#c
#berdasarkan z.test tersebut, didapatkan bahwa z mencapai nilai diatas 20.000
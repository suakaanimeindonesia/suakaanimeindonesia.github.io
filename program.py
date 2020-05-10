import fileinput

matakuliah=[("Aljabar Linear Elementer",3),("Bahasa Inggris",3),("Kalkulus Integral",4),("Konservasi Sumber Daya Alam",2),("Literasi Digital",2),("Metode Statistika",3),("Pendidikan Agama Islam",2),("Pendidikan Kewarganegaraan",2)]
angka=["A","A-","B+","B","B-","C+","C","D","E"]
nilai=[4.00,3.75,3.50,3.00,2.75,2.50,2.00,1.00,0.00]
nilaiangka=[]
nilaiangkapakesks=[]
nilaiakhir=0

def konversiNilaiAngka(char):
    index = angka.index(char)
    return nilai[index]

def totalSKS():
    totalsks=0
    for l in matakuliah:
        totalsks=totalsks+l[1]
    return totalsks

def hitungMatkulLulus():
    lulus=0
    tidaklulus=0
    for x in nilaiangka:
        if x<2.00:
            tidaklulus=tidaklulus+1
        elif x>=2.00:
            lulus=lulus+1
    return lulus,tidaklulus

print("Daftar nilai mata kuliah semester 2:")
for index,matkul in enumerate(matakuliah):
    index=index+1
    print("{}. {}: ".format(index,matkul[0]),end='')
    payload = input()
    returnstring = konversiNilaiAngka(payload)
    nilaiangka.append(returnstring)
    nilaiangkapakesks.append(returnstring*matkul[1])
    nilaiakhir=nilaiakhir+(returnstring*matkul[1])

ip=nilaiakhir/totalSKS()
print("IP Semester ini adalah : {}".format(format(ip,'.2f')))
print("Nilai terbaik adalah mata kuliah : {}".format(matakuliah[nilaiangkapakesks.index(max(nilaiangkapakesks))][0]))
print("Nilai terburuk adalah mata kuliah : {}".format(matakuliah[nilaiangkapakesks.index(min(nilaiangkapakesks))][0]))
lulus, tidaklulus = hitungMatkulLulus()
print("Anda lulus {} Mata Kuliah".format(lulus))
if tidaklulus>0:
    print("Anda harus mengulang {} Mata Kuliah".format(tidaklulus))
else:
    print("Selamat Anda Lulus Seluruh Mata Kuliah di Semester Ini")

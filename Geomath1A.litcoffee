---
marp: true
---

# GEOMATH 
Nama Anggota Kelompok 1A
1. A. Abdullah Muh. Mikail
2. Alifha Qadr Tenriabeng
3. Andrew Rizky Patulak
4. Elda Lorista Tammu
5. Faiqah Rifkha Hamzah 
6. Keyzha Achmad Fachrezi

---

# Matematika Geofisika: Aljabar Matriks
## Topik 1.2.2: Rank and Row/Column Spaces
**Dosen Pengampu: [Dr. Muhammad Alimuddin, Eng]**

---

## Pendahuluan
Dalam eksplorasi geofisika, kita sering berhadapan dengan sistem persamaan linier $Ax = b$. 
- **$A$**: Matriks pemodelan (misal: respon instrumen).
- **$x$**: Parameter model yang dicari (misal: densitas batuan).
- **$b$**: Data observasi di lapangan.

Memahami **Rank** adalah kunci untuk mengetahui apakah data kita cukup untuk mendefinisikan model dengan unik.

---

## 1. Definisi Rank Matriks
Berdasarkan literatur (Chapter 1.2.2), **Rank** dari matriks $A$ berukuran $M \times N$ adalah jumlah maksimum baris atau kolom yang **bebas linier** (*linearly independent*).

- Jika $rank(A) = \min(M, N)$, matriks disebut **Full Rank**.
- Jika $rank(A) < \min(M, N)$, matriks disebut **Rank Deficient** (Singular).

> **Pesan Dosen:** Dalam geofisika, *rank deficient* sering terjadi jika sensor kita diletakkan terlalu berdekatan sehingga merekam informasi yang sama (redundant).

---

## 2. Row Space (Ruang Baris)
**Row Space** adalah ruang vektor yang dibentuk oleh semua kombinasi linier dari vektor baris matriks $A$.

- Secara fisik, ruang baris merepresentasikan informasi yang terkandung dalam sistem persamaan kita.
- Jika ada dua baris yang saling berkelipatan, maka salah satu persamaan tidak menambah informasi baru bagi model geofisika kita.



---

## 3. Column Space & Image
**Column Space** (juga disebut *Range* atau *Image*) adalah ruang yang dibentuk oleh kombinasi linier dari vektor kolom $A$.

- Dalam konteks $Ax = b$, vektor data $b$ **harus** berada di dalam *Column Space* agar solusi dapat ditemukan.
- Jika data observasi kita berada di luar ruang ini, berarti ada *noise* atau kesalahan model yang signifikan.

---

## 4. Null Space: Area "Buta" Model
**Null Space** adalah kumpulan vektor $x$ non-nol yang menghasilkan $Ax = 0$.

- Dalam inversi geofisika, *null space* merepresentasikan parameter model yang **tidak dapat dideteksi** oleh data lapangan kita.
- **Prinsip Ortogonalitas:** Row Space selalu tegak lurus terhadap Null Space.
  $$x_{row} \cdot x_{null} = 0$$

---

## 5. Hubungan dengan Eliminasi Gauss
Untuk menentukan rank secara manual, kita menggunakan **Eliminasi Gaussian** untuk mencapai *Row Echelon Form* (REF).

1. Cari **Leading Ones** (angka 1 pertama di setiap baris).
2. Jumlah baris yang memiliki *leading ones* adalah nilai **Rank**.
3. Baris nol di bagian bawah menunjukkan adanya redundansi data.

---


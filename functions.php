<?php
// koneksi ke database
$conn = mysqli_connect("localhost", "root", "", "datasiswa");

function query($query) {
    global $conn;
    $result = mysqli_query($conn, $query);
    $rows = [];
    while( $row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}
// tambah data

function tambah($data) {


    global $conn;
    
    $nama = htmlspecialchars($data["nama_siswa"]);
    $nis = htmlspecialchars($data["nis"]);
    $jeniskelamin = htmlspecialchars($data["jenis_kelamin"]);
    $tanggallahir = htmlspecialchars ($data["tanggal_lahir"]);
    $alamat = htmlspecialchars ($data["alamat"]);
    $agama = htmlspecialchars ($data["agama"]);
    $kelasjurusan = htmlspecialchars ($data["kelas_jurusan"]);

    // query insert data
     $query = "INSERT INTO siswaxii
     VALUES
     ('', '$nama','$nis', '$jeniskelamin', '$tanggallahir', '$alamat', '$agama', '$kelasjurusan' )
     ";
    mysqli_query($conn, $query);
    return mysqli_affected_rows($conn);
}
// hapus data

function hapus($id) {
    global $conn;
    mysqli_query($conn, "DELETE FROM siswaxii WHERE id = $id");
    return mysqli_affected_rows($conn);
}
// end tambah data

// cari data (untuk tombol search)

function cari($keyword) {
    $query = "SELECT * FROM siswaxii
                  WHERE
                nama_siswa LIKE '%$keyword%' OR
                nis LIKE '%$keyword%' OR
                jenis_kelamin LIKE '%$keyword%' OR
                tanggal_lahir LIKE '%$keyword%' OR
                kelas_jurusan LIKE '%$keyword%' OR
                agama LIKE '%$keyword%' OR
                alamat LIKE '%$keyword%'
            ";
    return query($query);
}
// end cari data

?>
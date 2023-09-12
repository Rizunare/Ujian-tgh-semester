<?php
require 'functions.php';
$siswaxii = query("SELECT * FROM siswaxii");

// tombol cari ditekan

if( isset($_POST["cari"]) ) {
  $siswaxii = cari($_POST["keyword"]);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--css untuk bootstrap-->
    <link rel="stylesheet" href="css/bootstrap.css">

    <style>
      body{
        background: lightcyan;
      }

      h1{
        text-align: center;
        font-family: arial;
        margin-top: 10px;
      }

      .kolom1{
        width: 100%;
        float: center;
        margin-top: 40px;
      }

      .table-reponsive{
        max-height: 450px;
        overflow-y: auto;
      }

      .table{
        border-color: black;
        background-color: lightblue;

      }

      tr{
        text-align: center;
        max-height: 430px;
        overflow-y: auto;
      }

      .search{
        margin-left: 700px;
      }

      button a{
        color: black;
        text-decoration: none;
      }

      .btn.btn-dark {
        background-color: green; /* Warna latar belakang tombol yang sudah ditekan */
        padding: 7px 80px 7px 80px;
      }

      .btn.btn-dark.beranda{
        padding-right: 87px;
        padding-left: 87px;
      }

      .btn.btn-dark:hover{
        background-color: darkgreen; 
      }

      .btn.btn-dark:active{
        background-color: lime; 
      } 

     .tambah {
        display: inline-block;
        position: absolute;
      }
      .tambah a button{
        color:white;
      }
    </style>
</head>
<body>
  <div class="container">
    <h1>Data Siswa</h1>
    <div class="kolom1">
      <div class="tambah">
      <a href="tambah.php">
        <button class="btn btn-success" >
        Tambah Data Siswa
        </button>
      </a>
      </div>

      <div class="search">
        <div class="input-group mb-3">
          <form action="" method="post">
            <input type="text" name="keyword" size="40"autofocus 
            placeholder="masukkan keyword pencarian.." autocomplete="off">
            <button type="submit" class="btn btn-success" name="cari">Cari!</button>
          </form>    
          <br>
        </div>
      </div>

      <div class="table-reponsive">
        <div class="table">
          <table class="table table-bordered">
            <tr>
             <th>No.</th>
              <th>Nama</th>
              <th>Nis</th>
              <th>Jenis Kelamin</th>
              <th>Tanggal Lahir</th>
              <th>Alamat</th>
              <th>Agama</th>
             <th>Kelas Jurusan</th>
             <th>Aksi</th>
            </tr>

            <?php $i= 1;?>
            <?php foreach( $siswaxii as $row):?>
              <tr>
                <td><?= $i; ?></td>
              
                <td><?= $row["nama_siswa"]; ?></td>
                <td><?= $row["nis"]; ?></td>
                <td><?= $row["jenis_kelamin"]; ?></td>
                <td><?= $row["tanggal_lahir"]; ?></td>
                <td><?= $row["alamat"]; ?></td>
                <td><?= $row["agama"]; ?></td>
                <td><?= $row["kelas_jurusan"]; ?></td>
                <div class="aksi">
                  <td>
                  <a href="hapus.php?id=<?= $row["id"];?>" class="text-decoration-none" onclick="return confirm('yakin?');"><button type="button" class="btn btn-danger">Hapus</button></a>
                  </td>
                </div>

              </tr>
             <?php $i++; ?>
              <?php endforeach; ?>
         </table>
        </div>
      </div>
      </div>
    </div>

    <!--javascript untuk bootstrap-->
    <script src="js/bootstrap.js"></script>

    <!--popper dalam javascript-->
    <script src="js/popper.min.js"></script>
</body>
</html>
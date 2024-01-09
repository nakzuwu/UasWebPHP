<!DOCTYPE html>
<html>
<head>
    <title>Update</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

</head>
<body>
<nav class="navbar navbar-dark bg-dark">
    <div class="d-flex align-items-center">
        <a href="index.php">
            <img src="logo cok.png" alt="Logo" style="mix-blend-mode: lighten; width: 40px; height: auto; margin-right: 10px;">
        </a>
        <a href="index.php" class="navbar-brand mb-0 h1">Home</a>
        <a href="indexpembayaran.php" class="navbar-brand mb-0 h1">Transaksi</a>
        <a href="indextransaksi.php" class="navbar-brand mb-0 h1">Detail Transaksi</a>
    </div>
</nav>

<div class="container">
    <?php
    include "koneksi.php";

    function input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    if (isset($_GET['transaksi_no_struk'])) {
        $no=input($_GET["transaksi_no_struk"]);

        $sql="select * from detail_transaksi where transaksi_no_struk=$no";
        $hasil=mysqli_query($kon,$sql);
        $data = mysqli_fetch_assoc($hasil);


    }

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $no_struk = input($_POST["No"]);
        $id_barang = input($_POST["Brg"]);
        $id_detail = input($_POST["Dtl"]);
        $harga = input($_POST["Hrg"]);
        $kuantitas = input($_POST["Knt"]);
    
        $sqlDisableFKChecks = "SET FOREIGN_KEY_CHECKS = 0;";
        $sqlUpdate = "UPDATE detail_transaksi 
                      SET transaksi_no_struk = '$no_struk',
                          barang_id_barang = '$id_barang',
                          id_detail = '$id_detail',
                          harga = '$harga',
                          kuantitas = '$kuantitas'
                      WHERE transaksi_no_struk = '$no_struk'";
        $sqlEnableFKChecks = "SET FOREIGN_KEY_CHECKS = 1;";
    
        mysqli_query($kon, $sqlDisableFKChecks);
        $hasil = mysqli_query($kon, $sqlUpdate);
        mysqli_query($kon, $sqlEnableFKChecks);
    
        if ($hasil) {
            header("Location:indextransaksi.php");
            exit();
        } else {
            echo "<div class='alert alert-danger'> Data Gagal disimpan.</div>";
        }
    }
    
    ?>
    
    <h2>Update Data</h2>


    <form action="<?php echo $_SERVER["PHP_SELF"];?>" method="post">
        <div class="form-group">
            <label>No struk:</label>
            <input type="text" name="No" class="form-control" placeholder="Masukan No Struk" required />

        </div>
        <div class="form-group">
            <label>Id barang:</label>
            <input type="text" name="Brg" class="form-control" placeholder="Masukan Id barang" required/>
        </div>
       <div class="form-group">
            <label>Id Detail :</label>
            <input type="text" name="Dtl" class="form-control" placeholder="Masukan Id detail" required/>
        </div>
                </p>
        <div class="form-group">
            <label>Harga:</label>
            <input type="text" name="Hrg" class="form-control" placeholder="Masukan Harga" required/>
        </div>
        <div class="form-group">
            <label>Kuantitas :</label>
            <input type="text" name="Knt" class="form-control" placeholder="Masukan Jumlah Barang" required/>
        </div>       

        <button type="submit" name="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>
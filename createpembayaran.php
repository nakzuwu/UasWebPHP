<!DOCTYPE html>
<html>
<head>
    <title>Input Data</title>
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

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $no_struk = input($_POST["No"]);
        $customer = input($_POST["cst"]);
        $tanggal = input($_POST["tgl"]);
        
        $sqlDisableFKChecks = "SET FOREIGN_KEY_CHECKS = 0;";
        $sqlInsert = "INSERT INTO `transaksi`(`customer_id`, `no_struk`, `tanggal`) 
                      VALUES ('$customer', '$no_struk', '$tanggal');";
        $sqlEnableFKChecks = "SET FOREIGN_KEY_CHECKS = 1;";
        
        mysqli_query($kon, $sqlDisableFKChecks);
        $hasil = mysqli_query($kon, $sqlInsert);
        mysqli_query($kon, $sqlEnableFKChecks);
    
        if ($hasil) {
            echo "<script>window.alert('Berhasil');</script>";
            header("Location:indexpembayaran.php");
        }
        else {
            echo "<div class='alert alert-danger'> Data Gagal disimpan.</div>";

        }

    }
    ?>
    <h2>Input Data</h2>


    <form action="<?php echo $_SERVER["PHP_SELF"];?>" method="post">
        <div class="form-group">
            <label>No struk:</label>
            <input type="text" name="No" class="form-control" placeholder="Masukan No Struk" required />
        </div>
        <div class="form-group">
            <label>Customer Id:</label>
            <input type="text" name="cst" class="form-control" placeholder="Masukan Customer Id" required/>
        </div>
        <div class="form-group">
            <label>Tanggal :</label>
            <input type="text" name="tgl" class="form-control" placeholder="Masukan Tanggal" required/>
        </div>
        <button type="submit" name="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>
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

    if (isset($_GET['no_struk'])) {
        $no=input($_GET["no_struk"]);

        $sql="select * from transaksi where no_struk=$no";
        $hasil=mysqli_query($kon,$sql);
        $data = mysqli_fetch_assoc($hasil);


    }

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $no_struk = input($_POST["No"]);
        $customer = input($_POST["cst"]);
        $tanggal = input($_POST["tgl"]);
        $sqlDisableFKChecks = "SET FOREIGN_KEY_CHECKS = 0;";
        $sqlUpdate = "UPDATE transaksi 
                      SET no_struk = '$no_struk',
                          customer_id = '$customer',
                          tanggal = '$tanggal'
                      WHERE no_struk = '$no_struk'";
        $sqlEnableFKChecks = "SET FOREIGN_KEY_CHECKS = 1;";
    
        mysqli_query($kon, $sqlDisableFKChecks);
        $hasil = mysqli_query($kon, $sqlUpdate);
        mysqli_query($kon, $sqlEnableFKChecks);
    
        if ($hasil) {
            header("Location:indexpembayaran.php");
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
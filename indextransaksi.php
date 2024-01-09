<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<title>Crud Web</title>
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
    <br>
    <h4><center>Detail Transaksi</center></h4>   
    <a href="createtransaksi.php" class="btn btn-primary" role="button">Tambah Data</a>
    <?php
    include "koneksi.php";

    if (isset($_GET['transaksi_no_struk'])) {
        $nostruk = $_GET["transaksi_no_struk"];
        
        $sql = "DELETE FROM detail_transaksi WHERE transaksi_no_struk=?";
        $stmt = mysqli_prepare($kon, $sql);

        mysqli_stmt_bind_param($stmt, "s", $nostruk);
        $result = mysqli_stmt_execute($stmt);

        if ($result) {
            header("Location: index.php");
        } else {
            echo "<div class='alert alert-danger'> Data Gagal dihapus.</div>";
        }
    }
    ?>

     <tr class="table-danger">
            <br>
        <thead>
        <tr>
       <table class="my-3 table table-bordered">
            <tr class="table-primary">           
            <td> No struk </td>
            <td> Id Barang </td>
            <td> Id Detail </td>
            <td> Harga </td>
            <td> Kuantitas </td>
            <td> Edit </td>
            <td> Delete </td>

        </tr>
        </thead>

        <?php
        include "koneksi.php";
        $sql = "SELECT * FROM detail_transaksi ORDER BY (transaksi_no_struk)";

        $hasil=mysqli_query($kon,$sql);
        $no=0;
        while ($data = mysqli_fetch_assoc($hasil)) {
            $no++;

            ?>
            <tbody>
            <tr>
            <td><?php echo $data['transaksi_no_struk'] ?></td>
                <td><?php echo $data['barang_id_barang'] ?></td>
                <td><?php echo $data['id_detail'] ?></td>
                <td><?php echo $data['harga'] ?></td>
                <td><?php echo $data['kuantitas'] ?></td>
                <td><a href="updatetransaksi.php" class='btn btn-primary'>Edit</a></td>
                <td><a href='?transaksi_no_struk=<?php echo $data['transaksi_no_struk']; ?>' class='btn btn-danger'>Delete</a></td>

            </tr>
            </tbody>
            <?php
        }
        ?>
    </table>
</div>
</body>
</html>

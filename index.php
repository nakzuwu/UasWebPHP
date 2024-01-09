<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<title>Crud Web</title>
<body>
<nav class="navbar navbar-dark bg-dark">
    <div class="d-flex align-items-center">
        <a href="indextransaksi.php">
            <img src="logo cok.png" alt="Logo" style="mix-blend-mode: lighten; width: 40px; height: auto; margin-right: 10px;">
        </a>
        <a href="index.php" class="navbar-brand mb-0 h1">Home</a>
        <a href="indexpembayaran.php" class="navbar-brand mb-0 h1">Transaksi</a>
        <a href="indextransaksi.php" class="navbar-brand mb-0 h1">Detail Transaksi</a>
    </div>
</nav>
<div class="container mt-4">
    <h1 class="text-center">Pilih Tabel yang diinginkan</h1>
    <br>
    <div class="row">
        <div class="col-md-6 mx-auto"> 
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">Transaksi</h5>
                    <p class="card-text">Berisi transaksi yang sudah pernah dilakukan</p>
                    <a href="indexpembayaran.php" class="btn btn-primary">View</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">Detail Transaksi</h5>
                    <p class="card-text">Berisi detail dari transaksi yang pernah dilakukan</p>
                    <a href="indextransaksi.php" class="btn btn-primary">View</a>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>



</body>
</html>

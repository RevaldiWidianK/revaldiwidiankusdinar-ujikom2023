<?php
require 'koneksi.php';
function ambilsatubaris($conn, $query) {
    $db = mysqli_query($conn, $query);
    return mysqli_fetch_assoc($db);
} 
if(isset($_GET['id'])){
    $id_transaksi = $_GET['id'];
}
$query = "SELECT transaksi.*, pelanggan.nama_pelanggan, detail_transaksi.total_harga, detail_transaksi.total_bayar FROM transaksi INNER JOIN pelanggan ON pelanggan.id_pelanggan = transaksi.id_pelanggan INNER JOIN detail_transaksi ON detail_transaksi.id_transaksi = transaksi.id_transaksi WHERE transaksi.id_transaksi = " . $_GET['id'];

$data = ambilsatubaris($conn, $query);
?>
<style>
    table{
        border-collapse:collapse ;
    }
    </style>
    <center><h2>LAUNDRY UWING</h2></center>
    <hr>
    <table class="table" id="table" border="1" align="center" cellpadding="10">
        <thead>
            <tr>
                <th>kode_invoice</th>
                <th>Nama Pelanggan</th>
                <th>Status</th>
                <th>Pembayaran</th>
                <th>Tanggal pembayaran</th>
                <th>Total Bayar</th>
</tr>
</thead>
<tbody>
    <tr>
        <td><?php echo$data['kode_invoice']; ?></td>
        <td><?php echo$data['nama_pelanggan']; ?></td>
        <td><?php echo$data['status']; ?></td>
        <td><?php echo$data['status_bayar']; ?></td>
        <td><?php echo$data['tgl_pembayaran']; ?></td>
        <td><?= 'Rp'. number_format($data['total_harga']); ?></td>
</tr>
</tbody>
</table>
<script>window.print()</script>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>Them du lieu</title>
</head>
<body>
    <?php require_once 'connect.php' ?>
    <?php
        if (isset($_POST['add'])){
            $machinhanhlamviec = $_POST['machinhanhlamviec'];
            $maso = $_POST['maso'];
            $hovatenlot = $_POST['hovatenlot'];
            $ten = $_POST['ten'];
            $sodienthoai = $_POST['sodienthoai'];
            $diachi = $_POST['diachi'];
            $ngaysinh = $_POST['ngaysinh'];
            $luong = $_POST['luong'];
            $ngaybatdaulamviec = $_POST['ngaybatdaulamviec'];
            $soTK = $_POST['soTK'];
            $chinhanhnganhang = $_POST['chinhanhnganhang'];
            $giamsat = $_POST['giamsat'];
            $gioitinh = $_POST['gioitinh'];
            $sohuutaikhoan = $_POST['sohuutaikhoan'];
            
            if($conn -> query("INSERT INTO nhanvienbanhang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan) VALUE (N'$machinhanhlamviec', N'$maso', N'$hovatenlot', N'$ten',N'$sodienthoai',N'$diachi', N'$ngaysinh', N'$luong', N'$ngaybatdaulamviec', N'$soTK', N'$chinhanhnganhang', N'$giamsat', N'$gioitinh',N'$sohuutaikhoan')"))
            {
                echo "<script>alter('them thanh cong!');</script>";
                header("Location: index.php");
            }
            else{
                echo "<script>alter('them that bai!');</script>";
            }
        }
        $conn -> close();
    ?>

    <div class="container">
        <form method="POST" action="">
            <div class="form-group">
                <label for="machinhanhlamviec">MaChiNhanhLamViec</label>
                <input name="machinhanhlamviec" class="form-control" placeholder="MaChiNhanhLamViec">
            </div>
            <div class="form-group">
                <label for="maso">MaSo</label>
                <input name="maso" class="form-control" placeholder="MaSo">
            </div>
            <div class="form-group">
                <label for="hovatenlot">HoVaTenLot</label>
                <input name="hovatenlot" class="form-control" placeholder="HoVaTenLot">
            </div>
            <div class="form-group">
                <label for="ten">Ten</label>
                <input name="ten" class="form-control" placeholder="Ten">
            </div>
            <div class="form-group">
                <label for="sodienthoai">SoDienThoai</label>
                <input name="sodienthoai" class="form-control" placeholder="SoDienThoai">
            </div>
            <div class="form-group">
                <label for="diachi">DiaChi</label>
                <input name="diachi" class="form-control" placeholder="DiaChi">
            </div>
            <div class="form-group">
                <label for="ngaysinh">NgaySinh</label>
                <input name="ngaysinh" class="form-control" placeholder="yyyy-mm-dd">
            </div>
            <div class="form-group">
                <label for="luong">Luong</label>
                <input name="luong" class="form-control" placeholder="Luong">
            </div>
            <div class="form-group">
                <label for="ngaybatdaulamviec">NgayBatDauLamViec</label>
                <input name="ngaybatdaulamviec" class="form-control" placeholder="yyyy-mm-dd">
            </div>
            <div class="form-group">
                <label for="soTK">SoTK</label>
                <input name="soTK" class="form-control" placeholder="SoTK">
            </div>
            <div class="form-group">
                <label for="chinhanhnganhang">ChiNhanhNganHang</label>
                <input name="chinhanhnganhang" class="form-control" placeholder="ChiNhanhNganHang">
            </div>
            <div class="form-group">
                <label for="giamsat">GiamSat</label>
                <input name="giamsat" class="form-control" placeholder="GiamSat">
            </div>
            <div class="form-group">
                <label for="gioitinh">GioiTinh</label>
                <input name="gioitinh" class="form-control" placeholder="Nam/Nu">
            </div>
            <div class="form-group">
                <label for="sohuutaikhoan">SoHuuTaiKhoan</label>
                <input name="sohuutaikhoan" class="form-control" placeholder="SoHuuTaiKhoan">
            </div>
            <button type="submit" class="btn btn-primary" name="add">Them</button>
        </form>
    </div>
</body>
</html>
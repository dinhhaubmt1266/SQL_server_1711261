<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>Sua du lieu</title>
</head>
<body>
<?php
error_reporting(0);
    require_once 'connect.php';
    if (isset($_GET['maid'])){
        $id = $_GET['maid'];
        $query = "SELECT * FROM nhanvienbanhang WHERE ID=$id";
        $result = mysqli_query($conn,$query);
        $row = $result->fetch_array();
        $machinhanhlamviec = $row['MaChiNhanhLamViec'];
        $maso = $row['MaSo'];
        $hovatenlot = $row['HoVaTenLot'];
        $ten = $row['Ten'];
        $sodienthoai = $row['SoDienThoai'];
        $diachi = $row['DiaChi'];
        $ngaysinh = $row['NgaySinh'];
        $luong = $row['Luong'];
        $ngaybatdaulamviec = $row['NgayBatDauLamViec'];
        $soTK = $row['SoTK'];
        $chinhanhnganhang = $row['ChiNhanhNganHang'];
        $giamsat = $row['GiamSat'];
        $gioitinh = $row['GioiTinh'];
        $sohuutaikhoan = $row['SoHuuTaiKhoan'];
    }


    if(isset($_POST['edit'])){
        $machinhanhlamviecup = $_POST['machinhanhlamviec'];
        $masoup = $_POST['maso'];
        $hovatenlotup = $_POST['hovatenlot'];
        $tenup = $_POST['ten'];
        $sodienthoaiup = $_POST['sodienthoai'];
        $diachiup = $_POST['diachi'];
        $ngaysinhup = $_POST['ngaysinh'];
        $luongup = $_POST['luong'];
        $ngaybatdaulamviecup = $_POST['ngaybatdaulamviec'];
        $soTKup = $_POST['soTK'];
        $chinhanhnganhangup = $_POST['chinhanhnganhang'];
        $giamsatup = $_POST['giamsat'];
        $gioitinhup = $_POST['gioitinh'];
        $sohuutaikhoanup = $_POST['sohuutaikhoan'];

        $sql = "UPDATE nhanvienbanhang SET MaChiNhanhLamViec='$machinhanhlamviecup', MaSo='$masoup', HoVaTenLot='$hovatenlotup', Ten='$tenup', SoDienThoai='$sodienthoaiup', DiaChi='$diachiup', NgaySinh='$ngaysinhup', Luong='$luongup', NgayBatDauLamViec='$ngaybatdaulamviecup', SoTK='$soTKup', ChiNhanhNganHang='$chinhanhnganhangup', GiamSat='$giamsatup', GioiTinh='$gioitinhup', SoHuuTaiKhoan='$sohuutaikhoanup' WHERE ID=$id";
            if(mysqli_query($conn,$sql)){
                echo "<script>alter('Cap nhap thanh cong'); window.location='index.php'</script>";
                echo "Cap nhap thanh cong!";
                header("Location: index.php");
            }
            else{
                echo "<script>alter('Cap nhap khong thanh cong');</script>";
            }
    }
?>
    <div class="container">
        <form method="POST" action="">
            <div class="form-group">
                <label for="machinhanhlamviec">MaChiNhanhLamViec</label>
                <input name="machinhanhlamviec" class="form-control" value="<?php echo $machinhanhlamviec; ?>">
            </div>
            <div class="form-group">
                <label for="maso">MaSo</label>
                <input name="maso" class="form-control" value="<?php echo $maso; ?>">
            </div>
            <div class="form-group">
                <label for="hovatenlot">HoVaTenLot</label>
                <input name="hovatenlot" class="form-control" value="<?php echo $hovatenlot; ?>">
            </div>
            <div class="form-group">
                <label for="ten">Ten</label>
                <input name="ten" class="form-control" value="<?php echo $ten; ?>">
            </div>
            <div class="form-group">
                <label for="sodienthoai">SoDienThoai</label>
                <input name="sodienthoai" class="form-control" value="<?php echo $sodienthoai; ?>">
            </div>
            <div class="form-group">
                <label for="diachi">DiaChi</label>
                <input name="diachi" class="form-control" value="<?php echo $diachi; ?>">
            </div>
            <div class="form-group">
                <label for="ngaysinh">NgaySinh</label>
                <input name="ngaysinh" class="form-control" value="<?php echo $ngaysinh; ?>">
            </div>
            <div class="form-group">
                <label for="luong">Luong</label>
                <input name="luong" class="form-control" value="<?php echo $luong; ?>">
            </div>
            <div class="form-group">
                <label for="ngaybatdaulamviec">NgayBatDauLamViec</label>
                <input name="ngaybatdaulamviec" class="form-control" value="<?php echo $ngaybatdaulamviec; ?>">
            </div>
            <div class="form-group">
                <label for="soTK">SoTK</label>
                <input name="soTK" class="form-control" value="<?php echo $soTK; ?>">
            </div>
            <div class="form-group">
                <label for="chinhanhnganhang">ChiNhanhNganHang</label>
                <input name="chinhanhnganhang" class="form-control" value="<?php echo $chinhanhnganhang; ?>">
            </div>
            <div class="form-group">
                <label for="giamsat">GiamSat</label>
                <input name="giamsat" class="form-control" value="<?php echo $giamsat; ?>">
            </div>
            <div class="form-group">
                <label for="gioitinh">GioiTinh</label>
                <input name="gioitinh" class="form-control" value="<?php echo $gioitinh; ?>">
            </div>
            <div class="form-group">
                <label for="sohuutaikhoan">SoHuuTaiKhoan</label>
                <input name="sohuutaikhoan" class="form-control" value="<?php echo $sohuutaikhoan; ?>">
            </div>
            <button type="submit" class="btn btn-primary" name="edit">Edit</button>
        </form>
    </div>
</body>
</html>
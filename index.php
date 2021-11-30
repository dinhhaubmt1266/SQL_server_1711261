<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>Danh sach nhan vien ban hang</title>
</head>
<body>
<?php require_once 'connect.php' ?>
<?php
    $result = $conn->query("SELECT * FROM nhanvienbanhang");
?>
    <div class="container"> 
        <table class="table"> 
            <thead> 
                <tr>
                    <td> <a href="adddb.php?">Them</a> </td>
                    <th scope="clo">Delete</th>
                    <th scope="clo">MaChiNhanhLamViec</th>
                    <th scope="clo">MaSo</th>
                    <th scope="clo">HoVaTenLot</th>    
                    <th scope="clo">Ten</th>
                    <th scope="clo">SoDienThoai</th>
                    <th scope="clo">DiaChi</th> 
                    <th scope="clo">NgaySinh</th>
                    <th scope="clo">Luong</th>
                    <th scope="clo">NgayBatDauLamViec</th> 
                    <th scope="clo">SoTK</th>
                    <th scope="clo">ChiNhanhNganHang</th>
                    <th scope="clo">GiamSat</th>
                    <th scope="clo">GioiTinh</th>
                    <th scope="clo">SoHuuTaiKhoan</th> 
                </tr>
            </thead>
            <tbody>
            <?php while($row = mysqli_fetch_array($result)): ?>
                <tr>
                    <td> </td>
                    <td> <a href="connect.php?delete=<?php echo $row['ID']; ?>">Delete</a> - <a href="update.php?maid=<?php echo $row['ID']; ?>">Edit</a> </td>
                    <td><?php echo $row['MaChiNhanhLamViec']; ?></td>
                    <td><?php echo $row['MaSo']; ?></td>
                    <td><?php echo $row['HoVaTenLot']; ?></td>
                    <td><?php echo $row['Ten']; ?></td>
                    <td><?php echo $row['SoDienThoai']; ?></td>
                    <td><?php echo $row['DiaChi']; ?></td>
                    <td><?php echo $row['NgaySinh']; ?></td>
                    <td><?php echo $row['Luong']; ?></td>
                    <td><?php echo $row['NgayBatDauLamViec']; ?></td>
                    <td><?php echo $row['SoTK']; ?></td>
                    <td><?php echo $row['ChiNhanhNganHang']; ?></td>
                    <td><?php echo $row['GiamSat']; ?></td>
                    <td><?php echo $row['GioiTinh']; ?></td>
                    <td><?php echo $row['SoHuuTaiKhoan']; ?></td>
                </tr>
            <?php endwhile; ?>
            </tbody>
        </table>
    </div>
</body>
</html>


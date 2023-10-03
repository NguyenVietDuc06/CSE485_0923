<?php
require_once APP_ROOT.'/app/models/Baihat.php';
class BaihatService{
    public function getAllBaihat(){
        $dbConnection = new DBConnection();
        $conn = $dbConnection->getConnection();

        if ($conn != null){
            $sql = "SELECT * FROM baihat";
            $stmt = $conn->query($sql);

            $baihats = [];
            while ($row = $stmt->fetch()){
                $baihat = new Baihat($row['id'], $row['tenBaiHat'], $row['caSi'], $row['idTheLoai']);
                $baihats[] = $baihat;
            }
            return $baihats;
        }
    }
}
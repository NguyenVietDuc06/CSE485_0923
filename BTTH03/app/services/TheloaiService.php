<?php
require_once APP_ROOT.'/app/models/Theloai.php';
class TheloaiService{
    public function getAllTheloai(){
        $dbConnection = new DBConnection();
        $conn = $dbConnection->getConnection();

        if ($conn != null){
            $sql = "SELECT * FROM theloai";
            $stmt = $conn->query($sql);

            $theloais = [];
            while ($row = $stmt->fetch()){
                $theloai = new Theloai($row['id'], $row['tenTheLoai']);
                $theloais[] = $theloai;
            }
            return $theloais;
        }
    }
}
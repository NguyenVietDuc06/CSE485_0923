<?php
class Theloai{
    private $id;
    private $tenTheLoai;
    public function __construct($id, $tenTheLoai){
        $this->id = $id;
        $this->tenTheLoai = $tenTheLoai;
    }
    public function getId(){
        return $this->id;
    }
    public function setid($id){
        $this->id = $id;
    }

    public function gettenTheLoai(){
        return $this->tenTheLoai;
    }
    public function settenTheLoai($tenTheLoai){
        $this->tenTheLoai = $tenTheLoai;
    }
}
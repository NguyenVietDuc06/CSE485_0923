<?php
require_once APP_ROOT.'/app/services/TheloaiService.php';
class TheloaiController{
    public function index(){

        $TheloaiService = new TheloaiService();
        $theloais = $TheloaiService->getAllTheloai();

        include APP_ROOT.'/app/views/home/index.php';
    }
}
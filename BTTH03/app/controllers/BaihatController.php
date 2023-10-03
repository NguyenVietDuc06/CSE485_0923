<?php
require_once APP_ROOT.'/app/services/BaihatService.php';
class BaihatController{
    public function index(){

        $BaihatService = new BaihatService();
        $baihats = $BaihatService->getAllBaihat();

        include APP_ROOT.'/app/views/home/index.php';
    }
}
<?php
namespace app\admin\controller;

class Index extends Main
{  
    /**
     * 首页展示
    */
    public function index()
    {
        return $this->fetch();
    }
    /**
     * 桌面页
    */
    public function welcome()
    {
        return $this->fetch();
    }

    /**
     * 捐赠
     */
    public function donation()
    {
        return $this->fetch();
    }
   
}

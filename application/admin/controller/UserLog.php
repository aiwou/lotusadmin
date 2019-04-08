<?php
namespace app\admin\controller;

use app\admin\model\UserLog as UserLogModel;

class UserLog extends Main
{
	/**
     * 配置页面展示
    */
    public function siteConfig()
    {
        return $this->fetch();
    }

    public function index(){
        $model = new UserLogModel();
        $list  = $model->order('create_time desc')->paginate(10);
        $this->assign('list',$list);
        return $this->fetch();
    }

}

<?php
namespace app\index\controller;

use think\Db;
use think\Request;
use think\Cache;

class Index extends Base{

    public function index()
    {
        $view_count = Db::name('system')
            ->where('name','view_count')
            ->value('value');
        $this->assign('view_count',$view_count);
        $download_count = Db::name('system')
            ->where('name','download_count')
            ->value('value');
        $this->assign('download_count',$download_count);
      return $this->fetch();
    }

    public function testGet(){
    	$get = $this->request->get();
    	return json($get);
    }
    
    public function testPost(){
    	$post = $this->request->post();
    	return json($post);
    }

    public function  view_count(){
        $ip = $this->request->ip();
        if(empty( session('ip') )  ){
            Db::name('system')
                ->where('name','view_count')
                ->setInc('value');
        }
        session('ip',$ip);
    }

    public function  download_count(){
        Db::name('system')
            ->where('name','download_count')
            ->setInc('value');
    }
    
}

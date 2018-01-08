<?php
namespace app\admin\controller;

use think\Db;
class FileSystem extends Main
{
    function index(){
        $data  = Db::name('file')
            ->paginate(10);
        $this->assign('data',$data);
        return $this->fetch();
    }

    function upload(){
        if($this->request->isPost()){
             $file = $this->request->file('file');//file是传文件的名称，这是webloader插件固定写入的。因为webloader插件会写入一个隐藏input，不信你们可以通过浏览器检查页面
             $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
             Db::name('file')
                ->insert(['size'=>$info->getSize(),'url'=> 'public' . DS . 'uploads'.DS.$info->getSaveName()]);
             $this->success('上传成功');
        }else{
            return $this->fetch();
        }
    }
    
}
<?php
namespace app\admin\controller;

use think\Db;
use org\Backup;

const PREFIX = 'lotus_';

class DbManage extends Main
{
  //数据库维护页面展示 
  // function index(){
  //   $db_names =  Db::getTables();
  //   $count = count($db_names);
  //   $this->assign('db_names',$db_names);
  //   $this->assign('count',$count);
  //   return $this->fetch();
  // }

     /**
     * 数据表列表
     */
    public function index()
    {
        $dbtables = DB::query('SHOW TABLE STATUS');
        $total = 0;
        $list = array();
        foreach ($dbtables as $k => $v) {
            $name_arr = explode('_', $v['Name']);
            if ($name_arr[0] == trim(PREFIX, '_')) {
                $v['size'] = format_bytes($v['Data_length'] + $v['Index_length']);
                $list[$k] = $v;
                $total += $v['Data_length'] + $v['Index_length'];
            }
        }
        if (session('?backup_config.path')) {
            //备份完成，清空缓存
            @unlink(session('backup_config.path') . 'backup.lock');
            session('backup_tables', null);
            session('backup_file', null);
            session('backup_config', null);
        }
        $this->assign('list', $list);
        $this->assign('total', format_bytes($total));
        $this->assign('tableNum', count($list));
        return $this->fetch();
    }


    //
    public function backup(){

    }



    /**
     * 数据备份
    */
    public function export($tables = null, $id = null, $start = null)
    {
        //防止备份数据过程超时
        function_exists('set_time_limit') && set_time_limit(0);

        if(IS_POST && !empty($tables) && is_array($tables)){ //初始化
            $path = tpCache('global.web_sqldatapath');
            $path = !empty($path) ? $path : config('DATA_BACKUP_PATH');
            $path = trim($path, '/');
            if(!empty($path) && !is_dir($path)){
                mkdir($path, 0755, true);
            }

            //读取备份配置
            $config = array(
                'path'     => realpath($path) . DS,
                'part'     => config('DATA_BACKUP_PART_SIZE'),
                'compress' => config('DATA_BACKUP_COMPRESS'),
                'level'    => config('DATA_BACKUP_COMPRESS_LEVEL'),
            );
            //检查是否有正在执行的任务
            $lock = "{$config['path']}backup.lock";
            if(is_file($lock)){
                return json(array('info'=>'检测到有一个备份任务正在执行，请稍后再试！', 'status'=>0, 'url'=>''));
            } else {
                //创建锁文件
                file_put_contents($lock, NOW_TIME);
            }

            //检查备份目录是否可写
            if(!is_writeable($config['path'])){
                return json(array('info'=>'备份目录不存在或不可写，请检查后重试！', 'status'=>0, 'url'=>''));
            }
            session('backup_config', $config);

            //生成备份文件信息
            $file = array(
                'name' => date('Ymd-His', $_SERVER['REQUEST_TIME']),
                'part' => 1,
                'version' => getCmsVersion(),
            );
            session('backup_file', $file);
            //缓存要备份的表
            session('backup_tables', $tables);
            //创建备份文件
            $Database = new Backup($file, $config);
            if(false !== $Database->create()){
                $speed = (floor((1/count($tables))*10000)/10000*100).'%';
                $tab = array('id' => 0, 'start' => 0, 'speed'=>$speed, 'table'=>$tables[0]);
                return json(array('tables' => $tables, 'tab' => $tab, 'info'=>'初始化成功！', 'status'=>1, 'url'=>''));
            } else {
                return json(array('info'=>'初始化失败，备份文件创建失败！', 'status'=>0, 'url'=>''));
            }
        } elseif (IS_GET && is_numeric($id) && is_numeric($start)) { //备份数据
            $tables = session('backup_tables');
            //备份指定表
            $Database = new Backup(session('backup_file'), session('backup_config'));
            $start  = $Database->backup($tables[$id], $start);
            if(false === $start){ //出错
                return json(array('info'=>'备份出错！', 'status'=>0, 'url'=>''));
            } elseif (0 === $start) { //下一表
                if(isset($tables[++$id])){
                    $speed = (floor((($id+1)/count($tables))*10000)/10000*100).'%';
                    $tab = array('id' => $id, 'start' => 0, 'speed' => $speed, 'table'=>$tables[$id]);
                    return json(array('tab' => $tab, 'info'=>'备份完成！', 'status'=>1, 'url'=>''));
                } else { //备份完成，清空缓存
                    /*自动覆盖安装目录下的eyoucms.sql*/
                    $install_time = DEFAULT_INSTALL_DATE;
                    $constsant_path = APP_PATH.MODULE_NAME.'/conf/constant.php';
                    if (file_exists($constsant_path)) {
                        require_once($constsant_path);
                        defined('INSTALL_DATE') && $install_time = INSTALL_DATE;
                    }
                    $install_path = ROOT_PATH.'install_'.$install_time;
                    if (is_dir($install_path) && file_exists($install_path)) {
                        $srcfile = session('backup_config.path').session('backup_file.name').'-'.session('backup_file.part').'-'.session('backup_file.version').'.sql';
                        $dstfile = $install_path.'/eyoucms.sql';
                        @copy($srcfile, $dstfile);
                    }
                    /*--end*/
                    unlink(session('backup_config.path') . 'backup.lock');
                    session('backup_tables', null);
                    session('backup_file', null);
                    session('backup_config', null);
                    return json(array('info'=>'备份完成！', 'status'=>1, 'url'=>''));
                }
            } else {
                $rate = floor(100 * ($start[0] / $start[1]));
                $speed = floor((($id+1)/count($tables))*10000)/10000*100 + ($rate/100);
                $tab  = array('id' => $id, 'start' => $start[0], 'speed' => $speed.'%', 'table'=>$tables[$id]);
                return json(array('tab' => $tab, 'info'=>"正在备份...({$rate}%)", 'status'=>1, 'url'=>''));
            }

        } else {//出错
            return json(array('info'=>'参数有误', 'status'=>0, 'url'=>''));
        }
    }

  
}

<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
use app\common;

class System extends Base{

	public function __construct(){
		parent::__construct();
		if($this->otype != 3){
			echo 'æ­»ä¨å!';exit;
		}
	}

	/**
	 * ºæä¿¡æç®¡ç
	 * @author lukui  2017-02-17
	 * @return [type] [description]
	 */
	public function setbasic()
	{
		if (input('post.')) {
			$data = input('post.');
			$data['webname'] = trim($data['webname']);
			if(!$data['webname']){
				return WPreturn('è¯·è¥å¹³°åç§!',-1);
			}
			if(!isset($data['webisopen']) || $data['webisopen'] == ''){
				$data['webisopen'] = 0;
			}else{
				$data['webisopen'] = 1;
			}



			if(!isset($data['festivalisrec']) || $data['festivalisrec'] == ''){
				$data['festivalisrec'] = 0;
			}else{
				$data['festivalisrec'] = 1;
			}

			if($data['id']){ //å­ä¿
				 $editconf = Db::name('conf')->update($data);
	            if($editconf){
	            	//¡µç«ç½¥çå­ æ°¸ä
	            	cache('page', $data['pagenum']);
	            	cache('conf', $data);
	                return WPreturn('ä¿',1);
	            }else{
	                return WPreturn('ä¿å¤±è´¥',-1);
	            }
			}else{ //ä¸¨å
				$addid = Db::name('conf')->insert($data);
	            if($addid){
	            	//¡µç«ç½¥çå­æ°¸ä
	            	cache('page', $data['pagenum']);
	            	cache('conf', $data);
	                return WPreturn('æ·»å',1);
	            }else{
	                return WPreturn('æ·»åå¤±è´¥',-1);
	            }
			}




		}else{

			$conf = Db::name('conf')->find();
			$this->assign($conf);
			return $this->fetch();
		}

	}


	/**
	 * æ·»åç®¡ç
	 * @author lukui  2017-02-18
	 * @param  string $value [description]
	 * @return [type]        [description]
	 */
	public function addrole($value='')
	{


	}


	/**
	 * °æå¤»½¡¨
	 * @author lukui  2017-02-17
	 * @return [type] [description]
	 */
	public function dbbase()
	{
		$file = $data = array();
		$dir = "./databak/";
		$file = scandir($dir);
		unset($file[0]);
		unset($file[1]);
		$i = 1;
		foreach ($file as $key => $value) {
			$data[$key]['filename'] = $value;
			$data[$key]['id'] = $i;
			$handle = fopen($dir.$value,"r");
			$fstat= fstat($handle);
			$data[$key]['size'] = round($fstat["size"]/1024,2)."kb";
			$data[$key]['time'] = date("Y-m-d H:i:s",$fstat["mtime"]);
			$i++;
		}
		rsort($data);

		$this->assign('database',$data);
		return $this->fetch();
	}

	/**
	 * °æå¤»½°æ¡å
	 * @author lukui  2017-02-17
	 * @return [type] [description]
	 */
	public function backupsbase()
	{

		$type=input("tp");
        $name=input("name");
        $sql=new \org\Baksql(\think\Config::get("database"));
        switch ($type)
        {
        case "backup": //å¤»½
          return $sql->backup();
          break;
        case "dowonload": //ä¸½½
          $sql->downloadFile($name);
          break;
        case "restore": //è¿
          return $sql->restore($name);
          break;
        case "del": //
          return $sql->delfilename($name);
          break;
        default: //·åå¤»½»¶¡¨
            return $this->fetch("db_bak",["list"=>$sql->get_filelist()]);

        }


	}




	/**
	 * å¾¿¡½®
	 * @author lukui  2017-02-17
	 * @return [type] [description]
	 */
	public function setwx()
	{
		if (input('post.')) {
			$data = input('post.');
			foreach ($data as $key => $value) {
				$data[$key] = trim($value);
 			}


			if($data['wcid']){ //å­ä¿
				 $editwechat = Db::name('wechat')->update($data);
	            if($editwechat){
	                return WPreturn('ä¿',1);
	            }else{
	                return WPreturn('ä¿å¤±è´¥',-1);
	            }
			}else{ //ä¸¨å
				$addid = Db::name('wechat')->insert($data);
	            if($addid){
	                return WPreturn('æ·»å',1);
	            }else{
	                return WPreturn('æ·»åå¤±è´¥',-1);
	            }
			}
		}else{

			//å¾¿¡½®ä¿¡æ
			$wechat = Db::name('wechat')->find();
			$this->assign($wechat);
			return $this->fetch();
		}

	}


	/**
	 * å¹»ç æ·»åè¡
	 * @author lukui  2017-03-26
	 * @return [type] [description]
	 */
	public function homepic()
	{
		if(input('post.')){
			$path =  '/public/uploads/';

            $file = request()->file('img');

            if(!isset($file)){
                $this->error("è¯·ää¼");
            }

            $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
            if($info){
                $data['img'] = $path.$info->getSaveName();
            }else{
                echo $file->getError();
            }

            $ids = Db::name('slide')->insert($data);
            if($ids){
            	$this->success('æ·»å',url('system/homepic'),1,1);
            }else{
            	$this->error('æ·»åå¤±è´¥ï¼ï¼');
            }

            die;

		}else{
			$slide = Db::name('slide')->where(array('isdelete'=>0))->select();
			$this->assign('slide',$slide);
			return $this->fetch();
		}


	}

	/**
	 * å¹»ç
	 * @author lukui  2017-03-26
	 * @return [type] [description]
	 */
	public function delslide()
	{

		$id = input('get.id',0);
        if(!$id){
            return WPreturn('',-1);
        }

        $del = Db::name('slide')->where('id', $id)->update(['isdelete' => 1]);
        if($del){
            return WPreturn('',1);
        }else{
            return WPreturn('å¤±è´¥',-1);
        }

	}

	/**æ·»åç®¡ç
	*/
	public function adminadd()
	{
		if(input('post.')){


		$data = input('post.');


		//»éç©ºåç¬¸²ï¼¨åç¬¸²
		$data = array_filter($data);
		unset($data['upwd2']);

		if(isset($data['uid'])){
			$user = Db::name('userinfo')->where('uid',$data['uid'])->field('utel,upwd,utime')->find();

			//ä¿å¯
			if(isset($data['upwd']) && !empty($data['upwd'])){


				//éª¨æå¯
				$utime = Db::name('userinfo')->where('uid',$data['uid'])->value('utime');

				if(!isset($data['upwd']) || empty($data['upwd'])){
					return WPreturn('å¦ä¿å¯è¯·è¥æå¯!',-1);
				}
				if(isset($data['upwd']) && isset($data['upwd2']) && $data['upwd'] != $data['upwd2']){
					return WPreturn('ä¸¤æè¾å¯ä¸!',-1);
				}
				unset($data['upwd2']);
				unset($data['ordpwd']);
				$data['upwd'] = $data['upwd'];

			}



			$ids = Db::name('userinfo')->update($data);
		}else{
			$data['username'] = $data['nickname'];
			$data['utime'] = time();
			$data['upwd'] = $data['upwd'];
			$data['otype'] = 101;

			$isset = Db::name('userinfo')->where(array('username'=>$data['username']))->value('uid');
			if($isset) return WPreturn('æ­¤ç·å·²å­!',-1);
			//°æ
			$ids = Db::name('userinfo')->insertGetId($data);
		}


		if ($ids) {
			return WPreturn('!',1);
		}else{
			return WPreturn('å¤±è´¥,è¯·éè¯!',-1);
		}
	}
	if(input('param.uid')){
		$map['uid'] = input('param.uid');
		$user = db('userinfo')->where($map)->find();
		$this->assign($user);
		$this->assign('isedit',1);

	}
		return $this->fetch();
	}


	public function adminlist()
	{


		$map['otype'] = array('IN',array(101,3));
		$list = Db::name('userinfo')->where($map)->select();
		$this->assign('list',$list);
		return $this->fetch();
	}

	/**
	 * æ¸¨æopenid
	 * @author lukui  2017-05-31
	 * @return [type] [description]
	 */
	public function clearopenid()
	{
		
		$data['openid'] = null;
		$where['uid'] = array('gt',0);
		$ids = db('userinfo')->where($where)->update($data);

		if( $ids ){
			$this->success('ï¼');
		}else{
			$this->error('å¤±è´¥ï¼');
		}


	}





	/**
	 * ¶è¡åè¡
	 * @author lukui  2017-07-03
	 * @return [type] [description]
	 */
	public function banks()
	{
		

		$banks = db('banks')->select();

		$this->assign('banks',$banks);
		return $this->fetch();

	}

	/**
	 * ¶è
	 * @author lukui  2017-07-03
	 * @return [type] [description]
	 */
	public function deletebanks()
	{
		
		$id = input('id');
		$ids = db('banks')->where('id',$id)->delete();
		if($ids){
			return WPreturn('',1);
		}else{
			return WPreturn('å¤±è´¥',-1);
		}
		

	}

	/**
	 * ç¼¶è
	 * @author lukui  2017-07-05
	 * @return [type] [description]
	 */
	public function editbanks()
	{
		

		$post = input('post.');

		if(isset($post['id']) && !empty($post['id'])){
			$ids = db('banks')->update($post);
		}else{
			unset($post['id']);
			$ids = db('banks')->insert($post);
		}
		if($ids){
			return WPreturn('',1);
		}else{
			return WPreturn('å¤±è´¥',-1);
		}
		
	}

	/**
	 * ¼éç½
	 * @author lukui  2017-07-05
	 * @return [type] [description]
	 */
	public function recharge()
	{
		
		$payment =db('payment')->where('isdelete',0)->order('pay_order desc')->select();
		foreach($payment as $k=>$v){
		    $payment[$k]['dotime'] = date('Y-m-d H:i:s',$payment[$k]['dotime']);
		}
		$this->assign('payment',$payment);
		return $this->fetch();

	}

	/**
	 * æ·»åè¾¼éç½
	 * @author lukui  2017-07-05
	 * @return [type] [description]
	 */
	public function addrech()
	{
		
		$post = input('post.');
		if($post){

			$data['pay_name'] = trim($post['pay_name']);
			if($post['is_use'] != 1){
				$data['is_use'] = 0;
			}else{
				$data['is_use'] = $post['is_use'];
			}

			if($post['pay_point'] < 0 || $post['pay_point'] > 100){
				$data['pay_point'] = 0;
			}else{
				$data['pay_point'] = empty($post['pay_point'])?0:$post['pay_point'];
			}
			
			if(empty($post['pay_conf'])){
				return WPreturn('è¯·è¥éç½¿¡',-1);
			}
			
			$data['pay_conf'] = $post['pay_conf'];
			$data['isdelete'] = 0;
			$data['dotime'] = time();
			$data['pay_order'] = $post['pay_order'];
			$data['account_no'] = $post['account_no'];

			// ¾ç
			$file = request()->file('thumb');
			if($file){				
				$info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
				if($info){
					$data['thumb'] = '/public' . DS . 'uploads/'.$info->getSaveName();
				}
			}

			if(isset($post['id']) && !empty($post['id'])){
				$data['id'] = $post['id'];
				$ids = db('payment')->update($data);
			}else{
				$ids = db('payment')->insert($data);
			}
			if($ids){
				return $this->success('');
			}else{
				return $this->error('å¤±è´¥');
			}
			
		}

		$id = input('id');
		if($id && is_numeric($id)){

			$payment = db('payment')->where('id',$id)->find();
			if(!$payment){
				$this->error('ï¼');
			}
			
			
			
			$this->assign($payment);
		}
		
		return $this->fetch();
	}

	/**
	 * ¹å
	 * @author lukui  2017-07-05
	 * @return [type] [description]
	 */
	public function deletepay()
	{
		
		$id = input('id');
		$ids = db('payment')->where('id',$id)->update(array('isdelete'=>1));
		if($ids){
			return WPreturn('',1);
		}else{
			return WPreturn('å¤±è´¥',-1);
		}

	}

	// ¥æ¶è
	public function sysbank(){
		if(request()->isPost()){
			$post = input('post.');
			db('sysbank')->update($post);
			return WPreturn('',1);
		}else{
			$sysbank = db('sysbank')->find();
			$this->assign('sysbank', $sysbank);
			return $this->fetch();
		}
	}
public function backup(){
		$db = $this->DB;
		var_dump($db->dataList());
	}



}

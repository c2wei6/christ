<?php

class christ 
{
	protected $_db = 'christ';
	protected $_server = 'localhost';
	protected $_uname  = 'root';
	protected $_passwd = 'root';
	protected $_table  = 'lucker';
    protected $_link;

    protected $_data = [
        "draw" => [
            "testdraw",
            "testdraw",
            "testdraw",
            "testdraw",
            "testdraw",
            "testdraw",
            "testdraw",
            "testdraw",
            "testdraw",
        ],
        "divine" => [
            "testdivine1",
            "testdivine2",
            "testdivine3",
            "testdivine4",
            "testdivine5",
            "testdivine6",
            "testdivine7",
            "testdivine8",
            "testdivine9",
            "testdivine10",
            "testdivine12",
            "testdivine13",
            "testdivine14",
            "testdivine15",
            "testdivine16",
            "testdivine17",
            "testdivine18",
            "testdivine19",            
        ],
    ];

    function __construct()
    {
        $ret = json_encode([
            'code' => -1,
            'err'  => '数据库连接失败' 
        ]);
    	$this->_link = mysqli_connect($this->_server, $this->_uname, $this->_passwd, $this->_db) or die($ret);

    	mysqli_set_charset($this->_link, 'utf8');
    }

    public function getdata($id = 1)
    {
        if ($id == 1) {
            $result = $this->_data['draw'];
        } else if ($id == 2) {
            $result = $this->_data['divine'];
        }

        return json_encode([
            "code" => 200,
            "msg"  => $result,
        ]);
    }

    public function draw()
    {
        if (rand(8, 9) == 8) {

            $token = md5('lucker') . time();

            $redis = new Redis();
            $redis->connect('127.0.0.1', '6379');

            $redis->set($token, 1);

            return json_encode([
                'code' => 200,
                'token' => md5('lucker') . time(),
            ]);
        } else {
            return json_encode([
                'code' => -1,
                'err' => '没有抽中',
            ]);
        }
    }

    public function saveinfo($info)
    {
        $token   = $info['token'];
        $name    = $info['name'];
        $phone   = $info['phone'];
        $address = $info['address'];

        $redis = new Redis();
        $redis->connect('127.0.0.1', '6379');

        if ($redis->get($token) == 1) {
            $redis->set($token, 0);

            $sql1 = "SELECT * FROM `".$this->_table."` WHERE phone='".$phone."'";

            if (mysqli_query($this->_link, $sql1)) {
                return json_encode([
                    "code" => -1,
                    "msg"  => '你已经参与过了～',
                ]);
            }

            $sql = "INSERT INTO `".$this->_table."` (name, phone, address) VALUES ('".$name."', '".$phone."', '".$address."')";

            if (mysqli_query($this->_link, $sql)) {
                return json_encode([
                    "code" => 200,
                    "msg"  => '我们已收到，请耐心等待祝福～',
                ]);
            } else {
                return json_encode([
                    "code" => -1,
                    "err"  => 'faild',
                ]);
            }
        } else {
            return json_encode([
                "code" => -1,
                "err"  => '不要乱搞哦～',
            ]);
        } 

    }

    function __destruct()
    {
    	mysqli_close($this->_link);
    }
}

$paramerr = json_encode(['code' => -1, 'err' => '参数错误']);

$christ = new christ();

$a = isset($_GET['a']) ? $_GET['a'] : die($paramerr);

switch ($a) {

    case 1:
        $id = isset($_GET['id']) ? $_GET['id'] : die($paramerr);

        echo $christ->getdata($id);
        break;

    case 2:
        echo $christ->draw();
        break;

    case 3:
        $info = [
            'token'   => isset($_POST['token']) ? $_POST['token'] : die($paramerr),
            'name'    => isset($_POST['name']) ? $_POST['name'] : die($paramerr),
            'phone'   => isset($_POST['phone']) ? $_POST['phone'] : die($paramerr),
            'address' => isset($_POST['address']) ? $_POST['address'] : die($paramerr),
        ];

        echo $christ->saveinfo($info);
        break;

    default:
        die($paramerr);
        break;
}
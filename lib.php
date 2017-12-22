<?php
include 'daan.php';
class christ 
{
	protected $_db = 'christ';
	protected $_server = 'localhost';
	protected $_uname  = 'root';
	protected $_passwd = 'root';
	protected $_table  = 'lucker';
    protected $_link;

    protected $_data = [
        'divine' => [],
        'draw'   => []
    ];

    function __construct()
    {
        global $daan;
        $this->_data['divine'] = $daan;
        $ret = json_encode([
            'code' => -1,
            'err'  => '数据库连接失败' 
        ]);
    	$this->_link = mysqli_connect($this->_server, $this->_uname, $this->_passwd, $this->_db) or die($ret);

    	mysqli_set_charset($this->_link, 'utf8');
    }

    public function getdata($id = 1)
    {
        // if ($id == 1) {
        //     $result = $this->_data['draw'];
        // } else if ($id == 2) {
        //     $result = $this->_data['divine'];
        // }
        $data = $this->_data['divine'];
        $len = count($data);
        $result = array_slice($data, rand(1, $len-10), 9);

        return json_encode([
            "code" => 200,
            "msg"  => $result,
        ]);
    }

    public function draw()
    {
        $sql = "SELECT COUNT(*) FROM `lucker`";
        $total = mysqli_fetch_assoc(mysqli_query($this->_link, $sql))["COUNT(*)"];

        if ($total > 20) {
            return json_encode([
                'code' => -1,
                'err' => '奖品已经抽完了',
            ]);
        }
        
        if (rand(0, 9) == 8) {

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

            $sql1 = "SELECT * FROM `".$this->_table."` WHERE phone='".$phone."'";

            if (mysqli_num_rows(mysqli_query($this->_link, $sql1)) > 0) {
                return json_encode([
                    "code" => -1,
                    "err"  => '你已经参与过了～',
                ]);
                die();
            }

            $redis->set($token, 0);

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

    public function savemessage($info)
    {
        $content = $info['content'];
        $name = $info['name'];

        $sql = "INSERT INTO `message` (content, name, create_at) VALUES ('".$content."', '".$name."', NOW())";

        if (mysqli_query($this->_link, $sql)) {
            return json_encode([
                "code" => 200,
                "msg"  => '我们已收到，谢谢!',
            ]);
        } else {
            return json_encode([
                "code" => -1,
                "err"  => 'faild',
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

    case 4:
        $info = [
            'name'    => isset($_POST['name']) ? $_POST['name'] : die($paramerr),
            'content'   => isset($_POST['content']) ? $_POST['content'] : die($paramerr),
        ];
        echo $christ->savemessage($info);
        break;

    default:
        die($paramerr);
        break;
}
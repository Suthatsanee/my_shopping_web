<?php
class DBController {
	//��˹���ҵ�ҧ�����Ѻ����������Ͱҹ������
	// private $host = "localhost";
	 private $host = "db";
	private $user = "root";
	private $password = "12345678";
	private $database = "web";
	private $conn;
	
	//���������Ŵ���������͡�ѧ����������Ͱҹ������
	function __construct() {
		$this->conn = $this->connectDB();
	}
	
	//�ѧ�������Ѻ����������Ͱҹ������
	function connectDB() {
		$conn = mysqli_connect($this->host,$this->user,$this->password,$this->database);
		return $conn;
	}
	
	//�ѧ�������Ѻ��ä����������
	function runQuery($query) {
		$result = mysqli_query($this->conn,$query);
		while($row = mysqli_fetch_assoc($result)) {
			$resultset[ ] = $row; 
		}
		if(!empty($resultset))
			return $resultset;
	}
	
	//�ѧ�������Ѻ��ùѺ�ӹǹ��
	function numRows($query) {
		$result = mysqli_query($this->conn,$query);
		$rowcount = mysqli_num_rows($result);
		return $rowcount;
	}
}
?>
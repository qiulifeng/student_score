<?php
require_once 'dbconfig.php';
header ( "content-type:text/html;charset=utf-8" );


// 取表单数据
$id = $_REQUEST['id'];
$studentId = $_REQUEST ['studentId'];
$name = $_REQUEST ['name'];
$sex = $_REQUEST ['sex'];
$className = $_REQUEST ['className'];


// sql语句中字符串数据类型都要加引号，数字字段随便
$sql = "UPDATE student SET studentId='$studentId',name='$name',sex='$sex',className='$className' WHERE id=$id";
if (mysql_query ( $sql )) {
	echo "修改成功！！！<br/>";
	echo "<a href='control.php'>返回</a>";
} else {
	echo "修改失败！！！<br/>";
	echo "<a href='control.php'>返回</a>";
}



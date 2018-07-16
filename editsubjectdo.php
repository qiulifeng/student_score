<?php
require_once 'dbconfig.php';
header ( "content-type:text/html;charset=utf-8" );


// 取表单数据
$id = $_REQUEST['id'];
$km_id = $_REQUEST ['km_id'];
$km_name = $_REQUEST ['km_name'];


// sql语句中字符串数据类型都要加引号，数字字段随便
$sql = "UPDATE subject SET km_id='$km_id',km_name='$km_name' WHERE id=$id";
if (mysql_query ( $sql )) {
	echo "修改成功！！！<br/>";
	echo "<a href='subject.php'>返回</a>";
} else {
	echo "修改失败！！！<br/>";
	echo "<a href='subject.php'>返回</a>";
}



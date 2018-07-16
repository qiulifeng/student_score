<?php
require_once 'dbconfig.php';
header("content-type:text/html;charset=utf-8");
//取表单数据
$studentId = $_REQUEST['studentId'];
$km_id = $_REQUEST['km_id'];
$mark = $_REQUEST['mark'];




//sql语句中字符串数据类型都要加引号，数字字段随便
$sql = "INSERT INTO score(id, studentId, km_id,mark) 
VALUES (null,'$studentId','$km_id','$mark')";
//exit($sql);

if(mysql_query($sql)){
	echo "添加成功！！！<br/>";
	echo "<a href='score.php'>返回</a>";
}else{
	echo "添加失败！！！<br/>";
	echo "<a href='score.php'>返回</a>";
}
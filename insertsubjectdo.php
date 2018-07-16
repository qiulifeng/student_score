<?php
require_once 'dbconfig.php';
header("content-type:text/html;charset=utf-8");
//取表单数据
$km_id = $_REQUEST['km_id'];
$km_name = $_REQUEST['km_name'];


//sql语句中字符串数据类型都要加引号，数字字段随便
$sql = "INSERT INTO subject(id,km_id, km_name) 
VALUES (null,'$km_id','$km_name')";
//exit($sql);

if(mysql_query($sql)){
	echo "添加成功！！！<br/>";
	echo "<a href='subject.php'>返回</a>";
}else{
	echo "添加失败！！！<br/>";
	echo "<a href='subject.php'>返回</a>";
}
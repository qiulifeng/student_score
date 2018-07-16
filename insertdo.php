<?php
require_once 'dbconfig.php';
header("content-type:text/html;charset=utf-8");
//取表单数据
$studentId = $_REQUEST['studentId'];
$name = $_REQUEST['name'];
$sex = $_REQUEST['sex'];
$className = $_REQUEST['className'];






//sql语句中字符串数据类型都要加引号，数字字段随便
$sql = "INSERT INTO student(id, studentId, name,sex,className) 
VALUES (null,'$studentId','$name','$sex','$className')";
//exit($sql);

if(mysql_query($sql)){
	echo "添加成功！！！<br/>";
	echo "<a href='control.php'>返回</a>";
}else{
	echo "添加失败！！！<br/>";
echo "<a href='control.php'>返回</a>";
}
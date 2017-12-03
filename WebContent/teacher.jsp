<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Menu</title>
  
  
  
      <link rel="stylesheet" href="css/teacher.css">
      <script src="js/teacher.js">
</script>
  
</head>

<body>
  
  <nav class="dropdownmenu">
  <ul>
    <li><a href="http://www.jochaho.com/wordpress/">Home</a></li>
    <li><a href="#" data-toggle="dropdown">添加题目<i class="icon-arrow"></a>
      <ul id="submenu" class="dropdown-menu">
        
        <li><a onclick="judge()" >判断题</a></li>
        <li><a onclick="question()">问答题</a></li>
        <li><a onclick="disappear()">选择题(单选)</a></li>
      </ul>
    </li>
    <li><a >删除题目</a></li>
    <li><a >联系我们</a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
    <li><a></a></li>
  </ul>
  </nav>


<div class="wrapper">
  <div id="ch">
	<div class="container">	
		<form class="choose" action="choose1">
      <h3>题目描述:</h3><br/>
      <textarea name="choose_text" style="width:330px;height:80px;"></textarea><br/>
      <input type="text" placeholder="选项A" name="choosea" >
      <input type="text" placeholder="选项B" name="chooseb"><br/>
      <input type="text" placeholder="选项C" name="choosec">
      <input type="text" placeholder="选项D" name="choosed"><br/>
      <input type="checkbox" value="A" name="answer" style="zoom:200%">A:
      <input type="checkbox" value="B" name="answer" style="zoom:200%">B:
      <input type="checkbox" value="C" name="answer" style="zoom:200%">C:
      <input type="checkbox" value="D" name="answer" style="zoom:200%">D:<br/>
      <input type="checkbox" value="1" name="hard" style="zoom:200%">1
      <input type="checkbox" value="2" name="hard" style="zoom:200%">2
      <input type="checkbox" value="3" name="hard" style="zoom:200%">3
      <input type="checkbox" value="4" name="hard" style="zoom:200%">4
      <input type="checkbox" value="5" name="hard" style="zoom:200%">5<br/>
      <button type="submit" id="login-button">提交</button>

		</form>
	</div>
  </div>

  <div id="ju">
	<div class="container">	
		<form class="judge" action="judge1">
      <h3>题目描述:</h3>
      <textarea name="choose_text" style="width:250px;height:80px;"></textarea><br/>
      <label><input type="checkbox" value="T" name="answer">T</label>
      <label><input type="checkbox" value="F" name="answer">F</label><br/>
      <input type="checkbox" value="1" name="hard">1
      <input type="checkbox" value="2" name="hard">2
      <input type="checkbox" value="3" name="hard">3
      <input type="checkbox" value="4" name="hard">4
      <input type="checkbox" value="5" name="hard">5<br/>
      <button type="submit" id="login-button">提交</button>
		</form>
	</div>
  </div>

  <div id="qu">
	<div class="container">	
		<form class="question" action="question1">
      <h3>题目描述:</h3>
      <textarea name="choose_text" style="width:250px;height:80px;"></textarea><br/>
      <textarea name="answer" style="width:250px;height:80px;"></textarea><br/>
      <input type="checkbox" value="1" name="hard">1
      <input type="checkbox" value="2" name="hard">2
      <input type="checkbox" value="3" name="hard">3
      <input type="checkbox" value="4" name="hard">4
      <input type="checkbox" value="5" name="hard">5<br/>
      <button type="submit" id="login-button">提交</button>
			
		</form>
	</div>
  </div>
  







</div>









 
  
  
</body>
</html>

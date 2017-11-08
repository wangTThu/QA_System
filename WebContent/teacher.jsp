<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>HTML5/CSS3 Horizontal Menu</title>
  
  
  
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
        <li><a onclick="disappear()">选择题(多选or单选)</a></li>
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
      <h3>题目描述:</h3>
      <textarea name="choose_text" style="width:250px;height:80px;"></textarea>
      <input type="text" placeholder="选项A" name="choosea">
      <input type="text" placeholder="选项B" name="chooseb">
      <input type="text" placeholder="选项C" name="choosec">
      <input type="text" placeholder="选项D" name="choosed">
      <input type="text" placeholder="答案" name="answer">
      <input type="text" placeholder="难度系数1-5" name="hard">
      <button type="submit" id="login-button">提交</button>

		</form>
	</div>
  </div>

  <div id="ju">
	<div class="container">	
		<form class="judge" action="judge1">
      <h3>题目描述:</h3>
      <textarea name="choose_text" style="width:250px;height:80px;"></textarea>
      <input type="text" placeholder="答案TorF" name="answer">
      <input type="text" placeholder="难度系数1-5" name="hard">
      <button type="submit" id="login-button">提交</button>
		</form>
	</div>
  </div>

  <div id="qu">
	<div class="container">	
		<form class="question" action="question1">
      <h3>题目描述:</h3>
      <textarea name="choose_text" style="width:250px;height:80px;"></textarea>
      <input type="text" placeholder="答案" name="answer">
      <input type="text" placeholder="难度系数1-5" name="hard">
      <button type="submit" id="login-button">提交</button>
			
		</form>
	</div>
  </div>
  







</div>









 
  
  
</body>
</html>

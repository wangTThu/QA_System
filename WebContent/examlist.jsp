<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Fixed table header</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <link rel="stylesheet" href="css/manger.css">

  
</head>

<body>
  <section>
  <!--for demo wrap-->
  <h1>题目列表</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>试卷</th>
          <th>试卷难度值</th>
          <th>重复率</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      
      <tbody>
      	<s:iterator value="%{ExamList}" status="st" >
       <tr>
          <td><s:url action="showexam" var="Link">
			    <s:param name="ExamName"><s:property value="%{ExamList[#st.index]}"/></s:param>
			  </s:url>
			  <a href="${Link}"><s:property value="%{ExamList[#st.index]}"/></a>
		  </td>
          <td><s:property value="%{HardLevel[#st.index]}"/></td>
          <td>0%</td>
        </tr>
         </s:iterator> 
      </tbody>
      
    </table>
  </div>
</section>


<!-- follow me template -->
<div class="made-with-love">
  Made with
  <i>♥</i> by
  <a target="_blank" href="https://codepen.io/nikhil8krishnan">Nikhil Krishnan</a>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="js/index.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>试卷</title>

  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <link rel="stylesheet" href="css/manger.css">

  
</head>

<body>
<form action=AutoJudge>
  <section>
  <!--for demo wrap-->
  <h1>题目列表</h1>
   <s:iterator value="%{Description}" status="st">
  <div class="tbl-header">
 
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th><s:property value="%{Description[#st.index]}"/><input type="text" name="StudentAnswer"></th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      
      <tbody>
       <tr>
          <td><s:property value="%{CA[#st.index]}"/></td>
          <td><s:property value="%{CB[#st.index]}"/></td>
          <td><s:property value="%{CC[#st.index]}"/></td>
          <td><s:property value="%{CD[#st.index]}"/></td>
        </tr>
      
      </tbody>
        
    </table>
 </div>
</s:iterator>
<button type="submit" id="login-button" name="ExamName" value="<s:property value="ExamName"/>">提交</button>
</section>
</form>


  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="js/index.js"></script>

</body>
</html>

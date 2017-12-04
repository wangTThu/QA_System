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
  <h1><s:property value="Title"/>列表</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>题目描述</th>
          <th>答案</th>
          <th>题目难度</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
  <form action="construct">
    <table cellpadding="0" cellspacing="0" border="0">
      
      <tbody>
      	<s:iterator value="%{Description}" status="st" >
       <tr>
          <td><input type="checkbox" name="problems" value='<s:property value="%{Description[#st.index]}"/>'/><s:property value="%{Description[#st.index]}"/></td>
          <td><s:property value="%{Answer1[#st.index]}"/></td>
          <td><s:property value="%{HardLevel[#st.index]}"/></td>
        </tr>
         </s:iterator> 
      </tbody>
      
    </table>
     <button type="submit" id="login-button">组卷</button>
   </form>
  </div>
</section>


<!-- follow me template -->

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="js/index.js"></script>

</body>
</html>

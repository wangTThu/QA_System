<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>试卷</title>
  <script type="text/javascript">
        function formSubmit()
        {
           // return false; 可以在这里进行表单校验。
            alert("组卷完成");
            //该方法提交表单的方式与用户单击 Submit 按钮一样，但是表单的 onsubmit 事件句柄不会被调用。
            //onsubmit="return false;"可以用于阻止enter键提交表单。

        }
    </script>

  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <link rel="stylesheet" href="css/manger.css">

  
</head>

<body>
  <section>
  <!--for demo wrap-->
  <h1>题目列表</h1>
   <s:iterator value="%{Description}" status="st">
  <div class="tbl-header">
 
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr><s:url action="deleteproblem" var="Link">
			    <s:param name="problemName"><s:property value="%{Description[#st.index]}"/></s:param>
			  </s:url>
			  
          <th><a href="${Link}">删除</a><s:property value="%{Description[#st.index]}"/></th>
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
<form action="confirm">
<button type="submit" id="login-button" onclick="formSubmit()">确认</button>
</form> 
</section>



  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="js/index.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Coloron score animation</title>
  
  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,700,900'>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css'>

      <link rel="stylesheet" href="css/score.css">

  
</head>

<body>
  <div class="container">

    <div class="stop-game game-full-flex">
      <div class="score">

        <div class="score-container">

            <h1>成绩</h1>

            <div class="final-score"><s:property value="score"/></div>
            <div class="result">Awesome!</div>

        </div>
        
      </div>

    </div>

    <div class="small-glows"></div>

    <div class="glow"><div class="sun"></div></div>

    <div class="waves">
        <div class="top_wave"></div>
        <div class="wave1"></div>
        <div class="wave2"></div>
        <div class="wave3"></div>
        <div class="wave4"></div>
    </div>

    <div class="mounts">
        <div class="mount1"></div>
        <div class="mount2"></div>
    </div>

    <div class="clouds"></div>


    <div class="noise"></div>

</div>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js'></script>

    <script  src="js/index.js"></script>

</body>
</html>

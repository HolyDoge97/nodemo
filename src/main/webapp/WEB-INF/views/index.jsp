<div class="Whole_Page">
    <p>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
    </p>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Index Page</title>
    <div class="head_section">&nbsp</div>
    <link rel="stylesheet" href="/css/main.css">

    </head>
    <script
      src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous">
    </script>
  
    <script>
    
      function get(url){
        const xhr = new XMLHttpRequest();
        xhr.open("GET", url);
        xhr.send();
        xhr.onload = () => {
        if (xhr.status === 200) { 
          console.log("성공!")
          console.log(xhr.response);
        } else {
          console.log("실패")
        }
      };
    };
    
    let url = "http://localhost:8080/list"
    
    // get(url)
    
    </script>
    
    <body style="background-color: rgb(226, 225, 225)" );>
      <h1 id="H1_bigger" style="position: absolute; top: 0%; left: 30px" >
        <a style="text-decoration: none" href="/">😛</a>
      </h1>
      <h3 class="with_Emoji">
        <a href="/returnTest">You're in POST LIST Page</a>
      </h3>
      <div class="contextBody">
        <h2>[&nbsp&nbsp게시글 목록&nbsp&nbsp]</h2>
      </div>
      <div class="boxbox" id="testButton"> 
        <p> 낄낄🤪 </p>
        <button id="off">눌러서 닫으셈</button>
      </div>

      <button onclick="me">눌러봐😙</button>

      <div class="showList">
        <h1>asdf</h1>
        <h1>asdf</h1>
        <h1>asdf</h1>
      </div>

    
    <script>
    document.getElementById('off').addEventListener(click,function(){
      document.getElementById('testButton').style.display='none';
    });

    function me(){
      document.getElementById('testButton').style.display='block'
    }
    </script>


    </body>
    <footer>
      <div id="footer" style="background-color:rgb(207, 255, 239);">
      </div>
    </footer>
    </p>
  </div>
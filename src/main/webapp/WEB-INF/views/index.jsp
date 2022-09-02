<div class="Whole_Page">
    <p>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Index Page</title>
    <div class="head_section">&nbsp</div>
    <link rel="stylesheet" href="main.css">
    </head>
    <script
      src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous">
    </script>

    <script>
      // 비동기 방식으로 freeboard의 전체 데이터 요청
      let url = "http://localhost:8080/data/listall"
      function get(url, result){
        const xhr = new XMLHttpRequest();
        xhr.open("GET", url);
        xhr.send();
        xhr.onload = () => {
        if (xhr.status === 200) { 

          result = JSON.parse(xhr.response)
          console.log(result)
          document.querySelector("body > div > div.showList > h1").append("으아아아아앆")
          
        } else {
          console.log("Check PLZ")
        }
      }
    }
    </script>

    <body style="background-color: rgb(82, 82, 82)" );>
      <h1 id="H1_bigger" style="position: absolute; top: -90px; left: 30px">
        <a style="text-decoration: none" href="/">😛</a>
      </h1>
      <h3 class="with_Emoji">
        <a href="/returnTest">You're in POST LIST Page</a>
      </h3>
      <div class="contextBody">
        <h2>[&nbsp&nbsp게시글 목록&nbsp&nbsp]</h2>
      </div>
      <div class="showList">
        <h1>dddddd</h1>
      </div>
    </body>
    <footer>
      <div id="footer" style="background-color:rgb(207, 255, 239);">
      </div>
    </footer>
    </p>
  </div>
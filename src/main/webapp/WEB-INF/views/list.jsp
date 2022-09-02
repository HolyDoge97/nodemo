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
    <style>
    .showList{
    font-size : 20px;
    position: absolute;
    background-color: rgb(170, 245, 255);
    top: 50%;
    height: 80vh;
    width: 85vw;
    padding-left: 30;
    }

    .Whole_Page {
      font-size: 20px;
      padding: 5%;
    }

    .head_section {
      width: 88vw;
      height: 19vh;
      background-color: rgb(207, 255, 239);
      border-radius: 3vw;
    }

    .context_1 {
      position: relative;
      left: 50px;
    }

    .context_2 {
      position: relative;
      left: 50px;
    }

    #H1_bigger {
      font-size: 150px;
    }

    .main_emoji {
      position: absolute;
      left: 1px;
    }

    .with_Emoji {
      font-size: 50px;
      position: relative;
      left: 50vh;
      top: -10vw;
    }

    .contextBody {
      background-color: azure;
      border-radius: 10px;
      padding: 20px;
      padding-bottom: 30px;
      margin: -60px;
      position: relative;
      top: -8vh;
      height: 95vh;
    }

    #footer{
      background-color: rgb(207, 255, 239);
      height: 155px;
      margin: -40px;
      border-radius: 15px;
      position: relative;
    }

    </style>
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
          console.log(xhr.response);
          $(event.target).parent().parent().parent().append(tagPop);
        } else {
          console.log("실패")
        }
      };
    };

    let url = "http://localhost:8080/data/listall"

    // get(url)

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
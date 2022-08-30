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
        .Whole_Page {
          font-size: 20px;
          /* color: rgba(214, 214, 214, 0.982); */
          padding: 5%;
        }
        .head_section {
          width: 100%;
          height: 20%;
          background-color: rgb(207, 255, 239);
          border-radius: 10px;
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
          left: 140px;
          top: -160px;
        }
        #API_Button_1 {
          font-size: 50px;
          height: 70px;
          width: 300px;
          position: absolute;
          left: 70%;
          right: inherit;
          top: 18%;
          border-color: rgb(0, 204, 255);
          border-width: thick;
          border-radius: 10px;
          background-color: rgb(231, 255, 250);
        }
        .popTag {
          background-color: rgb(208, 246, 255);
          width: 450px;
          position: absolute;
          left: 68%;
          right: inherit;
          top: 30%;
          bottom: 38%;
          padding: 1%;
          margin: -20px;
        }
        #popURI {
          font-size: 25px;
          height: 40px;
          width: 300px;
          position: relative;
          left: 30;
        }
        #popBody {
          font-size: 25px;
          width: 300px;
          position: relative;
          left: 17px;
          height: 150px;
        }
        #popSel {
          font-size: 25px;
          width: 300px;
          height: 30px;
          position: relative;
          left: 65px;
        }
        .contextBody {
          background-color: azure;
          border-radius: 10px;
          padding: 20px;
          padding-bottom: 30px;
          margin: -60px;
          position: relative;
          top: -70px;
          height: 100%;
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
      src="https://code.jquery.com/jquery-3.6.0.slim.js"
      integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY="
      crossorigin="anonymous"
    ></script>
    <script>
      function apiPop() {
        // alert("JS good to go!");
        var tagPop =
          "<div class = popTag>" +
          '<form action="" name="api_insertion" method="post">' +
          "<select id='popSel'> " +
          '<optgroup label="Choose HTTP Method">' +
          '<option value="GET">GET</option>' +
          '<option value="POST">POST</option>' +
          "</optgroup>" +
          "</select>" +
          '<p>URI&nbsp<input id="popURI" type="" name="URI" /></p>' +
          '<p>Body&nbsp<input id="popBody" type="text" name="Body" /></p>' +
          '<input type="button" value="Send!" onclick="apiworker()" />' + //event,"URI에서 받은 내용","Body에서 받은 내용을 인자로 보내줘야함"
          "</form>" +
          "</div>";
        $(event.target).parent().parent().append(tagPop);

        // apiPop에서 받은 매개변수로, api를 호출해야하는데,, 그럴라면 select box가 하나 더 있고, 거기서 api를 골라 호출하는 방법을 사용해야할 것 같음
        function callApi(event) {
          $.ajax({
            url: "/",
          });
        }
      }
    </script>
    <body style="background-color: rgb(82, 82, 82)" );>
      <h1 id="H1_bigger" style="position: absolute; top: -90px; left: 30px">
        😛
      </h1>
      <h3 class="with_Emoji">
        <a href="/rtest">You're in ReturnTEST Page</a>
      </h3>
      <div class="API_Button">
        <strong
          ><input
            type="button"
            id="API_Button_1"
            value="API TEST"
            onclick="apiPop()"
          />
        </strong>
      </div>
      <div class="contextBody">
        <h2>ㅋㅋㅋㅋㅋㅋㅋㅋㅋ</h2>
        <div class="context_1">
          <li>1. 뭐야</li>
          <li>2. controller</li>
          <li>3. Restcontroller</li>
          <li>4. 도대체 뭔 차이야?</li>
        </div>
        <br />
        <br />
        <div class="context_2">
          <li>1. 뭐야</li>
          <li>2. controller</li>
          <li>3. Restcontroller</li>
          <li>4. 도대체 뭔 차이야?</li>
        </div>
      </div>
    </body>
    <footer>
      <div id="footer" style="background-color:rgb(207, 255, 239);">

      </div>
    </footer>
  </p>
</div>

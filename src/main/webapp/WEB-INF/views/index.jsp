<div class="Whole_Page">
    <p>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
    </p>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <head>

      <link rel="stylesheet" href="/css/main.css">
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>Index Page</title>
      <div class="head_section">&nbsp</div>

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
          $(".appendPosition").append("으아아아아앆")
          
        } else {
          console.log("Check PLZ")
        }
      }
    }
    </script>


    <body style="background-color: rgb(82, 82, 82)" );>
      <h1 id="icon">

        <a style="text-decoration: none" href="/">😛</a>
      </h1>
      <h3 class="with_Emoji">
        <a href="/returnTest">나는 아무 생각이 없다.</a>
      </h3>
      

      <div class="contextBody">
        <h2 id="open">[&nbsp&nbsp게시글 목록&nbsp&nbsp]</h2>
        <!-- <button id="open">게시판 열기</button> -->
      </div>
      <div id="alert-box"> 안 누르고 뭐함?</div>
      <div class="showList">
        <h1 style="text-align: center;">자유게시판</h1>
        <div class="appendPosition">
          <table class="listTable"> 
            <thead>
              <tr>
                <th style="width:6vw;"class="listTable_shell">글번호</th>
                <th style="width:25vw;" class="listTable_shell">제목</th>
                <th style="width:15vw;" class="listTable_shell">작성자</th>
                <th style="width:15vw;" class="listTable_shell">작성일</th>
                <th style="width:6vw;"class="listTable_shell">조회수</th> 
            </tr>
            </thead>
            <tbody>
              <tr>
                <td class="listTable_shell">1</td>
                <td class="listTable_shell">Static Title</td>
                <td class="listTable_shell">Static Writer</td>
                <td class="listTable_shell">YYYY-MM-DD </td>
                <td class="listTable_shell">100</td>
              </tr>
            </tbody>

          </table>
          <button onclick="getUser()"
          style="position: absolute; left:5%;">글목록</button>
          <div id="userInfo"></div>

          <button id="close" >닫기</button>
          <button onclick="location.href='http://localhost:8080/writepage';"
          style="position: absolute; right:5%;"> 글쓰기 </button>
        </div>
      </div>

<script> 

// ajax 로 get요청 날리기 ********* fetch( URL, 설정 ).then( callback함수 ).catch( callback함수 )

function getUser() {
  
  const config = {
          method: "get"
        };

  fetch('http://localhost:8080/data/listall', config)
    .then((response) => {
      // 오류를 더 세밀히 잡는 코드.
      if(!response.ok) {
      throw new Error('400아니면 500 오류남')
      }
      //응답값을 json으로 파싱
      response.json()
    })
    .then((data) => {
      //div 생성 (글번호,제목,작성자,날짜,조회수)
      const postNum = document.createElement("div");
      const postTitle = document.createElement("div");
      const postMan = document.createElement("div");
      const postTime = document.createElement("div");
      const postView = document.createElement("div");

      //만든 div의 텍스트는 = ajax로 비동기 요청한 데이터의 번호,제목...
      postNum.textContent = data.postNum;
      postTitle.textContent = data.postTitle;
      postMan.textContent = data.postMan;
      postTime.textContent = data.postTime;
      postView.textContent = data.postView;

      //생성한 div를 userInfo에 넣기
      const userInfo = document.getElementById("userInfo");
      userInfo.appendChild(postNum);
      userInfo.appendChild(postTitle);
      userInfo.appendChild(postMan);
      userInfo.appendChild(postTime);
      userInfo.appendChild(postView);
    })
      .catch((error) => {
      console.log('Error!')
    })
}
document.getElementById('open').addEventListener('click', function(){
  document.getElementsByClassName('showList')[0].style.display='block';
});

document.getElementById('open').addEventListener('mouseover', function(){
  document.getElementById('alert-box').style.display='block';
});

document.getElementById('open').addEventListener('mouseout', function(){
  document.getElementById('alert-box').style.display='none';
});

// function open(a,b){
//   document.getElementById('open').addEventListener('a', function(){
//   document.getElementById('alert-box').style.display='b';
//   });
// }

document.getElementById('close').addEventListener('click',function(){
  document.getElementsByClassName('showList')[0].style.display='none';
});

</script>

    </body>
    <footer>
      <div id="footer" style="background-color:rgb(207, 255, 239);">
      </div>
    </footer>
    </p>
  </div>
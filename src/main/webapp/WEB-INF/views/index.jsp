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
      <!-- <div id="alert-box"> 안 누르고 뭐함?</div>  (버려도 됨)-->
      <div class="showList" style="display:block"> 
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
              <!-- <tr>
                <td class="listTable_shell"></td>
                <td class="listTable_shell">Static Title</td>
                <td class="listTable_shell">Static Writer</td>
                <td class="listTable_shell">YYYY-MM-DD </td>
                <td class="listTable_shell">100</td> 
              </tr> -->
            </tbody>

          </table>
          <!-- <button onclick="getUser()"
          style="position: absolute; left:5%;">글목록</button>
          <div id="userInfo"></div> -->

          <!-- <button id="close" >닫기</button> -->
          <button onclick="location.href='http://localhost:8080/writepage';"
          style="position: absolute; right:5%;"> 글쓰기 </button>
        </div>
      </div>

<script> 

// ajax 로 get요청 날리기 ********* fetch( URL, 설정 ).then( callback함수 ).catch( callback함수 )

window.onload = function getUser() {
  
  // const config = {
  //         method: "get"
  //       };

  fetch('http://localhost:8080/data/listall')
    .then((response) => {
      // 오류를 더 세밀히 잡는 코드.
      if(!response.ok) {
      throw new Error('400아니면 500 오류남')
      }
      //응답값을 json으로 파싱
      response.json()
    })
    .then((data) => {
      // 변수명은 또 뭐야야야야야야ㅑ야야야. **** "객체명.key", "객체명['key'}"처럼 한 객체말고 모든 객체 순회는 어떻게?****
      //json 순회는 어떻게 해애애ㅐㅇ애애애ㅐ애애ㅐ. response를 json으로 파싱했으니 변수명은 response?!?!?!?!?!?
      // 결강처리는 또 뭐냐고오오오오오오ㅗ오오오. 교수님 딱밤 딱 3대만 가능한가요오오옹?
      // 애초에 for반복을 여기서 돌리는게 맞나? 구글링해도 http리퀘스트랑 제이쿼리로 처리하는 것만 수두룩빽빽빽빽뺵뺵빽뺶뺶뺶.
      // 혹시 지금이라도 ajax 갖다버리고 http리퀘스트로?ㅎ
      // 그래도 대충 알고리즘은 알았으니 일단 만--------족.
      // td를 tr로 감싸야하나? td도 태그마다 이름 다르게 해줘야하나?
      // 아래처럼 json을 values값만 뽑아서 배열로 변환하면 당연히 안됨;;;;;;; 모든 게시글을 하나의 배열에 담은건데 되겠냐?
      // 그럼 해결 방법은? 크게 [{},{},{}...] 이런 형태니까 {}안으로 들어가지 않고 for반복 돌릴 것. 하는 법?
      // 모름. 아무리 저글링 9기 해봐도 안 나옴. 예시가 객체 1개로만 되어있음. 

      // var arr = Object.values(response());
        var arr = JSON.parse(response);
      //근데 객체에는 직접 length 못 쓰지 않나? https://loy124.tistory.com/154 이사람 어캐했누?
        for (i=0; i<arr.length; i++) {
          var postNum = arr[i].postNum;
          var postTitle = arr[i].postTitle;
          var postMan = arr[i].postMan;
          var postTime = arr[i].postTime;
          var postView = arr[i].postView;
      
          const tdPostNum = document.createElement(postNum);
          const tdPostTitle = document.createElement(postTitle);
          const tdPostMan = document.createElement(postMan);
          const tdPostTime = document.createElement(postTime);
          const tdPostView = document.createElement(postView);

          var td = document.createElement("td");

          td.appendChild(tdPostNum);
          td.appendChild(tdPostTitle);
          td.appendChild(tdPostMan);
          td.appendChild(tdPostTime);
          td.appendChild(tdPostView);

          var tbody = document.getElementsByTagName("tbody")[0];
          tbody.appendChild(td);

        }
      //만든 td안에 담길 텍스트는 = ajax로 비동기 요청한 데이터의 번호,제목...
      // postNum.textContent = data.postNum;
      // postTitle.textContent = data.postTitle;
      // postMan.textContent = data.postMan;
      // postTime.textContent = data.postTime;
      // postView.textContent = data.postView;

  
      // //생성한 div를 userInfo에 넣기
      // const userInfo = document.getElementById("userInfo");
      // userInfo.appendChild(postNum);
      // userInfo.appendChild(postTitle);
      // userInfo.appendChild(postMan);
      // userInfo.appendChild(postTime);
      // userInfo.appendChild(postView);
    })
      .catch((error) => {
      console.log('Error!')
    })
};



// 게시판목록 누르면 뜨는 기능
// document.getElementById('open').addEventListener('click', function(){
//   document.getElementsByClassName('showList')[0].style.display='block';
// });


//심심해서 만든 코드(무쓸모)
// document.getElementById('open').addEventListener('mouseover', function(){
//   document.getElementById('alert-box').style.display='block';
// });

// document.getElementById('open').addEventListener('mouseout', function(){
//   document.getElementById('alert-box').style.display='none';
// });

//닫기버튼 활성화
// document.getElementById('close').addEventListener('click',function(){
//   document.getElementsByClassName('showList')[0].style.display='none';
// });

</script>

    </body>
    <footer>
      <div id="footer" style="background-color:rgb(207, 255, 239);">
      </div>
    </footer>
    </p>
  </div>
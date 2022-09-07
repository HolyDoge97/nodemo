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
      
<!-- 글쓰기창 https://dw3232.tistory.com/42#recentComments (여기서 긁어옴)
  <div class="contextBody" id="board_write">
        <h4>글을 작성하는 공간입니다.</h4>
            <div id="write_area">
                <form enctype="multipart/form-data" action="write_ok.php?board_id=<?echo $board_id;?>" method="post">
                    <div id="in_title">
                        <textarea name="title" id="utitle" rows="1" cols="55" placeholder="제목" maxlength="100" required></textarea>
                    </div>
 
                    <div class="wi_line"></div>
                    <div id="in_content">
                        <textarea name="content" id="ucontent" placeholder="내용" required></textarea>
                    </div>
 
                      <input type="file" name="SelectFile" />
 
 
                    <div class="bt_se">
                        <button type="submit">글 작성</button>
                        <button id="out">나가기</button>
                    </div>
                </form>
            </div>
        </div> 

 여기까지 글쓰기 -->

      <div class="contextBody">
        <h2 id="open">[&nbsp&nbsp게시글 목록&nbsp&nbsp]</h2>
        <!-- <button id="open">게시판 열기</button> -->
      </div>
      <div id="alert-box"> 안 누르고 뭐함?</div>
      <div class="showList">
        <h1 id="center">짜잔</h1>
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
          <button id="close">게시판 닫기</button>
          <button id="text-open">글쓰기</button>
        </div>
      </div>

<script> 
document.getElementById('open').addEventListener('click', function(){
  document.getElementsByClassName('showList')[0].style.display='block';
});

document.getElementById('open').addEventListener('mouseover', function(){
  document.getElementById('alert-box').style.display='block';
});

document.getElementById('open').addEventListener('mouseout', function(){
  document.getElementById('alert-box').style.display='none';
});


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
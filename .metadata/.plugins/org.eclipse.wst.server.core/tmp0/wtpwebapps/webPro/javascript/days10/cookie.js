/**
 * cookie.js
 */

function deleteCookie(cname, path) {
 
    let now = new Date();
    now.setDate( now.getDate() - 10 ); // 현재 시스템 시간의 과거이기만 하면됨
    let expires = now.toUTCString();

    //쿠키 저장( 과거 만기일 == 삭제 )
    document.cookie = `${cname}=; expires=${expires}; path=${path};`;

  }


  function getCookie(cname) {
    let cookies = document.cookie;
    let cvalue;

    let pattern = /;\s/;
    let cookieArr = cookies.split(pattern);
    cookieArr.forEach(function (elem, i, array){
      let cnvArr = elem.split("=");
      if (cnvArr[0] == cname) {
        cvalue = unescape(cnvArr[1]);
        // break;  forEach문 쓰면 break 못씀. for of 됨
      }
    })
      if (cvalue) {
       return cvalue;
      }else {
        return null;
      }
    }

    function getAllCookies() {
        let cookies = document.cookie;
        return cookies;
    
      }

      function setCookie( cname, cvalue, exdays){

    
        let now = new Date();
        now.setDate( now.getDate() + exdays );
        let expires = now.toUTCString();
    
        //쿠키 저장
        document.cookie = `${cname}=${escape(cvalue)}; expires=${expires}; path=/;`;


    
      }

      function setCookie( cname, cvalue, exdays, path){

    
        let now = new Date();
        now.setDate( now.getDate() + exdays );
        let expires = now.toUTCString();
    
        //쿠키 저장
        document.cookie = `${cname}=${escape(cvalue)}; expires=${expires}; path=${path};`;


    
      }

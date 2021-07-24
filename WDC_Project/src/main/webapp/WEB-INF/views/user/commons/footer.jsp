<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<<style>
.pt-5, .py-5 {
    padding-top: 1rem!important;
}
.box{
	font-size:14px;
}
p {
    margin-top: 0;
    margin-bottom: 0.5em;
}
.copyright{
	margin-left: 700px;
    width: 420px;
}
</style>

      <footer class="bg-dark text-white">
         <div class="container py-4">
           <div class="row py-3">
	           <div class="col-md-2 mb-3 mb-md-0">
	       		<img src="${pageContext.servletContext.contextPath }/resources/user/img/wdcicon.png" width="100px" height="100px">
	           </div>
	            <div class="col-md-4 mb-3 mb-md-0" style="margin-left: -50px;">
			        <div class="contents">
						<div class="footer-info">
							<div class="box">
								<p><b>(주)우리 동네 클래스</b></p>
							</div>
							<div class="box">
								<p><span>사업자등록번호 : 2021-0208-0714</span></p>
								<p><span>대표 : Time is Gold</span></p>
							</div>
							<div class="box">
								<p><span>서울특별시 서초구 서초동 1305 서산빌딩</span></p>
							</div>
							<div class="copyright box">Copyright 2021. WDC. All rights reserved.</div>
						</div>
					</div>
	            </div>
        	</div>
        </div>
      </footer>
      <!-- JavaScript files-->
      <script src="${pageContext.servletContext.contextPath }/resources/user/vendor/jquery/jquery.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/user/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/user/vendor/lightbox2/js/lightbox.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/user/vendor/nouislider/nouislider.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/user/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/user/vendor/owl.carousel2/owl.carousel.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/user/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/user/js/front.js"></script>
      <script>
        // ------------------------------------------------------- //
        //   Inject SVG Sprite - 
        //   see more here 
        //   https://css-tricks.com/ajaxing-svg-sprite/
        // ------------------------------------------------------ //
        function injectSvgSprite(path) {
        
            var ajax = new XMLHttpRequest();
            ajax.open("GET", path, true);
            ajax.send();
            ajax.onload = function(e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
            }
        }
        // this is set to BootstrapTemple website as you cannot 
        // inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
        // while using file:// protocol
        // pls don't forget to change to your domain :)
        injectSvgSprite('https://bootstraptemple.com/files/icons/orion-svg-sprite.svg'); 
      </script>

      <script>
      // Modalì ê°ì ¸ìµëë¤.
      var modals = document.getElementsByClassName("modal");
      // Modalì ëì°ë í´ëì¤ ì´ë¦ì ê°ì ¸ìµëë¤.
      var btns = document.getElementsByClassName("btn-img");
      // Modalì ë«ë close í´ëì¤ë¥¼ ê°ì ¸ìµëë¤.
      var spanes = document.getElementsByClassName("close");
      var funcs = [];
      
      // Modalì ëì°ê³  ë«ë í´ë¦­ ì´ë²¤í¸ë¥¼ ì ìí í¨ì
      function Modal(num) {
        return function() {
          // í´ë¹ í´ëì¤ì ë´ì©ì í´ë¦­íë©´ Modalì ëìëë¤.
          btns[num].onclick =  function() {
              modals[num].style.display = "block";
              console.log(num);
          };
      
          // <span> íê·¸(X ë²í¼)ë¥¼ í´ë¦­íë©´ Modalì´ ë«ìµëë¤.
          spanes[num].onclick = function() {
              modals[num].style.display = "none";
          };
        };
      }
        
      // ìíë Modal ìë§í¼ Modal í¨ìë¥¼ í¸ì¶í´ì funcs í¨ìì ì ìí©ëë¤.
      for(var i = 0; i < btns.length; i++) {
        funcs[i] = Modal(i);
      }
      
      // ìíë Modal ìë§í¼ funcs í¨ìë¥¼ í¸ì¶í©ëë¤.
      for(var j = 0; j < btns.length; j++) {
        funcs[j]();
      }
      
      // Modal ìì­ ë°ì í´ë¦­íë©´ Modalì ë«ìµëë¤.
      window.onclick = function(event) {
        if (event.target.className == "modal") {
            event.target.style.display = "none";
        }
      };
      </script>
      <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
   
   <!-- class_art ìì ì¶ê° -->
         <script>
        var range = document.getElementById('range');
        noUiSlider.create(range, {
            range: {
                'min': 0,
                'max': 100000
            },
            step: 1000,
            start: [1000, 50000],
            margin: 1000,
            connect: true,
            direction: 'ltr',
            orientation: 'horizontal',
            behaviour: 'tap-drag',
            tooltips: true,
            format: {
              to: function ( value ) {
                return value + 'ì';
              },
              from: function ( value ) {
                return value.replace('', '');
              }
            }
        });
        
      </script>
      <script>
        // ------------------------------------------------------- //
        //   Inject SVG Sprite - 
        //   see more here 
        //   https://css-tricks.com/ajaxing-svg-sprite/
        // ------------------------------------------------------ //
        function injectSvgSprite(path) {
        
            var ajax = new XMLHttpRequest();
            ajax.open("GET", path, true);
            ajax.send();
            ajax.onload = function(e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
            }
        }
        // this is set to BootstrapTemple website as you cannot 
        // inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
        // while using file:// protocol
        // pls don't forget to change to your domain :)
        injectSvgSprite('https://bootstraptemple.com/files/icons/orion-svg-sprite.svg'); 
       </script>

	   
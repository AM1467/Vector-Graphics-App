<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>VG Draw</title>


<link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,300,100,700|Roboto:400,100,300,500,700,900&subset=latin,latin-ext' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="css/style.css">

</head>


<body>

            <div class="cbp-af-header">
                <div class="cbp-af-inner">
                                    
                    <a href="index.jsp"><h1>VG Draw</h1></a>
                                        
		</div>
	    </div>
            
           
            
            <div id="intro" align = "center"> Click on a tool icon to create a shape. You can also drag the shapes around with left click & hold. To resize a shape, double-click on it once and drag to any direction. Double-click again to stop resizing.
            </div>          
            
            <div id="drawing-area" style="height: 1000px;">  
                
                <div id ="toolbox" align = "center">                   
                    
                    <svg>
                    
                    <script>
                        
                            function createCircle(){
                            var s = Snap('#svg');
                            var newCircle = s.circle(420,120,40);
                            
                            newCircle.attr({                            
                                fill:'#e6ccff',
                                stroke:'#000',
                                strokeWidth: 2
                            });   
                            
                            newCircle.dblclick( addHandleFunc ); // start scaling upon double click
                            newCircle.drag();                
                         };
                         
                          
                          function createRect(){
                            var r = Snap('#svg');
                            var newRect = r.rect(100,100,80,60);
                            newRect.attr({                            
                                fill:'#afe5ff',
                                stroke:'#000',
                                strokeWidth: 2
                            });   
                             
                            newRect.dblclick( addHandleFunc ); // start scaling upon double click                     
                            newRect.drag(); // use default drag() once shape is made                     
                            
                          };
                         
                         function createEllipse(){
                            var e = Snap('#svg');
                            var newEllipse = e.ellipse(720,120,70,30);
                            newEllipse.attr({                            
                                fill:'#ededa3',
                                stroke:'#000',
                                strokeWidth: 2
                            });   
                            
                            newEllipse.dblclick( addHandleFunc ); // start scaling upon double click
                            newEllipse.drag();                
                         }; 
                         
                           
                             var scaling = 0;   // check if user is resizing or not
                             
                             function addHandleFunc() {
                                 
                                
                                 
                                if( scaling === 0 ) {    //initialize scaling, start dragging
                                    document.getElementById('svg').style.cursor = 'ne-resize';
                                    scaling = 1;                                   
                                    var bb = this.getBBox();                                    
                                    this.drag(move,start,stop);  // use drag() with custom  arguments
                                    
                                    
                                } else {  
                                    document.getElementById('svg').style.cursor = 'move';
                                    scaling = 0;   // stopped dragging
                                    this.undrag(); // remove custom arguments (move, start,stop) from drag()
                                    this.drag();  // use default drag() again                                                                      
                                  }                                      
                            }

                            function start() {
                            console.log("start");
                            this.data('origTransform', this.transform().local);
                            }

                            function move(dx,dy) {
                                 var scale = 1 + dx / 50;
                                 this.attr({
                                 transform: this.data('origTransform') + (this.data('origTransform') ? "S" : "s") + scale                                 
                                 });
                                 
                            }
                            
                            function stop() {console.log("stop");}                                                 
                            
                          
                         
                         
                        </script>
                    
                        <g style="cursor:pointer" onclick = 'createRect()' >
                            <rect class = "hover_button" x="0" y="60"  width="50" height="50" fill="#e6ccff" /> 
                            <rect x="10" y="75" height="20" width="30" fill="none" stroke="#000000" stroke-width="2" />
                        </g>
                        
                        <g style="cursor:pointer" onclick = 'createCircle()'>
                            
                            <rect class = "hover_button" x="100" y="60"  width="50" height="50" fill="#e6ccff" /> 
                            <circle cx="125" cy="85" r="18" stroke="#000000" stroke-width="2" fill="none" />
                            
                        </g>
                        
                        <g  style="cursor:pointer" onclick = 'createEllipse()'>
                            <rect class = "hover_button" x="200" y="60"  width="50" height="50" fill="#e6ccff" />    
                            <ellipse cx="225" cy="85" rx="18" ry="10" stroke="#000000" stroke-width="2" fill="none" />
                        </g>        
                        
                       
                        
                    </svg>
                    
                    </div>         
                   
                
                
                <div align="center">
                    <div  id = "drawing-box" style="border:1px solid black; height: 800px; width:1200px; background-color: #f2f4f3; ">                
                       
                        <svg height="800" width="1200" id = "svg" ></svg>                       
                    
                    </div>
                </div>
                
            
                 
          
            
            <footer style="padding: 30px; background-color:#ffffff;">
                
            <div class = "footerlink">Theme: <a href="https://dribbble.com/shots/1192183-Pichichi-Freebie-html5-responsive-template">Pichichi</a></div>    
            
            
            <div id="footersocial">
            <ul style="list-style:none; padding: 20px; margin: 0px; font-size: 29px;">
  			<li class="zocial-twitter"></li>
  			<li class="zocial-facebook"></li>
			<li class="zocial-github"></li>
            <li class="zocial-instagram"></li>
            <li class="zocial-dribbble"></li>
            <li class="zocial-evernote"></li>
            <li class="zocial-linkedin"></li>
            <li class="zocial-pinterest"></li>
            <li class="zocial-google"></li>
            <li class="zocial-youtube"></li>
            <li class="zocial-flickr"></li>
            <li class="zocial-lastfm"></li>
  			<li class="zocial-reddit"></li>
			</ul>
            </div>
            
            <div class = "footerlink" ><a href=index.jsp>Home</a>&nbsp&nbsp&nbsp&nbsp<a href=draw.jsp>Draw</a>&nbsp&nbsp&nbsp&nbsp<a href="https://github.com/AM1467/Vector-Graphics-App">Source</a>&nbsp&nbsp&nbsp&nbsp<a href=index.jsp>About</a> </div>
          
            </footer>
            
            <script src="js/classie.js"></script>
	    <script src="js/cbpAnimatedHeader.min.js"></script>
            <script src="snap.svg-min.js"></script>
            
</body>
</html>
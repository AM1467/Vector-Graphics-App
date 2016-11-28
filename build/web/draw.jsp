<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>VG Draw</title>


<link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,300,100,700|Roboto:400,100,300,500,700,900&subset=latin,latin-ext' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="css/style.css">

<script src="snap.svg-min.js"></script>
<script src="js/classie.js"></script>
<script src="js/cbpAnimatedHeader.min.js"></script>


 

</head>


<body>

            <div class="cbp-af-header">
                <div class="cbp-af-inner">
                                    
                    <a href="index.jsp"><h1>VG Draw</h1></a>
                                        
		</div>
	    </div>
            
           
            
    <div id="intro" align = "center"> Click on a tool icon to create a shape. You can also <strong>drag</strong> the shapes around with left click & hold. To <strong>resize</strong> a shape, double-click on it once and drag to any direction. Double-click again to stop resizing. To <strong>delete</strong> a shape, click on the Delete button and then on a shape.
            </div>          
            
            <div id="drawing-area" style="height: 1200px; ">  
                
                <div id ="toolbox" align = "center">                   
                    
                    <svg height="200">
                    
                    <script>     
                       
                            
                            function createCircle(){
                            var s = Snap('#svg');
                            var newCircle = s.circle(420,120,40);
                            
                            newCircle.attr({                            
                                fill:'#e6ccff',
                                stroke:'#000',
                                strokeWidth: 2
                            });   
                            
                            newCircle.click( this.clickTrigger );                            
                            newCircle.dblclick( addHandleFunc ); // start scaling upon double click
                            newCircle.drag();    
                            
                             document.addEventListener('mousemove', function (e) {
    
                                    pos = newCircle.getBBox();                                    
                                
                                    if(pos.cx < 0 || pos.cx > 1200 || pos.cy <0 || pos.cy > 800){                                
      
                                        newCircle.animate({
                                            transform: 'T0 0 s1 1'
                                        }, 4000, mina.elastic);        
                                    };   
                
                                }, false);   
                         };
                         
                          
                          function createRect(){                            
                            var r = Snap('#svg');
                            var newRect = r.rect(100,100,80,60);
                            newRect.attr({                            
                                fill:'#afe5ff',
                                stroke:'#000',
                                strokeWidth: 2
                            });                     
                            
                                
                            newRect.click( this.clickTrigger );                            
                            newRect.dblclick( addHandleFunc ); // start scaling upon double click                     
                            newRect.drag(); // use default drag() once shape is made 
                             
                            // bind to canvas
                            document.addEventListener('mousemove', function (e) {
    
                                    pos = newRect.getBBox();                                    
                                
                                    if(pos.cx < 0 || pos.cx > 1200 || pos.cy <0 || pos.cy > 800){                                
      
                                        newRect.animate({
                                            transform: 'T0 10 s1 1'
                                        }, 4000, mina.elastic);        
                                    };   
                
                                }, false);     
                                                        
                            
                          };
                         
                         function createEllipse(){
                            var e = Snap('#svg');
                            var newEllipse = e.ellipse(720,120,70,30);
                            newEllipse.attr({                            
                                fill:'#ededa3',
                                stroke:'#000',
                                strokeWidth: 2
                            });                    
                            
                            newEllipse.click( this.clickTrigger );
                            newEllipse.dblclick( addHandleFunc ); // start scaling upon double click
                            newEllipse.drag();   
                            
                             document.addEventListener('mousemove', function (e) {
    
                                    pos = newEllipse.getBBox();                                    
                                
                                    if(pos.cx < 0 || pos.cx > 1200 || pos.cy <0 || pos.cy > 800){                                
      
                                        newEllipse.animate({
                                            transform: 'T0 0 s1 1'
                                        }, 4000, mina.elastic);        
                                    };   
                
                                }, false);   
                         }; 
                         
                         function createRhombus(){
                            var r = Snap('#svg');
                            var newRhombus = r.rect(1020,80,70,70);
                            newRhombus.attr({                            
                                fill:'#ffffff',
                                stroke:'#000',
                                strokeWidth: 2
                            });   
                            
                            newRhombus.transform( 'r45,1020,80' );      
                            newRhombus.click( this.clickTrigger );
                            newRhombus.dblclick( addHandleFunc ); // start scaling upon double click
                            newRhombus.drag();    
                            
                             document.addEventListener('mousemove', function (e) {
    
                                    pos = newRhombus.getBBox();                                    
                                
                                    if(pos.cx < 0 || pos.cx > 1200 || pos.cy <0 || pos.cy > 800){                                
      
                                        newRhombus.animate({
                                            transform: 'T0 0 s1 1 r45,1020,80'
                                        }, 4000, mina.elastic);        
                                    };   
                
                                }, false);   
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
                            };

                            function start() {
                            console.log("start");
                            this.data('origTransform', this.transform().local);
                            };

                            function move(dx,dy) {
                                 var scale = 1 + dx / 50;
                                 this.attr({
                                 transform: this.data('origTransform') + (this.data('origTransform') ? "S" : "s") + scale                                 
                                 });
                                 
                            };
                            
                            function stop() {console.log("stop");}; 
                            
                            var del = 0; // for deleting
                            
                            var line_cr = 0; // for line connection              
                              
                           
                            
                            function deleteElement() {
                                
                                 del = 1;                               
                                
                            };
                            
                            function setLine(){                       
                                 
  
                                 if (line_cr === 0){
                                    line_cr = 1; 
                                    alert("Line creation ON: Click on two shapes.");
                                }  
  
                            };                    
                            
                            
                           
                         
                        </script>
                    
                        <g style="cursor:pointer" onclick = 'createRect()' >
                            <rect class = "hover_button" x="0" y="60"  width="50" height="50" fill="#e6ccff" /> 
                            <rect x="10" y="75" height="20" width="30" fill="none" stroke="#000000" stroke-width="2" />
                        </g>
                        
                        <g style="cursor:pointer" onclick = 'createCircle()'>
                            
                            <rect class = "hover_button" x="60" y="60"  width="50" height="50" fill="#e6ccff" /> 
                            <circle cx="85" cy="85" r="18" stroke="#000000" stroke-width="2" fill="none" />
                            
                        </g>
                        
                        <g  style="cursor:pointer" onclick = 'createEllipse()'>
                            <rect class = "hover_button" x="120" y="60"  width="50" height="50" fill="#e6ccff" />    
                            <ellipse cx="145" cy="85" rx="18" ry="10" stroke="#000000" stroke-width="2" fill="none" />
                        </g>     
                        
                        <g  style="cursor:pointer" onclick = 'createRhombus()'>
                            <rect class = "hover_button" x="180" y="60"  width="50" height="50" fill="#e6ccff" />    
                            <rect x="210" y="66" height="28" width="28" fill="none" stroke="#000000" stroke-width="2" transform="rotate(45 206 57)"/>
                        </g>  
                        
                        <g  style="cursor:pointer" onclick = 'setLine()'>
                            <rect class = "hover_button" x="240" y="60"  width="50" height="50" fill="#e6ccff" />    
                            <line x1="245" y1="85" x2="285" y2="85" stroke="#000000" stroke-width="2"/>
                        </g>   
                      
                        
                         <g  style="cursor:pointer" onclick = 'deleteElement()'>
                            <rect class = "hover_button" x="125" y="120"  width="50" height="50" fill="#e6ccff" />
                            <text <text x="127" y="150">Delete</text>
                        </g>                
                       
                        
                    </svg>
                    
                    <br>                
                    
                    
                    </div>         
                   
                <br><br>
                
                <div align="center">
                    <div  id = "drawing-box" style="border:1px solid black; height: 800px; width:1200px; background-color: #f2f4f3; ">                
                       
                        <svg height="800" width="1200" id = "svg" ></svg>   
                        
                        <script> 
                        
                        
                         
                            var lsvg = Snap('#svg');
                            
                            var L = lsvg.line(0,0,0,0).attr({
                                stroke: "#000",
                                strokeWidth: 4
                                });  
                                
                         function clickTrigger () {  
                                
                                if (del === 1){                                    
                                    del = 0;
                                    this.remove();
                                }  
                                
                                 var startP, endP;
                           
                                
                                if (line_cr === 1){  // make this shape a start point                                   
                                    L.start = this;                                    
                                   // console.log("START " + L.start.cx + ", " + L.start.cy);
                                    line_cr = 2;                                    
                                    
                                }
                                
                                else if (line_cr === 2){ // make this shape an end point
                                   
                                  L.end = this;
                                  // console.log("END " + L.end.cx + ", " + L.end.cy);
                                  line_cr = 0; 
                                  
                                  var LLocal = lsvg.line(0,0,0,0).attr({
                                    stroke: "#000",
                                    strokeWidth: 4
                                  }); 
                                  
                                  LLocal.start = L.start;
                                  LLocal.end = L.end;                               
                                  
                                 document.addEventListener('mousemove', function (e) {
                                  
                                 startP = LLocal.start.getBBox();  
                                 endP = LLocal.end.getBBox();                         

                                 LLocal.attr({x1: startP.cx, y1: startP.cy , x2:endP.cx, y2: endP.cy});
                                 
                
                                }, false);   
                                    
                                }                                
                               
                            
                            };                           
                          
                         
                        
                        
                        </script>
                    
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
            
            
 
            
</body>
</html>
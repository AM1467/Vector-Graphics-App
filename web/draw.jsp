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
            
           
            
            <div id="intro" align = "center"> Click on a tool icon to create a shape. You can also drag the shapes around!
            </div>          
            
            <div id="drawing-area">  
                
                <div id ="toolbox" align = "center">
                     
                    
                    <svg>
                    
                    <script>
                        
                            function createCircle(){
                            var s = Snap('#svg');
                            var newCircle = s.circle(420,120,40);
                            newCircle.attr({                            
                                fill:'#8ee5c4',
                                stroke:'#000',
                                strokeWidth: 2
                            });   
                             newCircle.drag();                
                         };
                         
                          function createRect(){
                            var r = Snap('#svg');
                            var newRect = r.rect(70,90,80,60);
                            newRect.attr({                            
                                fill:'#f49989',
                                stroke:'#000',
                                strokeWidth: 2
                            });   
                             newRect.drag();                
                         };     
                         
                         function createEllipse(){
                            var e = Snap('#svg');
                            var newEllipse = e.ellipse(720,120,70,30);
                            newEllipse.attr({                            
                                fill:'#ededa3',
                                stroke:'#000',
                                strokeWidth: 2
                            });   
                             newEllipse.drag();                
                         }; 
                         
                         
                        </script>
                    
                        <g onclick = 'createRect()'>
                            <rect x="0" y="60" rx ="10" ry ="10" width="50" height="50" fill="#cdc2ed" /> 
                            <rect x="10" y="75" height="20" width="30" fill="none" stroke="#000000" stroke-width="2" />
                        </g>
                        
                        <g onclick = 'createCircle()'>
                            
                            <rect x="100" y="60" rx ="10" ry ="10" width="50" height="50" fill="#cdc2ed" /> 
                            <circle cx="125" cy="85" r="18" stroke="#000000" stroke-width="2" fill="none" />
                            
                        </g>
                        
                        <g onclick = 'createEllipse()'>
                            <rect x="200" y="60" rx ="10" ry ="10" width="50" height="50" fill="#cdc2ed" />    
                            <ellipse cx="225" cy="85" rx="18" ry="10" stroke="#000000" stroke-width="2" fill="none" />
                        </g>
                       
                        
                    </svg>
                    
                    
                    
                </div>    
                
                <div id = "drawing-box" align="center" >
                    
                    <div style="height: 600px; width:1000px; background-color: #f2f4f3;"> 
                    
                        
                        <svg height="600" width="1000" id = "svg" ></svg>                        
                        
                        
                    </div>                    
                    
                    
                </div>
                
            
            </div>     
          
            
            <footer>
                
            <div class = "footerlink">Theme: <a href="https://dribbble.com/shots/1192183-Pichichi-Freebie-html5-responsive-template">Pichichi</a></div>    
            
            
            <div id="footersocial">
            <ul style="list-style:none; padding: 0px; margin: 0px; font-size: 29px;">
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
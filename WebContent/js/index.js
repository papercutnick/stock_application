var buttons = document.querySelectorAll(".radmenu a");

var button0=buttons[0];
button0.onclick=setSelected1;

var button1=buttons[1];
button1.onclick=setSelected2;

var button2=buttons[2];
button2.onclick=setSelected3;

var button3=buttons[3];
button3.onclick=setSelected4;



function setSelected4(i) {
	
    if (this.classList.contains("selected")) {
      this.classList.remove("selected");
      if (!this.parentNode.classList.contains("radmenu")) {  	  
        this.parentNode.parentNode.parentNode.querySelector("a").classList.add("selected");      
      } else {    	 
        this.classList.add("show");
        
       
      }
    } else {
      this.classList.add("selected");
     
      if (!this.parentNode.classList.contains("radmenu")) {
    	  
        this.parentNode.parentNode.parentNode.querySelector("a").classList.remove("selected");
        var t=setTimeout("window.location.href=\"https://www.google.com\"",500)
        
      } else {
        this.classList.remove("show");
      }
    }
   
}

function setSelected3(i) {
	
    if (this.classList.contains("selected")) {
      this.classList.remove("selected");
      if (!this.parentNode.classList.contains("radmenu")) {  	  
        this.parentNode.parentNode.parentNode.querySelector("a").classList.add("selected");      
      } else {    	 
        this.classList.add("show");
        
       
      }
    } else {
      this.classList.add("selected");
     
      if (!this.parentNode.classList.contains("radmenu")) {
    	  
        this.parentNode.parentNode.parentNode.querySelector("a").classList.remove("selected");
        var t=setTimeout("window.location.href=\"https://www.google.com\"",500)
        
      } else {
        this.classList.remove("show");
      }
    }
   
}

function setSelected2(i) {
	
    if (this.classList.contains("selected")) {
      this.classList.remove("selected");
      if (!this.parentNode.classList.contains("radmenu")) {  	  
        this.parentNode.parentNode.parentNode.querySelector("a").classList.add("selected");      
      } else {    	 
        this.classList.add("show");
        
       
      }
    } else {
      this.classList.add("selected");
     
      if (!this.parentNode.classList.contains("radmenu")) {
    	  
        this.parentNode.parentNode.parentNode.querySelector("a").classList.remove("selected");
        var t=setTimeout("window.location.href=\"https://www.google.com\"",500)
        
      } else {
        this.classList.remove("show");
      }
    }
   
}

function setSelected1(i) {
	
    if (this.classList.contains("selected")) {
      this.classList.remove("selected");
      if (!this.parentNode.classList.contains("radmenu")) {  	  
        this.parentNode.parentNode.parentNode.querySelector("a").classList.add("selected");      
      } else {    	 
        this.classList.add("show");
        
       
      }
    } else {
      this.classList.add("selected");
     
      if (!this.parentNode.classList.contains("radmenu")) {
    	  
        this.parentNode.parentNode.parentNode.querySelector("a").classList.remove("selected");
       
      } else {
        this.classList.remove("show");
      }
    }
   
}




/**
 * 
 */

 window.onload = () => {
	 /** @type {HTMLTableElement} */
	 let surface = document.querySelector('#surface');
	 surface.onmousedown = e => e.preventDefault();
//	 surface.onmousedown = e =>{
//		 e.preventDefault();
//	 }
     surface.oncontextmenu = e => e.preventDefault();
     
     /** @type {HTMLButtonElement} */
     let btnCreate = document.querySelector('#btnCreate');
     btnCreate.onclick = async e => {
		 
		 let earthworm = new EarthWorm();
		 earthworm.run();
//		 console.log("btnCreate...");
//		 let response = await fetch('/alpha/data');
//		 let alpha = await response.json();
//		 console.log(alpha);
		
	 }
 }
 
// let Alpha = {
//	line:0,
//	column:0,
//	fg:0,
//	bg:0,
//	ch:'' 
// };   //이것도 alpha 도움말 기능 위한 것 alpha.찍으면..나오도록..아래처럼 class로 만들어도 됨
 
 class Alpha {
	line
	column
	fg
	bg
	ch 
 };
 
 class EarthWorm{
	 constructor(){
		 /** @type {HTMLTableElement} */
		 this.surface = document.querySelector('#surface'); //도움말기능 위한 두줄.. 컨텐터넌스..?
		 this.speed = Math.random()*200 + 10;
//		 this.direction = parseInt(Math.random()*4);
		 this.direction = Direction.values[parseInt(Math.random()*4)];
		 this.step = 0;
		 this.wormslength = 0;
		 this.tdd = this.alpha;
//         let td = this.surface.rows[this.alpha.line-1].cells[this.alpha.column-1];
         this.worms  = [];
         this.worms[this.wormslength] = this.tdd;
         
	 }
	 
	 show(){
		 let td = this.surface.rows[this.alpha.line-1].cells[this.alpha.column-1];
		 td.style.color = this.alpha.fg;
		 td.style.background = this.alpha.bg;
		 td.innerText = this.alpha.ch;
		 return td;
	 }
	 
	 hide(){
		 
		 let td = this.surface.rows[this.alpha.line-1].cells[this.alpha.column-1];
		 td.style.color = 'white';
		 td.style.background = 'white';
		 
	 }
	 
	 
	 
	
	 
//	 hidess(){
//         let arr = [0,1,2,3];
//         
//		 arr[this.hidestep] = this.surface.rows[this.alpha.line-1].cells[this.alpha.column-1];
//		 arr[this.hidestep].style.color = 'white';
//		 arr[this.hidestep].style.background = 'white';
////			 position = hidefunc.td; 
//         this.hidestep++;
//		 }
	     
	 async blink(){
		 for(;;){
		 this.show();
		 await sleep(this.speed);
		 this.hide();
		 await sleep(this.speed);
		 }
		 
	 }
	 
	 conflictCheck(){
		 if(this.alpha.line==1 && this.alpha.column==0 ||
		   this.alpha.line==0 && this.alpha.column==1){
		   this.alpha.line=1;
		   this.alpha.column=1;
		   let canDirection = [Direction.RIGHT, Direction.BOTTOM];
		   this.direction = canDirection[parseInt(Math.random()*2)];
		 } else if(this.alpha.line==0 && this.alpha.column==40 ||
		   this.alpha.line==1 && this.alpha.column==41){
		   this.alpha.line=1;
		   this.alpha.column=40;
		   let canDirection = [Direction.LEFT, Direction.BOTTOM];
		   this.direction = canDirection[parseInt(Math.random()*2)];
		 } else if(this.alpha.line==20 && this.alpha.column==41 ||
		   this.alpha.line==21 && this.alpha.column==40){
		   this.alpha.line=20;
		   this.alpha.column=40;
		   let canDirection = [Direction.LEFT, Direction.TOP];
		   this.direction = canDirection[parseInt(Math.random()*2)];
		 } else if(this.alpha.line==21 && this.alpha.column==1 ||
		   this.alpha.line==20 && this.alpha.column==0){
		   this.alpha.line=20;
		   this.alpha.column=1;
		   let canDirection = [Direction.RIGHT, Direction.TOP];
		   this.direction = canDirection[parseInt(Math.random()*2)];
		 } else if(this.alpha.line==0 && this.alpha.column>=2 && this.alpha.column<=39){
		   this.alpha.line=1;
		   let canDirection = [Direction.LEFT, Direction.RIGHT, Direction.BOTTOM];
		   this.direction = canDirection[parseInt(Math.random()*3)];
		 } else if(this.alpha.line==21 && this.alpha.column>=2 && this.alpha.column<=39){
		   this.alpha.line=20;
		   let canDirection = [Direction.LEFT, Direction.RIGHT, Direction.TOP];
		   this.direction = canDirection[parseInt(Math.random()*3)];
		 } else if(this.alpha.line>=2 && this.alpha.line<=19 && this.alpha.column==0){
		   this.alpha.column=1;
		   let canDirection = [Direction.TOP, Direction.BOTTOM, Direction.RIGHT];
		   this.direction = canDirection[parseInt(Math.random()*3)];
		 } else if(this.alpha.line>=2 && this.alpha.line<=19 && this.alpha.column==41){
		   this.alpha.column=40;
		   let canDirection = [Direction.TOP, Direction.BOTTOM, Direction.LEFT];
		   this.direction = canDirection[parseInt(Math.random()*3)];
		 }
		 
	 }
	 
	 conflictCheckMe(){
		 
		    
		 if(this.alpha.line==1 && this.direction == Direction.TOP && this.alpha.column != 1 && this.alpha.column !=40) {
		 do{
			this.direction = Direction.values[parseInt(Math.random()*4)];
//		    this.step == 0; 
		 }while(this.direction == Direction.TOP);
		 }

		 else if((this.alpha.line==1 && this.alpha.column==1) && 
		    (this.direction == Direction.TOP || this.direction == Direction.LEFT)){
		 do{
			this.direction = Direction.values[parseInt(Math.random()*4)];
//		    this.step == 0; 
		 }while(this.direction == Direction.TOP || this.direction == Direction.LEFT);
		 }

		 else if((this.alpha.line==1 && this.alpha.column==40) && 
		    (this.direction == Direction.TOP || this.direction == Direction.RIGHT)){
		 do{
			this.direction = Direction.values[parseInt(Math.random()*4)];
//		    this.step == 0; 
		 }while(this.direction == Direction.TOP || this.direction == Direction.RIGHT);
		 }
		 
		 else if(this.alpha.line==20 && this.direction == Direction.BOTTOM && this.alpha.column != 1 && this.alpha.column != 40){
		 do{
			this.direction = Direction.values[parseInt(Math.random()*4)];
//		    this.step == 0; 
		 }while(this.direction == Direction.BOTTOM);
		 }

		 else if((this.alpha.line==20 && this.alpha.column==40) && 
		    (this.direction == Direction.BOTTOM || this.direction == Direction.RIGHT)){
		 do{
			this.direction = Direction.values[parseInt(Math.random()*4)];
//		    this.step == 0; 
		 }while(this.direction == Direction.BOTTOM || this.direction == Direction.RIGHT);
		 }
		 
		 else if(this.alpha.column==1 && this.direction == Direction.LEFT && this.alpha.line != 1 && this.alpha.line !=20){
		 do{
			this.direction = Direction.values[parseInt(Math.random()*4)];
//		    this.step == 0; 
		 }while(this.direction == Direction.LEFT);
		 }

		 else if(this.alpha.column==40 && this.direction == Direction.RIGHT && this.alpha.line != 1 && this.alpha.line !=20){
		 do{
			this.direction = Direction.values[parseInt(Math.random()*4)];
//		    this.step == 0; 
		 }while(this.direction == Direction.RIGHT);
		 }

		 else if((this.alpha.line==20 && this.alpha.column==1) && 
		    (this.direction == Direction.BOTTOM || this.direction == Direction.LEFT)){
		 do{
			this.direction = Direction.values[parseInt(Math.random()*4)];
//		    this.step == 0; 
		 }while(this.direction == Direction.BOTTOM || this.direction == Direction.LEFT);
		 }
	 }
	
//	 let tdd = this.alpha;
//	 let worms  = [3];
	
move(){
//		 var direction = (parseInt)(Math.random()*4); 여기다 변수 선언 이렇게 하고 direction을 케이스로 했더니 바로 바로 방향이 바뀌어 버림
		
			 
//		 arr = td[2];
		 
//		 this.hide();
//         let tdd = this.alpha;
//         let td = this.surface.rows[this.alpha.line-1].cells[this.alpha.column-1];
//         let worms  = [];
//        this.worms[this.wormslength] = this.tdd;
       
         console.log(this.wormslength);
         console.log(this.worms[this.wormslength]);
//         console.log(this.worms[1]);
//         console.log(this.worms[2]);
         if(this.wormslength == 2){
//			 this.hide();
             console.log(this.worms[this.wormslength]);
//            worms[0].fg = 'white';
//            worms[0].bg = 'white';
            this.wormslength = 0;
         }
         this.wormslength++;
//         setTimeout(function(){
//			 this.hide;
//		 },1000);
         
//         var hidefunc = this.hide();
         var position;
		 this.conflictCheckMe();
		 switch(this.direction){
		   case Direction.TOP:
	    	   this.alpha.line--;
//	    	   let toporigin = this.alpha.line++;
	    	   break;
	       case Direction.RIGHT:
	    	   this.alpha.column++;
//	    	   let rightorigin = this.alpha.column--;
	    	   break;
	       case Direction.BOTTOM:
	    	   this.alpha.line++;
//	    	   let bottomorigin = this.alpha.line--;
	    	   break;
	       case Direction.LEFT:
	    	   this.alpha.column--;
//	    	   let leftorigin = this.alpha.column++;
	    	   break;
		 }
		 
          
//		 this.conflictCheck();
    
         
//         this.hidess();
         
         if(this.step == 5){
		    this.direction = Direction.values[parseInt(Math.random()*4)];
		    this.step = 0;
		 }
		 
		 this.step++;
		 this.show();
//		 arr[this.wormslength] = this.show();
//		 this.wormslength++;
		 
		
//		 setTimeout(this.show, 1000);
	 }
	  
	 async run(){
		 let response = await fetch('/alpha/data');
		 /**@type {Alpha} */
		 this.alpha = await response.json();
//		 console.log(this.alpha);
		 this.show();
		 for(;;){
		   await sleep(2000);
		   this.move();
		  }
	 }
	 
 }
 
function sleep(millis){
	return new Promise((resolve, reject) =>{
		setTimeout(resolve, millis);
	});
} 
 
const Direction = {   //자바 스크립트에는 enum이 없어 비슷하게 만드는 것
	 TOP    : 'TOP',
	 RIGHT  : 'RIGHT',
	 BOTTOM : 'BOTTOM',
	 LEFT   : 'LEFT',
	 values : ['TOP', 'RIGHT', 'BOTTOM', 'LEFT']
}; //객체 리터럴..
Object.freeze(Direction); // Direction에 값을 새로 넣으려는 것을 막아준다, 코딩을 해도 변경되지 않는다 

 
 
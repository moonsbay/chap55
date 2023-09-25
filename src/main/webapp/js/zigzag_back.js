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
		 
		 let zigzag = new ZigZag();
		 zigzag.run();
//		 console.log("btnCreate...");
//		 let response = await fetch('/alpha/data');
//		 let alpha = await response.json();
//		 console.log(alpha);
		
	 }
 }
 
 let Alpha = {
	line:0,
	column:0,
	fg:0,
	bg:0,
	ch:'' 
 };   //이것도 alpha 도움말 기능 위한 것 alpha.찍으면..나오도록..
 
 class ZigZag{
	 constructor(){
		 /** @type {HTMLTableElement} */
		 this.surface = document.querySelector('#surface'); //도움말기능 위한 두줄..
		 
	 }
	 
	 show(){
		 let td = this.surface.rows[this.alpha.line-1].cells[this.alpha.column-1];
		 td.style.color = this.alpha.fg;
		 td.style.background = this.alpha.bg;
		 td.innerText = this.alpha.ch;
	 }
	 
	 hide(){
		 
	 }
	  
	 async run(){
		 let response = await fetch('/alpha/data');
		 /**@type {Alpha} */
		 this.alpha = await response.json();
		 console.log(this.alpha);
		 
		 this.show();
	 }
	 
	 
	 
 }
 
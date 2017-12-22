/**
 * 
 */
function init(){
	var arr=['burgerking', 'kakao', 'bitcamp', 'sktelecom', 'lotto'];
	for(var i = 0; i<arr.length; i++){
		document.querySelector('#' + arr[i]).addEventListener('click', 
			function(e){
			location.href = "../"+this.id+"/main.jsp";
		}, false);
	}
}
function order() {
	
}
window.addEventListener("load", init,false);

		
		
		
		/* document.querySelector('#burgerking_order_btn').onclick = order;
		document.querySelector('#nav_kakao').onclick = goKakao;
		document.querySelector('#nav_bitcamp').onclick = goBitcamp;
		document.querySelector('#nav_lotto').onclick = goLotto;
		document.querySelector('#nav_sktelecom').onclick = goSktelecom;
	}
	function goBurgerking(){
		location.href = "../burgerking/main.jsp";
	}
	function goKakao(){
		location.href = "../kakao/main.jsp";
	}
	function goBitcamp(){
		location.href = "../bitcamp/main.jsp";
	}
	function goSktelecom(){
		location.href = "../sktelecom/main.jsp";
	}
	function goLotto(){
		location.href = "../lotto/main.jsp";
	} **/

$(function() {
	function show(){
		$(".mark").style.display = "block";
		$(".modal").style.display = "block";
	}
	function close(){
		$(".mark").style.display = "none";
		$(".modal").style.display = "none";
	}
	$(".toggleModal").onclick = show;
	$(".close").onclick = close;
})

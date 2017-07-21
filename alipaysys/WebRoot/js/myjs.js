
function $(obj){
	var newObj=document.querySelectorAll(obj);
	if(newObj.length==1){
		return newObj[0];
	}
	return newObj;
}

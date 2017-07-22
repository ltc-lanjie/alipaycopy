
function $(obj){
	var newObj=document.querySelectorAll(obj);
	if(newObj.length==1){
		return newObj[0];
	}
	return newObj;
}
function tag(obj){
	var newObj= document.getElementsByTagName(obj);
	if(newObj.length==1){
		return newObj[0];
	}
	return newObj;
}
function getRadioBoxValue(radioName) {
	var obj = document.getElementsByName(radioName);
	for (var i = 0; i < obj.length; i++) {
		if (obj[i].checked) {
			return obj[i].value;
		}
	}
	return "undefined";
}
function  check_input(obj,test,text){
	if(test!=text){
		obj.innerHTML = "OK";
		obj.style = "color:green";
		return true;
	}else{
		obj.innerHTML = "NG";
		obj.style = "color:red";
		return false;
	}
}
function check_inputByReg(obj,test,reg){
	if (reg.test(test)) {
		obj.innerHTML = "OK";
		obj.style = "color:green";
		return true;
	} else {
		obj.innerHTML = "NG";
		obj.style = "color:red";
		return false;
	}
}
function check_again(obj,test,obj1,flag){
	if(flag){
		if(test==obj1.value){
			obj.innerHTML = "OK";
			obj.style = "color:green";
			return true;
		}else{
			obj.innerHTML = "NG";
			obj.style = "color:red";
			return false;
		}
	}
}
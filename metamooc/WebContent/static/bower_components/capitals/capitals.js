/**
 * 数字变大小写
 */
function capitals(amount){
  	var cnNums = new Array('零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖');
	var cnIntRadice = new Array('', '拾', '佰', '仟');
	var cnIntUnits = new Array('', '万', '亿', '兆');
	var cnDecUnits = new Array('角', '分');
	var cnInteger = '整';
	var cnIntLast = '元';
	var maxNum = 999999999999999.99;
	var integerNum;
	var decimalNum;
	var chineseStr = '';
	var parts;
	if (amount == '') { return ''; }
	amount = parseFloat(amount);
	if (amount >= maxNum) {
	  return '';
	}
	if (amount == 0) {
	  chineseStr = cnNums[0] + cnIntLast + cnInteger;
	  return chineseStr;
	}
	amount=amount.toString();
	if (amount.indexOf('.') == -1) {
	  integerNum = amount;
	  decimalNum = '';
	} else {
	  parts = amount.split(".");
	  integerNum = parts[0];
	  decimalNum = parts[1];
	}
	if (parseInt(integerNum, 10) > 0) {
	  var zeroCount = 0;
	  var IntLen = integerNum.length;
	  for (var i = 0; i < IntLen; i++) {
	    var n = integerNum.substr(i, 1);
	    var p = IntLen - i - 1;
	    var q = p / 4;
	    var m = p % 4;
	    if (n == '0') {
	      zeroCount++;
	    } else {
	      if (zeroCount > 0) {
	        chineseStr += cnNums[0];
	      }
	      zeroCount = 0;
	      chineseStr += cnNums[parseInt(n)] + cnIntRadice[m];
	    }
	    if (m == 0 && zeroCount < 4) {
	      chineseStr += cnIntUnits[q];
	    }
	  }
	  chineseStr += cnIntLast;
	}
	if (decimalNum != '') {
	  var decLen = decimalNum.length;
		if(decLen>2){
			for (var i = 0; i < decLen-1; i++) {
			    var n = decimalNum.substr(i, 1);
			    if (n != '0') {
			      chineseStr += cnNums[Number(n)] + cnDecUnits[i];
			    }
			  }
		}else{
			for (var i = 0; i < decLen; i++) {
			    var n = decimalNum.substr(i, 1);
			    if (n != '0') {
			      chineseStr += cnNums[Number(n)] + cnDecUnits[i];
			    }
			  }
		}
	}
	if (chineseStr == '') {
	  chineseStr += cnNums[0] + cnIntLast + cnInteger;
	} else if (decimalNum == '') {
	  chineseStr += cnInteger;
	} 
	return chineseStr;
}

/**
 * 限制输入框为两位小数
 */
function limitNum(obj){
	//限制第一位不能为小数点
	if(obj.value.substring(0,1)=="."){
		obj.value = obj.value.replace(".","");
	}
	obj.value = obj.value.replace(/[^\d.]/g,"");  //清除“数字”和“.”以外的字符   
	obj.value = obj.value.replace(/\.{2,}/g,"."); //只保留第一个. 清除多余的   
	obj.value = obj.value.replace(".","$#$").replace(/\./g,"").replace("$#$",".");  
	obj.value = obj.value.replace(/^(\-)*(\d+)\.(\d\d).*$/,'$1$2.$3');//只能输入两个小数   
	if(obj.value.indexOf(".")< 0 && obj.value !=""){//以上已经过滤，此处控制的是如果没有小数点，首位不能为类似于 01、02的金额  
		obj.value= parseFloat(obj.value);  
	}
}

/**
 * 小数拼接
 */
function setFloat(f){
	if (isNaN(f)) {
        return false;
    }
    var f = Math.floor(f*100)/100;
    var s = f.toString();
    var rs = s.indexOf('.');
    if (rs < 0) {
        rs = s.length;    
        s += '.';    
    }
    while (s.length <= rs + 2) {
        s += '0';    
    }
    return s;
}

function prNumAdd(num1, num2) {
	return jiSuan("pr", "add", num1, num2);
}

function prNumSubtract(num1, num2) {
	return jiSuan("pr", "subtract", num1, num2);
}

function prNumMultiply(num1, num2) {
	return jiSuan("pr", "multiply", num1, num2);
}

function prNumDivide(num1, num2) {
	return jiSuan("pr", "divide", num1, num2);
}

function crNumAdd(num1, num2) {
	return jiSuan("cr", "add", num1, num2);
}

function crNumSubtract(num1, num2) {
	return jiSuan("cr", "subtract", num1, num2);
}

function crNumMultiply(num1, num2) {
	return jiSuan("cr", "multiply", num1, num2);
}

function crNumDivide(num1, num2) {
	return jiSuan("cr", "divide", num1, num2);
}

function jiSuan(oType, method, num1, num2) {
	var result = "ERROR";
	$.ajax({
		type : "GET",
		url : global_ctx + "/" + oType + "/capitals/" + method,
		data : {
			"num1" : num1 + "",
			"num2" : num2 + ""
		},
		dataType : "json",
		async : false,
		cache: false,
		success : function(data, textStatus) {
			result = data.result;
		}
	});
	return result;
}

function isPositiveNumber(str) {
	var rule = /^(([1-9][0-9]*)|(([0]\.\d{1,2}|[1-9][0-9]*\.\d{1,2})))$/;
	var zz = new RegExp(rule);
	var flag = zz.test(str) && parseFloat(str) > 0;
	return flag;
}

function isPositiveNumber3(str) {
	var rule = /^(([1-9]\d{0,}(\.\d{1,3}){0,1})|(0\.\d{1,3}?))$/;
	var zz = new RegExp(rule);
	var flag = zz.test(str) && parseFloat(str) > 0;
	return flag;
}